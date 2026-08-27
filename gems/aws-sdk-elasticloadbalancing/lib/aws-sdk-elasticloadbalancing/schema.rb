# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AccessLog", name: "AccessLog")
    AccessLogEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancing#AccessLogEnabled", name: "AccessLogEnabled", traits: {"smithy.api#default" => false})
    AccessLogInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#AccessLogInterval", name: "AccessLogInterval")
    AccessLogPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AccessLogPrefix", name: "AccessLogPrefix")
    AccessPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AccessPointName", name: "AccessPointName")
    AccessPointNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AccessPointNotFoundException", name: "AccessPointNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "LoadBalancerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessPointPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#AccessPointPort", name: "AccessPointPort", traits: {"smithy.api#default" => 0})
    AddAvailabilityZonesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AddAvailabilityZonesInput", name: "AddAvailabilityZonesInput")
    AddAvailabilityZonesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AddAvailabilityZonesOutput", name: "AddAvailabilityZonesOutput")
    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AddTagsInput", name: "AddTagsInput")
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AddTagsOutput", name: "AddTagsOutput")
    AdditionalAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AdditionalAttribute", name: "AdditionalAttribute")
    AdditionalAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AdditionalAttributeKey", name: "AdditionalAttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9.]+$"})
    AdditionalAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AdditionalAttributeValue", name: "AdditionalAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9.]+$"})
    AdditionalAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#AdditionalAttributes", name: "AdditionalAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AppCookieStickinessPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#AppCookieStickinessPolicies", name: "AppCookieStickinessPolicies")
    AppCookieStickinessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AppCookieStickinessPolicy", name: "AppCookieStickinessPolicy")
    ApplySecurityGroupsToLoadBalancerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ApplySecurityGroupsToLoadBalancerInput", name: "ApplySecurityGroupsToLoadBalancerInput")
    ApplySecurityGroupsToLoadBalancerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ApplySecurityGroupsToLoadBalancerOutput", name: "ApplySecurityGroupsToLoadBalancerOutput")
    AttachLoadBalancerToSubnetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AttachLoadBalancerToSubnetsInput", name: "AttachLoadBalancerToSubnetsInput")
    AttachLoadBalancerToSubnetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#AttachLoadBalancerToSubnetsOutput", name: "AttachLoadBalancerToSubnetsOutput")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AttributeName", name: "AttributeName")
    AttributeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AttributeType", name: "AttributeType")
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AttributeValue", name: "AttributeValue")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#AvailabilityZones", name: "AvailabilityZones")
    BackendServerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#BackendServerDescription", name: "BackendServerDescription")
    BackendServerDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#BackendServerDescriptions", name: "BackendServerDescriptions")
    Cardinality = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Cardinality", name: "Cardinality")
    CertificateNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CertificateNotFoundException", name: "CertificateNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigureHealthCheckInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ConfigureHealthCheckInput", name: "ConfigureHealthCheckInput")
    ConfigureHealthCheckOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ConfigureHealthCheckOutput", name: "ConfigureHealthCheckOutput")
    ConnectionDraining = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ConnectionDraining", name: "ConnectionDraining")
    ConnectionDrainingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancing#ConnectionDrainingEnabled", name: "ConnectionDrainingEnabled", traits: {"smithy.api#default" => false})
    ConnectionDrainingTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#ConnectionDrainingTimeout", name: "ConnectionDrainingTimeout")
    ConnectionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ConnectionSettings", name: "ConnectionSettings")
    CookieExpirationPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#CookieExpirationPeriod", name: "CookieExpirationPeriod")
    CookieName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#CookieName", name: "CookieName")
    CreateAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateAccessPointInput", name: "CreateAccessPointInput")
    CreateAccessPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateAccessPointOutput", name: "CreateAccessPointOutput")
    CreateAppCookieStickinessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateAppCookieStickinessPolicyInput", name: "CreateAppCookieStickinessPolicyInput")
    CreateAppCookieStickinessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateAppCookieStickinessPolicyOutput", name: "CreateAppCookieStickinessPolicyOutput")
    CreateLBCookieStickinessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLBCookieStickinessPolicyInput", name: "CreateLBCookieStickinessPolicyInput")
    CreateLBCookieStickinessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLBCookieStickinessPolicyOutput", name: "CreateLBCookieStickinessPolicyOutput")
    CreateLoadBalancerListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLoadBalancerListenerInput", name: "CreateLoadBalancerListenerInput")
    CreateLoadBalancerListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLoadBalancerListenerOutput", name: "CreateLoadBalancerListenerOutput")
    CreateLoadBalancerPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLoadBalancerPolicyInput", name: "CreateLoadBalancerPolicyInput")
    CreateLoadBalancerPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CreateLoadBalancerPolicyOutput", name: "CreateLoadBalancerPolicyOutput")
    CreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticloadbalancing#CreatedTime", name: "CreatedTime")
    CrossZoneLoadBalancing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#CrossZoneLoadBalancing", name: "CrossZoneLoadBalancing")
    CrossZoneLoadBalancingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancing#CrossZoneLoadBalancingEnabled", name: "CrossZoneLoadBalancingEnabled", traits: {"smithy.api#default" => false})
    DNSName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#DNSName", name: "DNSName")
    DefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#DefaultValue", name: "DefaultValue")
    DeleteAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteAccessPointInput", name: "DeleteAccessPointInput")
    DeleteAccessPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteAccessPointOutput", name: "DeleteAccessPointOutput")
    DeleteLoadBalancerListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerListenerInput", name: "DeleteLoadBalancerListenerInput")
    DeleteLoadBalancerListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerListenerOutput", name: "DeleteLoadBalancerListenerOutput")
    DeleteLoadBalancerPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerPolicyInput", name: "DeleteLoadBalancerPolicyInput")
    DeleteLoadBalancerPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerPolicyOutput", name: "DeleteLoadBalancerPolicyOutput")
    DependencyThrottleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DependencyThrottleException", name: "DependencyThrottleException", traits: {"aws.protocols#awsQueryError" => {"code" => "DependencyThrottle", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeregisterEndPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeregisterEndPointsInput", name: "DeregisterEndPointsInput")
    DeregisterEndPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DeregisterEndPointsOutput", name: "DeregisterEndPointsOutput")
    DescribeAccessPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeAccessPointsInput", name: "DescribeAccessPointsInput")
    DescribeAccessPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeAccessPointsOutput", name: "DescribeAccessPointsOutput")
    DescribeAccountLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeAccountLimitsInput", name: "DescribeAccountLimitsInput")
    DescribeAccountLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeAccountLimitsOutput", name: "DescribeAccountLimitsOutput")
    DescribeEndPointStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeEndPointStateInput", name: "DescribeEndPointStateInput")
    DescribeEndPointStateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeEndPointStateOutput", name: "DescribeEndPointStateOutput")
    DescribeLoadBalancerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerAttributesInput", name: "DescribeLoadBalancerAttributesInput")
    DescribeLoadBalancerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerAttributesOutput", name: "DescribeLoadBalancerAttributesOutput")
    DescribeLoadBalancerPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPoliciesInput", name: "DescribeLoadBalancerPoliciesInput")
    DescribeLoadBalancerPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPoliciesOutput", name: "DescribeLoadBalancerPoliciesOutput")
    DescribeLoadBalancerPolicyTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPolicyTypesInput", name: "DescribeLoadBalancerPolicyTypesInput")
    DescribeLoadBalancerPolicyTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPolicyTypesOutput", name: "DescribeLoadBalancerPolicyTypesOutput")
    DescribeTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeTagsInput", name: "DescribeTagsInput")
    DescribeTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DescribeTagsOutput", name: "DescribeTagsOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Description", name: "Description")
    DetachLoadBalancerFromSubnetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DetachLoadBalancerFromSubnetsInput", name: "DetachLoadBalancerFromSubnetsInput")
    DetachLoadBalancerFromSubnetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DetachLoadBalancerFromSubnetsOutput", name: "DetachLoadBalancerFromSubnetsOutput")
    DuplicateAccessPointNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DuplicateAccessPointNameException", name: "DuplicateAccessPointNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateLoadBalancerName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateListenerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DuplicateListenerException", name: "DuplicateListenerException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateListener", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicatePolicyNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DuplicatePolicyNameException", name: "DuplicatePolicyNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicatePolicyName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTagKeysException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#DuplicateTagKeysException", name: "DuplicateTagKeysException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTagKeys", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndPointPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#EndPointPort", name: "EndPointPort")
    ErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#ErrorDescription", name: "ErrorDescription")
    HealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#HealthCheck", name: "HealthCheck")
    HealthCheckInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#HealthCheckInterval", name: "HealthCheckInterval", traits: {"smithy.api#range" => {"min" => 5, "max" => 300}})
    HealthCheckTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#HealthCheckTarget", name: "HealthCheckTarget")
    HealthCheckTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#HealthCheckTimeout", name: "HealthCheckTimeout", traits: {"smithy.api#range" => {"min" => 2, "max" => 60}})
    HealthyThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#HealthyThreshold", name: "HealthyThreshold", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    IdleTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#IdleTimeout", name: "IdleTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}})
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#Instance", name: "Instance")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#InstanceId", name: "InstanceId")
    InstancePort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#InstancePort", name: "InstancePort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    InstanceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InstanceState", name: "InstanceState")
    InstanceStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#InstanceStates", name: "InstanceStates")
    Instances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#Instances", name: "Instances")
    InvalidConfigurationRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InvalidConfigurationRequestException", name: "InvalidConfigurationRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfigurationRequest", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidEndPointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InvalidEndPointException", name: "InvalidEndPointException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInstance", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSchemeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InvalidSchemeException", name: "InvalidSchemeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheme", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSecurityGroupException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InvalidSecurityGroupException", name: "InvalidSecurityGroupException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#InvalidSubnetException", name: "InvalidSubnetException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LBCookieStickinessPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#LBCookieStickinessPolicies", name: "LBCookieStickinessPolicies")
    LBCookieStickinessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#LBCookieStickinessPolicy", name: "LBCookieStickinessPolicy")
    Limit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#Limit", name: "Limit")
    Limits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#Limits", name: "Limits")
    Listener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#Listener", name: "Listener")
    ListenerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ListenerDescription", name: "ListenerDescription")
    ListenerDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#ListenerDescriptions", name: "ListenerDescriptions")
    ListenerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ListenerNotFoundException", name: "ListenerNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ListenerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Listeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#Listeners", name: "Listeners")
    LoadBalancerAttributeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerAttributeNotFoundException", name: "LoadBalancerAttributeNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "LoadBalancerAttributeNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoadBalancerAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerAttributes", name: "LoadBalancerAttributes")
    LoadBalancerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerDescription", name: "LoadBalancerDescription")
    LoadBalancerDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerDescriptions", name: "LoadBalancerDescriptions")
    LoadBalancerNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerNames", name: "LoadBalancerNames")
    LoadBalancerNamesMax20 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerNamesMax20", name: "LoadBalancerNamesMax20", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    LoadBalancerScheme = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#LoadBalancerScheme", name: "LoadBalancerScheme")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Marker", name: "Marker")
    Max = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Max", name: "Max")
    ModifyLoadBalancerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ModifyLoadBalancerAttributesInput", name: "ModifyLoadBalancerAttributesInput")
    ModifyLoadBalancerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#ModifyLoadBalancerAttributesOutput", name: "ModifyLoadBalancerAttributesOutput")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Name", name: "Name")
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#OperationNotPermittedException", name: "OperationNotPermittedException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 400}})
    Policies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#Policies", name: "Policies")
    PolicyAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttribute", name: "PolicyAttribute")
    PolicyAttributeDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttributeDescription", name: "PolicyAttributeDescription")
    PolicyAttributeDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttributeDescriptions", name: "PolicyAttributeDescriptions")
    PolicyAttributeTypeDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttributeTypeDescription", name: "PolicyAttributeTypeDescription")
    PolicyAttributeTypeDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttributeTypeDescriptions", name: "PolicyAttributeTypeDescriptions")
    PolicyAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyAttributes", name: "PolicyAttributes")
    PolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyDescription", name: "PolicyDescription")
    PolicyDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyDescriptions", name: "PolicyDescriptions")
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyName", name: "PolicyName")
    PolicyNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyNames", name: "PolicyNames")
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyNotFoundException", name: "PolicyNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "PolicyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyTypeDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyTypeDescription", name: "PolicyTypeDescription")
    PolicyTypeDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyTypeDescriptions", name: "PolicyTypeDescriptions")
    PolicyTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyTypeName", name: "PolicyTypeName")
    PolicyTypeNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyTypeNames", name: "PolicyTypeNames")
    PolicyTypeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#PolicyTypeNotFoundException", name: "PolicyTypeNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "PolicyTypeNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#Ports", name: "Ports")
    Protocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#Protocol", name: "Protocol")
    ReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#ReasonCode", name: "ReasonCode")
    RegisterEndPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RegisterEndPointsInput", name: "RegisterEndPointsInput")
    RegisterEndPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RegisterEndPointsOutput", name: "RegisterEndPointsOutput")
    RemoveAvailabilityZonesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RemoveAvailabilityZonesInput", name: "RemoveAvailabilityZonesInput")
    RemoveAvailabilityZonesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RemoveAvailabilityZonesOutput", name: "RemoveAvailabilityZonesOutput")
    RemoveTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RemoveTagsInput", name: "RemoveTagsInput")
    RemoveTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#RemoveTagsOutput", name: "RemoveTagsOutput")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#S3BucketName", name: "S3BucketName")
    SSLCertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#SSLCertificateId", name: "SSLCertificateId")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#SecurityGroupId", name: "SecurityGroupId")
    SecurityGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#SecurityGroupName", name: "SecurityGroupName")
    SecurityGroupOwnerAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#SecurityGroupOwnerAlias", name: "SecurityGroupOwnerAlias")
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#SecurityGroups", name: "SecurityGroups")
    SetLoadBalancerListenerSSLCertificateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerListenerSSLCertificateInput", name: "SetLoadBalancerListenerSSLCertificateInput")
    SetLoadBalancerListenerSSLCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerListenerSSLCertificateOutput", name: "SetLoadBalancerListenerSSLCertificateOutput")
    SetLoadBalancerPoliciesForBackendServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesForBackendServerInput", name: "SetLoadBalancerPoliciesForBackendServerInput")
    SetLoadBalancerPoliciesForBackendServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesForBackendServerOutput", name: "SetLoadBalancerPoliciesForBackendServerOutput")
    SetLoadBalancerPoliciesOfListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesOfListenerInput", name: "SetLoadBalancerPoliciesOfListenerInput")
    SetLoadBalancerPoliciesOfListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesOfListenerOutput", name: "SetLoadBalancerPoliciesOfListenerOutput")
    SourceSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SourceSecurityGroup", name: "SourceSecurityGroup")
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#State", name: "State")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#SubnetId", name: "SubnetId")
    SubnetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#SubnetNotFoundException", name: "SubnetNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#Subnets", name: "Subnets")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#Tag", name: "Tag")
    TagDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#TagDescription", name: "TagDescription")
    TagDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#TagDescriptions", name: "TagDescriptions")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    TagKeyOnly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#TagKeyOnly", name: "TagKeyOnly")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancing#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TooManyAccessPointsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#TooManyAccessPointsException", name: "TooManyAccessPointsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyLoadBalancers", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPoliciesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#TooManyPoliciesException", name: "TooManyPoliciesException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyPolicies", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#TooManyTagsException", name: "TooManyTagsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTags", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnhealthyThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancing#UnhealthyThreshold", name: "UnhealthyThreshold", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    UnsupportedProtocolException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancing#UnsupportedProtocolException", name: "UnsupportedProtocolException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedProtocol", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VPCId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancing#VPCId", name: "VPCId")

    AccessLog.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogEnabled, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AccessLog.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName"))
    AccessLog.add_member(:emit_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogInterval, name: "EmitInterval"))
    AccessLog.add_member(:s3_bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogPrefix, name: "S3BucketPrefix"))
    AccessLog.type = Types::AccessLog
    AccessPointNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    AccessPointNotFoundException.type = Types::AccessPointNotFoundException
    AddAvailabilityZonesInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    AddAvailabilityZonesInput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones", traits: {"smithy.api#required" => {}}))
    AddAvailabilityZonesInput.type = Types::AddAvailabilityZonesInput
    AddAvailabilityZonesOutput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    AddAvailabilityZonesOutput.type = Types::AddAvailabilityZonesOutput
    AddTagsInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames", traits: {"smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    AdditionalAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAttributeKey, name: "Key"))
    AdditionalAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAttributeValue, name: "Value"))
    AdditionalAttribute.type = Types::AdditionalAttribute
    AdditionalAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAttribute, name: "member")
    AppCookieStickinessPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppCookieStickinessPolicy, name: "member")
    AppCookieStickinessPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    AppCookieStickinessPolicy.add_member(:cookie_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieName, name: "CookieName"))
    AppCookieStickinessPolicy.type = Types::AppCookieStickinessPolicy
    ApplySecurityGroupsToLoadBalancerInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    ApplySecurityGroupsToLoadBalancerInput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups", traits: {"smithy.api#required" => {}}))
    ApplySecurityGroupsToLoadBalancerInput.type = Types::ApplySecurityGroupsToLoadBalancerInput
    ApplySecurityGroupsToLoadBalancerOutput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    ApplySecurityGroupsToLoadBalancerOutput.type = Types::ApplySecurityGroupsToLoadBalancerOutput
    AttachLoadBalancerToSubnetsInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerToSubnetsInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#required" => {}}))
    AttachLoadBalancerToSubnetsInput.type = Types::AttachLoadBalancerToSubnetsInput
    AttachLoadBalancerToSubnetsOutput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets"))
    AttachLoadBalancerToSubnetsOutput.type = Types::AttachLoadBalancerToSubnetsOutput
    AvailabilityZones.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member")
    BackendServerDescription.add_member(:instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePort, name: "InstancePort"))
    BackendServerDescription.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames"))
    BackendServerDescription.type = Types::BackendServerDescription
    BackendServerDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BackendServerDescription, name: "member")
    CertificateNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    CertificateNotFoundException.type = Types::CertificateNotFoundException
    ConfigureHealthCheckInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    ConfigureHealthCheckInput.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, name: "HealthCheck", traits: {"smithy.api#required" => {}}))
    ConfigureHealthCheckInput.type = Types::ConfigureHealthCheckInput
    ConfigureHealthCheckOutput.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, name: "HealthCheck"))
    ConfigureHealthCheckOutput.type = Types::ConfigureHealthCheckOutput
    ConnectionDraining.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDrainingEnabled, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ConnectionDraining.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDrainingTimeout, name: "Timeout"))
    ConnectionDraining.type = Types::ConnectionDraining
    ConnectionSettings.add_member(:idle_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleTimeout, name: "IdleTimeout", traits: {"smithy.api#required" => {}}))
    ConnectionSettings.type = Types::ConnectionSettings
    CreateAccessPointInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateAccessPointInput.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, name: "Listeners", traits: {"smithy.api#required" => {}}))
    CreateAccessPointInput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    CreateAccessPointInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets"))
    CreateAccessPointInput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    CreateAccessPointInput.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerScheme, name: "Scheme"))
    CreateAccessPointInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAccessPointInput.type = Types::CreateAccessPointInput
    CreateAccessPointOutput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    CreateAccessPointOutput.type = Types::CreateAccessPointOutput
    CreateAppCookieStickinessPolicyInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateAppCookieStickinessPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    CreateAppCookieStickinessPolicyInput.add_member(:cookie_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieName, name: "CookieName", traits: {"smithy.api#required" => {}}))
    CreateAppCookieStickinessPolicyInput.type = Types::CreateAppCookieStickinessPolicyInput
    CreateAppCookieStickinessPolicyOutput.type = Types::CreateAppCookieStickinessPolicyOutput
    CreateLBCookieStickinessPolicyInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLBCookieStickinessPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    CreateLBCookieStickinessPolicyInput.add_member(:cookie_expiration_period, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieExpirationPeriod, name: "CookieExpirationPeriod"))
    CreateLBCookieStickinessPolicyInput.type = Types::CreateLBCookieStickinessPolicyInput
    CreateLBCookieStickinessPolicyOutput.type = Types::CreateLBCookieStickinessPolicyOutput
    CreateLoadBalancerListenerInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerListenerInput.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, name: "Listeners", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerListenerInput.type = Types::CreateLoadBalancerListenerInput
    CreateLoadBalancerListenerOutput.type = Types::CreateLoadBalancerListenerOutput
    CreateLoadBalancerPolicyInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerPolicyInput.add_member(:policy_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeName, name: "PolicyTypeName", traits: {"smithy.api#required" => {}}))
    CreateLoadBalancerPolicyInput.add_member(:policy_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttributes, name: "PolicyAttributes"))
    CreateLoadBalancerPolicyInput.type = Types::CreateLoadBalancerPolicyInput
    CreateLoadBalancerPolicyOutput.type = Types::CreateLoadBalancerPolicyOutput
    CrossZoneLoadBalancing.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossZoneLoadBalancingEnabled, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CrossZoneLoadBalancing.type = Types::CrossZoneLoadBalancing
    DeleteAccessPointInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteAccessPointInput.type = Types::DeleteAccessPointInput
    DeleteAccessPointOutput.type = Types::DeleteAccessPointOutput
    DeleteLoadBalancerListenerInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerListenerInput.add_member(:load_balancer_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: Ports, name: "LoadBalancerPorts", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerListenerInput.type = Types::DeleteLoadBalancerListenerInput
    DeleteLoadBalancerListenerOutput.type = Types::DeleteLoadBalancerListenerOutput
    DeleteLoadBalancerPolicyInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteLoadBalancerPolicyInput.type = Types::DeleteLoadBalancerPolicyInput
    DeleteLoadBalancerPolicyOutput.type = Types::DeleteLoadBalancerPolicyOutput
    DependencyThrottleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    DependencyThrottleException.type = Types::DependencyThrottleException
    DeregisterEndPointsInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DeregisterEndPointsInput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances", traits: {"smithy.api#required" => {}}))
    DeregisterEndPointsInput.type = Types::DeregisterEndPointsInput
    DeregisterEndPointsOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    DeregisterEndPointsOutput.type = Types::DeregisterEndPointsOutput
    DescribeAccessPointsInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames"))
    DescribeAccessPointsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeAccessPointsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    DescribeAccessPointsInput.type = Types::DescribeAccessPointsInput
    DescribeAccessPointsOutput.add_member(:load_balancer_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerDescriptions, name: "LoadBalancerDescriptions"))
    DescribeAccessPointsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    DescribeAccessPointsOutput.type = Types::DescribeAccessPointsOutput
    DescribeAccountLimitsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeAccountLimitsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize"))
    DescribeAccountLimitsInput.type = Types::DescribeAccountLimitsInput
    DescribeAccountLimitsOutput.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: Limits, name: "Limits"))
    DescribeAccountLimitsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    DescribeAccountLimitsOutput.type = Types::DescribeAccountLimitsOutput
    DescribeEndPointStateInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DescribeEndPointStateInput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    DescribeEndPointStateInput.type = Types::DescribeEndPointStateInput
    DescribeEndPointStateOutput.add_member(:instance_states, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStates, name: "InstanceStates"))
    DescribeEndPointStateOutput.type = Types::DescribeEndPointStateOutput
    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DescribeLoadBalancerAttributesInput.type = Types::DescribeLoadBalancerAttributesInput
    DescribeLoadBalancerAttributesOutput.add_member(:load_balancer_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, name: "LoadBalancerAttributes"))
    DescribeLoadBalancerAttributesOutput.type = Types::DescribeLoadBalancerAttributesOutput
    DescribeLoadBalancerPoliciesInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName"))
    DescribeLoadBalancerPoliciesInput.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames"))
    DescribeLoadBalancerPoliciesInput.type = Types::DescribeLoadBalancerPoliciesInput
    DescribeLoadBalancerPoliciesOutput.add_member(:policy_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptions, name: "PolicyDescriptions"))
    DescribeLoadBalancerPoliciesOutput.type = Types::DescribeLoadBalancerPoliciesOutput
    DescribeLoadBalancerPolicyTypesInput.add_member(:policy_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeNames, name: "PolicyTypeNames"))
    DescribeLoadBalancerPolicyTypesInput.type = Types::DescribeLoadBalancerPolicyTypesInput
    DescribeLoadBalancerPolicyTypesOutput.add_member(:policy_type_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeDescriptions, name: "PolicyTypeDescriptions"))
    DescribeLoadBalancerPolicyTypesOutput.type = Types::DescribeLoadBalancerPolicyTypesOutput
    DescribeTagsInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNamesMax20, name: "LoadBalancerNames", traits: {"smithy.api#required" => {}}))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:tag_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescriptions, name: "TagDescriptions"))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DetachLoadBalancerFromSubnetsInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    DetachLoadBalancerFromSubnetsInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#required" => {}}))
    DetachLoadBalancerFromSubnetsInput.type = Types::DetachLoadBalancerFromSubnetsInput
    DetachLoadBalancerFromSubnetsOutput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets"))
    DetachLoadBalancerFromSubnetsOutput.type = Types::DetachLoadBalancerFromSubnetsOutput
    DuplicateAccessPointNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    DuplicateAccessPointNameException.type = Types::DuplicateAccessPointNameException
    DuplicateListenerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    DuplicateListenerException.type = Types::DuplicateListenerException
    DuplicatePolicyNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    DuplicatePolicyNameException.type = Types::DuplicatePolicyNameException
    DuplicateTagKeysException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    DuplicateTagKeysException.type = Types::DuplicateTagKeysException
    HealthCheck.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTarget, name: "Target", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckInterval, name: "Interval", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeout, name: "Timeout", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: UnhealthyThreshold, name: "UnhealthyThreshold", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthyThreshold, name: "HealthyThreshold", traits: {"smithy.api#required" => {}}))
    HealthCheck.type = Types::HealthCheck
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    Instance.type = Types::Instance
    InstanceState.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    InstanceState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    InstanceState.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "ReasonCode"))
    InstanceState.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    InstanceState.type = Types::InstanceState
    InstanceStates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "member")
    Instances.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member")
    InvalidConfigurationRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    InvalidConfigurationRequestException.type = Types::InvalidConfigurationRequestException
    InvalidEndPointException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    InvalidEndPointException.type = Types::InvalidEndPointException
    InvalidSchemeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    InvalidSchemeException.type = Types::InvalidSchemeException
    InvalidSecurityGroupException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    InvalidSecurityGroupException.type = Types::InvalidSecurityGroupException
    InvalidSubnetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    InvalidSubnetException.type = Types::InvalidSubnetException
    LBCookieStickinessPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LBCookieStickinessPolicy, name: "member")
    LBCookieStickinessPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    LBCookieStickinessPolicy.add_member(:cookie_expiration_period, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieExpirationPeriod, name: "CookieExpirationPeriod"))
    LBCookieStickinessPolicy.type = Types::LBCookieStickinessPolicy
    Limit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    Limit.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Max, name: "Max"))
    Limit.type = Types::Limit
    Limits.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "member")
    Listener.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    Listener.add_member(:load_balancer_port, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPort, name: "LoadBalancerPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Listener.add_member(:instance_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "InstanceProtocol"))
    Listener.add_member(:instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePort, name: "InstancePort", traits: {"smithy.api#required" => {}}))
    Listener.add_member(:ssl_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSLCertificateId, name: "SSLCertificateId"))
    Listener.type = Types::Listener
    ListenerDescription.add_member(:listener, ::Smithy::Schema::Shapes::MemberShape.new(target: Listener, name: "Listener"))
    ListenerDescription.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames"))
    ListenerDescription.type = Types::ListenerDescription
    ListenerDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerDescription, name: "member")
    ListenerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    ListenerNotFoundException.type = Types::ListenerNotFoundException
    Listeners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Listener, name: "member")
    LoadBalancerAttributeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    LoadBalancerAttributeNotFoundException.type = Types::LoadBalancerAttributeNotFoundException
    LoadBalancerAttributes.add_member(:cross_zone_load_balancing, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossZoneLoadBalancing, name: "CrossZoneLoadBalancing"))
    LoadBalancerAttributes.add_member(:access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLog, name: "AccessLog"))
    LoadBalancerAttributes.add_member(:connection_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionDraining, name: "ConnectionDraining"))
    LoadBalancerAttributes.add_member(:connection_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSettings, name: "ConnectionSettings"))
    LoadBalancerAttributes.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalAttributes, name: "AdditionalAttributes"))
    LoadBalancerAttributes.type = Types::LoadBalancerAttributes
    LoadBalancerDescription.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName"))
    LoadBalancerDescription.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "DNSName"))
    LoadBalancerDescription.add_member(:canonical_hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "CanonicalHostedZoneName"))
    LoadBalancerDescription.add_member(:canonical_hosted_zone_name_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, name: "CanonicalHostedZoneNameID"))
    LoadBalancerDescription.add_member(:listener_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerDescriptions, name: "ListenerDescriptions"))
    LoadBalancerDescription.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: Policies, name: "Policies"))
    LoadBalancerDescription.add_member(:backend_server_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendServerDescriptions, name: "BackendServerDescriptions"))
    LoadBalancerDescription.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    LoadBalancerDescription.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets"))
    LoadBalancerDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VPCId, name: "VPCId"))
    LoadBalancerDescription.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    LoadBalancerDescription.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, name: "HealthCheck"))
    LoadBalancerDescription.add_member(:source_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSecurityGroup, name: "SourceSecurityGroup"))
    LoadBalancerDescription.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    LoadBalancerDescription.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    LoadBalancerDescription.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerScheme, name: "Scheme"))
    LoadBalancerDescription.type = Types::LoadBalancerDescription
    LoadBalancerDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerDescription, name: "member")
    LoadBalancerNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "member")
    LoadBalancerNamesMax20.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "member")
    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, name: "LoadBalancerAttributes", traits: {"smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.type = Types::ModifyLoadBalancerAttributesInput
    ModifyLoadBalancerAttributesOutput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName"))
    ModifyLoadBalancerAttributesOutput.add_member(:load_balancer_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, name: "LoadBalancerAttributes"))
    ModifyLoadBalancerAttributesOutput.type = Types::ModifyLoadBalancerAttributesOutput
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    Policies.add_member(:app_cookie_stickiness_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AppCookieStickinessPolicies, name: "AppCookieStickinessPolicies"))
    Policies.add_member(:lb_cookie_stickiness_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LBCookieStickinessPolicies, name: "LBCookieStickinessPolicies"))
    Policies.add_member(:other_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "OtherPolicies"))
    Policies.type = Types::Policies
    PolicyAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName"))
    PolicyAttribute.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue"))
    PolicyAttribute.type = Types::PolicyAttribute
    PolicyAttributeDescription.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName"))
    PolicyAttributeDescription.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue"))
    PolicyAttributeDescription.type = Types::PolicyAttributeDescription
    PolicyAttributeDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttributeDescription, name: "member")
    PolicyAttributeTypeDescription.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName"))
    PolicyAttributeTypeDescription.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeType, name: "AttributeType"))
    PolicyAttributeTypeDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PolicyAttributeTypeDescription.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultValue, name: "DefaultValue"))
    PolicyAttributeTypeDescription.add_member(:cardinality, ::Smithy::Schema::Shapes::MemberShape.new(target: Cardinality, name: "Cardinality"))
    PolicyAttributeTypeDescription.type = Types::PolicyAttributeTypeDescription
    PolicyAttributeTypeDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttributeTypeDescription, name: "member")
    PolicyAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttribute, name: "member")
    PolicyDescription.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName"))
    PolicyDescription.add_member(:policy_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeName, name: "PolicyTypeName"))
    PolicyDescription.add_member(:policy_attribute_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttributeDescriptions, name: "PolicyAttributeDescriptions"))
    PolicyDescription.type = Types::PolicyDescription
    PolicyDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "member")
    PolicyNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "member")
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PolicyTypeDescription.add_member(:policy_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeName, name: "PolicyTypeName"))
    PolicyTypeDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PolicyTypeDescription.add_member(:policy_attribute_type_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttributeTypeDescriptions, name: "PolicyAttributeTypeDescriptions"))
    PolicyTypeDescription.type = Types::PolicyTypeDescription
    PolicyTypeDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeDescription, name: "member")
    PolicyTypeNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeName, name: "member")
    PolicyTypeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    PolicyTypeNotFoundException.type = Types::PolicyTypeNotFoundException
    Ports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPort, name: "member")
    RegisterEndPointsInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    RegisterEndPointsInput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances", traits: {"smithy.api#required" => {}}))
    RegisterEndPointsInput.type = Types::RegisterEndPointsInput
    RegisterEndPointsOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    RegisterEndPointsOutput.type = Types::RegisterEndPointsOutput
    RemoveAvailabilityZonesInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    RemoveAvailabilityZonesInput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones", traits: {"smithy.api#required" => {}}))
    RemoveAvailabilityZonesInput.type = Types::RemoveAvailabilityZonesInput
    RemoveAvailabilityZonesOutput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    RemoveAvailabilityZonesOutput.type = Types::RemoveAvailabilityZonesOutput
    RemoveTagsInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames", traits: {"smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "Tags", traits: {"smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    SecurityGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member")
    SetLoadBalancerListenerSSLCertificateInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerListenerSSLCertificateInput.add_member(:load_balancer_port, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPort, name: "LoadBalancerPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SetLoadBalancerListenerSSLCertificateInput.add_member(:ssl_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSLCertificateId, name: "SSLCertificateId", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerListenerSSLCertificateInput.type = Types::SetLoadBalancerListenerSSLCertificateInput
    SetLoadBalancerListenerSSLCertificateOutput.type = Types::SetLoadBalancerListenerSSLCertificateOutput
    SetLoadBalancerPoliciesForBackendServerInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerPoliciesForBackendServerInput.add_member(:instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointPort, name: "InstancePort", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerPoliciesForBackendServerInput.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerPoliciesForBackendServerInput.type = Types::SetLoadBalancerPoliciesForBackendServerInput
    SetLoadBalancerPoliciesForBackendServerOutput.type = Types::SetLoadBalancerPoliciesForBackendServerOutput
    SetLoadBalancerPoliciesOfListenerInput.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerPoliciesOfListenerInput.add_member(:load_balancer_port, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPort, name: "LoadBalancerPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SetLoadBalancerPoliciesOfListenerInput.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    SetLoadBalancerPoliciesOfListenerInput.type = Types::SetLoadBalancerPoliciesOfListenerInput
    SetLoadBalancerPoliciesOfListenerOutput.type = Types::SetLoadBalancerPoliciesOfListenerOutput
    SourceSecurityGroup.add_member(:owner_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupOwnerAlias, name: "OwnerAlias"))
    SourceSecurityGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupName, name: "GroupName"))
    SourceSecurityGroup.type = Types::SourceSecurityGroup
    SubnetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    SubnetNotFoundException.type = Types::SubnetNotFoundException
    Subnets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagDescription.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "LoadBalancerName"))
    TagDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    TagDescription.type = Types::TagDescription
    TagDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescription, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyOnly, name: "member")
    TagKeyOnly.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    TagKeyOnly.type = Types::TagKeyOnly
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TooManyAccessPointsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    TooManyAccessPointsException.type = Types::TooManyAccessPointsException
    TooManyPoliciesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    TooManyPoliciesException.type = Types::TooManyPoliciesException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnsupportedProtocolException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Message"))
    UnsupportedProtocolException.type = Types::UnsupportedProtocolException

    ElasticLoadBalancingV7 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticloadbalancing#ElasticLoadBalancing_v7"
      service.name = "ElasticLoadBalancingV7"
      service.version = "2012-06-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Elastic Load Balancing", "arnNamespace" => "elasticloadbalancing", "cloudFormationName" => "ElasticLoadBalancing", "cloudTrailEventSource" => "elasticloadbalancing.amazonaws.com", "docId" => "elasticloadbalancing-2012-06-01", "endpointPrefix" => "elasticloadbalancing"}, "aws.auth#sigv4" => {"name" => "elasticloadbalancing"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Elastic Load Balancing", "smithy.api#xmlNamespace" => {"uri" => "http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/"}}
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsInput
        operation.output = AddTagsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << DuplicateTagKeysException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:apply_security_groups_to_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#ApplySecurityGroupsToLoadBalancer"
        operation.name = "ApplySecurityGroupsToLoadBalancer"
        operation.input = ApplySecurityGroupsToLoadBalancerInput
        operation.output = ApplySecurityGroupsToLoadBalancerOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSecurityGroupException
        operation.traits = {}
      end)
      service.add_operation(:attach_load_balancer_to_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#AttachLoadBalancerToSubnets"
        operation.name = "AttachLoadBalancerToSubnets"
        operation.input = AttachLoadBalancerToSubnetsInput
        operation.output = AttachLoadBalancerToSubnetsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSubnetException
        operation.errors << SubnetNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:configure_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#ConfigureHealthCheck"
        operation.name = "ConfigureHealthCheck"
        operation.input = ConfigureHealthCheckInput
        operation.output = ConfigureHealthCheckOutput
        operation.errors << AccessPointNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_app_cookie_stickiness_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#CreateAppCookieStickinessPolicy"
        operation.name = "CreateAppCookieStickinessPolicy"
        operation.input = CreateAppCookieStickinessPolicyInput
        operation.output = CreateAppCookieStickinessPolicyOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << DuplicatePolicyNameException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << TooManyPoliciesException
        operation.traits = {}
      end)
      service.add_operation(:create_lb_cookie_stickiness_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#CreateLBCookieStickinessPolicy"
        operation.name = "CreateLBCookieStickinessPolicy"
        operation.input = CreateLBCookieStickinessPolicyInput
        operation.output = CreateLBCookieStickinessPolicyOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << DuplicatePolicyNameException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << TooManyPoliciesException
        operation.traits = {}
      end)
      service.add_operation(:create_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#CreateLoadBalancer"
        operation.name = "CreateLoadBalancer"
        operation.input = CreateAccessPointInput
        operation.output = CreateAccessPointOutput
        operation.errors << CertificateNotFoundException
        operation.errors << DuplicateAccessPointNameException
        operation.errors << DuplicateTagKeysException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSchemeException
        operation.errors << InvalidSecurityGroupException
        operation.errors << InvalidSubnetException
        operation.errors << OperationNotPermittedException
        operation.errors << SubnetNotFoundException
        operation.errors << TooManyAccessPointsException
        operation.errors << TooManyTagsException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:create_load_balancer_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#CreateLoadBalancerListeners"
        operation.name = "CreateLoadBalancerListeners"
        operation.input = CreateLoadBalancerListenerInput
        operation.output = CreateLoadBalancerListenerOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << CertificateNotFoundException
        operation.errors << DuplicateListenerException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:create_load_balancer_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#CreateLoadBalancerPolicy"
        operation.name = "CreateLoadBalancerPolicy"
        operation.input = CreateLoadBalancerPolicyInput
        operation.output = CreateLoadBalancerPolicyOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << DuplicatePolicyNameException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << PolicyTypeNotFoundException
        operation.errors << TooManyPoliciesException
        operation.traits = {}
      end)
      service.add_operation(:delete_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DeleteLoadBalancer"
        operation.name = "DeleteLoadBalancer"
        operation.input = DeleteAccessPointInput
        operation.output = DeleteAccessPointOutput
        operation.traits = {}
      end)
      service.add_operation(:delete_load_balancer_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerListeners"
        operation.name = "DeleteLoadBalancerListeners"
        operation.input = DeleteLoadBalancerListenerInput
        operation.output = DeleteLoadBalancerListenerOutput
        operation.errors << AccessPointNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_load_balancer_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DeleteLoadBalancerPolicy"
        operation.name = "DeleteLoadBalancerPolicy"
        operation.input = DeleteLoadBalancerPolicyInput
        operation.output = DeleteLoadBalancerPolicyOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.traits = {}
      end)
      service.add_operation(:deregister_instances_from_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DeregisterInstancesFromLoadBalancer"
        operation.name = "DeregisterInstancesFromLoadBalancer"
        operation.input = DeregisterEndPointsInput
        operation.output = DeregisterEndPointsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidEndPointException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = DescribeAccountLimitsInput
        operation.output = DescribeAccountLimitsOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_instance_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeInstanceHealth"
        operation.name = "DescribeInstanceHealth"
        operation.input = DescribeEndPointStateInput
        operation.output = DescribeEndPointStateOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidEndPointException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:describe_load_balancer_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerAttributes"
        operation.name = "DescribeLoadBalancerAttributes"
        operation.input = DescribeLoadBalancerAttributesInput
        operation.output = DescribeLoadBalancerAttributesOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << LoadBalancerAttributeNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancer_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPolicies"
        operation.name = "DescribeLoadBalancerPolicies"
        operation.input = DescribeLoadBalancerPoliciesInput
        operation.output = DescribeLoadBalancerPoliciesOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancer_policy_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeLoadBalancerPolicyTypes"
        operation.name = "DescribeLoadBalancerPolicyTypes"
        operation.input = DescribeLoadBalancerPolicyTypesInput
        operation.output = DescribeLoadBalancerPolicyTypesOutput
        operation.errors << PolicyTypeNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeLoadBalancers"
        operation.name = "DescribeLoadBalancers"
        operation.input = DescribeAccessPointsInput
        operation.output = DescribeAccessPointsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << DependencyThrottleException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeLoadBalancersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}, {"id" => "DescribeLoadBalancersFailure", "params" => {"LoadBalancerNames" => ["fake_load_balancer"]}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::DescribeLoadBalancers.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsInput
        operation.output = DescribeTagsOutput
        operation.errors << AccessPointNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:detach_load_balancer_from_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DetachLoadBalancerFromSubnets"
        operation.name = "DetachLoadBalancerFromSubnets"
        operation.input = DetachLoadBalancerFromSubnetsInput
        operation.output = DetachLoadBalancerFromSubnetsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.traits = {}
      end)
      service.add_operation(:disable_availability_zones_for_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#DisableAvailabilityZonesForLoadBalancer"
        operation.name = "DisableAvailabilityZonesForLoadBalancer"
        operation.input = RemoveAvailabilityZonesInput
        operation.output = RemoveAvailabilityZonesOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.traits = {}
      end)
      service.add_operation(:enable_availability_zones_for_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#EnableAvailabilityZonesForLoadBalancer"
        operation.name = "EnableAvailabilityZonesForLoadBalancer"
        operation.input = AddAvailabilityZonesInput
        operation.output = AddAvailabilityZonesOutput
        operation.errors << AccessPointNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_load_balancer_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#ModifyLoadBalancerAttributes"
        operation.name = "ModifyLoadBalancerAttributes"
        operation.input = ModifyLoadBalancerAttributesInput
        operation.output = ModifyLoadBalancerAttributesOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << LoadBalancerAttributeNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:register_instances_with_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#RegisterInstancesWithLoadBalancer"
        operation.name = "RegisterInstancesWithLoadBalancer"
        operation.input = RegisterEndPointsInput
        operation.output = RegisterEndPointsOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidEndPointException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = RemoveTagsInput
        operation.output = RemoveTagsOutput
        operation.errors << AccessPointNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_load_balancer_listener_ssl_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#SetLoadBalancerListenerSSLCertificate"
        operation.name = "SetLoadBalancerListenerSSLCertificate"
        operation.input = SetLoadBalancerListenerSSLCertificateInput
        operation.output = SetLoadBalancerListenerSSLCertificateOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << CertificateNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << ListenerNotFoundException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:set_load_balancer_policies_for_backend_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesForBackendServer"
        operation.name = "SetLoadBalancerPoliciesForBackendServer"
        operation.input = SetLoadBalancerPoliciesForBackendServerInput
        operation.output = SetLoadBalancerPoliciesForBackendServerOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_load_balancer_policies_of_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancing#SetLoadBalancerPoliciesOfListener"
        operation.name = "SetLoadBalancerPoliciesOfListener"
        operation.input = SetLoadBalancerPoliciesOfListenerInput
        operation.output = SetLoadBalancerPoliciesOfListenerOutput
        operation.errors << AccessPointNotFoundException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << ListenerNotFoundException
        operation.errors << PolicyNotFoundException
        operation.traits = {}
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
