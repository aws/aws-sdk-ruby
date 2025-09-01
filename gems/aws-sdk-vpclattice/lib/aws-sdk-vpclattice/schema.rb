# frozen_string_literal: true

# This is generated code!

module Aws::VPCLattice
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessLogDestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AccessLogDestinationArn', name: 'AccessLogDestinationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:([^/].*)?$"})
    AccessLogSubscriptionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AccessLogSubscriptionArn', name: 'AccessLogSubscriptionArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:accesslogsubscription/als-[0-9a-z]{17}$"})
    AccessLogSubscriptionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AccessLogSubscriptionId', name: 'AccessLogSubscriptionId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^als-[0-9a-z]{17}$"})
    AccessLogSubscriptionIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AccessLogSubscriptionIdentifier', name: 'AccessLogSubscriptionIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((als-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:accesslogsubscription/als-[0-9a-z]{17}))$"})
    AccessLogSubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#AccessLogSubscriptionList', name: 'AccessLogSubscriptionList')
    AccessLogSubscriptionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#AccessLogSubscriptionSummary', name: 'AccessLogSubscriptionSummary')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#Arn', name: 'Arn', traits: {"smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:vpc-lattice:([a-z0-9][-.a-z0-9]{0,62})?:\\d{12}?:[^/].{0,1023}$"})
    ArnResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ArnResource', name: 'ArnResource')
    AuthPolicyState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AuthPolicyState', name: 'AuthPolicyState', traits: {"smithy.api#enum" => [{"name" => "Active", "value" => "Active"}, {"name" => "Inactive", "value" => "Inactive"}]})
    AuthPolicyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AuthPolicyString', name: 'AuthPolicyString', traits: {"smithy.api#length" => {"max" => 10000}})
    AuthType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#AuthType', name: 'AuthType', traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "AWS_IAM", "value" => "AWS_IAM"}]})
    BatchUpdateRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#BatchUpdateRuleInput', name: 'BatchUpdateRuleInput')
    BatchUpdateRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#BatchUpdateRuleOutput', name: 'BatchUpdateRuleOutput')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.vpclattice#Boolean', name: 'Boolean')
    CertificateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#CertificateArn', name: 'CertificateArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:certificate/[0-9a-z-]+)?$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[!-~]+"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessLogSubscriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateAccessLogSubscriptionInput', name: 'CreateAccessLogSubscriptionInput')
    CreateAccessLogSubscriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateAccessLogSubscriptionOutput', name: 'CreateAccessLogSubscriptionOutput')
    CreateListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateListenerInput', name: 'CreateListenerInput')
    CreateListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateListenerOutput', name: 'CreateListenerOutput')
    CreateResourceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateResourceConfigurationRequest', name: 'CreateResourceConfigurationRequest')
    CreateResourceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateResourceConfigurationResponse', name: 'CreateResourceConfigurationResponse')
    CreateResourceGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateResourceGatewayRequest', name: 'CreateResourceGatewayRequest')
    CreateResourceGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateResourceGatewayResponse', name: 'CreateResourceGatewayResponse')
    CreateRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateRuleInput', name: 'CreateRuleInput')
    CreateRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateRuleOutput', name: 'CreateRuleOutput')
    CreateServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceInput', name: 'CreateServiceInput')
    CreateServiceNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkInput', name: 'CreateServiceNetworkInput')
    CreateServiceNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkOutput', name: 'CreateServiceNetworkOutput')
    CreateServiceNetworkResourceAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociationRequest', name: 'CreateServiceNetworkResourceAssociationRequest')
    CreateServiceNetworkResourceAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociationResponse', name: 'CreateServiceNetworkResourceAssociationResponse')
    CreateServiceNetworkServiceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociationInput', name: 'CreateServiceNetworkServiceAssociationInput')
    CreateServiceNetworkServiceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociationOutput', name: 'CreateServiceNetworkServiceAssociationOutput')
    CreateServiceNetworkVpcAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociationInput', name: 'CreateServiceNetworkVpcAssociationInput')
    CreateServiceNetworkVpcAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociationOutput', name: 'CreateServiceNetworkVpcAssociationOutput')
    CreateServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateServiceOutput', name: 'CreateServiceOutput')
    CreateTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateTargetGroupInput', name: 'CreateTargetGroupInput')
    CreateTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#CreateTargetGroupOutput', name: 'CreateTargetGroupOutput')
    DeleteAccessLogSubscriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteAccessLogSubscriptionInput', name: 'DeleteAccessLogSubscriptionInput')
    DeleteAccessLogSubscriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteAccessLogSubscriptionOutput', name: 'DeleteAccessLogSubscriptionOutput')
    DeleteAuthPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteAuthPolicyInput', name: 'DeleteAuthPolicyInput')
    DeleteAuthPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteAuthPolicyOutput', name: 'DeleteAuthPolicyOutput')
    DeleteListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteListenerInput', name: 'DeleteListenerInput')
    DeleteListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteListenerOutput', name: 'DeleteListenerOutput')
    DeleteResourceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceConfigurationRequest', name: 'DeleteResourceConfigurationRequest')
    DeleteResourceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceConfigurationResponse', name: 'DeleteResourceConfigurationResponse')
    DeleteResourceEndpointAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceEndpointAssociationRequest', name: 'DeleteResourceEndpointAssociationRequest')
    DeleteResourceEndpointAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceEndpointAssociationResponse', name: 'DeleteResourceEndpointAssociationResponse')
    DeleteResourceGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceGatewayRequest', name: 'DeleteResourceGatewayRequest')
    DeleteResourceGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourceGatewayResponse', name: 'DeleteResourceGatewayResponse')
    DeleteResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourcePolicyInput', name: 'DeleteResourcePolicyInput')
    DeleteResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteResourcePolicyOutput', name: 'DeleteResourcePolicyOutput')
    DeleteRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteRuleInput', name: 'DeleteRuleInput')
    DeleteRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteRuleOutput', name: 'DeleteRuleOutput')
    DeleteServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceInput', name: 'DeleteServiceInput')
    DeleteServiceNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkInput', name: 'DeleteServiceNetworkInput')
    DeleteServiceNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkOutput', name: 'DeleteServiceNetworkOutput')
    DeleteServiceNetworkResourceAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociationRequest', name: 'DeleteServiceNetworkResourceAssociationRequest')
    DeleteServiceNetworkResourceAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociationResponse', name: 'DeleteServiceNetworkResourceAssociationResponse')
    DeleteServiceNetworkServiceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociationInput', name: 'DeleteServiceNetworkServiceAssociationInput')
    DeleteServiceNetworkServiceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociationOutput', name: 'DeleteServiceNetworkServiceAssociationOutput')
    DeleteServiceNetworkVpcAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociationInput', name: 'DeleteServiceNetworkVpcAssociationInput')
    DeleteServiceNetworkVpcAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociationOutput', name: 'DeleteServiceNetworkVpcAssociationOutput')
    DeleteServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteServiceOutput', name: 'DeleteServiceOutput')
    DeleteTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteTargetGroupInput', name: 'DeleteTargetGroupInput')
    DeleteTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeleteTargetGroupOutput', name: 'DeleteTargetGroupOutput')
    DeregisterTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeregisterTargetsInput', name: 'DeregisterTargetsInput')
    DeregisterTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DeregisterTargetsOutput', name: 'DeregisterTargetsOutput')
    DnsEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DnsEntry', name: 'DnsEntry')
    DnsResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#DnsResource', name: 'DnsResource')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    FailureCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#FailureCode', name: 'FailureCode')
    FailureMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#FailureMessage', name: 'FailureMessage')
    FixedResponseAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#FixedResponseAction', name: 'FixedResponseAction')
    ForwardAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ForwardAction', name: 'ForwardAction')
    GetAccessLogSubscriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetAccessLogSubscriptionInput', name: 'GetAccessLogSubscriptionInput')
    GetAccessLogSubscriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetAccessLogSubscriptionOutput', name: 'GetAccessLogSubscriptionOutput')
    GetAuthPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetAuthPolicyInput', name: 'GetAuthPolicyInput')
    GetAuthPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetAuthPolicyOutput', name: 'GetAuthPolicyOutput')
    GetListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetListenerInput', name: 'GetListenerInput')
    GetListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetListenerOutput', name: 'GetListenerOutput')
    GetResourceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourceConfigurationRequest', name: 'GetResourceConfigurationRequest')
    GetResourceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourceConfigurationResponse', name: 'GetResourceConfigurationResponse')
    GetResourceGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourceGatewayRequest', name: 'GetResourceGatewayRequest')
    GetResourceGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourceGatewayResponse', name: 'GetResourceGatewayResponse')
    GetResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourcePolicyInput', name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetResourcePolicyOutput', name: 'GetResourcePolicyOutput')
    GetRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetRuleInput', name: 'GetRuleInput')
    GetRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetRuleOutput', name: 'GetRuleOutput')
    GetServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceInput', name: 'GetServiceInput')
    GetServiceNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkInput', name: 'GetServiceNetworkInput')
    GetServiceNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkOutput', name: 'GetServiceNetworkOutput')
    GetServiceNetworkResourceAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkResourceAssociationRequest', name: 'GetServiceNetworkResourceAssociationRequest')
    GetServiceNetworkResourceAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkResourceAssociationResponse', name: 'GetServiceNetworkResourceAssociationResponse')
    GetServiceNetworkServiceAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkServiceAssociationInput', name: 'GetServiceNetworkServiceAssociationInput')
    GetServiceNetworkServiceAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkServiceAssociationOutput', name: 'GetServiceNetworkServiceAssociationOutput')
    GetServiceNetworkVpcAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkVpcAssociationInput', name: 'GetServiceNetworkVpcAssociationInput')
    GetServiceNetworkVpcAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceNetworkVpcAssociationOutput', name: 'GetServiceNetworkVpcAssociationOutput')
    GetServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetServiceOutput', name: 'GetServiceOutput')
    GetTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetTargetGroupInput', name: 'GetTargetGroupInput')
    GetTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#GetTargetGroupOutput', name: 'GetTargetGroupOutput')
    HeaderMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#HeaderMatch', name: 'HeaderMatch')
    HeaderMatchContains = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchContains', name: 'HeaderMatchContains', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchExact = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchExact', name: 'HeaderMatchExact', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchList', name: 'HeaderMatchList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    HeaderMatchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchName', name: 'HeaderMatchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HeaderMatchPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchPrefix', name: 'HeaderMatchPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    HeaderMatchType = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#HeaderMatchType', name: 'HeaderMatchType')
    HealthCheckConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#HealthCheckConfig', name: 'HealthCheckConfig')
    HealthCheckIntervalSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#HealthCheckIntervalSeconds', name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    HealthCheckPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HealthCheckPath', name: 'HealthCheckPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "(^/[a-zA-Z0-9@:%_+.~#?&/=-]*$|(^$))"})
    HealthCheckPort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#HealthCheckPort', name: 'HealthCheckPort', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    HealthCheckProtocolVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HealthCheckProtocolVersion', name: 'HealthCheckProtocolVersion', traits: {"smithy.api#enum" => [{"name" => "HTTP1", "value" => "HTTP1", "documentation" => "Indicates use of HTTP/1.1 to send requests to target"}, {"name" => "HTTP2", "value" => "HTTP2", "documentation" => "Indicates use of HTTP/2 to send requests to target"}]})
    HealthCheckTimeoutSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#HealthCheckTimeoutSeconds', name: 'HealthCheckTimeoutSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 120}})
    HealthyThresholdCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#HealthyThresholdCount', name: 'HealthyThresholdCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    HttpCodeMatcher = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HttpCodeMatcher', name: 'HttpCodeMatcher', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "(^[0-9-,]+$|(^$))"})
    HttpMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#HttpMatch', name: 'HttpMatch')
    HttpMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#HttpMethod', name: 'HttpMethod', traits: {"smithy.api#length" => {"max" => 16}})
    HttpStatusCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#HttpStatusCode', name: 'HttpStatusCode', traits: {"smithy.api#range" => {"min" => 100, "max" => 599}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 4, "max" => 39}})
    IpAddressType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#IpAddressType', name: 'IpAddressType', traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Indicates IPv4 address type"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "Indicates IPv6 address type"}]})
    IpResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#IpResource', name: 'IpResource')
    LambdaEventStructureVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#LambdaEventStructureVersion', name: 'LambdaEventStructureVersion', traits: {"smithy.api#enum" => [{"name" => "V1", "value" => "V1", "documentation" => "This is the default lambda event structure version"}, {"name" => "V2", "value" => "V2", "documentation" => "Indicates use of lambda event structure version 2"}]})
    ListAccessLogSubscriptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListAccessLogSubscriptionsInput', name: 'ListAccessLogSubscriptionsInput')
    ListAccessLogSubscriptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListAccessLogSubscriptionsOutput', name: 'ListAccessLogSubscriptionsOutput')
    ListListenersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListListenersInput', name: 'ListListenersInput')
    ListListenersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListListenersOutput', name: 'ListListenersOutput')
    ListResourceConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceConfigurationsRequest', name: 'ListResourceConfigurationsRequest')
    ListResourceConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceConfigurationsResponse', name: 'ListResourceConfigurationsResponse')
    ListResourceEndpointAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceEndpointAssociationsRequest', name: 'ListResourceEndpointAssociationsRequest')
    ListResourceEndpointAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceEndpointAssociationsResponse', name: 'ListResourceEndpointAssociationsResponse')
    ListResourceGatewaysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceGatewaysRequest', name: 'ListResourceGatewaysRequest')
    ListResourceGatewaysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListResourceGatewaysResponse', name: 'ListResourceGatewaysResponse')
    ListRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListRulesInput', name: 'ListRulesInput')
    ListRulesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListRulesOutput', name: 'ListRulesOutput')
    ListServiceNetworkResourceAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkResourceAssociationsRequest', name: 'ListServiceNetworkResourceAssociationsRequest')
    ListServiceNetworkResourceAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkResourceAssociationsResponse', name: 'ListServiceNetworkResourceAssociationsResponse')
    ListServiceNetworkServiceAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkServiceAssociationsInput', name: 'ListServiceNetworkServiceAssociationsInput')
    ListServiceNetworkServiceAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkServiceAssociationsOutput', name: 'ListServiceNetworkServiceAssociationsOutput')
    ListServiceNetworkVpcAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkVpcAssociationsInput', name: 'ListServiceNetworkVpcAssociationsInput')
    ListServiceNetworkVpcAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkVpcAssociationsOutput', name: 'ListServiceNetworkVpcAssociationsOutput')
    ListServiceNetworkVpcEndpointAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociationsRequest', name: 'ListServiceNetworkVpcEndpointAssociationsRequest')
    ListServiceNetworkVpcEndpointAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociationsResponse', name: 'ListServiceNetworkVpcEndpointAssociationsResponse')
    ListServiceNetworksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworksInput', name: 'ListServiceNetworksInput')
    ListServiceNetworksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServiceNetworksOutput', name: 'ListServiceNetworksOutput')
    ListServicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServicesInput', name: 'ListServicesInput')
    ListServicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListServicesOutput', name: 'ListServicesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTargetGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTargetGroupsInput', name: 'ListTargetGroupsInput')
    ListTargetGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTargetGroupsOutput', name: 'ListTargetGroupsOutput')
    ListTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTargetsInput', name: 'ListTargetsInput')
    ListTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListTargetsOutput', name: 'ListTargetsOutput')
    ListenerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ListenerArn', name: 'ListenerArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}$"})
    ListenerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ListenerId', name: 'ListenerId', traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^listener-[0-9a-z]{17}$"})
    ListenerIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ListenerIdentifier', name: 'ListenerIdentifier', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((listener-[0-9a-z]{17})|(^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}$))$"})
    ListenerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ListenerName', name: 'ListenerName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!listener-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ListenerProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ListenerProtocol', name: 'ListenerProtocol', traits: {"smithy.api#enum" => [{"name" => "HTTP", "value" => "HTTP", "documentation" => "Indicates HTTP protocol"}, {"name" => "HTTPS", "value" => "HTTPS", "documentation" => "Indicates HTTPS protocol"}, {"name" => "TLS_PASSTHROUGH", "value" => "TLS_PASSTHROUGH", "documentation" => "Indicates TLS_PASSTHROUGH protocol"}]})
    ListenerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ListenerSummary', name: 'ListenerSummary')
    ListenerSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ListenerSummaryList', name: 'ListenerSummaryList')
    Matcher = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#Matcher', name: 'Matcher')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PathMatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#PathMatch', name: 'PathMatch')
    PathMatchExact = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#PathMatchExact', name: 'PathMatchExact', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^/[a-zA-Z0-9@:%_+.~#?&/=-]*$"})
    PathMatchPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#PathMatchPrefix', name: 'PathMatchPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^/[a-zA-Z0-9@:%_+.~#?&/=-]*$"})
    PathMatchType = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#PathMatchType', name: 'PathMatchType')
    PolicyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#PolicyString', name: 'PolicyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^.*\\S.*$"})
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortRange = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#PortRange', name: 'PortRange', traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^((\\d{1,5}\\-\\d{1,5})|(\\d+))$"})
    PortRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#PortRangeList', name: 'PortRangeList')
    ProtocolType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ProtocolType', name: 'ProtocolType', traits: {"smithy.api#enum" => [{"name" => "TCP", "value" => "TCP", "documentation" => "Resource Configuration protocol type TCP"}]})
    PutAuthPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#PutAuthPolicyInput', name: 'PutAuthPolicyInput')
    PutAuthPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#PutAuthPolicyOutput', name: 'PutAuthPolicyOutput')
    PutResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#PutResourcePolicyInput', name: 'PutResourcePolicyInput')
    PutResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#PutResourcePolicyOutput', name: 'PutResourcePolicyOutput')
    RegisterTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RegisterTargetsInput', name: 'RegisterTargetsInput')
    RegisterTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RegisterTargetsOutput', name: 'RegisterTargetsOutput')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 200}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(service/svc)|(resourceconfiguration/rcfg))-[0-9a-z]{17}$"})
    ResourceConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationArn', name: 'ResourceConfigurationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9f\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$"})
    ResourceConfigurationDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationDefinition', name: 'ResourceConfigurationDefinition')
    ResourceConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationId', name: 'ResourceConfigurationId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^rcfg-[0-9a-z]{17}$"})
    ResourceConfigurationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationIdentifier', name: 'ResourceConfigurationIdentifier', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$"})
    ResourceConfigurationIpAddressType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationIpAddressType', name: 'ResourceConfigurationIpAddressType', traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Ipv4 ip address type for dns type resource configs"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "IPv6 ip address type for dns type resource configs"}, {"name" => "DUALSTACK", "value" => "DUALSTACK", "documentation" => "Dualstack ip address type for dns type resource configs"}]})
    ResourceConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationName', name: 'ResourceConfigurationName', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!rcfg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ResourceConfigurationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationStatus', name: 'ResourceConfigurationStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Resource Configuration is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Resource Configuration creation in progress."}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "Resource Configuration update in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Resource Configuration deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Resource Configuration creation failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Resource Configuration update failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Resource Configuration deletion failed."}]})
    ResourceConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationSummary', name: 'ResourceConfigurationSummary')
    ResourceConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationSummaryList', name: 'ResourceConfigurationSummaryList')
    ResourceConfigurationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceConfigurationType', name: 'ResourceConfigurationType', traits: {"smithy.api#enum" => [{"name" => "GROUP", "value" => "GROUP", "documentation" => "Resource Configuration of type GROUP"}, {"name" => "CHILD", "value" => "CHILD", "documentation" => "Resource Configuration of type CHILD"}, {"name" => "SINGLE", "value" => "SINGLE", "documentation" => "Resource Configuration of type SINGLE"}, {"name" => "ARN", "value" => "ARN", "documentation" => "Resource Configuration of type ARN"}]})
    ResourceEndpointAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceEndpointAssociationArn', name: 'ResourceEndpointAssociationArn', traits: {"smithy.api#length" => {"min" => 21, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceendpointassociation/rea-[0-9a-f]{17}$"})
    ResourceEndpointAssociationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceEndpointAssociationId', name: 'ResourceEndpointAssociationId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rea-[0-9a-f]{17}$"})
    ResourceEndpointAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceEndpointAssociationIdentifier', name: 'ResourceEndpointAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 21, "max" => 2048}, "smithy.api#pattern" => "^((rea-[0-9a-f]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceendpointassociation/rea-[0-9a-f]{17}))$"})
    ResourceEndpointAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ResourceEndpointAssociationList', name: 'ResourceEndpointAssociationList')
    ResourceEndpointAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ResourceEndpointAssociationSummary', name: 'ResourceEndpointAssociationSummary')
    ResourceGatewayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayArn', name: 'ResourceGatewayArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}$"})
    ResourceGatewayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayId', name: 'ResourceGatewayId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rgw-[0-9a-z]{17}$"})
    ResourceGatewayIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayIdentifier', name: 'ResourceGatewayIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((rgw-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}))$"})
    ResourceGatewayIpAddressType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayIpAddressType', name: 'ResourceGatewayIpAddressType', traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPV4", "documentation" => "Ipv4 ip address type for resource gateway"}, {"name" => "IPV6", "value" => "IPV6", "documentation" => "IPv6 ip address type for resource gateway"}, {"name" => "DUALSTACK", "value" => "DUALSTACK", "documentation" => "Dualstack ip address type for resource gateway"}]})
    ResourceGatewayList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayList', name: 'ResourceGatewayList')
    ResourceGatewayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayName', name: 'ResourceGatewayName', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!rgw-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ResourceGatewayStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewayStatus', name: 'ResourceGatewayStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Resource Gateway is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Resource Gateway creation in progress."}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "Resource Gateway update in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Resource Gateway deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Resource Gateway creation failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Reosurce Gateway update failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Resource Gateway deletion failed."}]})
    ResourceGatewaySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ResourceGatewaySummary', name: 'ResourceGatewaySummary')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 20, "max" => 50}, "smithy.api#pattern" => "^((sn)|(svc))-[0-9a-z]{17}$"})
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 200}, "smithy.api#pattern" => "^((((sn)|(svc)|(rcfg))-[0-9a-z]{17})|(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(resourceconfiguration/rcfg)|(service/svc))-[0-9a-z]{17}))$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleAction = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#RuleAction', name: 'RuleAction')
    RuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#RuleArn', name: 'RuleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}/rule/rule-[0-9a-z]{17}$"})
    RuleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#RuleId', name: 'RuleId', traits: {"smithy.api#length" => {"min" => 5, "max" => 22}, "smithy.api#pattern" => "^rule-[0-9a-z]{17}$"})
    RuleIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#RuleIdentifier', name: 'RuleIdentifier', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((rule-[0-9a-z]{17})|(^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}/rule/rule-[0-9a-z]{17}$))$"})
    RuleMatch = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.vpclattice#RuleMatch', name: 'RuleMatch')
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?!rule-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    RulePriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#RulePriority', name: 'RulePriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RuleSummary', name: 'RuleSummary')
    RuleSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#RuleSummaryList', name: 'RuleSummaryList')
    RuleUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RuleUpdate', name: 'RuleUpdate')
    RuleUpdateFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RuleUpdateFailure', name: 'RuleUpdateFailure')
    RuleUpdateFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#RuleUpdateFailureList', name: 'RuleUpdateFailureList')
    RuleUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#RuleUpdateList', name: 'RuleUpdateList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RuleUpdateSuccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#RuleUpdateSuccess', name: 'RuleUpdateSuccess')
    RuleUpdateSuccessList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#RuleUpdateSuccessList', name: 'RuleUpdateSuccessList')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    SecurityGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#SecurityGroupList', name: 'SecurityGroupList')
    ServiceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceArn', name: 'ServiceArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}$"})
    ServiceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceArnList', name: 'ServiceArnList')
    ServiceCustomDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceCustomDomainName', name: 'ServiceCustomDomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    ServiceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceId', name: 'ServiceId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^svc-[0-9a-z]{17}$"})
    ServiceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceIdentifier', name: 'ServiceIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((svc-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}))$"})
    ServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceList', name: 'ServiceList')
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!svc-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ServiceNetworkArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkArn', name: 'ServiceNetworkArn', traits: {"smithy.api#length" => {"min" => 32, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}$"})
    ServiceNetworkArnWithoutRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkArnWithoutRegex', name: 'ServiceNetworkArnWithoutRegex', traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}})
    ServiceNetworkEndpointAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkEndpointAssociation', name: 'ServiceNetworkEndpointAssociation')
    ServiceNetworkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkId', name: 'ServiceNetworkId', traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^sn-[0-9a-z]{17}$"})
    ServiceNetworkIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkIdentifier', name: 'ServiceNetworkIdentifier', traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}, "smithy.api#pattern" => "^((sn-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}))$"})
    ServiceNetworkIdentifierWithoutRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkIdentifierWithoutRegex', name: 'ServiceNetworkIdentifierWithoutRegex', traits: {"smithy.api#length" => {"min" => 3, "max" => 2048}})
    ServiceNetworkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkList', name: 'ServiceNetworkList')
    ServiceNetworkLogType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkLogType', name: 'ServiceNetworkLogType', traits: {"smithy.api#enum" => [{"name" => "SERVICE", "value" => "SERVICE", "documentation" => "Indicates logs for Lattice services."}, {"name" => "RESOURCE", "value" => "RESOURCE", "documentation" => "Indicates logs for Lattice resource configurations."}]})
    ServiceNetworkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkName', name: 'ServiceNetworkName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    ServiceNetworkNameWithoutRegex = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkNameWithoutRegex', name: 'ServiceNetworkNameWithoutRegex', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    ServiceNetworkResourceAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationArn', name: 'ServiceNetworkResourceAssociationArn', traits: {"smithy.api#length" => {"min" => 22, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-f]{17}$"})
    ServiceNetworkResourceAssociationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationId', name: 'ServiceNetworkResourceAssociationId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^snra-[0-9a-f]{17}$"})
    ServiceNetworkResourceAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationIdentifier', name: 'ServiceNetworkResourceAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 22, "max" => 2048}, "smithy.api#pattern" => "^((snra-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-f]{17}))$"})
    ServiceNetworkResourceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationList', name: 'ServiceNetworkResourceAssociationList')
    ServiceNetworkResourceAssociationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationStatus', name: 'ServiceNetworkResourceAssociationStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Service association is active"}, {"name" => "PARTIAL", "value" => "PARTIAL", "documentation" => "ServiceNetwork and Service association is partial"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Service association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Service association deletion failed"}]})
    ServiceNetworkResourceAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkResourceAssociationSummary', name: 'ServiceNetworkResourceAssociationSummary')
    ServiceNetworkServiceAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkServiceAssociationArn', name: 'ServiceNetworkServiceAssociationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkserviceassociation/snsa-[0-9a-z]{17}$"})
    ServiceNetworkServiceAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkServiceAssociationIdentifier', name: 'ServiceNetworkServiceAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((snsa-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkserviceassociation/snsa-[0-9a-z]{17}))$"})
    ServiceNetworkServiceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkServiceAssociationList', name: 'ServiceNetworkServiceAssociationList')
    ServiceNetworkServiceAssociationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkServiceAssociationStatus', name: 'ServiceNetworkServiceAssociationStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Service association is active"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Service association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Service association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Service association deletion failed"}]})
    ServiceNetworkServiceAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkServiceAssociationSummary', name: 'ServiceNetworkServiceAssociationSummary')
    ServiceNetworkSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkSummary', name: 'ServiceNetworkSummary')
    ServiceNetworkVpcAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationArn', name: 'ServiceNetworkVpcAssociationArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkvpcassociation/snva-[0-9a-z]{17}$"})
    ServiceNetworkVpcAssociationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationId', name: 'ServiceNetworkVpcAssociationId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^snva-[0-9a-z]{17}$"})
    ServiceNetworkVpcAssociationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationIdentifier', name: 'ServiceNetworkVpcAssociationIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((snva-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkvpcassociation/snva-[0-9a-z]{17}))$"})
    ServiceNetworkVpcAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationList', name: 'ServiceNetworkVpcAssociationList')
    ServiceNetworkVpcAssociationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationStatus', name: 'ServiceNetworkVpcAssociationStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ServiceNetwork and Vpc association is active"}, {"name" => "UPDATE_IN_PROGRESS", "value" => "UPDATE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association update in progress"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "ServiceNetwork and Vpc association deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "ServiceNetwork and Vpc association creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "ServiceNetwork and Vpc association deletion failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "ServiceNetwork and Vpc association update failed"}]})
    ServiceNetworkVpcAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcAssociationSummary', name: 'ServiceNetworkVpcAssociationSummary')
    ServiceNetworkVpcEndpointAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ServiceNetworkVpcEndpointAssociationList', name: 'ServiceNetworkVpcEndpointAssociationList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ServiceStatus', name: 'ServiceStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Service is active."}, {"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "Service creation in progress."}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "Service deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "Service creation failed"}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "Service deletion failed."}]})
    ServiceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ServiceSummary', name: 'ServiceSummary')
    SharingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#SharingConfig', name: 'SharingConfig')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}})
    SubnetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#SubnetList', name: 'SubnetList')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.vpclattice#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#Target', name: 'Target')
    TargetFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TargetFailure', name: 'TargetFailure')
    TargetFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#TargetFailureList', name: 'TargetFailureList')
    TargetGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupArn', name: 'TargetGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}$"})
    TargetGroupConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TargetGroupConfig', name: 'TargetGroupConfig')
    TargetGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupId', name: 'TargetGroupId', traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^tg-[0-9a-z]{17}$"})
    TargetGroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupIdentifier', name: 'TargetGroupIdentifier', traits: {"smithy.api#length" => {"min" => 17, "max" => 2048}, "smithy.api#pattern" => "^((tg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}))$"})
    TargetGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#TargetGroupList', name: 'TargetGroupList')
    TargetGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupName', name: 'TargetGroupName', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^(?!tg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$"})
    TargetGroupProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupProtocol', name: 'TargetGroupProtocol', traits: {"smithy.api#enum" => [{"name" => "HTTP", "value" => "HTTP", "documentation" => "Indicates HTTP protocol"}, {"name" => "HTTPS", "value" => "HTTPS", "documentation" => "Indicates HTTPS protocol"}, {"name" => "TCP", "value" => "TCP", "documentation" => "Indicates TCP protocol"}]})
    TargetGroupProtocolVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupProtocolVersion', name: 'TargetGroupProtocolVersion', traits: {"smithy.api#enum" => [{"name" => "HTTP1", "value" => "HTTP1", "documentation" => "Indicates use of HTTP/1.1 to send requests to target"}, {"name" => "HTTP2", "value" => "HTTP2", "documentation" => "Indicates use of HTTP/2 to send requests to target"}, {"name" => "GRPC", "value" => "GRPC", "documentation" => "Indicates use of gRPC to send requests to target"}]})
    TargetGroupStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupStatus', name: 'TargetGroupStatus', traits: {"smithy.api#enum" => [{"name" => "CREATE_IN_PROGRESS", "value" => "CREATE_IN_PROGRESS", "documentation" => "TargetGroup creation in progress"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "TargetGroup is active"}, {"name" => "DELETE_IN_PROGRESS", "value" => "DELETE_IN_PROGRESS", "documentation" => "TargetGroup deletion in progress"}, {"name" => "CREATE_FAILED", "value" => "CREATE_FAILED", "documentation" => "TargetGroup creation failed."}, {"name" => "DELETE_FAILED", "value" => "DELETE_FAILED", "documentation" => "TargetGroup deletion failed"}]})
    TargetGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TargetGroupSummary', name: 'TargetGroupSummary')
    TargetGroupType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetGroupType', name: 'TargetGroupType', traits: {"smithy.api#enum" => [{"name" => "IP", "value" => "IP", "documentation" => "Indicates targets in this target group are IP"}, {"name" => "LAMBDA", "value" => "LAMBDA", "documentation" => "Indicates targets in this target group are Lambda"}, {"name" => "INSTANCE", "value" => "INSTANCE", "documentation" => "Indicates targets in this target group are EC2 instances"}, {"name" => "ALB", "value" => "ALB", "documentation" => "Indicates target in this target group is an ALB"}]})
    TargetGroupWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#TargetGroupWeight', name: 'TargetGroupWeight', traits: {"smithy.api#range" => {"min" => 0, "max" => 999}})
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#TargetList', name: 'TargetList')
    TargetStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#TargetStatus', name: 'TargetStatus', traits: {"smithy.api#enum" => [{"value" => "DRAINING", "documentation" => "The target is deregistering and connection draining is in process.", "name" => "DRAINING"}, {"value" => "UNAVAILABLE", "documentation" => "Health checks are disabled.", "name" => "UNAVAILABLE"}, {"value" => "HEALTHY", "documentation" => "The target is healthy.", "name" => "HEALTHY"}, {"value" => "UNHEALTHY", "documentation" => "The target failed the health check.", "name" => "UNHEALTHY"}, {"value" => "INITIAL", "documentation" => "The initial health check is in progress.", "name" => "INITIAL"}, {"value" => "UNUSED", "documentation" => "The target group is not used in a listener rule.", "name" => "UNUSED"}]})
    TargetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#TargetSummary', name: 'TargetSummary')
    TargetSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#TargetSummaryList', name: 'TargetSummaryList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.vpclattice#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    UnhealthyThresholdCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.vpclattice#UnhealthyThresholdCount', name: 'UnhealthyThresholdCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAccessLogSubscriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateAccessLogSubscriptionInput', name: 'UpdateAccessLogSubscriptionInput')
    UpdateAccessLogSubscriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateAccessLogSubscriptionOutput', name: 'UpdateAccessLogSubscriptionOutput')
    UpdateListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateListenerInput', name: 'UpdateListenerInput')
    UpdateListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateListenerOutput', name: 'UpdateListenerOutput')
    UpdateResourceConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateResourceConfigurationRequest', name: 'UpdateResourceConfigurationRequest')
    UpdateResourceConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateResourceConfigurationResponse', name: 'UpdateResourceConfigurationResponse')
    UpdateResourceGatewayRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateResourceGatewayRequest', name: 'UpdateResourceGatewayRequest')
    UpdateResourceGatewayResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateResourceGatewayResponse', name: 'UpdateResourceGatewayResponse')
    UpdateRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateRuleInput', name: 'UpdateRuleInput')
    UpdateRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateRuleOutput', name: 'UpdateRuleOutput')
    UpdateServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceInput', name: 'UpdateServiceInput')
    UpdateServiceNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceNetworkInput', name: 'UpdateServiceNetworkInput')
    UpdateServiceNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceNetworkOutput', name: 'UpdateServiceNetworkOutput')
    UpdateServiceNetworkVpcAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociationInput', name: 'UpdateServiceNetworkVpcAssociationInput')
    UpdateServiceNetworkVpcAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociationOutput', name: 'UpdateServiceNetworkVpcAssociationOutput')
    UpdateServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateServiceOutput', name: 'UpdateServiceOutput')
    UpdateTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateTargetGroupInput', name: 'UpdateTargetGroupInput')
    UpdateTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#UpdateTargetGroupOutput', name: 'UpdateTargetGroupOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VpcEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    VpcEndpointOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#VpcEndpointOwner', name: 'VpcEndpointOwner', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 5, "max" => 50}, "smithy.api#pattern" => "^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    WeightedTargetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.vpclattice#WeightedTargetGroup', name: 'WeightedTargetGroup')
    WeightedTargetGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.vpclattice#WeightedTargetGroupList', name: 'WeightedTargetGroupList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    WildcardArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.vpclattice#WildcardArn', name: 'WildcardArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:[a-z0-9][-.a-z0-9]{0,62}:([a-z0-9][-.a-z0-9]{0,62})?:\\d{12}?:[^/].{0,1023}$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessLogSubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionSummary)
    AccessLogSubscriptionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access log subscription.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log subscription</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the service or service network.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service or service network.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:service_network_log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkLogType, location_name: 'serviceNetworkLogType', traits: {"smithy.api#documentation" => "<p>Log type of the service network.</p>"}))
    AccessLogSubscriptionSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the access log subscription was created, in ISO-8601 format.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the access log subscription was last updated, in ISO-8601 format.</p>", "smithy.api#required" => {}}))
    AccessLogSubscriptionSummary.type = Types::AccessLogSubscriptionSummary
    ArnResource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WildcardArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    ArnResource.type = Types::ArnResource
    BatchUpdateRuleInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateRuleInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateRuleInput.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdateList, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>The rules for the specified listener.</p>", "smithy.api#required" => {}}))
    BatchUpdateRuleInput.type = Types::BatchUpdateRuleInput
    BatchUpdateRuleOutput.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdateSuccessList, location_name: 'successful', traits: {"smithy.api#documentation" => "<p>The rules that were successfully updated.</p>"}))
    BatchUpdateRuleOutput.add_member(:unsuccessful, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdateFailureList, location_name: 'unsuccessful', traits: {"smithy.api#documentation" => "<p>The rules that the operation couldn't update.</p>"}))
    BatchUpdateRuleOutput.type = Types::BatchUpdateRuleOutput
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessLogSubscriptionInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network or service.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the destination. The supported destination types are\n   CloudWatch Log groups, Kinesis Data Firehose delivery streams, and Amazon S3 buckets.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionInput.add_member(:service_network_log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkLogType, location_name: 'serviceNetworkLogType', traits: {"smithy.api#documentation" => "<p>The type of log that monitors your Amazon VPC Lattice service networks.</p>"}))
    CreateAccessLogSubscriptionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the access log subscription.</p>"}))
    CreateAccessLogSubscriptionInput.type = Types::CreateAccessLogSubscriptionInput
    CreateAccessLogSubscriptionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access log subscription.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log subscription.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the service network or service.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network or service.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.add_member(:service_network_log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkLogType, location_name: 'serviceNetworkLogType', traits: {"smithy.api#documentation" => "<p>The type of log that monitors your Amazon VPC Lattice service networks.</p>"}))
    CreateAccessLogSubscriptionOutput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log destination.</p>", "smithy.api#required" => {}}))
    CreateAccessLogSubscriptionOutput.type = Types::CreateAccessLogSubscriptionOutput
    CreateListenerInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener. A listener name must be unique within a service. The valid characters are a-z, 0-9, and hyphens (-). You can't use a \n  hyphen as the first or last character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The listener protocol.</p>", "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The listener port. You can specify a value from 1 to 65535. For HTTP, the default is 80. For\n   HTTPS, the default is 443.</p>"}))
    CreateListenerInput.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The action for the default rule. Each listener has a default rule. The default rule is used\n   if no other rules match.</p>", "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateListenerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the listener.</p>"}))
    CreateListenerInput.type = Types::CreateListenerInput
    CreateListenerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    CreateListenerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    CreateListenerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    CreateListenerOutput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol of the listener.</p>"}))
    CreateListenerOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port number of the listener.</p>"}))
    CreateListenerOutput.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'serviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    CreateListenerOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'serviceId', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    CreateListenerOutput.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The action for the default rule.</p>"}))
    CreateListenerOutput.type = Types::CreateListenerOutput
    CreateResourceConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration. The name must be unique within the account. The\n   valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last\n   character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateResourceConfigurationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource configuration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SINGLE</code> - A single resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GROUP</code> - A group of resources. You must create a group resource\n     configuration before you create a child resource configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ARN</code> - An Amazon Web Services resource.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateResourceConfigurationRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeList, location_name: 'portRanges', traits: {"smithy.api#documentation" => "<p>(SINGLE, GROUP, CHILD) The TCP port ranges that a consumer can use to access a resource configuration \n   (for example: 1-65535). You can separate port ranges using commas (for example: 1,2,22-30).</p>"}))
    CreateResourceConfigurationRequest.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>(SINGLE, GROUP) The protocol accepted by the resource configuration.</p>"}))
    CreateResourceConfigurationRequest.add_member(:resource_gateway_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIdentifier, location_name: 'resourceGatewayIdentifier', traits: {"smithy.api#documentation" => "<p>(SINGLE, GROUP, ARN) The ID or ARN of the resource gateway used to connect to the resource configuration.\n   For a child resource configuration, this value is inherited from the parent resource configuration.</p>"}))
    CreateResourceConfigurationRequest.add_member(:resource_configuration_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationGroupIdentifier', traits: {"smithy.api#documentation" => "<p>(CHILD) The ID or ARN of the parent resource configuration (type is <code>GROUP</code>). \n   This is used to associate a child resource configuration with a group resource configuration.</p>"}))
    CreateResourceConfigurationRequest.add_member(:resource_configuration_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationDefinition, location_name: 'resourceConfigurationDefinition', traits: {"smithy.api#documentation" => "<p>(SINGLE, CHILD, ARN) The resource configuration.</p>"}))
    CreateResourceConfigurationRequest.add_member(:allow_association_to_shareable_service_network, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowAssociationToShareableServiceNetwork', traits: {"smithy.api#documentation" => "<p>(SINGLE, GROUP, ARN) Specifies whether the resource configuration can be associated with \n   a sharable service network. The default is false.</p>"}))
    CreateResourceConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateResourceConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource configuration.</p>"}))
    CreateResourceConfigurationRequest.type = Types::CreateResourceConfigurationRequest
    CreateResourceConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:resource_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'resourceGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway associated with the resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:resource_configuration_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the parent resource configuration (type is GROUP).</p>"}))
    CreateResourceConfigurationResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeList, location_name: 'portRanges', traits: {"smithy.api#documentation" => "<p>The port range.</p>"}))
    CreateResourceConfigurationResponse.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol.</p>"}))
    CreateResourceConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:resource_configuration_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationDefinition, location_name: 'resourceConfigurationDefinition', traits: {"smithy.api#documentation" => "<p>The resource configuration.</p>"}))
    CreateResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowAssociationToShareableServiceNetwork', traits: {"smithy.api#documentation" => "<p>Specifies whether the resource configuration can be associated with a sharable service\n   network.</p>"}))
    CreateResourceConfigurationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the resource configuration was created, in ISO-8601 format.</p>"}))
    CreateResourceConfigurationResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason that the request failed.</p>"}))
    CreateResourceConfigurationResponse.type = Types::CreateResourceConfigurationResponse
    CreateResourceGatewayRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateResourceGatewayRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>", "smithy.api#required" => {}}))
    CreateResourceGatewayRequest.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the resource gateway.</p>", "smithy.api#required" => {}}))
    CreateResourceGatewayRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the VPC subnets in which to create the resource gateway.</p>", "smithy.api#required" => {}}))
    CreateResourceGatewayRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups to apply to the resource gateway. The security groups must be\n   in the same VPC.</p>", "smithy.api#length" => {"min" => 0, "max" => 5}}))
    CreateResourceGatewayRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address used by the resource gateway.</p>"}))
    CreateResourceGatewayRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource gateway.</p>"}))
    CreateResourceGatewayRequest.type = Types::CreateResourceGatewayRequest
    CreateResourceGatewayResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    CreateResourceGatewayResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    CreateResourceGatewayResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource gateway.</p>"}))
    CreateResourceGatewayResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource gateway.</p>"}))
    CreateResourceGatewayResponse.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>"}))
    CreateResourceGatewayResponse.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the resource gateway subnets.</p>"}))
    CreateResourceGatewayResponse.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups for the resource gateway.</p>"}))
    CreateResourceGatewayResponse.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address for the resource gateway.</p>"}))
    CreateResourceGatewayResponse.type = Types::CreateResourceGatewayResponse
    CreateRuleInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a \n  hyphen as the first or last character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority assigned to the rule. Each rule for a specific listener must have a unique\n   priority. The lower the priority number the higher the priority.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action for the default rule.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRuleInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the rule.</p>"}))
    CreateRuleInput.type = Types::CreateRuleInput
    CreateRuleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    CreateRuleOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the rule.</p>"}))
    CreateRuleOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    CreateRuleOutput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match. The <code>RuleMatch</code> must be an <code>HttpMatch</code>. This means\n   that the rule should be an exact match on HTTP constraints which are made up of the HTTP method,\n   path, and header.</p>"}))
    CreateRuleOutput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority assigned to the rule. The lower the priority number the higher the\n   priority.</p>"}))
    CreateRuleOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The rule action.</p>"}))
    CreateRuleOutput.type = Types::CreateRuleOutput
    CreateServiceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a \n  hyphen as the first or last character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateServiceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the service.</p>"}))
    CreateServiceInput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    CreateServiceInput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    CreateServiceInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>\n            </li>\n         </ul>"}))
    CreateServiceInput.type = Types::CreateServiceInput
    CreateServiceNetworkInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service network. The name must be unique to the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a \n  hyphen as the first or last character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>\n            </li>\n         </ul>"}))
    CreateServiceNetworkInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the service network.</p>"}))
    CreateServiceNetworkInput.add_member(:sharing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SharingConfig, location_name: 'sharingConfig', traits: {"smithy.api#documentation" => "<p>Specify if the service network should be enabled for sharing.</p>"}))
    CreateServiceNetworkInput.type = Types::CreateServiceNetworkInput
    CreateServiceNetworkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    CreateServiceNetworkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    CreateServiceNetworkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    CreateServiceNetworkOutput.add_member(:sharing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SharingConfig, location_name: 'sharingConfig', traits: {"smithy.api#documentation" => "<p>Specifies if the service network is enabled for sharing.</p>"}))
    CreateServiceNetworkOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    CreateServiceNetworkOutput.type = Types::CreateServiceNetworkOutput
    CreateServiceNetworkResourceAssociationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration to associate with the service network.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifierWithoutRegex, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service network to associate with the resource configuration.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkResourceAssociationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the association.</p>"}))
    CreateServiceNetworkResourceAssociationRequest.type = Types::CreateServiceNetworkResourceAssociationRequest
    CreateServiceNetworkResourceAssociationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    CreateServiceNetworkResourceAssociationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    CreateServiceNetworkResourceAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the association.</p>"}))
    CreateServiceNetworkResourceAssociationResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The ID of the account that created the association.</p>"}))
    CreateServiceNetworkResourceAssociationResponse.type = Types::CreateServiceNetworkResourceAssociationResponse
    CreateServiceNetworkServiceAssociationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkServiceAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the association.</p>"}))
    CreateServiceNetworkServiceAssociationInput.type = Types::CreateServiceNetworkServiceAssociationInput
    CreateServiceNetworkServiceAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The association status.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS name of the service.</p>"}))
    CreateServiceNetworkServiceAssociationOutput.type = Types::CreateServiceNetworkServiceAssociationOutput
    CreateServiceNetworkVpcAssociationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network. You must use an ARN if the resources are in different accounts.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>", "smithy.api#required" => {}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups. Security groups aren't added by default. You can add a\n   security group to apply network level controls to control which resources in a VPC are allowed to\n   access the service network and its services. For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html\">Control traffic to\n    resources using security groups</a> in the <i>Amazon VPC User\n   Guide</i>.</p>", "smithy.api#length" => {"min" => 0, "max" => 5}}))
    CreateServiceNetworkVpcAssociationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the association.</p>"}))
    CreateServiceNetworkVpcAssociationInput.type = Types::CreateServiceNetworkVpcAssociationInput
    CreateServiceNetworkVpcAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    CreateServiceNetworkVpcAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The association status.</p>"}))
    CreateServiceNetworkVpcAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    CreateServiceNetworkVpcAssociationOutput.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    CreateServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups.</p>"}))
    CreateServiceNetworkVpcAssociationOutput.type = Types::CreateServiceNetworkVpcAssociationOutput
    CreateServiceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    CreateServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    CreateServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    CreateServiceOutput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    CreateServiceOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    CreateServiceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. If the status is <code>CREATE_FAILED</code>, you must delete and recreate the\n   service.</p>"}))
    CreateServiceOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    CreateServiceOutput.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The public DNS name of the service.</p>"}))
    CreateServiceOutput.type = Types::CreateServiceOutput
    CreateTargetGroupInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a \n  hyphen as the first or last character, or immediately after another hyphen.</p>", "smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of target group.</p>", "smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: 'config', traits: {"smithy.api#documentation" => "<p>The target group configuration.</p>"}))
    CreateTargetGroupInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure\n  the idempotency of the request. If you retry a request that completed successfully using\n  the same client token and parameters, the retry succeeds without performing any actions.\n  If the parameters aren't identical, the retry fails.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTargetGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the target group.</p>"}))
    CreateTargetGroupInput.type = Types::CreateTargetGroupInput
    CreateTargetGroupOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target group.</p>"}))
    CreateTargetGroupOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    CreateTargetGroupOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the target group.</p>"}))
    CreateTargetGroupOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of target group.</p>"}))
    CreateTargetGroupOutput.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: 'config', traits: {"smithy.api#documentation" => "<p>The target group configuration.</p>"}))
    CreateTargetGroupOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>CREATE_FAILED</code>.\n   However, if you retry it while the status is <code>CREATE_IN_PROGRESS</code>, there is no change\n   in the status.</p>"}))
    CreateTargetGroupOutput.type = Types::CreateTargetGroupOutput
    DeleteAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, location_name: 'accessLogSubscriptionIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the access log subscription.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessLogSubscriptionInput.type = Types::DeleteAccessLogSubscriptionInput
    DeleteAccessLogSubscriptionOutput.type = Types::DeleteAccessLogSubscriptionOutput
    DeleteAuthPolicyInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAuthPolicyInput.type = Types::DeleteAuthPolicyInput
    DeleteAuthPolicyOutput.type = Types::DeleteAuthPolicyOutput
    DeleteListenerInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteListenerInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteListenerInput.type = Types::DeleteListenerInput
    DeleteListenerOutput.type = Types::DeleteListenerOutput
    DeleteResourceConfigurationRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the resource configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceConfigurationRequest.type = Types::DeleteResourceConfigurationRequest
    DeleteResourceConfigurationResponse.type = Types::DeleteResourceConfigurationResponse
    DeleteResourceEndpointAssociationRequest.add_member(:resource_endpoint_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationIdentifier, location_name: 'resourceEndpointAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceEndpointAssociationRequest.type = Types::DeleteResourceEndpointAssociationRequest
    DeleteResourceEndpointAssociationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    DeleteResourceEndpointAssociationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    DeleteResourceEndpointAssociationResponse.add_member(:resource_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    DeleteResourceEndpointAssociationResponse.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'resourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration associated with the VPC\n   endpoint of type resource.</p>"}))
    DeleteResourceEndpointAssociationResponse.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the resource VPC endpoint that is associated with the resource configuration.</p>"}))
    DeleteResourceEndpointAssociationResponse.type = Types::DeleteResourceEndpointAssociationResponse
    DeleteResourceGatewayRequest.add_member(:resource_gateway_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIdentifier, location_name: 'resourceGatewayIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the resource gateway.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceGatewayRequest.type = Types::DeleteResourceGatewayRequest
    DeleteResourceGatewayResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    DeleteResourceGatewayResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource gateway.</p>"}))
    DeleteResourceGatewayResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    DeleteResourceGatewayResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource gateway.</p>"}))
    DeleteResourceGatewayResponse.type = Types::DeleteResourceGatewayResponse
    DeleteResourcePolicyInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteRuleInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'ruleIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.type = Types::DeleteRuleInput
    DeleteRuleOutput.type = Types::DeleteRuleOutput
    DeleteServiceInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceInput.type = Types::DeleteServiceInput
    DeleteServiceNetworkInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkInput.type = Types::DeleteServiceNetworkInput
    DeleteServiceNetworkOutput.type = Types::DeleteServiceNetworkOutput
    DeleteServiceNetworkResourceAssociationRequest.add_member(:service_network_resource_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationIdentifier, location_name: 'serviceNetworkResourceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkResourceAssociationRequest.type = Types::DeleteServiceNetworkResourceAssociationRequest
    DeleteServiceNetworkResourceAssociationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    DeleteServiceNetworkResourceAssociationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    DeleteServiceNetworkResourceAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the association.</p>"}))
    DeleteServiceNetworkResourceAssociationResponse.type = Types::DeleteServiceNetworkResourceAssociationResponse
    DeleteServiceNetworkServiceAssociationInput.add_member(:service_network_service_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'serviceNetworkServiceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkServiceAssociationInput.type = Types::DeleteServiceNetworkServiceAssociationInput
    DeleteServiceNetworkServiceAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    DeleteServiceNetworkServiceAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.\n   However, if you retry it when the status is <code>DELETE_IN_PROGRESS</code>, there is no change\n   in the status.</p>"}))
    DeleteServiceNetworkServiceAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    DeleteServiceNetworkServiceAssociationOutput.type = Types::DeleteServiceNetworkServiceAssociationOutput
    DeleteServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, location_name: 'serviceNetworkVpcAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceNetworkVpcAssociationInput.type = Types::DeleteServiceNetworkVpcAssociationInput
    DeleteServiceNetworkVpcAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    DeleteServiceNetworkVpcAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.\n   However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change\n   in the status.</p>"}))
    DeleteServiceNetworkVpcAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    DeleteServiceNetworkVpcAssociationOutput.type = Types::DeleteServiceNetworkVpcAssociationOutput
    DeleteServiceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    DeleteServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    DeleteServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    DeleteServiceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.\n   However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't\n   change.</p>"}))
    DeleteServiceOutput.type = Types::DeleteServiceOutput
    DeleteTargetGroupInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTargetGroupInput.type = Types::DeleteTargetGroupInput
    DeleteTargetGroupOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target group.</p>"}))
    DeleteTargetGroupOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    DeleteTargetGroupOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.\n   However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, the status doesn't\n   change.</p>"}))
    DeleteTargetGroupOutput.type = Types::DeleteTargetGroupOutput
    DeregisterTargetsInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets to deregister.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.type = Types::DeregisterTargetsInput
    DeregisterTargetsOutput.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'successful', traits: {"smithy.api#documentation" => "<p>The targets that were successfully deregistered.</p>"}))
    DeregisterTargetsOutput.add_member(:unsuccessful, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFailureList, location_name: 'unsuccessful', traits: {"smithy.api#documentation" => "<p>The targets that the operation couldn't deregister.</p>"}))
    DeregisterTargetsOutput.type = Types::DeregisterTargetsOutput
    DnsEntry.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the service.</p>"}))
    DnsEntry.add_member(:hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'hostedZoneId', traits: {"smithy.api#documentation" => "<p>The ID of the hosted zone.</p>"}))
    DnsEntry.type = Types::DnsEntry
    DnsResource.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The domain name of the resource.</p>"}))
    DnsResource.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address.</p>"}))
    DnsResource.type = Types::DnsResource
    FixedResponseAction.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpStatusCode, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The HTTP response code.</p>", "smithy.api#required" => {}}))
    FixedResponseAction.type = Types::FixedResponseAction
    ForwardAction.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: WeightedTargetGroupList, location_name: 'targetGroups', traits: {"smithy.api#documentation" => "<p>The target groups. Traffic matching the rule is forwarded to the specified target groups.\n   With forward actions, you can assign a weight that controls the prioritization and selection of\n   each target group. This means that requests are distributed to individual target groups based on\n   their weights. For example, if two target groups have the same weight, each target group receives\n   half of the traffic.</p>\n         <p>The default value is 1. This means that if only one target group is provided, there is no\n   need to set the weight; 100% of the traffic goes to that target group.</p>", "smithy.api#required" => {}}))
    ForwardAction.type = Types::ForwardAction
    GetAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, location_name: 'accessLogSubscriptionIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the access log subscription.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessLogSubscriptionInput.type = Types::GetAccessLogSubscriptionInput
    GetAccessLogSubscriptionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access log subscription.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log subscription.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the service network or service.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network or service.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log destination.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:service_network_log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkLogType, location_name: 'serviceNetworkLogType', traits: {"smithy.api#documentation" => "<p>The log type for the service network.</p>"}))
    GetAccessLogSubscriptionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the access log subscription was created, in ISO-8601 format.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the access log subscription was last updated, in ISO-8601 format.</p>", "smithy.api#required" => {}}))
    GetAccessLogSubscriptionOutput.type = Types::GetAccessLogSubscriptionOutput
    GetAuthPolicyInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network or service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAuthPolicyInput.type = Types::GetAuthPolicyInput
    GetAuthPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthPolicyString, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The auth policy.</p>"}))
    GetAuthPolicyOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthPolicyState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the auth policy. The auth policy is only active when the auth type is set to\n    <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions\n   are made based on this policy and the client's IAM policy. If the auth type is <code>NONE</code>,\n   then any auth policy that you provide remains inactive. For more information, see <a href=\"https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network\">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>"}))
    GetAuthPolicyOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the auth policy was created, in ISO-8601 format.</p>"}))
    GetAuthPolicyOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the auth policy was last updated, in ISO-8601 format.</p>"}))
    GetAuthPolicyOutput.type = Types::GetAuthPolicyOutput
    GetListenerInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetListenerInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetListenerInput.type = Types::GetListenerInput
    GetListenerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    GetListenerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    GetListenerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    GetListenerOutput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The listener protocol.</p>"}))
    GetListenerOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The listener port.</p>"}))
    GetListenerOutput.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'serviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    GetListenerOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'serviceId', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    GetListenerOutput.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The actions for the default listener rule.</p>"}))
    GetListenerOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener was created, in ISO-8601 format.</p>"}))
    GetListenerOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener was last updated, in ISO-8601 format.</p>"}))
    GetListenerOutput.type = Types::GetListenerOutput
    GetResourceConfigurationRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceConfigurationRequest.type = Types::GetResourceConfigurationRequest
    GetResourceConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:resource_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'resourceGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway used to connect to the resource configuration in a given VPC. You can specify the resource gateway identifier only for resource configurations with type SINGLE, GROUP, or ARN.</p>"}))
    GetResourceConfigurationResponse.add_member(:resource_configuration_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the group resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource configuration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SINGLE</code> - A single resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GROUP</code> - A group of resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ARN</code> - An Amazon Web Services resource.</p>\n            </li>\n         </ul>"}))
    GetResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowAssociationToShareableServiceNetwork', traits: {"smithy.api#documentation" => "<p>Specifies whether the resource configuration is associated with a sharable service\n   network.</p>"}))
    GetResourceConfigurationResponse.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeList, location_name: 'portRanges', traits: {"smithy.api#documentation" => "<p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>"}))
    GetResourceConfigurationResponse.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The TCP protocol accepted by the specified resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:resource_configuration_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationDefinition, location_name: 'resourceConfigurationDefinition', traits: {"smithy.api#documentation" => "<p>The resource configuration.</p>"}))
    GetResourceConfigurationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the resource configuration was created, in ISO-8601 format.</p>"}))
    GetResourceConfigurationResponse.add_member(:amazon_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'amazonManaged', traits: {"smithy.api#documentation" => "<p>Indicates whether the resource configuration was created and is managed by Amazon.</p>"}))
    GetResourceConfigurationResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason the create-resource-configuration request failed.</p>"}))
    GetResourceConfigurationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The most recent date and time that the resource configuration was updated, in ISO-8601 format.</p>"}))
    GetResourceConfigurationResponse.type = Types::GetResourceConfigurationResponse
    GetResourceGatewayRequest.add_member(:resource_gateway_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIdentifier, location_name: 'resourceGatewayIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceGatewayRequest.type = Types::GetResourceGatewayRequest
    GetResourceGatewayResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status for the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the VPC subnets for resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The security group IDs associated with the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address for the resource gateway.</p>"}))
    GetResourceGatewayResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the resource gateway was created, in ISO-8601 format.</p>"}))
    GetResourceGatewayResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the resource gateway was last updated, in ISO-8601 format.</p>"}))
    GetResourceGatewayResponse.type = Types::GetResourceGatewayResponse
    GetResourcePolicyInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network or service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>An IAM policy.</p>"}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetRuleInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'ruleIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.type = Types::GetRuleInput
    GetRuleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    GetRuleOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    GetRuleOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    GetRuleOutput.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether this is the default rule.</p>"}))
    GetRuleOutput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>"}))
    GetRuleOutput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority level for the specified rule.</p>"}))
    GetRuleOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action for the default rule.</p>"}))
    GetRuleOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener rule was created, in ISO-8601 format.</p>"}))
    GetRuleOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener rule was last updated, in ISO-8601 format.</p>"}))
    GetRuleOutput.type = Types::GetRuleOutput
    GetServiceInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceNetworkInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkInput.type = Types::GetServiceNetworkInput
    GetServiceNetworkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    GetServiceNetworkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    GetServiceNetworkOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service network was created, in ISO-8601 format.</p>"}))
    GetServiceNetworkOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time of the last update, in ISO-8601 format.</p>"}))
    GetServiceNetworkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    GetServiceNetworkOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    GetServiceNetworkOutput.add_member(:sharing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SharingConfig, location_name: 'sharingConfig', traits: {"smithy.api#documentation" => "<p>Specifies if the service network is enabled for sharing.</p>"}))
    GetServiceNetworkOutput.add_member(:number_of_associated_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAssociatedVPCs', traits: {"smithy.api#documentation" => "<p>The number of VPCs associated with the service network.</p>"}))
    GetServiceNetworkOutput.add_member(:number_of_associated_services, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAssociatedServices', traits: {"smithy.api#documentation" => "<p>The number of services associated with the service network.</p>"}))
    GetServiceNetworkOutput.type = Types::GetServiceNetworkOutput
    GetServiceNetworkResourceAssociationRequest.add_member(:service_network_resource_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationIdentifier, location_name: 'serviceNetworkResourceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkResourceAssociationRequest.type = Types::GetServiceNetworkResourceAssociationRequest
    GetServiceNetworkResourceAssociationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the association.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration that is associated with the service network.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'resourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:resource_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'resourceConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration that is associated with the service network.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifierWithoutRegex, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network that is associated with the resource configuration.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifierWithoutRegex, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network that is associated with the resource configuration.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkNameWithoutRegex, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network that is associated with the resource configuration.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason the association request failed.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The most recent date and time that the association was updated, in ISO-8601 format.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:private_dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'privateDnsEntry', traits: {"smithy.api#documentation" => "<p>The private DNS entry for the service.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS entry for the service.</p>"}))
    GetServiceNetworkResourceAssociationResponse.add_member(:is_managed_association, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isManagedAssociation', traits: {"smithy.api#documentation" => "<p>Indicates whether the association is managed by Amazon.</p>"}))
    GetServiceNetworkResourceAssociationResponse.type = Types::GetServiceNetworkResourceAssociationResponse
    GetServiceNetworkServiceAssociationInput.add_member(:service_network_service_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'serviceNetworkServiceAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkServiceAssociationInput.type = Types::GetServiceNetworkServiceAssociationInput
    GetServiceNetworkServiceAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service network and service association.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the association.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'serviceId', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'serviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS name of the service.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    GetServiceNetworkServiceAssociationOutput.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    GetServiceNetworkServiceAssociationOutput.type = Types::GetServiceNetworkServiceAssociationOutput
    GetServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, location_name: 'serviceNetworkVpcAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceNetworkVpcAssociationInput.type = Types::GetServiceNetworkVpcAssociationInput
    GetServiceNetworkVpcAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the association.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    GetServiceNetworkVpcAssociationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was last updated, in ISO-8601 format.</p>"}))
    GetServiceNetworkVpcAssociationOutput.type = Types::GetServiceNetworkVpcAssociationOutput
    GetServiceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    GetServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    GetServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    GetServiceOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service was created, in ISO-8601 format.</p>"}))
    GetServiceOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service was last updated, in ISO-8601 format.</p>"}))
    GetServiceOutput.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS name of the service.</p>"}))
    GetServiceOutput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    GetServiceOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    GetServiceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the service.</p>"}))
    GetServiceOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    GetServiceOutput.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    GetServiceOutput.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureMessage, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    GetServiceOutput.type = Types::GetServiceOutput
    GetTargetGroupInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTargetGroupInput.type = Types::GetTargetGroupInput
    GetTargetGroupOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target group.</p>"}))
    GetTargetGroupOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    GetTargetGroupOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the target group.</p>"}))
    GetTargetGroupOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The target group type.</p>"}))
    GetTargetGroupOutput.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: 'config', traits: {"smithy.api#documentation" => "<p>The target group configuration.</p>"}))
    GetTargetGroupOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the target group was created, in ISO-8601 format.</p>"}))
    GetTargetGroupOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the target group was last updated, in ISO-8601 format.</p>"}))
    GetTargetGroupOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    GetTargetGroupOutput.add_member(:service_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArnList, location_name: 'serviceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the service.</p>"}))
    GetTargetGroupOutput.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    GetTargetGroupOutput.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    GetTargetGroupOutput.type = Types::GetTargetGroupOutput
    HeaderMatch.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the header.</p>", "smithy.api#required" => {}}))
    HeaderMatch.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchType, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The header match type.</p>", "smithy.api#required" => {}}))
    HeaderMatch.add_member(:case_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'caseSensitive', traits: {"smithy.api#documentation" => "<p>Indicates whether the match is case sensitive.</p>"}))
    HeaderMatch.type = Types::HeaderMatch
    HeaderMatchList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatch)
    HeaderMatchType.add_member(:exact, Types::HeaderMatchType::Exact, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchExact, location_name: 'exact', traits: {"smithy.api#documentation" => "<p>An exact type match.</p>"}))
    HeaderMatchType.add_member(:prefix, Types::HeaderMatchType::Prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>A prefix type match. Matches the value with the prefix.</p>"}))
    HeaderMatchType.add_member(:contains, Types::HeaderMatchType::Contains, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchContains, location_name: 'contains', traits: {"smithy.api#documentation" => "<p>A contains type match.</p>"}))
    HeaderMatchType.add_member(:unknown, Types::HeaderMatchType::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    HeaderMatchType.type = Types::HeaderMatchType
    HealthCheckConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether health checking is enabled.</p>"}))
    HealthCheckConfig.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol used when performing health checks on targets. The possible protocols are\n    <code>HTTP</code> and <code>HTTPS</code>. The default is <code>HTTP</code>.</p>"}))
    HealthCheckConfig.add_member(:protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocolVersion, location_name: 'protocolVersion', traits: {"smithy.api#documentation" => "<p>The protocol version used when performing health checks on targets. The possible protocol\n   versions are <code>HTTP1</code> and <code>HTTP2</code>.</p>"}))
    HealthCheckConfig.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port used when performing health checks on targets. The default setting is the port that\n   a target receives traffic on.</p>"}))
    HealthCheckConfig.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The destination for health checks on the targets. If the protocol version is\n    <code>HTTP/1.1</code> or <code>HTTP/2</code>, specify a valid URI (for example,\n    <code>/path?query</code>). The default path is <code>/</code>. Health checks are not supported\n   if the protocol version is <code>gRPC</code>, however, you can choose <code>HTTP/1.1</code> or\n    <code>HTTP/2</code> and specify a valid URI.</p>"}))
    HealthCheckConfig.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'healthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The approximate amount of time, in seconds, between health checks of an individual target.\n   The range is 5–300 seconds. The default is 30 seconds.</p>"}))
    HealthCheckConfig.add_member(:health_check_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: 'healthCheckTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is\n   1–120 seconds. The default is 5 seconds.</p>"}))
    HealthCheckConfig.add_member(:healthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthyThresholdCount, location_name: 'healthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive successful health checks required before considering an unhealthy\n   target healthy. The range is 2–10. The default is 5.</p>"}))
    HealthCheckConfig.add_member(:unhealthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UnhealthyThresholdCount, location_name: 'unhealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive failed health checks required before considering a target\n   unhealthy. The range is 2–10. The default is 2.</p>"}))
    HealthCheckConfig.add_member(:matcher, Smithy::Schema::Shapes::ShapeRef.new(shape: Matcher, location_name: 'matcher', traits: {"smithy.api#documentation" => "<p>The codes to use when checking for a successful response from a target.</p>"}))
    HealthCheckConfig.type = Types::HealthCheckConfig
    HttpMatch.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethod, location_name: 'method', traits: {"smithy.api#documentation" => "<p>The HTTP method type.</p>"}))
    HttpMatch.add_member(:path_match, Smithy::Schema::Shapes::ShapeRef.new(shape: PathMatch, location_name: 'pathMatch', traits: {"smithy.api#documentation" => "<p>The path match.</p>"}))
    HttpMatch.add_member(:header_matches, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderMatchList, location_name: 'headerMatches', traits: {"smithy.api#documentation" => "<p>The header matches. Matches incoming requests with rule based on request header value before\n   applying rule action.</p>"}))
    HttpMatch.type = Types::HttpMatch
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpResource.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the IP resource.</p>"}))
    IpResource.type = Types::IpResource
    ListAccessLogSubscriptionsInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network or service.</p>", "smithy.api#httpQuery" => "resourceIdentifier", "smithy.api#required" => {}}))
    ListAccessLogSubscriptionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAccessLogSubscriptionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAccessLogSubscriptionsInput.type = Types::ListAccessLogSubscriptionsInput
    ListAccessLogSubscriptionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the access log subscriptions.</p>", "smithy.api#required" => {}}))
    ListAccessLogSubscriptionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>"}))
    ListAccessLogSubscriptionsOutput.type = Types::ListAccessLogSubscriptionsOutput
    ListListenersInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListListenersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListListenersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListListenersInput.type = Types::ListListenersInput
    ListListenersOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the listeners.</p>", "smithy.api#required" => {}}))
    ListListenersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListListenersOutput.type = Types::ListListenersOutput
    ListResourceConfigurationsRequest.add_member(:resource_gateway_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIdentifier, location_name: 'resourceGatewayIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway for the resource configuration.</p>", "smithy.api#httpQuery" => "resourceGatewayIdentifier"}))
    ListResourceConfigurationsRequest.add_member(:resource_configuration_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the group resource configuration.</p>", "smithy.api#httpQuery" => "resourceConfigurationGroupIdentifier"}))
    ListResourceConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum page size.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResourceConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResourceConfigurationsRequest.type = Types::ListResourceConfigurationsRequest
    ListResourceConfigurationsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the resource configurations.</p>"}))
    ListResourceConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListResourceConfigurationsResponse.type = Types::ListResourceConfigurationsResponse
    ListResourceEndpointAssociationsRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID for the resource configuration associated with the VPC endpoint.</p>", "smithy.api#httpQuery" => "resourceConfigurationIdentifier", "smithy.api#required" => {}}))
    ListResourceEndpointAssociationsRequest.add_member(:resource_endpoint_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationIdentifier, location_name: 'resourceEndpointAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>", "smithy.api#httpQuery" => "resourceEndpointAssociationIdentifier"}))
    ListResourceEndpointAssociationsRequest.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint in the association.</p>", "smithy.api#httpQuery" => "vpcEndpointId"}))
    ListResourceEndpointAssociationsRequest.add_member(:vpc_endpoint_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointOwner, location_name: 'vpcEndpointOwner', traits: {"smithy.api#documentation" => "<p>The owner of the VPC endpoint in the association.</p>", "smithy.api#httpQuery" => "vpcEndpointOwner"}))
    ListResourceEndpointAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum page size.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResourceEndpointAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResourceEndpointAssociationsRequest.type = Types::ListResourceEndpointAssociationsRequest
    ListResourceEndpointAssociationsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the VPC endpoint associations.</p>", "smithy.api#required" => {}}))
    ListResourceEndpointAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListResourceEndpointAssociationsResponse.type = Types::ListResourceEndpointAssociationsResponse
    ListResourceGatewaysRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum page size.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResourceGatewaysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResourceGatewaysRequest.type = Types::ListResourceGatewaysRequest
    ListResourceGatewaysResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the resource gateways.</p>"}))
    ListResourceGatewaysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListResourceGatewaysResponse.type = Types::ListResourceGatewaysResponse
    ListRulesInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRulesInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRulesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRulesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRulesInput.type = Types::ListRulesInput
    ListRulesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the rules.</p>", "smithy.api#required" => {}}))
    ListRulesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListRulesOutput.type = Types::ListRulesOutput
    ListServiceNetworkResourceAssociationsRequest.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>", "smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource configurationk.</p>", "smithy.api#httpQuery" => "resourceConfigurationIdentifier"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum page size.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkResourceAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkResourceAssociationsRequest.type = Types::ListServiceNetworkResourceAssociationsRequest
    ListServiceNetworkResourceAssociationsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the associations.</p>", "smithy.api#required" => {}}))
    ListServiceNetworkResourceAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServiceNetworkResourceAssociationsResponse.type = Types::ListServiceNetworkResourceAssociationsResponse
    ListServiceNetworkServiceAssociationsInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network.</p>", "smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpQuery" => "serviceIdentifier"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkServiceAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkServiceAssociationsInput.type = Types::ListServiceNetworkServiceAssociationsInput
    ListServiceNetworkServiceAssociationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the associations.</p>", "smithy.api#required" => {}}))
    ListServiceNetworkServiceAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServiceNetworkServiceAssociationsOutput.type = Types::ListServiceNetworkServiceAssociationsOutput
    ListServiceNetworkVpcAssociationsInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network.</p>", "smithy.api#httpQuery" => "serviceNetworkIdentifier"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the VPC.</p>", "smithy.api#httpQuery" => "vpcIdentifier"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkVpcAssociationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkVpcAssociationsInput.type = Types::ListServiceNetworkVpcAssociationsInput
    ListServiceNetworkVpcAssociationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the associations.</p>", "smithy.api#required" => {}}))
    ListServiceNetworkVpcAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServiceNetworkVpcAssociationsOutput.type = Types::ListServiceNetworkVpcAssociationsOutput
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the service network associated with the VPC endpoint.</p>", "smithy.api#httpQuery" => "serviceNetworkIdentifier", "smithy.api#required" => {}}))
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum page size.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworkVpcEndpointAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworkVpcEndpointAssociationsRequest.type = Types::ListServiceNetworkVpcEndpointAssociationsRequest
    ListServiceNetworkVpcEndpointAssociationsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcEndpointAssociationList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the association between the VPC endpoint and service network.</p>", "smithy.api#required" => {}}))
    ListServiceNetworkVpcEndpointAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServiceNetworkVpcEndpointAssociationsResponse.type = Types::ListServiceNetworkVpcEndpointAssociationsResponse
    ListServiceNetworksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServiceNetworksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServiceNetworksInput.type = Types::ListServiceNetworksInput
    ListServiceNetworksOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the service networks.</p>", "smithy.api#required" => {}}))
    ListServiceNetworksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServiceNetworksOutput.type = Types::ListServiceNetworksOutput
    ListServicesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListServicesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the services.</p>"}))
    ListServicesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Information about the tags.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTargetGroupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTargetGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTargetGroupsInput.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the VPC.</p>", "smithy.api#httpQuery" => "vpcIdentifier"}))
    ListTargetGroupsInput.add_member(:target_group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'targetGroupType', traits: {"smithy.api#documentation" => "<p>The target group type.</p>", "smithy.api#httpQuery" => "targetGroupType"}))
    ListTargetGroupsInput.type = Types::ListTargetGroupsInput
    ListTargetGroupsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the target groups.</p>"}))
    ListTargetGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListTargetGroupsOutput.type = Types::ListTargetGroupsOutput
    ListTargetsInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTargetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTargetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTargetsInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets.</p>", "smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListTargetsInput.type = Types::ListTargetsInput
    ListTargetsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the targets.</p>", "smithy.api#required" => {}}))
    ListTargetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, a pagination token for the next page of results.</p>"}))
    ListTargetsOutput.type = Types::ListTargetsOutput
    ListenerSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    ListenerSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    ListenerSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    ListenerSummary.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The listener protocol.</p>"}))
    ListenerSummary.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The listener port.</p>"}))
    ListenerSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener was created, in ISO-8601 format.</p>"}))
    ListenerSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener was last updated, in ISO-8601 format.</p>"}))
    ListenerSummary.type = Types::ListenerSummary
    ListenerSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerSummary)
    Matcher.add_member(:http_code, Types::Matcher::HttpCode, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpCodeMatcher, location_name: 'httpCode', traits: {"smithy.api#documentation" => "<p>The HTTP code to use when checking for a successful response from a target.</p>"}))
    Matcher.add_member(:unknown, Types::Matcher::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Matcher.type = Types::Matcher
    PathMatch.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: PathMatchType, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The type of path match.</p>", "smithy.api#required" => {}}))
    PathMatch.add_member(:case_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'caseSensitive', traits: {"smithy.api#documentation" => "<p>Indicates whether the match is case sensitive.</p>"}))
    PathMatch.type = Types::PathMatch
    PathMatchType.add_member(:exact, Types::PathMatchType::Exact, Smithy::Schema::Shapes::ShapeRef.new(shape: PathMatchExact, location_name: 'exact', traits: {"smithy.api#documentation" => "<p>An exact match of the path.</p>"}))
    PathMatchType.add_member(:prefix, Types::PathMatchType::Prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PathMatchPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>A prefix match of the path.</p>"}))
    PathMatchType.add_member(:unknown, Types::PathMatchType::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PathMatchType.type = Types::PathMatchType
    PortRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange)
    PutAuthPolicyInput.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'resourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network or service for which the policy\n   is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAuthPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthPolicyString, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>", "smithy.api#required" => {}}))
    PutAuthPolicyInput.type = Types::PutAuthPolicyInput
    PutAuthPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthPolicyString, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The auth policy. The policy string in JSON must not contain newlines or blank lines.</p>"}))
    PutAuthPolicyOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthPolicyState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the auth policy. The auth policy is only active when the auth type is set to\n    <code>AWS_IAM</code>. If you provide a policy, then authentication and authorization decisions\n   are made based on this policy and the client's IAM policy. If the Auth type is <code>NONE</code>,\n   then, any auth policy that you provide remains inactive. For more information, see <a href=\"https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network\">Create a service network</a> in the <i>Amazon VPC Lattice User Guide</i>.</p>"}))
    PutAuthPolicyOutput.type = Types::PutAuthPolicyOutput
    PutResourcePolicyInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network or service for which the policy\n   is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>An IAM policy. The policy string in JSON must not contain newlines or blank\n   lines.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    RegisterTargetsInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterTargetsInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RegisterTargetsInput.type = Types::RegisterTargetsInput
    RegisterTargetsOutput.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'successful', traits: {"smithy.api#documentation" => "<p>The targets that were successfully registered.</p>"}))
    RegisterTargetsOutput.add_member(:unsuccessful, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFailureList, location_name: 'unsuccessful', traits: {"smithy.api#documentation" => "<p>The targets that were not registered.</p>"}))
    RegisterTargetsOutput.type = Types::RegisterTargetsOutput
    ResourceConfigurationDefinition.add_member(:dns_resource, Types::ResourceConfigurationDefinition::DnsResource, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsResource, location_name: 'dnsResource', traits: {"smithy.api#documentation" => "<p>The DNS name of the resource.</p>"}))
    ResourceConfigurationDefinition.add_member(:ip_resource, Types::ResourceConfigurationDefinition::IpResource, Smithy::Schema::Shapes::ShapeRef.new(shape: IpResource, location_name: 'ipResource', traits: {"smithy.api#documentation" => "<p>The IP resource.</p>"}))
    ResourceConfigurationDefinition.add_member(:arn_resource, Types::ResourceConfigurationDefinition::ArnResource, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnResource, location_name: 'arnResource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    ResourceConfigurationDefinition.add_member(:unknown, Types::ResourceConfigurationDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ResourceConfigurationDefinition.type = Types::ResourceConfigurationDefinition
    ResourceConfigurationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    ResourceConfigurationSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration.</p>"}))
    ResourceConfigurationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration.</p>"}))
    ResourceConfigurationSummary.add_member(:resource_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'resourceGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    ResourceConfigurationSummary.add_member(:resource_configuration_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the group resource configuration.</p>"}))
    ResourceConfigurationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource configuration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SINGLE</code> - A single resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GROUP</code> - A group of resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ARN</code> - An Amazon Web Services resource.</p>\n            </li>\n         </ul>"}))
    ResourceConfigurationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource configuration.</p>"}))
    ResourceConfigurationSummary.add_member(:amazon_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'amazonManaged', traits: {"smithy.api#documentation" => "<p>Indicates whether the resource configuration was created and is managed by Amazon.</p>"}))
    ResourceConfigurationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the resource configuration was created, in ISO-8601 format.</p>"}))
    ResourceConfigurationSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The most recent date and time that the resource configuration was updated, in ISO-8601 format.</p>"}))
    ResourceConfigurationSummary.type = Types::ResourceConfigurationSummary
    ResourceConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationSummary)
    ResourceEndpointAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationSummary)
    ResourceEndpointAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint association.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceEndpointAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC endpoint association.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'resourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:resource_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'resourceConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:vpc_endpoint_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointOwner, location_name: 'vpcEndpointOwner', traits: {"smithy.api#documentation" => "<p>The owner of the VPC endpoint.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    ResourceEndpointAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the VPC endpoint association was created, in ISO-8601 format.</p>"}))
    ResourceEndpointAssociationSummary.type = Types::ResourceEndpointAssociationSummary
    ResourceGatewayList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewaySummary)
    ResourceGatewaySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the VPC subnets for the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups applied to the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address used by the resource gateway.</p>"}))
    ResourceGatewaySummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the VPC endpoint association was created, in ISO-8601 format.</p>"}))
    ResourceGatewaySummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The most recent date and time that the resource gateway was updated, in ISO-8601 format.</p>"}))
    ResourceGatewaySummary.type = Types::ResourceGatewaySummary
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleAction.add_member(:forward, Types::RuleAction::Forward, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardAction, location_name: 'forward', traits: {"smithy.api#documentation" => "<p>The forward action. Traffic that matches the rule is forwarded to the specified target\n   groups.</p>"}))
    RuleAction.add_member(:fixed_response, Types::RuleAction::FixedResponse, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedResponseAction, location_name: 'fixedResponse', traits: {"smithy.api#documentation" => "<p>The fixed response action. The rule returns a custom HTTP response.</p>"}))
    RuleAction.add_member(:unknown, Types::RuleAction::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleAction.type = Types::RuleAction
    RuleMatch.add_member(:http_match, Types::RuleMatch::HttpMatch, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMatch, location_name: 'httpMatch', traits: {"smithy.api#documentation" => "<p>The HTTP criteria that a rule must match.</p>"}))
    RuleMatch.add_member(:unknown, Types::RuleMatch::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleMatch.type = Types::RuleMatch
    RuleSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    RuleSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the rule.</p>"}))
    RuleSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    RuleSummary.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether this is the default listener rule.</p>"}))
    RuleSummary.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The priority of the rule.</p>"}))
    RuleSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener rule was created, in ISO-8601 format.</p>"}))
    RuleSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the listener rule was last updated, in ISO-8601 format.</p>"}))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    RuleUpdate.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'ruleIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the rule.</p>", "smithy.api#required" => {}}))
    RuleUpdate.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>"}))
    RuleUpdate.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The rule priority. A listener can't have multiple rules with the same priority.</p>"}))
    RuleUpdate.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The rule action.</p>"}))
    RuleUpdate.type = Types::RuleUpdate
    RuleUpdateFailure.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'ruleIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the rule.</p>"}))
    RuleUpdateFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    RuleUpdateFailure.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureMessage, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    RuleUpdateFailure.type = Types::RuleUpdateFailure
    RuleUpdateFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdateFailure)
    RuleUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdate)
    RuleUpdateSuccess.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    RuleUpdateSuccess.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    RuleUpdateSuccess.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    RuleUpdateSuccess.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether this is the default rule.</p>"}))
    RuleUpdateSuccess.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>"}))
    RuleUpdateSuccess.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The rule priority.</p>"}))
    RuleUpdateSuccess.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action for the rule.</p>"}))
    RuleUpdateSuccess.type = Types::RuleUpdateSuccess
    RuleUpdateSuccessList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleUpdateSuccess)
    SecurityGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn)
    ServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSummary)
    ServiceNetworkEndpointAssociation.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint associated with the service network.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the association.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:vpc_endpoint_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vpcEndpointOwnerId', traits: {"smithy.api#documentation" => "<p>The owner of the VPC endpoint associated with the service network.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the association.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    ServiceNetworkEndpointAssociation.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    ServiceNetworkEndpointAssociation.type = Types::ServiceNetworkEndpointAssociation
    ServiceNetworkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkSummary)
    ServiceNetworkResourceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationSummary)
    ServiceNetworkResourceAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association between the service network and resource configuration.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkResourceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the service network associated with the resource configuration.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration associated with the service network.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'resourceConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:resource_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'resourceConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration associated with the service network.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifierWithoutRegex, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network associated with the resource configuration.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArnWithoutRegex, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network associated with the resource configuration.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkNameWithoutRegex, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network associated with the resource configuration.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS entry for the service.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:private_dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'privateDnsEntry', traits: {"smithy.api#documentation" => "<p>The private DNS entry for the service.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:is_managed_association, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isManagedAssociation', traits: {"smithy.api#documentation" => "<p>Specifies whether the association is managed by Amazon.</p>"}))
    ServiceNetworkResourceAssociationSummary.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    ServiceNetworkResourceAssociationSummary.type = Types::ServiceNetworkResourceAssociationSummary
    ServiceNetworkServiceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationSummary)
    ServiceNetworkServiceAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. If the deletion fails, try to delete again.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'serviceId', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'serviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS information.</p>"}))
    ServiceNetworkServiceAssociationSummary.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    ServiceNetworkServiceAssociationSummary.type = Types::ServiceNetworkServiceAssociationSummary
    ServiceNetworkSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    ServiceNetworkSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    ServiceNetworkSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    ServiceNetworkSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service network was created, in ISO-8601 format.</p>"}))
    ServiceNetworkSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service network was last updated, in ISO-8601 format.</p>"}))
    ServiceNetworkSummary.add_member(:number_of_associated_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAssociatedVPCs', traits: {"smithy.api#documentation" => "<p>The number of VPCs associated with the service network.</p>"}))
    ServiceNetworkSummary.add_member(:number_of_associated_services, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAssociatedServices', traits: {"smithy.api#documentation" => "<p>The number of services associated with the service network.</p>"}))
    ServiceNetworkSummary.add_member(:number_of_associated_resource_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numberOfAssociatedResourceConfigurations', traits: {"smithy.api#documentation" => "<p>The number of resource configurations associated with a service network.</p>"}))
    ServiceNetworkSummary.type = Types::ServiceNetworkSummary
    ServiceNetworkVpcAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationSummary)
    ServiceNetworkVpcAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in ISO-8601 format.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'serviceNetworkId', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'serviceNetworkName', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'serviceNetworkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC.</p>"}))
    ServiceNetworkVpcAssociationSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the association was last updated, in ISO-8601 format.</p>"}))
    ServiceNetworkVpcAssociationSummary.type = Types::ServiceNetworkVpcAssociationSummary
    ServiceNetworkVpcEndpointAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkEndpointAssociation)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    ServiceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    ServiceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    ServiceSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service was created, in ISO-8601 format.</p>"}))
    ServiceSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service was last updated, in ISO-8601 format.</p>"}))
    ServiceSummary.add_member(:dns_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsEntry, location_name: 'dnsEntry', traits: {"smithy.api#documentation" => "<p>The DNS information.</p>"}))
    ServiceSummary.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    ServiceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    ServiceSummary.type = Types::ServiceSummary
    SharingConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Specifies if the service network is enabled for sharing.</p>"}))
    SharingConfig.type = Types::SharingConfig
    SubnetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, traits: {"smithy.api#documentation" => "The key of the tag.\n\nConstraints: Tag keys are case-sensitive and accept a maximum of 128 Unicode characters.\nValid characters are Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @\nMay not begin with `aws:`.\n"})
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, traits: {"smithy.api#documentation" => "The value of the tag.\n\nConstraints: Tag values are case-sensitive and accept a maximum of 256 Unicode characters.\nValid characters are Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @\n"})
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Target.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance\n   ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type\n   is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is\n    <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>", "smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    Target.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port on which the target is listening. For HTTP, the default is 80. For HTTPS, the\n   default is 443.</p>"}))
    Target.type = Types::Target
    TargetFailure.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance\n   ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type\n   is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target group type is\n    <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>"}))
    TargetFailure.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port on which the target is listening. This parameter doesn't apply if the target is a\n   Lambda function.</p>"}))
    TargetFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    TargetFailure.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>The failure message.</p>"}))
    TargetFailure.type = Types::TargetFailure
    TargetFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFailure)
    TargetGroupConfig.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port on which the targets are listening. For HTTP, the default is 80. For HTTPS, the\n   default is 443. Not supported if the target group type is <code>LAMBDA</code>.</p>"}))
    TargetGroupConfig.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol to use for routing traffic to the targets. The default is the protocol of the\n   target group. Not supported if the target group type is <code>LAMBDA</code>.</p>"}))
    TargetGroupConfig.add_member(:protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupProtocolVersion, location_name: 'protocolVersion', traits: {"smithy.api#documentation" => "<p>The protocol version. The default is <code>HTTP1</code>. Not supported if the target group\n   type is <code>LAMBDA</code>.</p>"}))
    TargetGroupConfig.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address used for the target group. Supported only if the target group type is\n    <code>IP</code>. The default is <code>IPV4</code>.</p>"}))
    TargetGroupConfig.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC. Not supported if the target group type is <code>LAMBDA</code>.</p>"}))
    TargetGroupConfig.add_member(:health_check, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: 'healthCheck', traits: {"smithy.api#documentation" => "<p>The health check configuration. Not supported if the target group type is\n    <code>LAMBDA</code> or <code>ALB</code>.</p>"}))
    TargetGroupConfig.add_member(:lambda_event_structure_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventStructureVersion, location_name: 'lambdaEventStructureVersion', traits: {"smithy.api#documentation" => "<p>The version of the event structure that your Lambda function receives. Supported only if the\n   target group type is <code>LAMBDA</code>. The default is <code>V1</code>.</p>"}))
    TargetGroupConfig.type = Types::TargetGroupConfig
    TargetGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupSummary)
    TargetGroupSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target group.</p>"}))
    TargetGroupSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the target group.</p>"}))
    TargetGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the target group.</p>"}))
    TargetGroupSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The target group type.</p>"}))
    TargetGroupSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the target group was created, in ISO-8601 format.</p>"}))
    TargetGroupSummary.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port of the target group.</p>"}))
    TargetGroupSummary.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol of the target group.</p>"}))
    TargetGroupSummary.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address used for the target group. The possible values are <code>IPV4</code>\n   and <code>IPV6</code>. This is an optional parameter. If not specified, the default is\n    <code>IPV4</code>.</p>"}))
    TargetGroupSummary.add_member(:vpc_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the VPC of the target group.</p>"}))
    TargetGroupSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the target group was last updated, in ISO-8601 format.</p>"}))
    TargetGroupSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    TargetGroupSummary.add_member(:service_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArnList, location_name: 'serviceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the service.</p>"}))
    TargetGroupSummary.add_member(:lambda_event_structure_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaEventStructureVersion, location_name: 'lambdaEventStructureVersion', traits: {"smithy.api#documentation" => "<p>The version of the event structure that your Lambda function receives. Supported only if the\n   target group type is <code>LAMBDA</code>.</p>"}))
    TargetGroupSummary.type = Types::TargetGroupSummary
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    TargetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target. If the target group type is <code>INSTANCE</code>, this is an instance\n   ID. If the target group type is <code>IP</code>, this is an IP address. If the target group type\n   is <code>LAMBDA</code>, this is the ARN of a Lambda function. If the target type is\n    <code>ALB</code>, this is the ARN of an Application Load Balancer.</p>"}))
    TargetSummary.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The port on which the target is listening.</p>"}))
    TargetSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the target.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DRAINING</code>: The target is being deregistered. No new connections are sent to\n     this target while current connections are being drained. The default draining time is 5\n     minutes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNAVAILABLE</code>: Health checks are unavailable for the target group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HEALTHY</code>: The target is healthy.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code>: The target is unhealthy.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INITIAL</code>: Initial health checks on the target are being performed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNUSED</code>: Target group is not used in a service.</p>\n            </li>\n         </ul>"}))
    TargetSummary.add_member(:reason_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'reasonCode', traits: {"smithy.api#documentation" => "<p>The code for why the target status is what it is.</p>"}))
    TargetSummary.type = Types::TargetSummary
    TargetSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummary)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys of the tags to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAccessLogSubscriptionInput.add_member(:access_log_subscription_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, location_name: 'accessLogSubscriptionIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the access log subscription.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionInput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log destination.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionInput.type = Types::UpdateAccessLogSubscriptionInput
    UpdateAccessLogSubscriptionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access log subscription.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log subscription.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log subscription.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogDestinationArn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the access log destination.</p>", "smithy.api#required" => {}}))
    UpdateAccessLogSubscriptionOutput.type = Types::UpdateAccessLogSubscriptionOutput
    UpdateListenerInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateListenerInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateListenerInput.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The action for the default rule.</p>", "smithy.api#required" => {}}))
    UpdateListenerInput.type = Types::UpdateListenerInput
    UpdateListenerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    UpdateListenerOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    UpdateListenerOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    UpdateListenerOutput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The protocol of the listener.</p>"}))
    UpdateListenerOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The listener port.</p>"}))
    UpdateListenerOutput.add_member(:service_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'serviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    UpdateListenerOutput.add_member(:service_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'serviceId', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    UpdateListenerOutput.add_member(:default_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'defaultAction', traits: {"smithy.api#documentation" => "<p>The action for the default rule.</p>"}))
    UpdateListenerOutput.type = Types::UpdateListenerOutput
    UpdateResourceConfigurationRequest.add_member(:resource_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: 'resourceConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceConfigurationRequest.add_member(:resource_configuration_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationDefinition, location_name: 'resourceConfigurationDefinition', traits: {"smithy.api#documentation" => "<p>The resource configuration.</p>"}))
    UpdateResourceConfigurationRequest.add_member(:allow_association_to_shareable_service_network, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowAssociationToShareableServiceNetwork', traits: {"smithy.api#documentation" => "<p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>"}))
    UpdateResourceConfigurationRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeList, location_name: 'portRanges', traits: {"smithy.api#documentation" => "<p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>"}))
    UpdateResourceConfigurationRequest.type = Types::UpdateResourceConfigurationRequest
    UpdateResourceConfigurationResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:resource_gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'resourceGatewayId', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway associated with the resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:resource_configuration_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: 'resourceConfigurationGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the group resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource configuration.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SINGLE</code> - A single resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GROUP</code> - A group of resources.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CHILD</code> - A single resource that is part of a group resource configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ARN</code> - An Amazon Web Services resource.</p>\n            </li>\n         </ul>"}))
    UpdateResourceConfigurationResponse.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeList, location_name: 'portRanges', traits: {"smithy.api#documentation" => "<p>The TCP port ranges that a consumer can use to access a resource configuration. You can separate port ranges with a comma. Example: 1-65535 or 1,2,22-30</p>"}))
    UpdateResourceConfigurationResponse.add_member(:allow_association_to_shareable_service_network, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowAssociationToShareableServiceNetwork', traits: {"smithy.api#documentation" => "<p>Indicates whether to add the resource configuration to service networks that are shared with other accounts.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>The TCP protocol accepted by the specified resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.add_member(:resource_configuration_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfigurationDefinition, location_name: 'resourceConfigurationDefinition', traits: {"smithy.api#documentation" => "<p>The resource configuration.</p>"}))
    UpdateResourceConfigurationResponse.type = Types::UpdateResourceConfigurationResponse
    UpdateResourceGatewayRequest.add_member(:resource_gateway_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayIdentifier, location_name: 'resourceGatewayIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the resource gateway.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceGatewayRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups associated with the resource gateway.</p>", "smithy.api#length" => {"min" => 0, "max" => 5}}))
    UpdateResourceGatewayRequest.type = Types::UpdateResourceGatewayRequest
    UpdateResourceGatewayResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGatewayStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the VPC subnets for the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups associated with the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'ipAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP address used by the resource gateway.</p>"}))
    UpdateResourceGatewayResponse.type = Types::UpdateResourceGatewayResponse
    UpdateRuleInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:listener_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerIdentifier, location_name: 'listenerIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the listener.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:rule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'ruleIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>"}))
    UpdateRuleInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The rule priority. A listener can't have multiple rules with the same priority.</p>"}))
    UpdateRuleInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Information about the action for the specified listener rule.</p>"}))
    UpdateRuleInput.type = Types::UpdateRuleInput
    UpdateRuleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    UpdateRuleOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the listener.</p>"}))
    UpdateRuleOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the listener.</p>"}))
    UpdateRuleOutput.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether this is the default rule.</p>"}))
    UpdateRuleOutput.add_member(:match, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleMatch, location_name: 'match', traits: {"smithy.api#documentation" => "<p>The rule match.</p>"}))
    UpdateRuleOutput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The rule priority.</p>"}))
    UpdateRuleOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Information about the action for the specified listener rule.</p>"}))
    UpdateRuleOutput.type = Types::UpdateRuleOutput
    UpdateServiceInput.add_member(:service_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIdentifier, location_name: 'serviceIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceInput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    UpdateServiceInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>\n            </li>\n         </ul>"}))
    UpdateServiceInput.type = Types::UpdateServiceInput
    UpdateServiceNetworkInput.add_member(:service_network_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location_name: 'serviceNetworkIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the service network.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceNetworkInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NONE</code>: The resource does not use an IAM policy. This is the default.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_IAM</code>: The resource uses an IAM policy. When this type is used, auth is enabled and an auth policy is required.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateServiceNetworkInput.type = Types::UpdateServiceNetworkInput
    UpdateServiceNetworkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service network.</p>"}))
    UpdateServiceNetworkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service network.</p>"}))
    UpdateServiceNetworkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service network.</p>"}))
    UpdateServiceNetworkOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    UpdateServiceNetworkOutput.type = Types::UpdateServiceNetworkOutput
    UpdateServiceNetworkVpcAssociationInput.add_member(:service_network_vpc_association_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, location_name: 'serviceNetworkVpcAssociationIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateServiceNetworkVpcAssociationInput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups.</p>", "smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    UpdateServiceNetworkVpcAssociationInput.type = Types::UpdateServiceNetworkVpcAssociationInput
    UpdateServiceNetworkVpcAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>"}))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the association.</p>"}))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status. You can retry the operation if the status is <code>DELETE_FAILED</code>.\n   However, if you retry it while the status is <code>DELETE_IN_PROGRESS</code>, there is no change\n   in the status.</p>"}))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'createdBy', traits: {"smithy.api#documentation" => "<p>The account that created the association.</p>"}))
    UpdateServiceNetworkVpcAssociationOutput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups.</p>"}))
    UpdateServiceNetworkVpcAssociationOutput.type = Types::UpdateServiceNetworkVpcAssociationOutput
    UpdateServiceOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service.</p>"}))
    UpdateServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service.</p>"}))
    UpdateServiceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>"}))
    UpdateServiceOutput.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: 'customDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name of the service.</p>"}))
    UpdateServiceOutput.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    UpdateServiceOutput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of IAM policy.</p>"}))
    UpdateServiceOutput.type = Types::UpdateServiceOutput
    UpdateTargetGroupInput.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTargetGroupInput.add_member(:health_check, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: 'healthCheck', traits: {"smithy.api#documentation" => "<p>The health check configuration.</p>", "smithy.api#required" => {}}))
    UpdateTargetGroupInput.type = Types::UpdateTargetGroupInput
    UpdateTargetGroupOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the target group.</p>"}))
    UpdateTargetGroupOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    UpdateTargetGroupOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the target group.</p>"}))
    UpdateTargetGroupOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The target group type.</p>"}))
    UpdateTargetGroupOutput.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: 'config', traits: {"smithy.api#documentation" => "<p>The target group configuration.</p>"}))
    UpdateTargetGroupOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status.</p>"}))
    UpdateTargetGroupOutput.type = Types::UpdateTargetGroupOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The fields that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Additional information about why the validation failed.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    WeightedTargetGroup.add_member(:target_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIdentifier, location_name: 'targetGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the target group.</p>", "smithy.api#required" => {}}))
    WeightedTargetGroup.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupWeight, location_name: 'weight', traits: {"smithy.api#documentation" => "<p>Only required if you specify multiple target groups for a forward action. The weight\n   determines how requests are distributed to the target group. For example, if you specify two\n   target groups, each with a weight of 10, each target group receives half the requests. If you\n   specify two target groups, one with a weight of 10 and the other with a weight of 20, the target\n   group with a weight of 20 receives twice as many requests as the other target group. If there's\n   only one target group specified, then the default value is 100.</p>"}))
    WeightedTargetGroup.type = Types::WeightedTargetGroup
    WeightedTargetGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WeightedTargetGroup)

    MercuryControlPlane = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.vpclattice#MercuryControlPlane"
      service.name = "MercuryControlPlane"
      service.version = "2022-11-30"
      service.traits = {"aws.api#service" => {"sdkId" => "VPC Lattice", "arnNamespace" => "vpc-lattice", "cloudFormationName" => "VpcLattice", "cloudTrailEventSource" => "vpc-lattice.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "vpc-lattice"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "Amazon VPC Lattice"}
      service.add_operation(:batch_update_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#BatchUpdateRule"
        operation.name = "BatchUpdateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_access_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateAccessLogSubscription"
        operation.name = "CreateAccessLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessLogSubscriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessLogSubscriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/accesslogsubscriptions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateListener"
        operation.name = "CreateListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services/{serviceIdentifier}/listeners"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateResourceConfiguration"
        operation.name = "CreateResourceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/resourceconfigurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateResourceGateway"
        operation.name = "CreateResourceGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/resourcegateways"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateRule"
        operation.name = "CreateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateService"
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
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/services"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetwork"
        operation.name = "CreateServiceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/servicenetworks"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_resource_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkResourceAssociation"
        operation.name = "CreateServiceNetworkResourceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkResourceAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkResourceAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/servicenetworkresourceassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_service_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkServiceAssociation"
        operation.name = "CreateServiceNetworkServiceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkServiceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkServiceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_service_network_vpc_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateServiceNetworkVpcAssociation"
        operation.name = "CreateServiceNetworkVpcAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkVpcAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServiceNetworkVpcAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#CreateTargetGroup"
        operation.name = "CreateTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/targetgroups", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteAccessLogSubscription"
        operation.name = "DeleteAccessLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessLogSubscriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessLogSubscriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_auth_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteAuthPolicy"
        operation.name = "DeleteAuthPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/authpolicy/{resourceIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceConfiguration"
        operation.name = "DeleteResourceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_endpoint_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceEndpointAssociation"
        operation.name = "DeleteResourceEndpointAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceEndpointAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceEndpointAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourceendpointassociations/{resourceEndpointAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourceGateway"
        operation.name = "DeleteResourceGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways/{resourceGatewayIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteService"
        operation.name = "DeleteService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services/{serviceIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetwork"
        operation.name = "DeleteServiceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "uri" => "/servicenetworks/{serviceNetworkIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_resource_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkResourceAssociation"
        operation.name = "DeleteServiceNetworkResourceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkResourceAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkResourceAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_service_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkServiceAssociation"
        operation.name = "DeleteServiceNetworkServiceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkServiceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkServiceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_network_vpc_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteServiceNetworkVpcAssociation"
        operation.name = "DeleteServiceNetworkVpcAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkVpcAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceNetworkVpcAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeleteTargetGroup"
        operation.name = "DeleteTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#DeregisterTargets"
        operation.name = "DeregisterTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/deregistertargets", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetAccessLogSubscription"
        operation.name = "GetAccessLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessLogSubscriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessLogSubscriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_auth_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetAuthPolicy"
        operation.name = "GetAuthPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/authpolicy/{resourceIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetListener"
        operation.name = "GetListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourceConfiguration"
        operation.name = "GetResourceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourceGateway"
        operation.name = "GetResourceGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourcegateways/{resourceGatewayIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetRule"
        operation.name = "GetRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetService"
        operation.name = "GetService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetwork"
        operation.name = "GetServiceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/servicenetworks/{serviceNetworkIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_resource_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkResourceAssociation"
        operation.name = "GetServiceNetworkResourceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkResourceAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkResourceAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_service_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkServiceAssociation"
        operation.name = "GetServiceNetworkServiceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkServiceAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkServiceAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_network_vpc_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetServiceNetworkVpcAssociation"
        operation.name = "GetServiceNetworkVpcAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkVpcAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceNetworkVpcAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#GetTargetGroup"
        operation.name = "GetTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_log_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListAccessLogSubscriptions"
        operation.name = "ListAccessLogSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessLogSubscriptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessLogSubscriptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/accesslogsubscriptions", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessLogSubscriptions.new
      end)
      service.add_operation(:list_listeners, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListListeners"
        operation.name = "ListListeners"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListListeners.new
      end)
      service.add_operation(:list_resource_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceConfigurations"
        operation.name = "ListResourceConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resourceconfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceConfigurations.new
      end)
      service.add_operation(:list_resource_endpoint_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceEndpointAssociations"
        operation.name = "ListResourceEndpointAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceEndpointAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceEndpointAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourceendpointassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceEndpointAssociations.new
      end)
      service.add_operation(:list_resource_gateways, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListResourceGateways"
        operation.name = "ListResourceGateways"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceGatewaysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceGatewaysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceGateways.new
      end)
      service.add_operation(:list_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListRules"
        operation.name = "ListRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_service_network_resource_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkResourceAssociations"
        operation.name = "ListServiceNetworkResourceAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkResourceAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkResourceAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkresourceassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkResourceAssociations.new
      end)
      service.add_operation(:list_service_network_service_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkServiceAssociations"
        operation.name = "ListServiceNetworkServiceAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkServiceAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkServiceAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkserviceassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkServiceAssociations.new
      end)
      service.add_operation(:list_service_network_vpc_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkVpcAssociations"
        operation.name = "ListServiceNetworkVpcAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkVpcAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkVpcAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkVpcAssociations.new
      end)
      service.add_operation(:list_service_network_vpc_endpoint_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworkVpcEndpointAssociations"
        operation.name = "ListServiceNetworkVpcEndpointAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkVpcEndpointAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworkVpcEndpointAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcendpointassociations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworkVpcEndpointAssociations.new
      end)
      service.add_operation(:list_service_networks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServiceNetworks"
        operation.name = "ListServiceNetworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceNetworksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworks", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceNetworks.new
      end)
      service.add_operation(:list_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListServices"
        operation.name = "ListServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_target_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTargetGroups"
        operation.name = "ListTargetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTargetGroups.new
      end)
      service.add_operation(:list_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#ListTargets"
        operation.name = "ListTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/listtargets", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTargets.new
      end)
      service.add_operation(:put_auth_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#PutAuthPolicy"
        operation.name = "PutAuthPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAuthPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAuthPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/authpolicy/{resourceIdentifier}"}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/resourcepolicy/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#RegisterTargets"
        operation.name = "RegisterTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}/registertargets", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_access_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateAccessLogSubscription"
        operation.name = "UpdateAccessLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessLogSubscriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessLogSubscriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateListener"
        operation.name = "UpdateListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_resource_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateResourceConfiguration"
        operation.name = "UpdateResourceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/resourceconfigurations/{resourceConfigurationIdentifier}"}}
      end)
      service.add_operation(:update_resource_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateResourceGateway"
        operation.name = "UpdateResourceGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceGatewayRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceGatewayResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/resourcegateways/{resourceGatewayIdentifier}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateService"
        operation.name = "UpdateService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/services/{serviceIdentifier}", "method" => "PATCH"}}
      end)
      service.add_operation(:update_service_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateServiceNetwork"
        operation.name = "UpdateServiceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/servicenetworks/{serviceNetworkIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_network_vpc_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateServiceNetworkVpcAssociation"
        operation.name = "UpdateServiceNetworkVpcAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceNetworkVpcAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceNetworkVpcAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.vpclattice#UpdateTargetGroup"
        operation.name = "UpdateTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/targetgroups/{targetGroupIdentifier}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
