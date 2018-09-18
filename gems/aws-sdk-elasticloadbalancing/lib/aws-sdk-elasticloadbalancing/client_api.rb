# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessLog = Shapes::StructureShape.new(name: 'AccessLog')
    AccessLogEnabled = Shapes::BooleanShape.new(name: 'AccessLogEnabled')
    AccessLogInterval = Shapes::IntegerShape.new(name: 'AccessLogInterval')
    AccessLogPrefix = Shapes::StringShape.new(name: 'AccessLogPrefix')
    AccessPointName = Shapes::StringShape.new(name: 'AccessPointName')
    AccessPointNotFoundException = Shapes::StructureShape.new(name: 'AccessPointNotFoundException')
    AccessPointPort = Shapes::IntegerShape.new(name: 'AccessPointPort')
    AddAvailabilityZonesInput = Shapes::StructureShape.new(name: 'AddAvailabilityZonesInput')
    AddAvailabilityZonesOutput = Shapes::StructureShape.new(name: 'AddAvailabilityZonesOutput')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AdditionalAttribute = Shapes::StructureShape.new(name: 'AdditionalAttribute')
    AdditionalAttributeKey = Shapes::StringShape.new(name: 'AdditionalAttributeKey')
    AdditionalAttributeValue = Shapes::StringShape.new(name: 'AdditionalAttributeValue')
    AdditionalAttributes = Shapes::ListShape.new(name: 'AdditionalAttributes')
    AppCookieStickinessPolicies = Shapes::ListShape.new(name: 'AppCookieStickinessPolicies')
    AppCookieStickinessPolicy = Shapes::StructureShape.new(name: 'AppCookieStickinessPolicy')
    ApplySecurityGroupsToLoadBalancerInput = Shapes::StructureShape.new(name: 'ApplySecurityGroupsToLoadBalancerInput')
    ApplySecurityGroupsToLoadBalancerOutput = Shapes::StructureShape.new(name: 'ApplySecurityGroupsToLoadBalancerOutput')
    AttachLoadBalancerToSubnetsInput = Shapes::StructureShape.new(name: 'AttachLoadBalancerToSubnetsInput')
    AttachLoadBalancerToSubnetsOutput = Shapes::StructureShape.new(name: 'AttachLoadBalancerToSubnetsOutput')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    BackendServerDescription = Shapes::StructureShape.new(name: 'BackendServerDescription')
    BackendServerDescriptions = Shapes::ListShape.new(name: 'BackendServerDescriptions')
    Cardinality = Shapes::StringShape.new(name: 'Cardinality')
    CertificateNotFoundException = Shapes::StructureShape.new(name: 'CertificateNotFoundException')
    ConfigureHealthCheckInput = Shapes::StructureShape.new(name: 'ConfigureHealthCheckInput')
    ConfigureHealthCheckOutput = Shapes::StructureShape.new(name: 'ConfigureHealthCheckOutput')
    ConnectionDraining = Shapes::StructureShape.new(name: 'ConnectionDraining')
    ConnectionDrainingEnabled = Shapes::BooleanShape.new(name: 'ConnectionDrainingEnabled')
    ConnectionDrainingTimeout = Shapes::IntegerShape.new(name: 'ConnectionDrainingTimeout')
    ConnectionSettings = Shapes::StructureShape.new(name: 'ConnectionSettings')
    CookieExpirationPeriod = Shapes::IntegerShape.new(name: 'CookieExpirationPeriod')
    CookieName = Shapes::StringShape.new(name: 'CookieName')
    CreateAccessPointInput = Shapes::StructureShape.new(name: 'CreateAccessPointInput')
    CreateAccessPointOutput = Shapes::StructureShape.new(name: 'CreateAccessPointOutput')
    CreateAppCookieStickinessPolicyInput = Shapes::StructureShape.new(name: 'CreateAppCookieStickinessPolicyInput')
    CreateAppCookieStickinessPolicyOutput = Shapes::StructureShape.new(name: 'CreateAppCookieStickinessPolicyOutput')
    CreateLBCookieStickinessPolicyInput = Shapes::StructureShape.new(name: 'CreateLBCookieStickinessPolicyInput')
    CreateLBCookieStickinessPolicyOutput = Shapes::StructureShape.new(name: 'CreateLBCookieStickinessPolicyOutput')
    CreateLoadBalancerListenerInput = Shapes::StructureShape.new(name: 'CreateLoadBalancerListenerInput')
    CreateLoadBalancerListenerOutput = Shapes::StructureShape.new(name: 'CreateLoadBalancerListenerOutput')
    CreateLoadBalancerPolicyInput = Shapes::StructureShape.new(name: 'CreateLoadBalancerPolicyInput')
    CreateLoadBalancerPolicyOutput = Shapes::StructureShape.new(name: 'CreateLoadBalancerPolicyOutput')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
    CrossZoneLoadBalancing = Shapes::StructureShape.new(name: 'CrossZoneLoadBalancing')
    CrossZoneLoadBalancingEnabled = Shapes::BooleanShape.new(name: 'CrossZoneLoadBalancingEnabled')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    DefaultValue = Shapes::StringShape.new(name: 'DefaultValue')
    DeleteAccessPointInput = Shapes::StructureShape.new(name: 'DeleteAccessPointInput')
    DeleteAccessPointOutput = Shapes::StructureShape.new(name: 'DeleteAccessPointOutput')
    DeleteLoadBalancerListenerInput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerListenerInput')
    DeleteLoadBalancerListenerOutput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerListenerOutput')
    DeleteLoadBalancerPolicyInput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerPolicyInput')
    DeleteLoadBalancerPolicyOutput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerPolicyOutput')
    DependencyThrottleException = Shapes::StructureShape.new(name: 'DependencyThrottleException')
    DeregisterEndPointsInput = Shapes::StructureShape.new(name: 'DeregisterEndPointsInput')
    DeregisterEndPointsOutput = Shapes::StructureShape.new(name: 'DeregisterEndPointsOutput')
    DescribeAccessPointsInput = Shapes::StructureShape.new(name: 'DescribeAccessPointsInput')
    DescribeAccessPointsOutput = Shapes::StructureShape.new(name: 'DescribeAccessPointsOutput')
    DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
    DescribeEndPointStateInput = Shapes::StructureShape.new(name: 'DescribeEndPointStateInput')
    DescribeEndPointStateOutput = Shapes::StructureShape.new(name: 'DescribeEndPointStateOutput')
    DescribeLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesInput')
    DescribeLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesOutput')
    DescribeLoadBalancerPoliciesInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerPoliciesInput')
    DescribeLoadBalancerPoliciesOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerPoliciesOutput')
    DescribeLoadBalancerPolicyTypesInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerPolicyTypesInput')
    DescribeLoadBalancerPolicyTypesOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerPolicyTypesOutput')
    DescribeTagsInput = Shapes::StructureShape.new(name: 'DescribeTagsInput')
    DescribeTagsOutput = Shapes::StructureShape.new(name: 'DescribeTagsOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DetachLoadBalancerFromSubnetsInput = Shapes::StructureShape.new(name: 'DetachLoadBalancerFromSubnetsInput')
    DetachLoadBalancerFromSubnetsOutput = Shapes::StructureShape.new(name: 'DetachLoadBalancerFromSubnetsOutput')
    DuplicateAccessPointNameException = Shapes::StructureShape.new(name: 'DuplicateAccessPointNameException')
    DuplicateListenerException = Shapes::StructureShape.new(name: 'DuplicateListenerException')
    DuplicatePolicyNameException = Shapes::StructureShape.new(name: 'DuplicatePolicyNameException')
    DuplicateTagKeysException = Shapes::StructureShape.new(name: 'DuplicateTagKeysException')
    EndPointPort = Shapes::IntegerShape.new(name: 'EndPointPort')
    HealthCheck = Shapes::StructureShape.new(name: 'HealthCheck')
    HealthCheckInterval = Shapes::IntegerShape.new(name: 'HealthCheckInterval')
    HealthCheckTarget = Shapes::StringShape.new(name: 'HealthCheckTarget')
    HealthCheckTimeout = Shapes::IntegerShape.new(name: 'HealthCheckTimeout')
    HealthyThreshold = Shapes::IntegerShape.new(name: 'HealthyThreshold')
    IdleTimeout = Shapes::IntegerShape.new(name: 'IdleTimeout')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstancePort = Shapes::IntegerShape.new(name: 'InstancePort')
    InstanceState = Shapes::StructureShape.new(name: 'InstanceState')
    InstanceStates = Shapes::ListShape.new(name: 'InstanceStates')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InvalidConfigurationRequestException = Shapes::StructureShape.new(name: 'InvalidConfigurationRequestException')
    InvalidEndPointException = Shapes::StructureShape.new(name: 'InvalidEndPointException')
    InvalidSchemeException = Shapes::StructureShape.new(name: 'InvalidSchemeException')
    InvalidSecurityGroupException = Shapes::StructureShape.new(name: 'InvalidSecurityGroupException')
    InvalidSubnetException = Shapes::StructureShape.new(name: 'InvalidSubnetException')
    LBCookieStickinessPolicies = Shapes::ListShape.new(name: 'LBCookieStickinessPolicies')
    LBCookieStickinessPolicy = Shapes::StructureShape.new(name: 'LBCookieStickinessPolicy')
    Limit = Shapes::StructureShape.new(name: 'Limit')
    Limits = Shapes::ListShape.new(name: 'Limits')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    ListenerDescription = Shapes::StructureShape.new(name: 'ListenerDescription')
    ListenerDescriptions = Shapes::ListShape.new(name: 'ListenerDescriptions')
    ListenerNotFoundException = Shapes::StructureShape.new(name: 'ListenerNotFoundException')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    LoadBalancerAttributeNotFoundException = Shapes::StructureShape.new(name: 'LoadBalancerAttributeNotFoundException')
    LoadBalancerAttributes = Shapes::StructureShape.new(name: 'LoadBalancerAttributes')
    LoadBalancerDescription = Shapes::StructureShape.new(name: 'LoadBalancerDescription')
    LoadBalancerDescriptions = Shapes::ListShape.new(name: 'LoadBalancerDescriptions')
    LoadBalancerNames = Shapes::ListShape.new(name: 'LoadBalancerNames')
    LoadBalancerNamesMax20 = Shapes::ListShape.new(name: 'LoadBalancerNamesMax20')
    LoadBalancerScheme = Shapes::StringShape.new(name: 'LoadBalancerScheme')
    Marker = Shapes::StringShape.new(name: 'Marker')
    Max = Shapes::StringShape.new(name: 'Max')
    ModifyLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesInput')
    ModifyLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesOutput')
    Name = Shapes::StringShape.new(name: 'Name')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    Policies = Shapes::StructureShape.new(name: 'Policies')
    PolicyAttribute = Shapes::StructureShape.new(name: 'PolicyAttribute')
    PolicyAttributeDescription = Shapes::StructureShape.new(name: 'PolicyAttributeDescription')
    PolicyAttributeDescriptions = Shapes::ListShape.new(name: 'PolicyAttributeDescriptions')
    PolicyAttributeTypeDescription = Shapes::StructureShape.new(name: 'PolicyAttributeTypeDescription')
    PolicyAttributeTypeDescriptions = Shapes::ListShape.new(name: 'PolicyAttributeTypeDescriptions')
    PolicyAttributes = Shapes::ListShape.new(name: 'PolicyAttributes')
    PolicyDescription = Shapes::StructureShape.new(name: 'PolicyDescription')
    PolicyDescriptions = Shapes::ListShape.new(name: 'PolicyDescriptions')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyNames = Shapes::ListShape.new(name: 'PolicyNames')
    PolicyNotFoundException = Shapes::StructureShape.new(name: 'PolicyNotFoundException')
    PolicyTypeDescription = Shapes::StructureShape.new(name: 'PolicyTypeDescription')
    PolicyTypeDescriptions = Shapes::ListShape.new(name: 'PolicyTypeDescriptions')
    PolicyTypeName = Shapes::StringShape.new(name: 'PolicyTypeName')
    PolicyTypeNames = Shapes::ListShape.new(name: 'PolicyTypeNames')
    PolicyTypeNotFoundException = Shapes::StructureShape.new(name: 'PolicyTypeNotFoundException')
    Ports = Shapes::ListShape.new(name: 'Ports')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    RegisterEndPointsInput = Shapes::StructureShape.new(name: 'RegisterEndPointsInput')
    RegisterEndPointsOutput = Shapes::StructureShape.new(name: 'RegisterEndPointsOutput')
    RemoveAvailabilityZonesInput = Shapes::StructureShape.new(name: 'RemoveAvailabilityZonesInput')
    RemoveAvailabilityZonesOutput = Shapes::StructureShape.new(name: 'RemoveAvailabilityZonesOutput')
    RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
    RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    SSLCertificateId = Shapes::StringShape.new(name: 'SSLCertificateId')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupName = Shapes::StringShape.new(name: 'SecurityGroupName')
    SecurityGroupOwnerAlias = Shapes::StringShape.new(name: 'SecurityGroupOwnerAlias')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SetLoadBalancerListenerSSLCertificateInput = Shapes::StructureShape.new(name: 'SetLoadBalancerListenerSSLCertificateInput')
    SetLoadBalancerListenerSSLCertificateOutput = Shapes::StructureShape.new(name: 'SetLoadBalancerListenerSSLCertificateOutput')
    SetLoadBalancerPoliciesForBackendServerInput = Shapes::StructureShape.new(name: 'SetLoadBalancerPoliciesForBackendServerInput')
    SetLoadBalancerPoliciesForBackendServerOutput = Shapes::StructureShape.new(name: 'SetLoadBalancerPoliciesForBackendServerOutput')
    SetLoadBalancerPoliciesOfListenerInput = Shapes::StructureShape.new(name: 'SetLoadBalancerPoliciesOfListenerInput')
    SetLoadBalancerPoliciesOfListenerOutput = Shapes::StructureShape.new(name: 'SetLoadBalancerPoliciesOfListenerOutput')
    SourceSecurityGroup = Shapes::StructureShape.new(name: 'SourceSecurityGroup')
    State = Shapes::StringShape.new(name: 'State')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetNotFoundException = Shapes::StructureShape.new(name: 'SubnetNotFoundException')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDescription = Shapes::StructureShape.new(name: 'TagDescription')
    TagDescriptions = Shapes::ListShape.new(name: 'TagDescriptions')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyOnly = Shapes::StructureShape.new(name: 'TagKeyOnly')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyAccessPointsException = Shapes::StructureShape.new(name: 'TooManyAccessPointsException')
    TooManyPoliciesException = Shapes::StructureShape.new(name: 'TooManyPoliciesException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnhealthyThreshold = Shapes::IntegerShape.new(name: 'UnhealthyThreshold')
    UnsupportedProtocolException = Shapes::StructureShape.new(name: 'UnsupportedProtocolException')
    VPCId = Shapes::StringShape.new(name: 'VPCId')

    AccessLog.add_member(:enabled, Shapes::ShapeRef.new(shape: AccessLogEnabled, required: true, location_name: "Enabled"))
    AccessLog.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    AccessLog.add_member(:emit_interval, Shapes::ShapeRef.new(shape: AccessLogInterval, location_name: "EmitInterval"))
    AccessLog.add_member(:s3_bucket_prefix, Shapes::ShapeRef.new(shape: AccessLogPrefix, location_name: "S3BucketPrefix"))
    AccessLog.struct_class = Types::AccessLog

    AddAvailabilityZonesInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    AddAvailabilityZonesInput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "AvailabilityZones"))
    AddAvailabilityZonesInput.struct_class = Types::AddAvailabilityZonesInput

    AddAvailabilityZonesOutput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    AddAvailabilityZonesOutput.struct_class = Types::AddAvailabilityZonesOutput

    AddTagsInput.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.struct_class = Types::AddTagsOutput

    AdditionalAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AdditionalAttributeKey, location_name: "Key"))
    AdditionalAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AdditionalAttributeValue, location_name: "Value"))
    AdditionalAttribute.struct_class = Types::AdditionalAttribute

    AdditionalAttributes.member = Shapes::ShapeRef.new(shape: AdditionalAttribute)

    AppCookieStickinessPolicies.member = Shapes::ShapeRef.new(shape: AppCookieStickinessPolicy)

    AppCookieStickinessPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    AppCookieStickinessPolicy.add_member(:cookie_name, Shapes::ShapeRef.new(shape: CookieName, location_name: "CookieName"))
    AppCookieStickinessPolicy.struct_class = Types::AppCookieStickinessPolicy

    ApplySecurityGroupsToLoadBalancerInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    ApplySecurityGroupsToLoadBalancerInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "SecurityGroups"))
    ApplySecurityGroupsToLoadBalancerInput.struct_class = Types::ApplySecurityGroupsToLoadBalancerInput

    ApplySecurityGroupsToLoadBalancerOutput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    ApplySecurityGroupsToLoadBalancerOutput.struct_class = Types::ApplySecurityGroupsToLoadBalancerOutput

    AttachLoadBalancerToSubnetsInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    AttachLoadBalancerToSubnetsInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    AttachLoadBalancerToSubnetsInput.struct_class = Types::AttachLoadBalancerToSubnetsInput

    AttachLoadBalancerToSubnetsOutput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    AttachLoadBalancerToSubnetsOutput.struct_class = Types::AttachLoadBalancerToSubnetsOutput

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    BackendServerDescription.add_member(:instance_port, Shapes::ShapeRef.new(shape: InstancePort, location_name: "InstancePort"))
    BackendServerDescription.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "PolicyNames"))
    BackendServerDescription.struct_class = Types::BackendServerDescription

    BackendServerDescriptions.member = Shapes::ShapeRef.new(shape: BackendServerDescription)

    ConfigureHealthCheckInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    ConfigureHealthCheckInput.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, required: true, location_name: "HealthCheck"))
    ConfigureHealthCheckInput.struct_class = Types::ConfigureHealthCheckInput

    ConfigureHealthCheckOutput.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, location_name: "HealthCheck"))
    ConfigureHealthCheckOutput.struct_class = Types::ConfigureHealthCheckOutput

    ConnectionDraining.add_member(:enabled, Shapes::ShapeRef.new(shape: ConnectionDrainingEnabled, required: true, location_name: "Enabled"))
    ConnectionDraining.add_member(:timeout, Shapes::ShapeRef.new(shape: ConnectionDrainingTimeout, location_name: "Timeout"))
    ConnectionDraining.struct_class = Types::ConnectionDraining

    ConnectionSettings.add_member(:idle_timeout, Shapes::ShapeRef.new(shape: IdleTimeout, required: true, location_name: "IdleTimeout"))
    ConnectionSettings.struct_class = Types::ConnectionSettings

    CreateAccessPointInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    CreateAccessPointInput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, required: true, location_name: "Listeners"))
    CreateAccessPointInput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateAccessPointInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    CreateAccessPointInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateAccessPointInput.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerScheme, location_name: "Scheme"))
    CreateAccessPointInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccessPointInput.struct_class = Types::CreateAccessPointInput

    CreateAccessPointOutput.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    CreateAccessPointOutput.struct_class = Types::CreateAccessPointOutput

    CreateAppCookieStickinessPolicyInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    CreateAppCookieStickinessPolicyInput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    CreateAppCookieStickinessPolicyInput.add_member(:cookie_name, Shapes::ShapeRef.new(shape: CookieName, required: true, location_name: "CookieName"))
    CreateAppCookieStickinessPolicyInput.struct_class = Types::CreateAppCookieStickinessPolicyInput

    CreateAppCookieStickinessPolicyOutput.struct_class = Types::CreateAppCookieStickinessPolicyOutput

    CreateLBCookieStickinessPolicyInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    CreateLBCookieStickinessPolicyInput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    CreateLBCookieStickinessPolicyInput.add_member(:cookie_expiration_period, Shapes::ShapeRef.new(shape: CookieExpirationPeriod, location_name: "CookieExpirationPeriod"))
    CreateLBCookieStickinessPolicyInput.struct_class = Types::CreateLBCookieStickinessPolicyInput

    CreateLBCookieStickinessPolicyOutput.struct_class = Types::CreateLBCookieStickinessPolicyOutput

    CreateLoadBalancerListenerInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    CreateLoadBalancerListenerInput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, required: true, location_name: "Listeners"))
    CreateLoadBalancerListenerInput.struct_class = Types::CreateLoadBalancerListenerInput

    CreateLoadBalancerListenerOutput.struct_class = Types::CreateLoadBalancerListenerOutput

    CreateLoadBalancerPolicyInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    CreateLoadBalancerPolicyInput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    CreateLoadBalancerPolicyInput.add_member(:policy_type_name, Shapes::ShapeRef.new(shape: PolicyTypeName, required: true, location_name: "PolicyTypeName"))
    CreateLoadBalancerPolicyInput.add_member(:policy_attributes, Shapes::ShapeRef.new(shape: PolicyAttributes, location_name: "PolicyAttributes"))
    CreateLoadBalancerPolicyInput.struct_class = Types::CreateLoadBalancerPolicyInput

    CreateLoadBalancerPolicyOutput.struct_class = Types::CreateLoadBalancerPolicyOutput

    CrossZoneLoadBalancing.add_member(:enabled, Shapes::ShapeRef.new(shape: CrossZoneLoadBalancingEnabled, required: true, location_name: "Enabled"))
    CrossZoneLoadBalancing.struct_class = Types::CrossZoneLoadBalancing

    DeleteAccessPointInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DeleteAccessPointInput.struct_class = Types::DeleteAccessPointInput

    DeleteAccessPointOutput.struct_class = Types::DeleteAccessPointOutput

    DeleteLoadBalancerListenerInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DeleteLoadBalancerListenerInput.add_member(:load_balancer_ports, Shapes::ShapeRef.new(shape: Ports, required: true, location_name: "LoadBalancerPorts"))
    DeleteLoadBalancerListenerInput.struct_class = Types::DeleteLoadBalancerListenerInput

    DeleteLoadBalancerListenerOutput.struct_class = Types::DeleteLoadBalancerListenerOutput

    DeleteLoadBalancerPolicyInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DeleteLoadBalancerPolicyInput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    DeleteLoadBalancerPolicyInput.struct_class = Types::DeleteLoadBalancerPolicyInput

    DeleteLoadBalancerPolicyOutput.struct_class = Types::DeleteLoadBalancerPolicyOutput

    DeregisterEndPointsInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DeregisterEndPointsInput.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, required: true, location_name: "Instances"))
    DeregisterEndPointsInput.struct_class = Types::DeregisterEndPointsInput

    DeregisterEndPointsOutput.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    DeregisterEndPointsOutput.struct_class = Types::DeregisterEndPointsOutput

    DescribeAccessPointsInput.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "LoadBalancerNames"))
    DescribeAccessPointsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeAccessPointsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeAccessPointsInput.struct_class = Types::DescribeAccessPointsInput

    DescribeAccessPointsOutput.add_member(:load_balancer_descriptions, Shapes::ShapeRef.new(shape: LoadBalancerDescriptions, location_name: "LoadBalancerDescriptions"))
    DescribeAccessPointsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeAccessPointsOutput.struct_class = Types::DescribeAccessPointsOutput

    DescribeAccountLimitsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeAccountLimitsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeAccountLimitsInput.struct_class = Types::DescribeAccountLimitsInput

    DescribeAccountLimitsOutput.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    DescribeAccountLimitsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeAccountLimitsOutput.struct_class = Types::DescribeAccountLimitsOutput

    DescribeEndPointStateInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DescribeEndPointStateInput.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    DescribeEndPointStateInput.struct_class = Types::DescribeEndPointStateInput

    DescribeEndPointStateOutput.add_member(:instance_states, Shapes::ShapeRef.new(shape: InstanceStates, location_name: "InstanceStates"))
    DescribeEndPointStateOutput.struct_class = Types::DescribeEndPointStateOutput

    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DescribeLoadBalancerAttributesInput.struct_class = Types::DescribeLoadBalancerAttributesInput

    DescribeLoadBalancerAttributesOutput.add_member(:load_balancer_attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "LoadBalancerAttributes"))
    DescribeLoadBalancerAttributesOutput.struct_class = Types::DescribeLoadBalancerAttributesOutput

    DescribeLoadBalancerPoliciesInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, location_name: "LoadBalancerName"))
    DescribeLoadBalancerPoliciesInput.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "PolicyNames"))
    DescribeLoadBalancerPoliciesInput.struct_class = Types::DescribeLoadBalancerPoliciesInput

    DescribeLoadBalancerPoliciesOutput.add_member(:policy_descriptions, Shapes::ShapeRef.new(shape: PolicyDescriptions, location_name: "PolicyDescriptions"))
    DescribeLoadBalancerPoliciesOutput.struct_class = Types::DescribeLoadBalancerPoliciesOutput

    DescribeLoadBalancerPolicyTypesInput.add_member(:policy_type_names, Shapes::ShapeRef.new(shape: PolicyTypeNames, location_name: "PolicyTypeNames"))
    DescribeLoadBalancerPolicyTypesInput.struct_class = Types::DescribeLoadBalancerPolicyTypesInput

    DescribeLoadBalancerPolicyTypesOutput.add_member(:policy_type_descriptions, Shapes::ShapeRef.new(shape: PolicyTypeDescriptions, location_name: "PolicyTypeDescriptions"))
    DescribeLoadBalancerPolicyTypesOutput.struct_class = Types::DescribeLoadBalancerPolicyTypesOutput

    DescribeTagsInput.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNamesMax20, required: true, location_name: "LoadBalancerNames"))
    DescribeTagsInput.struct_class = Types::DescribeTagsInput

    DescribeTagsOutput.add_member(:tag_descriptions, Shapes::ShapeRef.new(shape: TagDescriptions, location_name: "TagDescriptions"))
    DescribeTagsOutput.struct_class = Types::DescribeTagsOutput

    DetachLoadBalancerFromSubnetsInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    DetachLoadBalancerFromSubnetsInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    DetachLoadBalancerFromSubnetsInput.struct_class = Types::DetachLoadBalancerFromSubnetsInput

    DetachLoadBalancerFromSubnetsOutput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    DetachLoadBalancerFromSubnetsOutput.struct_class = Types::DetachLoadBalancerFromSubnetsOutput

    HealthCheck.add_member(:target, Shapes::ShapeRef.new(shape: HealthCheckTarget, required: true, location_name: "Target"))
    HealthCheck.add_member(:interval, Shapes::ShapeRef.new(shape: HealthCheckInterval, required: true, location_name: "Interval"))
    HealthCheck.add_member(:timeout, Shapes::ShapeRef.new(shape: HealthCheckTimeout, required: true, location_name: "Timeout"))
    HealthCheck.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: UnhealthyThreshold, required: true, location_name: "UnhealthyThreshold"))
    HealthCheck.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: HealthyThreshold, required: true, location_name: "HealthyThreshold"))
    HealthCheck.struct_class = Types::HealthCheck

    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    Instance.struct_class = Types::Instance

    InstanceState.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceState.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    InstanceState.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    InstanceState.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    InstanceState.struct_class = Types::InstanceState

    InstanceStates.member = Shapes::ShapeRef.new(shape: InstanceState)

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    LBCookieStickinessPolicies.member = Shapes::ShapeRef.new(shape: LBCookieStickinessPolicy)

    LBCookieStickinessPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    LBCookieStickinessPolicy.add_member(:cookie_expiration_period, Shapes::ShapeRef.new(shape: CookieExpirationPeriod, location_name: "CookieExpirationPeriod"))
    LBCookieStickinessPolicy.struct_class = Types::LBCookieStickinessPolicy

    Limit.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Limit.add_member(:max, Shapes::ShapeRef.new(shape: Max, location_name: "Max"))
    Limit.struct_class = Types::Limit

    Limits.member = Shapes::ShapeRef.new(shape: Limit)

    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    Listener.add_member(:load_balancer_port, Shapes::ShapeRef.new(shape: AccessPointPort, required: true, location_name: "LoadBalancerPort"))
    Listener.add_member(:instance_protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "InstanceProtocol"))
    Listener.add_member(:instance_port, Shapes::ShapeRef.new(shape: InstancePort, required: true, location_name: "InstancePort"))
    Listener.add_member(:ssl_certificate_id, Shapes::ShapeRef.new(shape: SSLCertificateId, location_name: "SSLCertificateId"))
    Listener.struct_class = Types::Listener

    ListenerDescription.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    ListenerDescription.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "PolicyNames"))
    ListenerDescription.struct_class = Types::ListenerDescription

    ListenerDescriptions.member = Shapes::ShapeRef.new(shape: ListenerDescription)

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    LoadBalancerAttributes.add_member(:cross_zone_load_balancing, Shapes::ShapeRef.new(shape: CrossZoneLoadBalancing, location_name: "CrossZoneLoadBalancing"))
    LoadBalancerAttributes.add_member(:access_log, Shapes::ShapeRef.new(shape: AccessLog, location_name: "AccessLog"))
    LoadBalancerAttributes.add_member(:connection_draining, Shapes::ShapeRef.new(shape: ConnectionDraining, location_name: "ConnectionDraining"))
    LoadBalancerAttributes.add_member(:connection_settings, Shapes::ShapeRef.new(shape: ConnectionSettings, location_name: "ConnectionSettings"))
    LoadBalancerAttributes.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AdditionalAttributes, location_name: "AdditionalAttributes"))
    LoadBalancerAttributes.struct_class = Types::LoadBalancerAttributes

    LoadBalancerDescription.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, location_name: "LoadBalancerName"))
    LoadBalancerDescription.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    LoadBalancerDescription.add_member(:canonical_hosted_zone_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "CanonicalHostedZoneName"))
    LoadBalancerDescription.add_member(:canonical_hosted_zone_name_id, Shapes::ShapeRef.new(shape: DNSName, location_name: "CanonicalHostedZoneNameID"))
    LoadBalancerDescription.add_member(:listener_descriptions, Shapes::ShapeRef.new(shape: ListenerDescriptions, location_name: "ListenerDescriptions"))
    LoadBalancerDescription.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "Policies"))
    LoadBalancerDescription.add_member(:backend_server_descriptions, Shapes::ShapeRef.new(shape: BackendServerDescriptions, location_name: "BackendServerDescriptions"))
    LoadBalancerDescription.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    LoadBalancerDescription.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    LoadBalancerDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VPCId, location_name: "VPCId"))
    LoadBalancerDescription.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    LoadBalancerDescription.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, location_name: "HealthCheck"))
    LoadBalancerDescription.add_member(:source_security_group, Shapes::ShapeRef.new(shape: SourceSecurityGroup, location_name: "SourceSecurityGroup"))
    LoadBalancerDescription.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    LoadBalancerDescription.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    LoadBalancerDescription.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerScheme, location_name: "Scheme"))
    LoadBalancerDescription.struct_class = Types::LoadBalancerDescription

    LoadBalancerDescriptions.member = Shapes::ShapeRef.new(shape: LoadBalancerDescription)

    LoadBalancerNames.member = Shapes::ShapeRef.new(shape: AccessPointName)

    LoadBalancerNamesMax20.member = Shapes::ShapeRef.new(shape: AccessPointName)

    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, required: true, location_name: "LoadBalancerAttributes"))
    ModifyLoadBalancerAttributesInput.struct_class = Types::ModifyLoadBalancerAttributesInput

    ModifyLoadBalancerAttributesOutput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, location_name: "LoadBalancerName"))
    ModifyLoadBalancerAttributesOutput.add_member(:load_balancer_attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "LoadBalancerAttributes"))
    ModifyLoadBalancerAttributesOutput.struct_class = Types::ModifyLoadBalancerAttributesOutput

    Policies.add_member(:app_cookie_stickiness_policies, Shapes::ShapeRef.new(shape: AppCookieStickinessPolicies, location_name: "AppCookieStickinessPolicies"))
    Policies.add_member(:lb_cookie_stickiness_policies, Shapes::ShapeRef.new(shape: LBCookieStickinessPolicies, location_name: "LBCookieStickinessPolicies"))
    Policies.add_member(:other_policies, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "OtherPolicies"))
    Policies.struct_class = Types::Policies

    PolicyAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "AttributeName"))
    PolicyAttribute.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue"))
    PolicyAttribute.struct_class = Types::PolicyAttribute

    PolicyAttributeDescription.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "AttributeName"))
    PolicyAttributeDescription.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue"))
    PolicyAttributeDescription.struct_class = Types::PolicyAttributeDescription

    PolicyAttributeDescriptions.member = Shapes::ShapeRef.new(shape: PolicyAttributeDescription)

    PolicyAttributeTypeDescription.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "AttributeName"))
    PolicyAttributeTypeDescription.add_member(:attribute_type, Shapes::ShapeRef.new(shape: AttributeType, location_name: "AttributeType"))
    PolicyAttributeTypeDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PolicyAttributeTypeDescription.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "DefaultValue"))
    PolicyAttributeTypeDescription.add_member(:cardinality, Shapes::ShapeRef.new(shape: Cardinality, location_name: "Cardinality"))
    PolicyAttributeTypeDescription.struct_class = Types::PolicyAttributeTypeDescription

    PolicyAttributeTypeDescriptions.member = Shapes::ShapeRef.new(shape: PolicyAttributeTypeDescription)

    PolicyAttributes.member = Shapes::ShapeRef.new(shape: PolicyAttribute)

    PolicyDescription.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    PolicyDescription.add_member(:policy_type_name, Shapes::ShapeRef.new(shape: PolicyTypeName, location_name: "PolicyTypeName"))
    PolicyDescription.add_member(:policy_attribute_descriptions, Shapes::ShapeRef.new(shape: PolicyAttributeDescriptions, location_name: "PolicyAttributeDescriptions"))
    PolicyDescription.struct_class = Types::PolicyDescription

    PolicyDescriptions.member = Shapes::ShapeRef.new(shape: PolicyDescription)

    PolicyNames.member = Shapes::ShapeRef.new(shape: PolicyName)

    PolicyTypeDescription.add_member(:policy_type_name, Shapes::ShapeRef.new(shape: PolicyTypeName, location_name: "PolicyTypeName"))
    PolicyTypeDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PolicyTypeDescription.add_member(:policy_attribute_type_descriptions, Shapes::ShapeRef.new(shape: PolicyAttributeTypeDescriptions, location_name: "PolicyAttributeTypeDescriptions"))
    PolicyTypeDescription.struct_class = Types::PolicyTypeDescription

    PolicyTypeDescriptions.member = Shapes::ShapeRef.new(shape: PolicyTypeDescription)

    PolicyTypeNames.member = Shapes::ShapeRef.new(shape: PolicyTypeName)

    Ports.member = Shapes::ShapeRef.new(shape: AccessPointPort)

    RegisterEndPointsInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    RegisterEndPointsInput.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, required: true, location_name: "Instances"))
    RegisterEndPointsInput.struct_class = Types::RegisterEndPointsInput

    RegisterEndPointsOutput.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    RegisterEndPointsOutput.struct_class = Types::RegisterEndPointsOutput

    RemoveAvailabilityZonesInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    RemoveAvailabilityZonesInput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "AvailabilityZones"))
    RemoveAvailabilityZonesInput.struct_class = Types::RemoveAvailabilityZonesInput

    RemoveAvailabilityZonesOutput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    RemoveAvailabilityZonesOutput.struct_class = Types::RemoveAvailabilityZonesOutput

    RemoveTagsInput.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    RemoveTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Tags"))
    RemoveTagsInput.struct_class = Types::RemoveTagsInput

    RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SetLoadBalancerListenerSSLCertificateInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    SetLoadBalancerListenerSSLCertificateInput.add_member(:load_balancer_port, Shapes::ShapeRef.new(shape: AccessPointPort, required: true, location_name: "LoadBalancerPort"))
    SetLoadBalancerListenerSSLCertificateInput.add_member(:ssl_certificate_id, Shapes::ShapeRef.new(shape: SSLCertificateId, required: true, location_name: "SSLCertificateId"))
    SetLoadBalancerListenerSSLCertificateInput.struct_class = Types::SetLoadBalancerListenerSSLCertificateInput

    SetLoadBalancerListenerSSLCertificateOutput.struct_class = Types::SetLoadBalancerListenerSSLCertificateOutput

    SetLoadBalancerPoliciesForBackendServerInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    SetLoadBalancerPoliciesForBackendServerInput.add_member(:instance_port, Shapes::ShapeRef.new(shape: EndPointPort, required: true, location_name: "InstancePort"))
    SetLoadBalancerPoliciesForBackendServerInput.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, required: true, location_name: "PolicyNames"))
    SetLoadBalancerPoliciesForBackendServerInput.struct_class = Types::SetLoadBalancerPoliciesForBackendServerInput

    SetLoadBalancerPoliciesForBackendServerOutput.struct_class = Types::SetLoadBalancerPoliciesForBackendServerOutput

    SetLoadBalancerPoliciesOfListenerInput.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "LoadBalancerName"))
    SetLoadBalancerPoliciesOfListenerInput.add_member(:load_balancer_port, Shapes::ShapeRef.new(shape: AccessPointPort, required: true, location_name: "LoadBalancerPort"))
    SetLoadBalancerPoliciesOfListenerInput.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, required: true, location_name: "PolicyNames"))
    SetLoadBalancerPoliciesOfListenerInput.struct_class = Types::SetLoadBalancerPoliciesOfListenerInput

    SetLoadBalancerPoliciesOfListenerOutput.struct_class = Types::SetLoadBalancerPoliciesOfListenerOutput

    SourceSecurityGroup.add_member(:owner_alias, Shapes::ShapeRef.new(shape: SecurityGroupOwnerAlias, location_name: "OwnerAlias"))
    SourceSecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: SecurityGroupName, location_name: "GroupName"))
    SourceSecurityGroup.struct_class = Types::SourceSecurityGroup

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagDescription.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: AccessPointName, location_name: "LoadBalancerName"))
    TagDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagDescription.struct_class = Types::TagDescription

    TagDescriptions.member = Shapes::ShapeRef.new(shape: TagDescription)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKeyOnly)

    TagKeyOnly.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagKeyOnly.struct_class = Types::TagKeyOnly

    TagList.member = Shapes::ShapeRef.new(shape: Tag)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-06-01"

      api.metadata = {
        "apiVersion" => "2012-06-01",
        "endpointPrefix" => "elasticloadbalancing",
        "protocol" => "query",
        "serviceFullName" => "Elastic Load Balancing",
        "serviceId" => "Elastic Load Balancing",
        "signatureVersion" => "v4",
        "uid" => "elasticloadbalancing-2012-06-01",
        "xmlNamespace" => "http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/",
      }

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
      end)

      api.add_operation(:apply_security_groups_to_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplySecurityGroupsToLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplySecurityGroupsToLoadBalancerInput)
        o.output = Shapes::ShapeRef.new(shape: ApplySecurityGroupsToLoadBalancerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
      end)

      api.add_operation(:attach_load_balancer_to_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancerToSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancerToSubnetsInput)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancerToSubnetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
      end)

      api.add_operation(:configure_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureHealthCheck"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConfigureHealthCheckInput)
        o.output = Shapes::ShapeRef.new(shape: ConfigureHealthCheckOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
      end)

      api.add_operation(:create_app_cookie_stickiness_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppCookieStickinessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppCookieStickinessPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAppCookieStickinessPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPoliciesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:create_lb_cookie_stickiness_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLBCookieStickinessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLBCookieStickinessPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLBCookieStickinessPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPoliciesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:create_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPointOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateAccessPointNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyAccessPointsException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchemeException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_load_balancer_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancerListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerListenerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateListenerException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
      end)

      api.add_operation(:create_load_balancer_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicatePolicyNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPoliciesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:delete_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessPointOutput)
      end)

      api.add_operation(:delete_load_balancer_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancerListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerListenerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
      end)

      api.add_operation(:delete_load_balancer_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:deregister_instances_from_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterInstancesFromLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterEndPointsInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterEndPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndPointException)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
      end)

      api.add_operation(:describe_instance_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndPointStateInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndPointStateOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndPointException)
      end)

      api.add_operation(:describe_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerAttributeNotFoundException)
      end)

      api.add_operation(:describe_load_balancer_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
      end)

      api.add_operation(:describe_load_balancer_policy_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerPolicyTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerPolicyTypesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerPolicyTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: PolicyTypeNotFoundException)
      end)

      api.add_operation(:describe_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessPointsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyThrottleException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
      end)

      api.add_operation(:detach_load_balancer_from_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachLoadBalancerFromSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachLoadBalancerFromSubnetsInput)
        o.output = Shapes::ShapeRef.new(shape: DetachLoadBalancerFromSubnetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:disable_availability_zones_for_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableAvailabilityZonesForLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveAvailabilityZonesInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveAvailabilityZonesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:enable_availability_zones_for_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableAvailabilityZonesForLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddAvailabilityZonesInput)
        o.output = Shapes::ShapeRef.new(shape: AddAvailabilityZonesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
      end)

      api.add_operation(:modify_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerAttributeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:register_instances_with_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterInstancesWithLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterEndPointsInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterEndPointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndPointException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
      end)

      api.add_operation(:set_load_balancer_listener_ssl_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLoadBalancerListenerSSLCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLoadBalancerListenerSSLCertificateInput)
        o.output = Shapes::ShapeRef.new(shape: SetLoadBalancerListenerSSLCertificateOutput)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
      end)

      api.add_operation(:set_load_balancer_policies_for_backend_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLoadBalancerPoliciesForBackendServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLoadBalancerPoliciesForBackendServerInput)
        o.output = Shapes::ShapeRef.new(shape: SetLoadBalancerPoliciesForBackendServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:set_load_balancer_policies_of_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLoadBalancerPoliciesOfListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLoadBalancerPoliciesOfListenerInput)
        o.output = Shapes::ShapeRef.new(shape: SetLoadBalancerPoliciesOfListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)
    end

  end
end
