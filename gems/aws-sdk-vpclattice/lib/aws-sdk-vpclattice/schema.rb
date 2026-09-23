# frozen_string_literal: true

# This is generated code!

module Aws::VPCLattice
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessLogDestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AccessLogDestinationArn", name: "AccessLogDestinationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:([^/].*)?$"})
    AccessLogSubscriptionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AccessLogSubscriptionArn", name: "AccessLogSubscriptionArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:accesslogsubscription/als-[0-9a-z]{17}$"})
    AccessLogSubscriptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AccessLogSubscriptionId", name: "AccessLogSubscriptionId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^als-[0-9a-z]{17}$"})
    AccessLogSubscriptionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AccessLogSubscriptionIdentifier", name: "AccessLogSubscriptionIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((als-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:accesslogsubscription/als-[0-9a-z]{17}))$"})
    AccessLogSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#AccessLogSubscriptionList", name: "AccessLogSubscriptionList")
    AccessLogSubscriptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#AccessLogSubscriptionSummary", name: "AccessLogSubscriptionSummary")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#Arn", name: "Arn", traits: {"smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:vpc-lattice:([a-z0-9][-.a-z0-9]{0,62})?:\\d{12}?:[^/].{0,1023}$"})
    ArnResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ArnResource", name: "ArnResource")
    AuthPolicyState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AuthPolicyState", name: "AuthPolicyState", traits: {"smithy.api#enum" => [{"name" => "Active", "value" => "Active"}, {"name" => "Inactive", "value" => "Inactive"}]})
    AuthPolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AuthPolicyString", name: "AuthPolicyString", traits: {"smithy.api#length" => {"max" => 36864}})
    AuthType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#AuthType", name: "AuthType", traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "AWS_IAM", "value" => "AWS_IAM"}]})
    BatchUpdateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#BatchUpdateRuleInput", name: "BatchUpdateRuleInput")
    BatchUpdateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#BatchUpdateRuleOutput", name: "BatchUpdateRuleOutput")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.vpclattice#Boolean", name: "Boolean")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#CertificateArn", name: "CertificateArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:certificate/[0-9a-z-]+)?$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[!-~]+"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessLogSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateAccessLogSubscriptionInput", name: "CreateAccessLogSubscriptionInput")
    CreateAccessLogSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateAccessLogSubscriptionOutput", name: "CreateAccessLogSubscriptionOutput")
    CreateListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateListenerInput", name: "CreateListenerInput")
    CreateListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateListenerOutput", name: "CreateListenerOutput")
    CreateResourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateResourceConfigurationRequest", name: "CreateResourceConfigurationRequest")
    CreateResourceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateResourceConfigurationResponse", name: "CreateResourceConfigurationResponse")
    CreateResourceGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateResourceGatewayRequest", name: "CreateResourceGatewayRequest")
    CreateResourceGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateResourceGatewayResponse", name: "CreateResourceGatewayResponse")
    CreateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateRuleInput", name: "CreateRuleInput")
    CreateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateRuleOutput", name: "CreateRuleOutput")
    CreateServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceInput", name: "CreateServiceInput")
    CreateServiceNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkInput", name: "CreateServiceNetworkInput")
    CreateServiceNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkOutput", name: "CreateServiceNetworkOutput")
    CreateServiceNetworkResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociationRequest", name: "CreateServiceNetworkResourceAssociationRequest")
    CreateServiceNetworkResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociationResponse", name: "CreateServiceNetworkResourceAssociationResponse")
    CreateServiceNetworkServiceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociationInput", name: "CreateServiceNetworkServiceAssociationInput")
    CreateServiceNetworkServiceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociationOutput", name: "CreateServiceNetworkServiceAssociationOutput")
    CreateServiceNetworkVpcAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociationInput", name: "CreateServiceNetworkVpcAssociationInput")
    CreateServiceNetworkVpcAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociationOutput", name: "CreateServiceNetworkVpcAssociationOutput")
    CreateServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateServiceOutput", name: "CreateServiceOutput")
    CreateTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateTargetGroupInput", name: "CreateTargetGroupInput")
    CreateTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#CreateTargetGroupOutput", name: "CreateTargetGroupOutput")
    DeleteAccessLogSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteAccessLogSubscriptionInput", name: "DeleteAccessLogSubscriptionInput")
    DeleteAccessLogSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteAccessLogSubscriptionOutput", name: "DeleteAccessLogSubscriptionOutput")
    DeleteAuthPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteAuthPolicyInput", name: "DeleteAuthPolicyInput")
    DeleteAuthPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteAuthPolicyOutput", name: "DeleteAuthPolicyOutput")
    DeleteListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteListenerInput", name: "DeleteListenerInput")
    DeleteListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteListenerOutput", name: "DeleteListenerOutput")
    DeleteResourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceConfigurationRequest", name: "DeleteResourceConfigurationRequest")
    DeleteResourceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceConfigurationResponse", name: "DeleteResourceConfigurationResponse")
    DeleteResourceEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceEndpointAssociationRequest", name: "DeleteResourceEndpointAssociationRequest")
    DeleteResourceEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceEndpointAssociationResponse", name: "DeleteResourceEndpointAssociationResponse")
    DeleteResourceGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceGatewayRequest", name: "DeleteResourceGatewayRequest")
    DeleteResourceGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourceGatewayResponse", name: "DeleteResourceGatewayResponse")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteResourcePolicyOutput", name: "DeleteResourcePolicyOutput")
    DeleteRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteRuleInput", name: "DeleteRuleInput")
    DeleteRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteRuleOutput", name: "DeleteRuleOutput")
    DeleteServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceInput", name: "DeleteServiceInput")
    DeleteServiceNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkInput", name: "DeleteServiceNetworkInput")
    DeleteServiceNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkOutput", name: "DeleteServiceNetworkOutput")
    DeleteServiceNetworkResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociationRequest", name: "DeleteServiceNetworkResourceAssociationRequest")
    DeleteServiceNetworkResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociationResponse", name: "DeleteServiceNetworkResourceAssociationResponse")
    DeleteServiceNetworkServiceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociationInput", name: "DeleteServiceNetworkServiceAssociationInput")
    DeleteServiceNetworkServiceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociationOutput", name: "DeleteServiceNetworkServiceAssociationOutput")
    DeleteServiceNetworkVpcAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociationInput", name: "DeleteServiceNetworkVpcAssociationInput")
    DeleteServiceNetworkVpcAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociationOutput", name: "DeleteServiceNetworkVpcAssociationOutput")
    DeleteServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteServiceOutput", name: "DeleteServiceOutput")
    DeleteTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteTargetGroupInput", name: "DeleteTargetGroupInput")
    DeleteTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeleteTargetGroupOutput", name: "DeleteTargetGroupOutput")
    DeregisterTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeregisterTargetsInput", name: "DeregisterTargetsInput")
    DeregisterTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DeregisterTargetsOutput", name: "DeregisterTargetsOutput")
    DnsEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DnsEntry", name: "DnsEntry")
    DnsResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#DnsResource", name: "DnsResource")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#FailureCode", name: "FailureCode")
    FailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#FailureMessage", name: "FailureMessage")
    FixedResponseAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#FixedResponseAction", name: "FixedResponseAction")
    ForwardAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ForwardAction", name: "ForwardAction")
    GetAccessLogSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetAccessLogSubscriptionInput", name: "GetAccessLogSubscriptionInput")
    GetAccessLogSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetAccessLogSubscriptionOutput", name: "GetAccessLogSubscriptionOutput")
    GetAuthPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetAuthPolicyInput", name: "GetAuthPolicyInput")
    GetAuthPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetAuthPolicyOutput", name: "GetAuthPolicyOutput")
    GetListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetListenerInput", name: "GetListenerInput")
    GetListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetListenerOutput", name: "GetListenerOutput")
    GetResourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourceConfigurationRequest", name: "GetResourceConfigurationRequest")
    GetResourceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourceConfigurationResponse", name: "GetResourceConfigurationResponse")
    GetResourceGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourceGatewayRequest", name: "GetResourceGatewayRequest")
    GetResourceGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourceGatewayResponse", name: "GetResourceGatewayResponse")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GetRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetRuleInput", name: "GetRuleInput")
    GetRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetRuleOutput", name: "GetRuleOutput")
    GetServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceInput", name: "GetServiceInput")
    GetServiceNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkInput", name: "GetServiceNetworkInput")
    GetServiceNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkOutput", name: "GetServiceNetworkOutput")
    GetServiceNetworkResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkResourceAssociationRequest", name: "GetServiceNetworkResourceAssociationRequest")
    GetServiceNetworkResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkResourceAssociationResponse", name: "GetServiceNetworkResourceAssociationResponse")
    GetServiceNetworkServiceAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkServiceAssociationInput", name: "GetServiceNetworkServiceAssociationInput")
    GetServiceNetworkServiceAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkServiceAssociationOutput", name: "GetServiceNetworkServiceAssociationOutput")
    GetServiceNetworkVpcAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkVpcAssociationInput", name: "GetServiceNetworkVpcAssociationInput")
    GetServiceNetworkVpcAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceNetworkVpcAssociationOutput", name: "GetServiceNetworkVpcAssociationOutput")
    GetServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetServiceOutput", name: "GetServiceOutput")
    GetTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetTargetGroupInput", name: "GetTargetGroupInput")
    GetTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#GetTargetGroupOutput", name: "GetTargetGroupOutput")
    HeaderMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#HeaderMatch", name: "HeaderMatch")
    HeaderMatchContains = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HeaderMatchContains", name: "HeaderMatchContains", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchExact = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HeaderMatchExact", name: "HeaderMatchExact", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#HeaderMatchList", name: "HeaderMatchList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    HeaderMatchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HeaderMatchName", name: "HeaderMatchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HeaderMatchPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HeaderMatchPrefix", name: "HeaderMatchPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#HeaderMatchType", name: "HeaderMatchType")
    HealthCheckConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#HealthCheckConfig", name: "HealthCheckConfig")
    HealthCheckIntervalSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#HealthCheckIntervalSeconds", name: "HealthCheckIntervalSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    HealthCheckPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HealthCheckPath", name: "HealthCheckPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^/[a-zA-Z0-9@:%_+.~#?&/=-]*$|(^$))"})
    HealthCheckPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#HealthCheckPort", name: "HealthCheckPort", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    HealthCheckProtocolVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HealthCheckProtocolVersion", name: "HealthCheckProtocolVersion", traits: {"smithy.api#enum" => [{"name" => "HTTP1", "value" => "HTTP1", "documentation" => "Indicates use of HTTP/1.1 to send requests to target"}, {"name" => "HTTP2", "value" => "HTTP2", "documentation" => "Indicates use of HTTP/2 to send requests to target"}]})
    HealthCheckTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#HealthCheckTimeoutSeconds", name: "HealthCheckTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 120}})
    HealthyThresholdCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#HealthyThresholdCount", name: "HealthyThresholdCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    HttpCodeMatcher = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HttpCodeMatcher", name: "HttpCodeMatcher", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "(^[0-9-,]+$|(^$))"})
    HttpMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#HttpMatch", name: "HttpMatch")
    HttpMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#HttpMethod", name: "HttpMethod", traits: {"smithy.api#length" => {"max" => 16}})
    HttpStatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#HttpStatusCode", name: "HttpStatusCode", traits: {"smithy.api#range" => {"min" => 100, "max" => 599}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 4, "max" => 39}})
    IpAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#IpAddressType", name: "IpAddressType", traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Indicates IPv4 address type"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "Indicates IPv6 address type"}]})
    IpResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#IpResource", name: "IpResource")
    Ipv4AddressesPerEni = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#Ipv4AddressesPerEni", name: "Ipv4AddressesPerEni", traits: {"smithy.api#range" => {"min" => 1, "max" => 62}})
    LambdaEventStructureVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#LambdaEventStructureVersion", name: "LambdaEventStructureVersion", traits: {"smithy.api#enum" => [{"name" => "V1", "value" => "V1", "documentation" => "This is the default lambda event structure version"}, {"name" => "V2", "value" => "V2", "documentation" => "Indicates use of lambda event structure version 2"}]})
    ListAccessLogSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListAccessLogSubscriptionsInput", name: "ListAccessLogSubscriptionsInput")
    ListAccessLogSubscriptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListAccessLogSubscriptionsOutput", name: "ListAccessLogSubscriptionsOutput")
    ListListenersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListListenersInput", name: "ListListenersInput")
    ListListenersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListListenersOutput", name: "ListListenersOutput")
    ListResourceConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceConfigurationsRequest", name: "ListResourceConfigurationsRequest")
    ListResourceConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceConfigurationsResponse", name: "ListResourceConfigurationsResponse")
    ListResourceEndpointAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceEndpointAssociationsRequest", name: "ListResourceEndpointAssociationsRequest")
    ListResourceEndpointAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceEndpointAssociationsResponse", name: "ListResourceEndpointAssociationsResponse")
    ListResourceGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceGatewaysRequest", name: "ListResourceGatewaysRequest")
    ListResourceGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListResourceGatewaysResponse", name: "ListResourceGatewaysResponse")
    ListRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListRulesInput", name: "ListRulesInput")
    ListRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListRulesOutput", name: "ListRulesOutput")
    ListServiceNetworkResourceAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkResourceAssociationsRequest", name: "ListServiceNetworkResourceAssociationsRequest")
    ListServiceNetworkResourceAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkResourceAssociationsResponse", name: "ListServiceNetworkResourceAssociationsResponse")
    ListServiceNetworkServiceAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkServiceAssociationsInput", name: "ListServiceNetworkServiceAssociationsInput")
    ListServiceNetworkServiceAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkServiceAssociationsOutput", name: "ListServiceNetworkServiceAssociationsOutput")
    ListServiceNetworkVpcAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkVpcAssociationsInput", name: "ListServiceNetworkVpcAssociationsInput")
    ListServiceNetworkVpcAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkVpcAssociationsOutput", name: "ListServiceNetworkVpcAssociationsOutput")
    ListServiceNetworkVpcEndpointAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociationsRequest", name: "ListServiceNetworkVpcEndpointAssociationsRequest")
    ListServiceNetworkVpcEndpointAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociationsResponse", name: "ListServiceNetworkVpcEndpointAssociationsResponse")
    ListServiceNetworksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworksInput", name: "ListServiceNetworksInput")
    ListServiceNetworksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServiceNetworksOutput", name: "ListServiceNetworksOutput")
    ListServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServicesInput", name: "ListServicesInput")
    ListServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListServicesOutput", name: "ListServicesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTargetGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTargetGroupsInput", name: "ListTargetGroupsInput")
    ListTargetGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTargetGroupsOutput", name: "ListTargetGroupsOutput")
    ListTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTargetsInput", name: "ListTargetsInput")
    ListTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListTargetsOutput", name: "ListTargetsOutput")
    ListenerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ListenerArn", name: "ListenerArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}$"})
    ListenerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ListenerId", name: "ListenerId", traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^listener-[0-9a-z]{17}$"})
    ListenerIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ListenerIdentifier", name: "ListenerIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((listener-[0-9a-z]{17})|(^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}$))$"})
    ListenerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ListenerName", name: "ListenerName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!listener-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ListenerProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ListenerProtocol", name: "ListenerProtocol", traits: {"smithy.api#enum" => [{"name" => "HTTP", "value" => "HTTP", "documentation" => "Indicates HTTP protocol"}, {"name" => "HTTPS", "value" => "HTTPS", "documentation" => "Indicates HTTPS protocol"}, {"name" => "TLS_PASSTHROUGH", "value" => "TLS_PASSTHROUGH", "documentation" => "Indicates TLS_PASSTHROUGH protocol"}]})
    ListenerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ListenerSummary", name: "ListenerSummary")
    ListenerSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ListenerSummaryList", name: "ListenerSummaryList")
    Matcher = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#Matcher", name: "Matcher")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PathMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#PathMatch", name: "PathMatch")
    PathMatchExact = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#PathMatchExact", name: "PathMatchExact", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^/[a-zA-Z0-9@:%_+.~#?&/=-]*$"})
    PathMatchPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#PathMatchPrefix", name: "PathMatchPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^/[a-zA-Z0-9@:%_+.~#?&/=-]*$"})
    PathMatchType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#PathMatchType", name: "PathMatchType")
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^.*\\S.*$"})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#PortRange", name: "PortRange", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^((\\d{1,5}\\-\\d{1,5})|(\\d+))$"})
    PortRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#PortRangeList", name: "PortRangeList")
    ProtocolType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ProtocolType", name: "ProtocolType", traits: {"smithy.api#enum" => [{"name" => "TCP", "value" => "TCP", "documentation" => "Resource Configuration protocol type TCP"}]})
    PutAuthPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#PutAuthPolicyInput", name: "PutAuthPolicyInput")
    PutAuthPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#PutAuthPolicyOutput", name: "PutAuthPolicyOutput")
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    PutResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#PutResourcePolicyOutput", name: "PutResourcePolicyOutput")
    RegisterTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RegisterTargetsInput", name: "RegisterTargetsInput")
    RegisterTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RegisterTargetsOutput", name: "RegisterTargetsOutput")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 200}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(service/svc)|(resourceconfiguration/rcfg))-[0-9a-z]{17}$"})
    ResourceConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationArn", name: "ResourceConfigurationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9f\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$"})
    ResourceConfigurationDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationDefinition", name: "ResourceConfigurationDefinition")
    ResourceConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationId", name: "ResourceConfigurationId", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^rcfg-[0-9a-z]{17}$"})
    ResourceConfigurationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationIdentifier", name: "ResourceConfigurationIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$"})
    ResourceConfigurationIpAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationIpAddressType", name: "ResourceConfigurationIpAddressType", traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Ipv4 ip address type for dns type resource configs"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "IPv6 ip address type for dns type resource configs"}, {"name" => "DUALSTACK", "value" => "DUALSTACK", "documentation" => "Dualstack ip address type for dns type resource configs"}]})
    ResourceConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationName", name: "ResourceConfigurationName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!rcfg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ResourceConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationStatus", name: "ResourceConfigurationStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Resource Configuration is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Resource Configuration creation in progress."}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "Resource Configuration update in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Resource Configuration deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Resource Configuration creation failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Resource Configuration update failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Resource Configuration deletion failed."}]})
    ResourceConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationSummary", name: "ResourceConfigurationSummary")
    ResourceConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationSummaryList", name: "ResourceConfigurationSummaryList")
    ResourceConfigurationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceConfigurationType", name: "ResourceConfigurationType", traits: {"smithy.api#enum" => [{"name" => "GROUP", "value" => "GROUP", "documentation" => "Resource Configuration of type GROUP"}, {"name" => "CHILD", "value" => "CHILD", "documentation" => "Resource Configuration of type CHILD"}, {"name" => "SINGLE", "value" => "SINGLE", "documentation" => "Resource Configuration of type SINGLE"}, {"name" => "ARN", "value" => "ARN", "documentation" => "Resource Configuration of type ARN"}]})
    ResourceEndpointAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceEndpointAssociationArn", name: "ResourceEndpointAssociationArn", traits: {"smithy.api#length" => {"min" => 21, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceendpointassociation/rea-[0-9a-f]{17}$"})
    ResourceEndpointAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceEndpointAssociationId", name: "ResourceEndpointAssociationId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rea-[0-9a-f]{17}$"})
    ResourceEndpointAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceEndpointAssociationIdentifier", name: "ResourceEndpointAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 21, "max" => 2048}, "smithy.api#pattern" => "^((rea-[0-9a-f]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceendpointassociation/rea-[0-9a-f]{17}))$"})
    ResourceEndpointAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ResourceEndpointAssociationList", name: "ResourceEndpointAssociationList")
    ResourceEndpointAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ResourceEndpointAssociationSummary", name: "ResourceEndpointAssociationSummary")
    ResourceGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayArn", name: "ResourceGatewayArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}$"})
    ResourceGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayId", name: "ResourceGatewayId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rgw-[0-9a-z]{17}$"})
    ResourceGatewayIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayIdentifier", name: "ResourceGatewayIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((rgw-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}))$"})
    ResourceGatewayIpAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayIpAddressType", name: "ResourceGatewayIpAddressType", traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Ipv4 ip address type for resource gateway"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "IPv6 ip address type for resource gateway"}, {"name" => "DUALSTACK", "value" => "DUALSTACK", "documentation" => "Dualstack ip address type for resource gateway"}]})
    ResourceGatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayList", name: "ResourceGatewayList")
    ResourceGatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayName", name: "ResourceGatewayName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!rgw-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ResourceGatewayStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceGatewayStatus", name: "ResourceGatewayStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Resource Gateway is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Resource Gateway creation in progress."}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "Resource Gateway update in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Resource Gateway deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Resource Gateway creation failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Reosurce Gateway update failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Resource Gateway deletion failed."}]})
    ResourceGatewaySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ResourceGatewaySummary", name: "ResourceGatewaySummary")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 20, "max" => 50}, "smithy.api#pattern" => "^((sn)|(svc))-[0-9a-z]{17}$"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 200}, "smithy.api#pattern" => "^((((sn)|(svc)|(rcfg))-[0-9a-z]{17})|(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(resourceconfiguration/rcfg)|(service/svc))-[0-9a-z]{17}))$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#RuleAction", name: "RuleAction")
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#RuleArn", name: "RuleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}/rule/rule-[0-9a-z]{17}$"})
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 5, "max" => 22}, "smithy.api#pattern" => "^rule-[0-9a-z]{17}$"})
    RuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#RuleIdentifier", name: "RuleIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((rule-[0-9a-z]{17})|(^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}/rule/rule-[0-9a-z]{17}$))$"})
    RuleMatch = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.vpclattice#RuleMatch", name: "RuleMatch")
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!rule-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#RulePriority", name: "RulePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 2000}})
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RuleSummary", name: "RuleSummary")
    RuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#RuleSummaryList", name: "RuleSummaryList")
    RuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RuleUpdate", name: "RuleUpdate")
    RuleUpdateFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RuleUpdateFailure", name: "RuleUpdateFailure")
    RuleUpdateFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#RuleUpdateFailureList", name: "RuleUpdateFailureList")
    RuleUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#RuleUpdateList", name: "RuleUpdateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleUpdateSuccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#RuleUpdateSuccess", name: "RuleUpdateSuccess")
    RuleUpdateSuccessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#RuleUpdateSuccessList", name: "RuleUpdateSuccessList")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#SecurityGroupList", name: "SecurityGroupList")
    ServiceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceArn", name: "ServiceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}$"})
    ServiceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceArnList", name: "ServiceArnList")
    ServiceCustomDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceCustomDomainName", name: "ServiceCustomDomainName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    ServiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceId", name: "ServiceId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^svc-[0-9a-z]{17}$"})
    ServiceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceIdentifier", name: "ServiceIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((svc-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}))$"})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceList", name: "ServiceList")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!svc-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ServiceNetworkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkArn", name: "ServiceNetworkArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}$"})
    ServiceNetworkArnWithoutRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkArnWithoutRegex", name: "ServiceNetworkArnWithoutRegex", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}})
    ServiceNetworkEndpointAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkEndpointAssociation", name: "ServiceNetworkEndpointAssociation")
    ServiceNetworkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkId", name: "ServiceNetworkId", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^sn-[0-9a-z]{17}$"})
    ServiceNetworkIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkIdentifier", name: "ServiceNetworkIdentifier", traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^((sn-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}))$"})
    ServiceNetworkIdentifierWithoutRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkIdentifierWithoutRegex", name: "ServiceNetworkIdentifierWithoutRegex", traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}})
    ServiceNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkList", name: "ServiceNetworkList")
    ServiceNetworkLogType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkLogType", name: "ServiceNetworkLogType", traits: {"smithy.api#enum" => [{"name" => "SERVICE", "value" => "SERVICE", "documentation" => "Indicates logs for Lattice services."}, {"name" => "RESOURCE", "value" => "RESOURCE", "documentation" => "Indicates logs for Lattice resource configurations."}]})
    ServiceNetworkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkName", name: "ServiceNetworkName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ServiceNetworkNameWithoutRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkNameWithoutRegex", name: "ServiceNetworkNameWithoutRegex", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ServiceNetworkResourceAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationArn", name: "ServiceNetworkResourceAssociationArn", traits: {"smithy.api#length" => {"min" => 22, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-f]{17}$"})
    ServiceNetworkResourceAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationId", name: "ServiceNetworkResourceAssociationId", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^snra-[0-9a-f]{17}$"})
    ServiceNetworkResourceAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationIdentifier", name: "ServiceNetworkResourceAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 22, "max" => 2048}, "smithy.api#pattern" => "^((snra-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-f]{17}))$"})
    ServiceNetworkResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationList", name: "ServiceNetworkResourceAssociationList")
    ServiceNetworkResourceAssociationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationStatus", name: "ServiceNetworkResourceAssociationStatus", traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Service association is active"}, {"name" => "PARTIAL", "value" => "PARTIAL", "documentation" => "ServiceNetwork and Service association is partial"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Service association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Service association deletion failed"}]})
    ServiceNetworkResourceAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkResourceAssociationSummary", name: "ServiceNetworkResourceAssociationSummary")
    ServiceNetworkServiceAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkServiceAssociationArn", name: "ServiceNetworkServiceAssociationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkserviceassociation/snsa-[0-9a-z]{17}$"})
    ServiceNetworkServiceAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkServiceAssociationIdentifier", name: "ServiceNetworkServiceAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((snsa-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkserviceassociation/snsa-[0-9a-z]{17}))$"})
    ServiceNetworkServiceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkServiceAssociationList", name: "ServiceNetworkServiceAssociationList")
    ServiceNetworkServiceAssociationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkServiceAssociationStatus", name: "ServiceNetworkServiceAssociationStatus", traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Service association is active"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Service association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Service association deletion failed"}]})
    ServiceNetworkServiceAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkServiceAssociationSummary", name: "ServiceNetworkServiceAssociationSummary")
    ServiceNetworkSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkSummary", name: "ServiceNetworkSummary")
    ServiceNetworkVpcAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationArn", name: "ServiceNetworkVpcAssociationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkvpcassociation/snva-[0-9a-z]{17}$"})
    ServiceNetworkVpcAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationId", name: "ServiceNetworkVpcAssociationId", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^snva-[0-9a-z]{17}$"})
    ServiceNetworkVpcAssociationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationIdentifier", name: "ServiceNetworkVpcAssociationIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((snva-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkvpcassociation/snva-[0-9a-z]{17}))$"})
    ServiceNetworkVpcAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationList", name: "ServiceNetworkVpcAssociationList")
    ServiceNetworkVpcAssociationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationStatus", name: "ServiceNetworkVpcAssociationStatus", traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Vpc association is active"}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association update in progress"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Vpc association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Vpc association deletion failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "ServiceNetwork and Vpc association update failed"}]})
    ServiceNetworkVpcAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcAssociationSummary", name: "ServiceNetworkVpcAssociationSummary")
    ServiceNetworkVpcEndpointAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ServiceNetworkVpcEndpointAssociationList", name: "ServiceNetworkVpcEndpointAssociationList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ServiceStatus", name: "ServiceStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Service is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Service creation in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Service deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Service creation failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Service deletion failed."}]})
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ServiceSummary", name: "ServiceSummary")
    SharingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#SharingConfig", name: "SharingConfig")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#SubnetList", name: "SubnetList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.vpclattice#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#Target", name: "Target")
    TargetFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TargetFailure", name: "TargetFailure")
    TargetFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#TargetFailureList", name: "TargetFailureList")
    TargetGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupArn", name: "TargetGroupArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}$"})
    TargetGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TargetGroupConfig", name: "TargetGroupConfig")
    TargetGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupId", name: "TargetGroupId", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^tg-[0-9a-z]{17}$"})
    TargetGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupIdentifier", name: "TargetGroupIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((tg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}))$"})
    TargetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#TargetGroupList", name: "TargetGroupList")
    TargetGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupName", name: "TargetGroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^(?!tg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    TargetGroupProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupProtocol", name: "TargetGroupProtocol", traits: {"smithy.api#enum" => [{"name" => "HTTP", "value" => "HTTP", "documentation" => "Indicates HTTP protocol"}, {"name" => "HTTPS", "value" => "HTTPS", "documentation" => "Indicates HTTPS protocol"}, {"name" => "TCP", "value" => "TCP", "documentation" => "Indicates TCP protocol"}]})
    TargetGroupProtocolVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupProtocolVersion", name: "TargetGroupProtocolVersion", traits: {"smithy.api#enum" => [{"name" => "HTTP1", "value" => "HTTP1", "documentation" => "Indicates use of HTTP/1.1 to send requests to target"}, {"name" => "HTTP2", "value" => "HTTP2", "documentation" => "Indicates use of HTTP/2 to send requests to target"}, {"name" => "GRPC", "value" => "GRPC", "documentation" => "Indicates use of gRPC to send requests to target"}]})
    TargetGroupStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupStatus", name: "TargetGroupStatus", traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "TargetGroup creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "TargetGroup is active"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "TargetGroup deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "TargetGroup creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "TargetGroup deletion failed"}]})
    TargetGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TargetGroupSummary", name: "TargetGroupSummary")
    TargetGroupType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetGroupType", name: "TargetGroupType", traits: {"smithy.api#enum" => [{"name" => "IP", "value" => "IP", "documentation" => "Indicates targets in this target group are IP"}, {"name" => "LAMBDA", "value" => "LAMBDA", "documentation" => "Indicates targets in this target group are Lambda"}, {"name" => "INSTANCE", "value" => "INSTANCE", "documentation" => "Indicates targets in this target group are EC2 instances"}, {"name" => "ALB", "value" => "ALB", "documentation" => "Indicates target in this target group is an ALB"}]})
    TargetGroupWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#TargetGroupWeight", name: "TargetGroupWeight", traits: {"smithy.api#range" => {"min" => 0, "max" => 999}})
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#TargetList", name: "TargetList")
    TargetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#TargetStatus", name: "TargetStatus", traits: {"smithy.api#enum" => [{"value" => "DRAINING", "documentation" => "The target is deregistering and connection draining is in process.", "name" => "DRAINING"}, {"value" => "UNAVAILABLE", "documentation" => "Health checks are disabled.", "name" => "UNAVAILABLE"}, {"value" => "HEALTHY", "documentation" => "The target is healthy.", "name" => "HEALTHY"}, {"value" => "UNHEALTHY", "documentation" => "The target failed the health check.", "name" => "UNHEALTHY"}, {"value" => "INITIAL", "documentation" => "The initial health check is in progress.", "name" => "INITIAL"}, {"value" => "UNUSED", "documentation" => "The target group is not used in a listener rule.", "name" => "UNUSED"}]})
    TargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#TargetSummary", name: "TargetSummary")
    TargetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#TargetSummaryList", name: "TargetSummaryList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.vpclattice#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    UnhealthyThresholdCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.vpclattice#UnhealthyThresholdCount", name: "UnhealthyThresholdCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAccessLogSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateAccessLogSubscriptionInput", name: "UpdateAccessLogSubscriptionInput")
    UpdateAccessLogSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateAccessLogSubscriptionOutput", name: "UpdateAccessLogSubscriptionOutput")
    UpdateListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateListenerInput", name: "UpdateListenerInput")
    UpdateListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateListenerOutput", name: "UpdateListenerOutput")
    UpdateResourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateResourceConfigurationRequest", name: "UpdateResourceConfigurationRequest")
    UpdateResourceConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateResourceConfigurationResponse", name: "UpdateResourceConfigurationResponse")
    UpdateResourceGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateResourceGatewayRequest", name: "UpdateResourceGatewayRequest")
    UpdateResourceGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateResourceGatewayResponse", name: "UpdateResourceGatewayResponse")
    UpdateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateRuleInput", name: "UpdateRuleInput")
    UpdateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateRuleOutput", name: "UpdateRuleOutput")
    UpdateServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceInput", name: "UpdateServiceInput")
    UpdateServiceNetworkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceNetworkInput", name: "UpdateServiceNetworkInput")
    UpdateServiceNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceNetworkOutput", name: "UpdateServiceNetworkOutput")
    UpdateServiceNetworkVpcAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociationInput", name: "UpdateServiceNetworkVpcAssociationInput")
    UpdateServiceNetworkVpcAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociationOutput", name: "UpdateServiceNetworkVpcAssociationOutput")
    UpdateServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateServiceOutput", name: "UpdateServiceOutput")
    UpdateTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateTargetGroupInput", name: "UpdateTargetGroupInput")
    UpdateTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#UpdateTargetGroupOutput", name: "UpdateTargetGroupOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    VpcEndpointOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#VpcEndpointOwner", name: "VpcEndpointOwner", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 5, "max" => 50}, "smithy.api#pattern" => "^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    WeightedTargetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.vpclattice#WeightedTargetGroup", name: "WeightedTargetGroup")
    WeightedTargetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.vpclattice#WeightedTargetGroupList", name: "WeightedTargetGroupList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    WildcardArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.vpclattice#WildcardArn", name: "WildcardArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:[a-z0-9][-.a-z0-9]{0,62}:([a-z0-9][-.a-z0-9]{0,62})?:\\d{12}?:[^/].{0,1023}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessLogSubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionSummary, name: "member"))
    AccessLogSubscriptionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:service_network_log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkLogType, name: "serviceNetworkLogType"))
    AccessLogSubscriptionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.type = Types::AccessLogSubscriptionSummary
    ArnResource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WildcardArn, name: "arn"))
    ArnResource.type = Types::ArnResource
    BatchUpdateRuleInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateRuleInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateRuleInput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdateList, name: "rules", traits: {"smithy.api#required" => {}}))
    BatchUpdateRuleInput.type = Types::BatchUpdateRuleInput
    BatchUpdateRuleOutput.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdateSuccessList, name: "successful"))
    BatchUpdateRuleOutput.add_member(:unsuccessful, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdateFailureList, name: "unsuccessful"))
    BatchUpdateRuleOutput.type = Types::BatchUpdateRuleOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessLogSubscriptionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:service_network_log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkLogType, name: "serviceNetworkLogType"))
    CreateAccessLogSubscriptionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAccessLogSubscriptionInput.type = Types::CreateAccessLogSubscriptionInput
    CreateAccessLogSubscriptionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:service_network_log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkLogType, name: "serviceNetworkLogType"))
    CreateAccessLogSubscriptionOutput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.type = Types::CreateAccessLogSubscriptionOutput
    CreateListenerInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateListenerInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateListenerInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    CreateListenerInput.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "defaultAction", traits: {"smithy.api#required" => {}}))
    CreateListenerInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateListenerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateListenerInput.type = Types::CreateListenerInput
    CreateListenerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, name: "arn"))
    CreateListenerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerId, name: "id"))
    CreateListenerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerName, name: "name"))
    CreateListenerOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProtocol, name: "protocol"))
    CreateListenerOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    CreateListenerOutput.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    CreateListenerOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    CreateListenerOutput.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "defaultAction"))
    CreateListenerOutput.type = Types::CreateListenerOutput
    CreateResourceConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateResourceConfigurationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateResourceConfigurationRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeList, name: "portRanges"))
    CreateResourceConfigurationRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "protocol"))
    CreateResourceConfigurationRequest.add_member(:resource_gateway_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIdentifier, name: "resourceGatewayIdentifier"))
    CreateResourceConfigurationRequest.add_member(:resource_configuration_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationGroupIdentifier"))
    CreateResourceConfigurationRequest.add_member(:resource_configuration_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationDefinition, name: "resourceConfigurationDefinition"))
    CreateResourceConfigurationRequest.add_member(:allow_association_to_shareable_service_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowAssociationToShareableServiceNetwork"))
    CreateResourceConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateResourceConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateResourceConfigurationRequest.type = Types::CreateResourceConfigurationRequest
    CreateResourceConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "id"))
    CreateResourceConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "name"))
    CreateResourceConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "arn"))
    CreateResourceConfigurationResponse.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    CreateResourceConfigurationResponse.add_member(:resource_configuration_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationGroupId"))
    CreateResourceConfigurationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationType, name: "type"))
    CreateResourceConfigurationResponse.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeList, name: "portRanges"))
    CreateResourceConfigurationResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "protocol"))
    CreateResourceConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationStatus, name: "status"))
    CreateResourceConfigurationResponse.add_member(:resource_configuration_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationDefinition, name: "resourceConfigurationDefinition"))
    CreateResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowAssociationToShareableServiceNetwork"))
    CreateResourceConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    CreateResourceConfigurationResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureReason"))
    CreateResourceConfigurationResponse.type = Types::CreateResourceConfigurationResponse
    CreateResourceGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateResourceGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateResourceGatewayRequest.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier"))
    CreateResourceGatewayRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds"))
    CreateResourceGatewayRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}}))
    CreateResourceGatewayRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIpAddressType, name: "ipAddressType"))
    CreateResourceGatewayRequest.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    CreateResourceGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateResourceGatewayRequest.type = Types::CreateResourceGatewayRequest
    CreateResourceGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name"))
    CreateResourceGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "id"))
    CreateResourceGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "arn"))
    CreateResourceGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayStatus, name: "status"))
    CreateResourceGatewayResponse.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier"))
    CreateResourceGatewayResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds"))
    CreateResourceGatewayResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    CreateResourceGatewayResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIpAddressType, name: "ipAddressType"))
    CreateResourceGatewayResponse.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    CreateResourceGatewayResponse.type = Types::CreateResourceGatewayResponse
    CreateRuleInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateRuleInput.type = Types::CreateRuleInput
    CreateRuleOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "arn"))
    CreateRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "id"))
    CreateRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    CreateRuleOutput.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    CreateRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    CreateRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    CreateRuleOutput.type = Types::CreateRuleOutput
    CreateServiceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateServiceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceInput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    CreateServiceInput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    CreateServiceInput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    CreateServiceInput.type = Types::CreateServiceInput
    CreateServiceNetworkInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkInput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    CreateServiceNetworkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceNetworkInput.add_member(:sharing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SharingConfig, name: "sharingConfig"))
    CreateServiceNetworkInput.type = Types::CreateServiceNetworkInput
    CreateServiceNetworkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "id"))
    CreateServiceNetworkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "name"))
    CreateServiceNetworkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "arn"))
    CreateServiceNetworkOutput.add_member(:sharing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SharingConfig, name: "sharingConfig"))
    CreateServiceNetworkOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    CreateServiceNetworkOutput.type = Types::CreateServiceNetworkOutput
    CreateServiceNetworkResourceAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifierWithoutRegex, name: "serviceNetworkIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceNetworkResourceAssociationRequest.type = Types::CreateServiceNetworkResourceAssociationRequest
    CreateServiceNetworkResourceAssociationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationId, name: "id"))
    CreateServiceNetworkResourceAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationArn, name: "arn"))
    CreateServiceNetworkResourceAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationStatus, name: "status"))
    CreateServiceNetworkResourceAssociationResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    CreateServiceNetworkResourceAssociationResponse.type = Types::CreateServiceNetworkResourceAssociationResponse
    CreateServiceNetworkServiceAssociationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceNetworkServiceAssociationInput.type = Types::CreateServiceNetworkServiceAssociationInput
    CreateServiceNetworkServiceAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "id"))
    CreateServiceNetworkServiceAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationStatus, name: "status"))
    CreateServiceNetworkServiceAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationArn, name: "arn"))
    CreateServiceNetworkServiceAssociationOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    CreateServiceNetworkServiceAssociationOutput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    CreateServiceNetworkServiceAssociationOutput.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    CreateServiceNetworkServiceAssociationOutput.type = Types::CreateServiceNetworkServiceAssociationOutput
    CreateServiceNetworkVpcAssociationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier", traits: {"smithy.api#required" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceNetworkVpcAssociationInput.type = Types::CreateServiceNetworkVpcAssociationInput
    CreateServiceNetworkVpcAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationId, name: "id"))
    CreateServiceNetworkVpcAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationStatus, name: "status"))
    CreateServiceNetworkVpcAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationArn, name: "arn"))
    CreateServiceNetworkVpcAssociationOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    CreateServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    CreateServiceNetworkVpcAssociationOutput.type = Types::CreateServiceNetworkVpcAssociationOutput
    CreateServiceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "id"))
    CreateServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "arn"))
    CreateServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    CreateServiceOutput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    CreateServiceOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    CreateServiceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, name: "status"))
    CreateServiceOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    CreateServiceOutput.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    CreateServiceOutput.type = Types::CreateServiceOutput
    CreateTargetGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupConfig, name: "config"))
    CreateTargetGroupInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTargetGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateTargetGroupInput.type = Types::CreateTargetGroupInput
    CreateTargetGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupId, name: "id"))
    CreateTargetGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, name: "arn"))
    CreateTargetGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name"))
    CreateTargetGroupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "type"))
    CreateTargetGroupOutput.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupConfig, name: "config"))
    CreateTargetGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStatus, name: "status"))
    CreateTargetGroupOutput.type = Types::CreateTargetGroupOutput
    DeleteAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionIdentifier, name: "accessLogSubscriptionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessLogSubscriptionInput.type = Types::DeleteAccessLogSubscriptionInput
    DeleteAccessLogSubscriptionOutput.type = Types::DeleteAccessLogSubscriptionOutput
    DeleteAuthPolicyInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthPolicyInput.type = Types::DeleteAuthPolicyInput
    DeleteAuthPolicyOutput.type = Types::DeleteAuthPolicyOutput
    DeleteListenerInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteListenerInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteListenerInput.type = Types::DeleteListenerInput
    DeleteListenerOutput.type = Types::DeleteListenerOutput
    DeleteResourceConfigurationRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceConfigurationRequest.type = Types::DeleteResourceConfigurationRequest
    DeleteResourceConfigurationResponse.type = Types::DeleteResourceConfigurationResponse
    DeleteResourceEndpointAssociationRequest.add_member(:resource_endpoint_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationIdentifier, name: "resourceEndpointAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceEndpointAssociationRequest.type = Types::DeleteResourceEndpointAssociationRequest
    DeleteResourceEndpointAssociationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationId, name: "id"))
    DeleteResourceEndpointAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationArn, name: "arn"))
    DeleteResourceEndpointAssociationResponse.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    DeleteResourceEndpointAssociationResponse.add_member(:resource_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationArn"))
    DeleteResourceEndpointAssociationResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "vpcEndpointId"))
    DeleteResourceEndpointAssociationResponse.type = Types::DeleteResourceEndpointAssociationResponse
    DeleteResourceGatewayRequest.add_member(:resource_gateway_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIdentifier, name: "resourceGatewayIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceGatewayRequest.type = Types::DeleteResourceGatewayRequest
    DeleteResourceGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "id"))
    DeleteResourceGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "arn"))
    DeleteResourceGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name"))
    DeleteResourceGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayStatus, name: "status"))
    DeleteResourceGatewayResponse.type = Types::DeleteResourceGatewayResponse
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteRuleInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.type = Types::DeleteRuleInput
    DeleteRuleOutput.type = Types::DeleteRuleOutput
    DeleteServiceInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.type = Types::DeleteServiceInput
    DeleteServiceNetworkInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkInput.type = Types::DeleteServiceNetworkInput
    DeleteServiceNetworkOutput.type = Types::DeleteServiceNetworkOutput
    DeleteServiceNetworkResourceAssociationRequest.add_member(:service_network_resource_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationIdentifier, name: "serviceNetworkResourceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkResourceAssociationRequest.type = Types::DeleteServiceNetworkResourceAssociationRequest
    DeleteServiceNetworkResourceAssociationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationId, name: "id"))
    DeleteServiceNetworkResourceAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationArn, name: "arn"))
    DeleteServiceNetworkResourceAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationStatus, name: "status"))
    DeleteServiceNetworkResourceAssociationResponse.type = Types::DeleteServiceNetworkResourceAssociationResponse
    DeleteServiceNetworkServiceAssociationInput.add_member(:service_network_service_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "serviceNetworkServiceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkServiceAssociationInput.type = Types::DeleteServiceNetworkServiceAssociationInput
    DeleteServiceNetworkServiceAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "id"))
    DeleteServiceNetworkServiceAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationStatus, name: "status"))
    DeleteServiceNetworkServiceAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationArn, name: "arn"))
    DeleteServiceNetworkServiceAssociationOutput.type = Types::DeleteServiceNetworkServiceAssociationOutput
    DeleteServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationIdentifier, name: "serviceNetworkVpcAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkVpcAssociationInput.type = Types::DeleteServiceNetworkVpcAssociationInput
    DeleteServiceNetworkVpcAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationId, name: "id"))
    DeleteServiceNetworkVpcAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationStatus, name: "status"))
    DeleteServiceNetworkVpcAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationArn, name: "arn"))
    DeleteServiceNetworkVpcAssociationOutput.type = Types::DeleteServiceNetworkVpcAssociationOutput
    DeleteServiceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "id"))
    DeleteServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "arn"))
    DeleteServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    DeleteServiceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, name: "status"))
    DeleteServiceOutput.type = Types::DeleteServiceOutput
    DeleteTargetGroupInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetGroupInput.type = Types::DeleteTargetGroupInput
    DeleteTargetGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupId, name: "id"))
    DeleteTargetGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, name: "arn"))
    DeleteTargetGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStatus, name: "status"))
    DeleteTargetGroupOutput.type = Types::DeleteTargetGroupOutput
    DeregisterTargetsInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "targets", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.type = Types::DeregisterTargetsInput
    DeregisterTargetsOutput.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "successful"))
    DeregisterTargetsOutput.add_member(:unsuccessful, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFailureList, name: "unsuccessful"))
    DeregisterTargetsOutput.type = Types::DeregisterTargetsOutput
    DnsEntry.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName"))
    DnsEntry.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostedZoneId"))
    DnsEntry.type = Types::DnsEntry
    DnsResource.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    DnsResource.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIpAddressType, name: "ipAddressType"))
    DnsResource.type = Types::DnsResource
    FixedResponseAction.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpStatusCode, name: "statusCode", traits: {"smithy.api#required" => {}}))
    FixedResponseAction.type = Types::FixedResponseAction
    ForwardAction.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTargetGroupList, name: "targetGroups", traits: {"smithy.api#required" => {}}))
    ForwardAction.type = Types::ForwardAction
    GetAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionIdentifier, name: "accessLogSubscriptionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessLogSubscriptionInput.type = Types::GetAccessLogSubscriptionInput
    GetAccessLogSubscriptionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionId, name: "id", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:service_network_log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkLogType, name: "serviceNetworkLogType"))
    GetAccessLogSubscriptionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.type = Types::GetAccessLogSubscriptionOutput
    GetAuthPolicyInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthPolicyInput.type = Types::GetAuthPolicyInput
    GetAuthPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthPolicyString, name: "policy"))
    GetAuthPolicyOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthPolicyState, name: "state"))
    GetAuthPolicyOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetAuthPolicyOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetAuthPolicyOutput.type = Types::GetAuthPolicyOutput
    GetListenerInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetListenerInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetListenerInput.type = Types::GetListenerInput
    GetListenerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, name: "arn"))
    GetListenerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerId, name: "id"))
    GetListenerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerName, name: "name"))
    GetListenerOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProtocol, name: "protocol"))
    GetListenerOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    GetListenerOutput.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    GetListenerOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    GetListenerOutput.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "defaultAction"))
    GetListenerOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetListenerOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetListenerOutput.type = Types::GetListenerOutput
    GetResourceConfigurationRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceConfigurationRequest.type = Types::GetResourceConfigurationRequest
    GetResourceConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "id"))
    GetResourceConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "name"))
    GetResourceConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "arn"))
    GetResourceConfigurationResponse.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    GetResourceConfigurationResponse.add_member(:resource_configuration_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationGroupId"))
    GetResourceConfigurationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationType, name: "type"))
    GetResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowAssociationToShareableServiceNetwork"))
    GetResourceConfigurationResponse.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeList, name: "portRanges"))
    GetResourceConfigurationResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "protocol"))
    GetResourceConfigurationResponse.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "customDomainName"))
    GetResourceConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationStatus, name: "status"))
    GetResourceConfigurationResponse.add_member(:resource_configuration_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationDefinition, name: "resourceConfigurationDefinition"))
    GetResourceConfigurationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetResourceConfigurationResponse.add_member(:amazon_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "amazonManaged"))
    GetResourceConfigurationResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureReason"))
    GetResourceConfigurationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetResourceConfigurationResponse.type = Types::GetResourceConfigurationResponse
    GetResourceGatewayRequest.add_member(:resource_gateway_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIdentifier, name: "resourceGatewayIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceGatewayRequest.type = Types::GetResourceGatewayRequest
    GetResourceGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name"))
    GetResourceGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "id"))
    GetResourceGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "arn"))
    GetResourceGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayStatus, name: "status"))
    GetResourceGatewayResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    GetResourceGatewayResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds"))
    GetResourceGatewayResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    GetResourceGatewayResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIpAddressType, name: "ipAddressType"))
    GetResourceGatewayResponse.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    GetResourceGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetResourceGatewayResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetResourceGatewayResponse.type = Types::GetResourceGatewayResponse
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "policy"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetRuleInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.type = Types::GetRuleInput
    GetRuleOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "arn"))
    GetRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "id"))
    GetRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    GetRuleOutput.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDefault"))
    GetRuleOutput.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    GetRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    GetRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    GetRuleOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetRuleOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetRuleOutput.type = Types::GetRuleOutput
    GetServiceInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceNetworkInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkInput.type = Types::GetServiceNetworkInput
    GetServiceNetworkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "id"))
    GetServiceNetworkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "name"))
    GetServiceNetworkOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetServiceNetworkOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetServiceNetworkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "arn"))
    GetServiceNetworkOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    GetServiceNetworkOutput.add_member(:sharing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SharingConfig, name: "sharingConfig"))
    GetServiceNetworkOutput.add_member(:number_of_associated_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfAssociatedVPCs"))
    GetServiceNetworkOutput.add_member(:number_of_associated_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfAssociatedServices"))
    GetServiceNetworkOutput.type = Types::GetServiceNetworkOutput
    GetServiceNetworkResourceAssociationRequest.add_member(:service_network_resource_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationIdentifier, name: "serviceNetworkResourceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkResourceAssociationRequest.type = Types::GetServiceNetworkResourceAssociationRequest
    GetServiceNetworkResourceAssociationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationId, name: "id"))
    GetServiceNetworkResourceAssociationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationArn, name: "arn"))
    GetServiceNetworkResourceAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationStatus, name: "status"))
    GetServiceNetworkResourceAssociationResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    GetServiceNetworkResourceAssociationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationArn"))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "resourceConfigurationName"))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifierWithoutRegex, name: "serviceNetworkId"))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifierWithoutRegex, name: "serviceNetworkArn"))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkNameWithoutRegex, name: "serviceNetworkName"))
    GetServiceNetworkResourceAssociationResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureReason"))
    GetServiceNetworkResourceAssociationResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    GetServiceNetworkResourceAssociationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetServiceNetworkResourceAssociationResponse.add_member(:private_dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "privateDnsEntry"))
    GetServiceNetworkResourceAssociationResponse.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    GetServiceNetworkResourceAssociationResponse.add_member(:is_managed_association, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isManagedAssociation"))
    GetServiceNetworkResourceAssociationResponse.type = Types::GetServiceNetworkResourceAssociationResponse
    GetServiceNetworkServiceAssociationInput.add_member(:service_network_service_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "serviceNetworkServiceAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkServiceAssociationInput.type = Types::GetServiceNetworkServiceAssociationInput
    GetServiceNetworkServiceAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "id"))
    GetServiceNetworkServiceAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationStatus, name: "status"))
    GetServiceNetworkServiceAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationArn, name: "arn"))
    GetServiceNetworkServiceAssociationOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    GetServiceNetworkServiceAssociationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "serviceName"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "serviceNetworkId"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "serviceNetworkName"))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "serviceNetworkArn"))
    GetServiceNetworkServiceAssociationOutput.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    GetServiceNetworkServiceAssociationOutput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    GetServiceNetworkServiceAssociationOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    GetServiceNetworkServiceAssociationOutput.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    GetServiceNetworkServiceAssociationOutput.type = Types::GetServiceNetworkServiceAssociationOutput
    GetServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationIdentifier, name: "serviceNetworkVpcAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkVpcAssociationInput.type = Types::GetServiceNetworkVpcAssociationInput
    GetServiceNetworkVpcAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationId, name: "id"))
    GetServiceNetworkVpcAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationStatus, name: "status"))
    GetServiceNetworkVpcAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationArn, name: "arn"))
    GetServiceNetworkVpcAssociationOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    GetServiceNetworkVpcAssociationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "serviceNetworkId"))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "serviceNetworkName"))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "serviceNetworkArn"))
    GetServiceNetworkVpcAssociationOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    GetServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    GetServiceNetworkVpcAssociationOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    GetServiceNetworkVpcAssociationOutput.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    GetServiceNetworkVpcAssociationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetServiceNetworkVpcAssociationOutput.type = Types::GetServiceNetworkVpcAssociationOutput
    GetServiceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "id"))
    GetServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    GetServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "arn"))
    GetServiceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetServiceOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetServiceOutput.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    GetServiceOutput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    GetServiceOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    GetServiceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, name: "status"))
    GetServiceOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    GetServiceOutput.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "failureCode"))
    GetServiceOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    GetServiceOutput.type = Types::GetServiceOutput
    GetTargetGroupInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetGroupInput.type = Types::GetTargetGroupInput
    GetTargetGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupId, name: "id"))
    GetTargetGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, name: "arn"))
    GetTargetGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name"))
    GetTargetGroupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "type"))
    GetTargetGroupOutput.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupConfig, name: "config"))
    GetTargetGroupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetTargetGroupOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetTargetGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStatus, name: "status"))
    GetTargetGroupOutput.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArnList, name: "serviceArns"))
    GetTargetGroupOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    GetTargetGroupOutput.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    GetTargetGroupOutput.type = Types::GetTargetGroupOutput
    HeaderMatch.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchName, name: "name", traits: {"smithy.api#required" => {}}))
    HeaderMatch.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchType, name: "match", traits: {"smithy.api#required" => {}}))
    HeaderMatch.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "caseSensitive"))
    HeaderMatch.type = Types::HeaderMatch
    HeaderMatchList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, name: "member"))
    HeaderMatchType.add_member(:exact, Types::HeaderMatchType::Exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchExact, name: "exact"))
    HeaderMatchType.add_member(:prefix, Types::HeaderMatchType::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchPrefix, name: "prefix"))
    HeaderMatchType.add_member(:contains, Types::HeaderMatchType::Contains, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchContains, name: "contains"))
    HeaderMatchType.add_member(:unknown, Types::HeaderMatchType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HeaderMatchType.type = Types::HeaderMatchType
    HealthCheckConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled"))
    HealthCheckConfig.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupProtocol, name: "protocol"))
    HealthCheckConfig.add_member(:protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckProtocolVersion, name: "protocolVersion"))
    HealthCheckConfig.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPort, name: "port"))
    HealthCheckConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPath, name: "path"))
    HealthCheckConfig.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIntervalSeconds, name: "healthCheckIntervalSeconds"))
    HealthCheckConfig.add_member(:health_check_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeoutSeconds, name: "healthCheckTimeoutSeconds"))
    HealthCheckConfig.add_member(:healthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthyThresholdCount, name: "healthyThresholdCount"))
    HealthCheckConfig.add_member(:unhealthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UnhealthyThresholdCount, name: "unhealthyThresholdCount"))
    HealthCheckConfig.add_member(:matcher, ::Smithy::Schema::Shapes::MemberShape.new(target: Matcher, name: "matcher"))
    HealthCheckConfig.type = Types::HealthCheckConfig
    HttpMatch.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethod, name: "method"))
    HttpMatch.add_member(:path_match, ::Smithy::Schema::Shapes::MemberShape.new(target: PathMatch, name: "pathMatch"))
    HttpMatch.add_member(:header_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchList, name: "headerMatches"))
    HttpMatch.type = Types::HttpMatch
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpResource.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "ipAddress"))
    IpResource.type = Types::IpResource
    ListAccessLogSubscriptionsInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpQuery" => "resourceIdentifier", "smithy.api#required" => {}}))
    ListAccessLogSubscriptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessLogSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessLogSubscriptionsInput.type = Types::ListAccessLogSubscriptionsInput
    ListAccessLogSubscriptionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAccessLogSubscriptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessLogSubscriptionsOutput.type = Types::ListAccessLogSubscriptionsOutput
    ListListenersInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListListenersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListListenersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListListenersInput.type = Types::ListListenersInput
    ListListenersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListListenersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListListenersOutput.type = Types::ListListenersOutput
    ListResourceConfigurationsRequest.add_member(:resource_gateway_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIdentifier, name: "resourceGatewayIdentifier", traits: {"smithy.api#httpQuery" => "resourceGatewayIdentifier"}))
    ListResourceConfigurationsRequest.add_member(:resource_configuration_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationGroupIdentifier", traits: {"smithy.api#httpQuery" => "resourceConfigurationGroupIdentifier"}))
    ListResourceConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceConfigurationsRequest.type = Types::ListResourceConfigurationsRequest
    ListResourceConfigurationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationSummaryList, name: "items"))
    ListResourceConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourceConfigurationsResponse.type = Types::ListResourceConfigurationsResponse
    ListResourceEndpointAssociationsRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#httpQuery" => "resourceConfigurationIdentifier", "smithy.api#required" => {}}))
    ListResourceEndpointAssociationsRequest.add_member(:resource_endpoint_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationIdentifier, name: "resourceEndpointAssociationIdentifier", traits: {"smithy.api#httpQuery" => "resourceEndpointAssociationIdentifier"}))
    ListResourceEndpointAssociationsRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "vpcEndpointId", traits: {"smithy.api#httpQuery" => "vpcEndpointId"}))
    ListResourceEndpointAssociationsRequest.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointOwner, name: "vpcEndpointOwner", traits: {"smithy.api#httpQuery" => "vpcEndpointOwner"}))
    ListResourceEndpointAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceEndpointAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceEndpointAssociationsRequest.type = Types::ListResourceEndpointAssociationsRequest
    ListResourceEndpointAssociationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListResourceEndpointAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourceEndpointAssociationsResponse.type = Types::ListResourceEndpointAssociationsResponse
    ListResourceGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceGatewaysRequest.type = Types::ListResourceGatewaysRequest
    ListResourceGatewaysResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayList, name: "items"))
    ListResourceGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourceGatewaysResponse.type = Types::ListResourceGatewaysResponse
    ListRulesInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRulesInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRulesInput.type = Types::ListRulesInput
    ListRulesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRulesOutput.type = Types::ListRulesOutput
    ListServiceNetworkResourceAssociationsRequest.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#httpQuery" => "resourceConfigurationIdentifier"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:include_children, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeChildren", traits: {"smithy.api#httpQuery" => "includeChildren"}))
    ListServiceNetworkResourceAssociationsRequest.type = Types::ListServiceNetworkResourceAssociationsRequest
    ListServiceNetworkResourceAssociationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListServiceNetworkResourceAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceNetworkResourceAssociationsResponse.type = Types::ListServiceNetworkResourceAssociationsResponse
    ListServiceNetworkServiceAssociationsInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpQuery" => "serviceIdentifier"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkServiceAssociationsInput.type = Types::ListServiceNetworkServiceAssociationsInput
    ListServiceNetworkServiceAssociationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListServiceNetworkServiceAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceNetworkServiceAssociationsOutput.type = Types::ListServiceNetworkServiceAssociationsOutput
    ListServiceNetworkVpcAssociationsInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier", traits: {"smithy.api#httpQuery" => "vpcIdentifier"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkVpcAssociationsInput.type = Types::ListServiceNetworkVpcAssociationsInput
    ListServiceNetworkVpcAssociationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListServiceNetworkVpcAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceNetworkVpcAssociationsOutput.type = Types::ListServiceNetworkVpcAssociationsOutput
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpQuery" => "serviceNetworkIdentifier", "smithy.api#required" => {}}))
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkVpcEndpointAssociationsRequest.type = Types::ListServiceNetworkVpcEndpointAssociationsRequest
    ListServiceNetworkVpcEndpointAssociationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcEndpointAssociationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListServiceNetworkVpcEndpointAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceNetworkVpcEndpointAssociationsResponse.type = Types::ListServiceNetworkVpcEndpointAssociationsResponse
    ListServiceNetworksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworksInput.type = Types::ListServiceNetworksInput
    ListServiceNetworksOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkList, name: "items", traits: {"smithy.api#required" => {}}))
    ListServiceNetworksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceNetworksOutput.type = Types::ListServiceNetworksOutput
    ListServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "items"))
    ListServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTargetGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTargetGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTargetGroupsInput.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier", traits: {"smithy.api#httpQuery" => "vpcIdentifier"}))
    ListTargetGroupsInput.add_member(:target_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "targetGroupType", traits: {"smithy.api#httpQuery" => "targetGroupType"}))
    ListTargetGroupsInput.type = Types::ListTargetGroupsInput
    ListTargetGroupsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupList, name: "items"))
    ListTargetGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetGroupsOutput.type = Types::ListTargetGroupsOutput
    ListTargetsInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTargetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTargetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTargetsInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "targets", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListTargetsInput.type = Types::ListTargetsInput
    ListTargetsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListTargetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetsOutput.type = Types::ListTargetsOutput
    ListenerSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, name: "arn"))
    ListenerSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerId, name: "id"))
    ListenerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerName, name: "name"))
    ListenerSummary.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProtocol, name: "protocol"))
    ListenerSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    ListenerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ListenerSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ListenerSummary.type = Types::ListenerSummary
    ListenerSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerSummary, name: "member"))
    Matcher.add_member(:http_code, Types::Matcher::HttpCode, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpCodeMatcher, name: "httpCode"))
    Matcher.add_member(:unknown, Types::Matcher::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Matcher.type = Types::Matcher
    PathMatch.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: PathMatchType, name: "match", traits: {"smithy.api#required" => {}}))
    PathMatch.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "caseSensitive"))
    PathMatch.type = Types::PathMatch
    PathMatchType.add_member(:exact, Types::PathMatchType::Exact, ::Smithy::Schema::Shapes::MemberShape.new(target: PathMatchExact, name: "exact"))
    PathMatchType.add_member(:prefix, Types::PathMatchType::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathMatchPrefix, name: "prefix"))
    PathMatchType.add_member(:unknown, Types::PathMatchType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PathMatchType.type = Types::PathMatchType
    PortRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "member"))
    PutAuthPolicyInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAuthPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthPolicyString, name: "policy", traits: {"smithy.api#required" => {}}))
    PutAuthPolicyInput.type = Types::PutAuthPolicyInput
    PutAuthPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthPolicyString, name: "policy"))
    PutAuthPolicyOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthPolicyState, name: "state"))
    PutAuthPolicyOutput.type = Types::PutAuthPolicyOutput
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    RegisterTargetsInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterTargetsInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "targets", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RegisterTargetsInput.type = Types::RegisterTargetsInput
    RegisterTargetsOutput.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "successful"))
    RegisterTargetsOutput.add_member(:unsuccessful, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFailureList, name: "unsuccessful"))
    RegisterTargetsOutput.type = Types::RegisterTargetsOutput
    ResourceConfigurationDefinition.add_member(:dns_resource, Types::ResourceConfigurationDefinition::DnsResource, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsResource, name: "dnsResource"))
    ResourceConfigurationDefinition.add_member(:ip_resource, Types::ResourceConfigurationDefinition::IpResource, ::Smithy::Schema::Shapes::MemberShape.new(target: IpResource, name: "ipResource"))
    ResourceConfigurationDefinition.add_member(:arn_resource, Types::ResourceConfigurationDefinition::ArnResource, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnResource, name: "arnResource"))
    ResourceConfigurationDefinition.add_member(:unknown, Types::ResourceConfigurationDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceConfigurationDefinition.type = Types::ResourceConfigurationDefinition
    ResourceConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "id"))
    ResourceConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "name"))
    ResourceConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "arn"))
    ResourceConfigurationSummary.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    ResourceConfigurationSummary.add_member(:resource_configuration_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationGroupId"))
    ResourceConfigurationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationType, name: "type"))
    ResourceConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationStatus, name: "status"))
    ResourceConfigurationSummary.add_member(:amazon_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "amazonManaged"))
    ResourceConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ResourceConfigurationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ResourceConfigurationSummary.type = Types::ResourceConfigurationSummary
    ResourceConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationSummary, name: "member"))
    ResourceEndpointAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationSummary, name: "member"))
    ResourceEndpointAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationId, name: "id"))
    ResourceEndpointAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEndpointAssociationArn, name: "arn"))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationArn"))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "resourceConfigurationName"))
    ResourceEndpointAssociationSummary.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "vpcEndpointId"))
    ResourceEndpointAssociationSummary.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointOwner, name: "vpcEndpointOwner"))
    ResourceEndpointAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    ResourceEndpointAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ResourceEndpointAssociationSummary.type = Types::ResourceEndpointAssociationSummary
    ResourceGatewayList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewaySummary, name: "member"))
    ResourceGatewaySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name"))
    ResourceGatewaySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "id"))
    ResourceGatewaySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "arn"))
    ResourceGatewaySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayStatus, name: "status"))
    ResourceGatewaySummary.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier"))
    ResourceGatewaySummary.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds"))
    ResourceGatewaySummary.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    ResourceGatewaySummary.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIpAddressType, name: "ipAddressType"))
    ResourceGatewaySummary.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    ResourceGatewaySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ResourceGatewaySummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ResourceGatewaySummary.type = Types::ResourceGatewaySummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleAction.add_member(:forward, Types::RuleAction::Forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardAction, name: "forward"))
    RuleAction.add_member(:fixed_response, Types::RuleAction::FixedResponse, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedResponseAction, name: "fixedResponse"))
    RuleAction.add_member(:unknown, Types::RuleAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleAction.type = Types::RuleAction
    RuleMatch.add_member(:http_match, Types::RuleMatch::HttpMatch, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMatch, name: "httpMatch"))
    RuleMatch.add_member(:unknown, Types::RuleMatch::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RuleMatch.type = Types::RuleMatch
    RuleSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "arn"))
    RuleSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "id"))
    RuleSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    RuleSummary.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDefault"))
    RuleSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    RuleSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    RuleSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuleUpdate.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#required" => {}}))
    RuleUpdate.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    RuleUpdate.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    RuleUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    RuleUpdate.type = Types::RuleUpdate
    RuleUpdateFailure.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier"))
    RuleUpdateFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "failureCode"))
    RuleUpdateFailure.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    RuleUpdateFailure.type = Types::RuleUpdateFailure
    RuleUpdateFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdateFailure, name: "member"))
    RuleUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdate, name: "member"))
    RuleUpdateSuccess.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "arn"))
    RuleUpdateSuccess.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "id"))
    RuleUpdateSuccess.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    RuleUpdateSuccess.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDefault"))
    RuleUpdateSuccess.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    RuleUpdateSuccess.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    RuleUpdateSuccess.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    RuleUpdateSuccess.type = Types::RuleUpdateSuccess
    RuleUpdateSuccessList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleUpdateSuccess, name: "member"))
    SecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "member"))
    ServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary, name: "member"))
    ServiceNetworkEndpointAssociation.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcEndpointId"))
    ServiceNetworkEndpointAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcId"))
    ServiceNetworkEndpointAssociation.add_member(:vpc_endpoint_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vpcEndpointOwnerId"))
    ServiceNetworkEndpointAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    ServiceNetworkEndpointAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "state"))
    ServiceNetworkEndpointAssociation.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "serviceNetworkArn"))
    ServiceNetworkEndpointAssociation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceNetworkEndpointAssociation.type = Types::ServiceNetworkEndpointAssociation
    ServiceNetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkSummary, name: "member"))
    ServiceNetworkResourceAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationSummary, name: "member"))
    ServiceNetworkResourceAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationId, name: "id"))
    ServiceNetworkResourceAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationArn, name: "arn"))
    ServiceNetworkResourceAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkResourceAssociationStatus, name: "status"))
    ServiceNetworkResourceAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    ServiceNetworkResourceAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationArn"))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "resourceConfigurationName"))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifierWithoutRegex, name: "serviceNetworkId"))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArnWithoutRegex, name: "serviceNetworkArn"))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkNameWithoutRegex, name: "serviceNetworkName"))
    ServiceNetworkResourceAssociationSummary.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    ServiceNetworkResourceAssociationSummary.add_member(:private_dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "privateDnsEntry"))
    ServiceNetworkResourceAssociationSummary.add_member(:is_managed_association, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isManagedAssociation"))
    ServiceNetworkResourceAssociationSummary.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    ServiceNetworkResourceAssociationSummary.type = Types::ServiceNetworkResourceAssociationSummary
    ServiceNetworkServiceAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationSummary, name: "member"))
    ServiceNetworkServiceAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationIdentifier, name: "id"))
    ServiceNetworkServiceAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationStatus, name: "status"))
    ServiceNetworkServiceAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkServiceAssociationArn, name: "arn"))
    ServiceNetworkServiceAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    ServiceNetworkServiceAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "serviceName"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "serviceNetworkId"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "serviceNetworkName"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "serviceNetworkArn"))
    ServiceNetworkServiceAssociationSummary.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    ServiceNetworkServiceAssociationSummary.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    ServiceNetworkServiceAssociationSummary.type = Types::ServiceNetworkServiceAssociationSummary
    ServiceNetworkSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "id"))
    ServiceNetworkSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "name"))
    ServiceNetworkSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "arn"))
    ServiceNetworkSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceNetworkSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ServiceNetworkSummary.add_member(:number_of_associated_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfAssociatedVPCs"))
    ServiceNetworkSummary.add_member(:number_of_associated_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfAssociatedServices"))
    ServiceNetworkSummary.add_member(:number_of_associated_resource_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "numberOfAssociatedResourceConfigurations"))
    ServiceNetworkSummary.type = Types::ServiceNetworkSummary
    ServiceNetworkVpcAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationSummary, name: "member"))
    ServiceNetworkVpcAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationId, name: "id"))
    ServiceNetworkVpcAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationArn, name: "arn"))
    ServiceNetworkVpcAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationStatus, name: "status"))
    ServiceNetworkVpcAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    ServiceNetworkVpcAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "serviceNetworkId"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "serviceNetworkName"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "serviceNetworkArn"))
    ServiceNetworkVpcAssociationSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    ServiceNetworkVpcAssociationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ServiceNetworkVpcAssociationSummary.type = Types::ServiceNetworkVpcAssociationSummary
    ServiceNetworkVpcEndpointAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkEndpointAssociation, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "id"))
    ServiceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    ServiceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "arn"))
    ServiceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    ServiceSummary.add_member(:dns_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsEntry, name: "dnsEntry"))
    ServiceSummary.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    ServiceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceStatus, name: "status"))
    ServiceSummary.type = Types::ServiceSummary
    SharingConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled"))
    SharingConfig.type = Types::SharingConfig
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Target.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    Target.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    Target.type = Types::Target
    TargetFailure.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    TargetFailure.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    TargetFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    TargetFailure.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    TargetFailure.type = Types::TargetFailure
    TargetFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFailure, name: "member"))
    TargetGroupConfig.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    TargetGroupConfig.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupProtocol, name: "protocol"))
    TargetGroupConfig.add_member(:protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupProtocolVersion, name: "protocolVersion"))
    TargetGroupConfig.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    TargetGroupConfig.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier"))
    TargetGroupConfig.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "healthCheck"))
    TargetGroupConfig.add_member(:lambda_event_structure_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEventStructureVersion, name: "lambdaEventStructureVersion"))
    TargetGroupConfig.type = Types::TargetGroupConfig
    TargetGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupSummary, name: "member"))
    TargetGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupId, name: "id"))
    TargetGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, name: "arn"))
    TargetGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name"))
    TargetGroupSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "type"))
    TargetGroupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    TargetGroupSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    TargetGroupSummary.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupProtocol, name: "protocol"))
    TargetGroupSummary.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    TargetGroupSummary.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcIdentifier"))
    TargetGroupSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    TargetGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStatus, name: "status"))
    TargetGroupSummary.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArnList, name: "serviceArns"))
    TargetGroupSummary.add_member(:lambda_event_structure_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEventStructureVersion, name: "lambdaEventStructureVersion"))
    TargetGroupSummary.type = Types::TargetGroupSummary
    TargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    TargetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    TargetSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    TargetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "status"))
    TargetSummary.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reasonCode"))
    TargetSummary.type = Types::TargetSummary
    TargetSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSummary, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionIdentifier, name: "accessLogSubscriptionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionInput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionInput.type = Types::UpdateAccessLogSubscriptionInput
    UpdateAccessLogSubscriptionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogSubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogDestinationArn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.type = Types::UpdateAccessLogSubscriptionOutput
    UpdateListenerInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateListenerInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateListenerInput.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "defaultAction", traits: {"smithy.api#required" => {}}))
    UpdateListenerInput.type = Types::UpdateListenerInput
    UpdateListenerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, name: "arn"))
    UpdateListenerOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerId, name: "id"))
    UpdateListenerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerName, name: "name"))
    UpdateListenerOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProtocol, name: "protocol"))
    UpdateListenerOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    UpdateListenerOutput.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    UpdateListenerOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    UpdateListenerOutput.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "defaultAction"))
    UpdateListenerOutput.type = Types::UpdateListenerOutput
    UpdateResourceConfigurationRequest.add_member(:resource_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceConfigurationRequest.add_member(:resource_configuration_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationDefinition, name: "resourceConfigurationDefinition"))
    UpdateResourceConfigurationRequest.add_member(:allow_association_to_shareable_service_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowAssociationToShareableServiceNetwork"))
    UpdateResourceConfigurationRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeList, name: "portRanges"))
    UpdateResourceConfigurationRequest.type = Types::UpdateResourceConfigurationRequest
    UpdateResourceConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "id"))
    UpdateResourceConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationName, name: "name"))
    UpdateResourceConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "arn"))
    UpdateResourceConfigurationResponse.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    UpdateResourceConfigurationResponse.add_member(:resource_configuration_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationGroupId"))
    UpdateResourceConfigurationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationType, name: "type"))
    UpdateResourceConfigurationResponse.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeList, name: "portRanges"))
    UpdateResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "allowAssociationToShareableServiceNetwork"))
    UpdateResourceConfigurationResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "protocol"))
    UpdateResourceConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationStatus, name: "status"))
    UpdateResourceConfigurationResponse.add_member(:resource_configuration_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationDefinition, name: "resourceConfigurationDefinition"))
    UpdateResourceConfigurationResponse.type = Types::UpdateResourceConfigurationResponse
    UpdateResourceGatewayRequest.add_member(:resource_gateway_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayIdentifier, name: "resourceGatewayIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceGatewayRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}}))
    UpdateResourceGatewayRequest.type = Types::UpdateResourceGatewayRequest
    UpdateResourceGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayName, name: "name"))
    UpdateResourceGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "id"))
    UpdateResourceGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "arn"))
    UpdateResourceGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayStatus, name: "status"))
    UpdateResourceGatewayResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    UpdateResourceGatewayResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "subnetIds"))
    UpdateResourceGatewayResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    UpdateResourceGatewayResponse.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    UpdateResourceGatewayResponse.type = Types::UpdateResourceGatewayResponse
    UpdateRuleInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:listener_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerIdentifier, name: "listenerIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    UpdateRuleInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    UpdateRuleInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    UpdateRuleInput.type = Types::UpdateRuleInput
    UpdateRuleOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "arn"))
    UpdateRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "id"))
    UpdateRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name"))
    UpdateRuleOutput.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isDefault"))
    UpdateRuleOutput.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMatch, name: "match"))
    UpdateRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority"))
    UpdateRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAction, name: "action"))
    UpdateRuleOutput.type = Types::UpdateRuleOutput
    UpdateServiceInput.add_member(:service_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIdentifier, name: "serviceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceInput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    UpdateServiceInput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    UpdateServiceInput.type = Types::UpdateServiceInput
    UpdateServiceNetworkInput.add_member(:service_network_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkIdentifier, name: "serviceNetworkIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceNetworkInput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    UpdateServiceNetworkInput.type = Types::UpdateServiceNetworkInput
    UpdateServiceNetworkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkId, name: "id"))
    UpdateServiceNetworkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkName, name: "name"))
    UpdateServiceNetworkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkArn, name: "arn"))
    UpdateServiceNetworkOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    UpdateServiceNetworkOutput.type = Types::UpdateServiceNetworkOutput
    UpdateServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationIdentifier, name: "serviceNetworkVpcAssociationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceNetworkVpcAssociationInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    UpdateServiceNetworkVpcAssociationInput.type = Types::UpdateServiceNetworkVpcAssociationInput
    UpdateServiceNetworkVpcAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationId, name: "id"))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationArn, name: "arn"))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNetworkVpcAssociationStatus, name: "status"))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "createdBy"))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupList, name: "securityGroupIds"))
    UpdateServiceNetworkVpcAssociationOutput.type = Types::UpdateServiceNetworkVpcAssociationOutput
    UpdateServiceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "id"))
    UpdateServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "arn"))
    UpdateServiceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    UpdateServiceOutput.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCustomDomainName, name: "customDomainName"))
    UpdateServiceOutput.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn"))
    UpdateServiceOutput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    UpdateServiceOutput.type = Types::UpdateServiceOutput
    UpdateTargetGroupInput.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetGroupInput.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "healthCheck", traits: {"smithy.api#required" => {}}))
    UpdateTargetGroupInput.type = Types::UpdateTargetGroupInput
    UpdateTargetGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupId, name: "id"))
    UpdateTargetGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, name: "arn"))
    UpdateTargetGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name"))
    UpdateTargetGroupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupType, name: "type"))
    UpdateTargetGroupOutput.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupConfig, name: "config"))
    UpdateTargetGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStatus, name: "status"))
    UpdateTargetGroupOutput.type = Types::UpdateTargetGroupOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    WeightedTargetGroup.add_member(:target_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIdentifier, name: "targetGroupIdentifier", traits: {"smithy.api#required" => {}}))
    WeightedTargetGroup.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupWeight, name: "weight"))
    WeightedTargetGroup.type = Types::WeightedTargetGroup
    WeightedTargetGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTargetGroup, name: "member"))

    MercuryControlPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.vpclattice#MercuryControlPlane"
      service.name = "MercuryControlPlane"
      service.version = "2022-11-30"
      service.traits = {"aws.api#service" => {"sdkId" => "VPC Lattice", "arnNamespace" => "vpc-lattice", "cloudFormationName" => "VpcLattice", "cloudTrailEventSource" => "vpc-lattice.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "vpc-lattice"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "Amazon VPC Lattice"}
      service.add_operation(:batch_update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#BatchUpdateRule"
        operation.name = "BatchUpdateRule"
        operation.input = BatchUpdateRuleInput
        operation.output = BatchUpdateRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_access_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateAccessLogSubscription"
        operation.name = "CreateAccessLogSubscription"
        operation.input = CreateAccessLogSubscriptionInput
        operation.output = CreateAccessLogSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/accesslogsubscriptions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateListener"
        operation.name = "CreateListener"
        operation.input = CreateListenerInput
        operation.output = CreateListenerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services/{serviceIdentifier}/listeners"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateResourceConfiguration"
        operation.name = "CreateResourceConfiguration"
        operation.input = CreateResourceConfigurationRequest
        operation.output = CreateResourceConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/resourceconfigurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateResourceGateway"
        operation.name = "CreateResourceGateway"
        operation.input = CreateResourceGatewayRequest
        operation.output = CreateResourceGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/resourcegateways"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateRule"
        operation.name = "CreateRule"
        operation.input = CreateRuleInput
        operation.output = CreateRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateService"
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
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetwork"
        operation.name = "CreateServiceNetwork"
        operation.input = CreateServiceNetworkInput
        operation.output = CreateServiceNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/servicenetworks"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociation"
        operation.name = "CreateServiceNetworkResourceAssociation"
        operation.input = CreateServiceNetworkResourceAssociationRequest
        operation.output = CreateServiceNetworkResourceAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/servicenetworkresourceassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_service_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociation"
        operation.name = "CreateServiceNetworkServiceAssociation"
        operation.input = CreateServiceNetworkServiceAssociationInput
        operation.output = CreateServiceNetworkServiceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_vpc_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociation"
        operation.name = "CreateServiceNetworkVpcAssociation"
        operation.input = CreateServiceNetworkVpcAssociationInput
        operation.output = CreateServiceNetworkVpcAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateTargetGroup"
        operation.name = "CreateTargetGroup"
        operation.input = CreateTargetGroupInput
        operation.output = CreateTargetGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/targetgroups", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteAccessLogSubscription"
        operation.name = "DeleteAccessLogSubscription"
        operation.input = DeleteAccessLogSubscriptionInput
        operation.output = DeleteAccessLogSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_auth_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteAuthPolicy"
        operation.name = "DeleteAuthPolicy"
        operation.input = DeleteAuthPolicyInput
        operation.output = DeleteAuthPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/authpolicy/{resourceIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = DeleteListenerInput
        operation.output = DeleteListenerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceConfiguration"
        operation.name = "DeleteResourceConfiguration"
        operation.input = DeleteResourceConfigurationRequest
        operation.output = DeleteResourceConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceEndpointAssociation"
        operation.name = "DeleteResourceEndpointAssociation"
        operation.input = DeleteResourceEndpointAssociationRequest
        operation.output = DeleteResourceEndpointAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourceendpointassociations/{resourceEndpointAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceGateway"
        operation.name = "DeleteResourceGateway"
        operation.input = DeleteResourceGatewayRequest
        operation.output = DeleteResourceGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways/{resourceGatewayIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = DeleteResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleInput
        operation.output = DeleteRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceInput
        operation.output = DeleteServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services/{serviceIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetwork"
        operation.name = "DeleteServiceNetwork"
        operation.input = DeleteServiceNetworkInput
        operation.output = DeleteServiceNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "uri" => "/servicenetworks/{serviceNetworkIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociation"
        operation.name = "DeleteServiceNetworkResourceAssociation"
        operation.input = DeleteServiceNetworkResourceAssociationRequest
        operation.output = DeleteServiceNetworkResourceAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_service_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociation"
        operation.name = "DeleteServiceNetworkServiceAssociation"
        operation.input = DeleteServiceNetworkServiceAssociationInput
        operation.output = DeleteServiceNetworkServiceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_vpc_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociation"
        operation.name = "DeleteServiceNetworkVpcAssociation"
        operation.input = DeleteServiceNetworkVpcAssociationInput
        operation.output = DeleteServiceNetworkVpcAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteTargetGroup"
        operation.name = "DeleteTargetGroup"
        operation.input = DeleteTargetGroupInput
        operation.output = DeleteTargetGroupOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeregisterTargets"
        operation.name = "DeregisterTargets"
        operation.input = DeregisterTargetsInput
        operation.output = DeregisterTargetsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/deregistertargets", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetAccessLogSubscription"
        operation.name = "GetAccessLogSubscription"
        operation.input = GetAccessLogSubscriptionInput
        operation.output = GetAccessLogSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_auth_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetAuthPolicy"
        operation.name = "GetAuthPolicy"
        operation.input = GetAuthPolicyInput
        operation.output = GetAuthPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/authpolicy/{resourceIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetListener"
        operation.name = "GetListener"
        operation.input = GetListenerInput
        operation.output = GetListenerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourceConfiguration"
        operation.name = "GetResourceConfiguration"
        operation.input = GetResourceConfigurationRequest
        operation.output = GetResourceConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourceGateway"
        operation.name = "GetResourceGateway"
        operation.input = GetResourceGatewayRequest
        operation.output = GetResourceGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourcegateways/{resourceGatewayIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetRule"
        operation.name = "GetRule"
        operation.input = GetRuleInput
        operation.output = GetRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetService"
        operation.name = "GetService"
        operation.input = GetServiceInput
        operation.output = GetServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetwork"
        operation.name = "GetServiceNetwork"
        operation.input = GetServiceNetworkInput
        operation.output = GetServiceNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/servicenetworks/{serviceNetworkIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkResourceAssociation"
        operation.name = "GetServiceNetworkResourceAssociation"
        operation.input = GetServiceNetworkResourceAssociationRequest
        operation.output = GetServiceNetworkResourceAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_service_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkServiceAssociation"
        operation.name = "GetServiceNetworkServiceAssociation"
        operation.input = GetServiceNetworkServiceAssociationInput
        operation.output = GetServiceNetworkServiceAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_vpc_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkVpcAssociation"
        operation.name = "GetServiceNetworkVpcAssociation"
        operation.input = GetServiceNetworkVpcAssociationInput
        operation.output = GetServiceNetworkVpcAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetTargetGroup"
        operation.name = "GetTargetGroup"
        operation.input = GetTargetGroupInput
        operation.output = GetTargetGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_log_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListAccessLogSubscriptions"
        operation.name = "ListAccessLogSubscriptions"
        operation.input = ListAccessLogSubscriptionsInput
        operation.output = ListAccessLogSubscriptionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/accesslogsubscriptions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessLogSubscriptions.new
      end)
      service.add_operation(:list_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListListeners"
        operation.name = "ListListeners"
        operation.input = ListListenersInput
        operation.output = ListListenersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListListeners.new
      end)
      service.add_operation(:list_resource_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceConfigurations"
        operation.name = "ListResourceConfigurations"
        operation.input = ListResourceConfigurationsRequest
        operation.output = ListResourceConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourceconfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceConfigurations.new
      end)
      service.add_operation(:list_resource_endpoint_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceEndpointAssociations"
        operation.name = "ListResourceEndpointAssociations"
        operation.input = ListResourceEndpointAssociationsRequest
        operation.output = ListResourceEndpointAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourceendpointassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceEndpointAssociations.new
      end)
      service.add_operation(:list_resource_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceGateways"
        operation.name = "ListResourceGateways"
        operation.input = ListResourceGatewaysRequest
        operation.output = ListResourceGatewaysResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceGateways.new
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesInput
        operation.output = ListRulesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_service_network_resource_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkResourceAssociations"
        operation.name = "ListServiceNetworkResourceAssociations"
        operation.input = ListServiceNetworkResourceAssociationsRequest
        operation.output = ListServiceNetworkResourceAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkResourceAssociations.new
      end)
      service.add_operation(:list_service_network_service_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkServiceAssociations"
        operation.name = "ListServiceNetworkServiceAssociations"
        operation.input = ListServiceNetworkServiceAssociationsInput
        operation.output = ListServiceNetworkServiceAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkServiceAssociations.new
      end)
      service.add_operation(:list_service_network_vpc_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkVpcAssociations"
        operation.name = "ListServiceNetworkVpcAssociations"
        operation.input = ListServiceNetworkVpcAssociationsInput
        operation.output = ListServiceNetworkVpcAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkVpcAssociations.new
      end)
      service.add_operation(:list_service_network_vpc_endpoint_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociations"
        operation.name = "ListServiceNetworkVpcEndpointAssociations"
        operation.input = ListServiceNetworkVpcEndpointAssociationsRequest
        operation.output = ListServiceNetworkVpcEndpointAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcendpointassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkVpcEndpointAssociations.new
      end)
      service.add_operation(:list_service_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworks"
        operation.name = "ListServiceNetworks"
        operation.input = ListServiceNetworksInput
        operation.output = ListServiceNetworksOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworks", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworks.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesInput
        operation.output = ListServicesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTargetGroups"
        operation.name = "ListTargetGroups"
        operation.input = ListTargetGroupsInput
        operation.output = ListTargetGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTargetGroups.new
      end)
      service.add_operation(:list_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTargets"
        operation.name = "ListTargets"
        operation.input = ListTargetsInput
        operation.output = ListTargetsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/listtargets", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTargets.new
      end)
      service.add_operation(:put_auth_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#PutAuthPolicy"
        operation.name = "PutAuthPolicy"
        operation.input = PutAuthPolicyInput
        operation.output = PutAuthPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/authpolicy/{resourceIdentifier}"}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = PutResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#RegisterTargets"
        operation.name = "RegisterTargets"
        operation.input = RegisterTargetsInput
        operation.output = RegisterTargetsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/registertargets", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_access_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateAccessLogSubscription"
        operation.name = "UpdateAccessLogSubscription"
        operation.input = UpdateAccessLogSubscriptionInput
        operation.output = UpdateAccessLogSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateListener"
        operation.name = "UpdateListener"
        operation.input = UpdateListenerInput
        operation.output = UpdateListenerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_resource_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateResourceConfiguration"
        operation.name = "UpdateResourceConfiguration"
        operation.input = UpdateResourceConfigurationRequest
        operation.output = UpdateResourceConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}}
      end)
      service.add_operation(:update_resource_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateResourceGateway"
        operation.name = "UpdateResourceGateway"
        operation.input = UpdateResourceGatewayRequest
        operation.output = UpdateResourceGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways/{resourceGatewayIdentifier}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = UpdateRuleInput
        operation.output = UpdateRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateService"
        operation.name = "UpdateService"
        operation.input = UpdateServiceInput
        operation.output = UpdateServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services/{serviceIdentifier}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_service_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateServiceNetwork"
        operation.name = "UpdateServiceNetwork"
        operation.input = UpdateServiceNetworkInput
        operation.output = UpdateServiceNetworkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/servicenetworks/{serviceNetworkIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_network_vpc_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociation"
        operation.name = "UpdateServiceNetworkVpcAssociation"
        operation.input = UpdateServiceNetworkVpcAssociationInput
        operation.output = UpdateServiceNetworkVpcAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateTargetGroup"
        operation.name = "UpdateTargetGroup"
        operation.input = UpdateTargetGroupInput
        operation.output = UpdateTargetGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
