# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticLoadBalancingV2
  # @api private
  module ClientApi

    include Seahorse::Model

    ALPNPolicyNotSupportedException = Shapes::StructureShape.new(name: 'ALPNPolicyNotSupportedException', error: {"code" => "ALPNPolicyNotFound", "httpStatusCode" => 400, "senderFault" => true})
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionOrder = Shapes::IntegerShape.new(name: 'ActionOrder')
    ActionTypeEnum = Shapes::StringShape.new(name: 'ActionTypeEnum')
    Actions = Shapes::ListShape.new(name: 'Actions')
    AddListenerCertificatesInput = Shapes::StructureShape.new(name: 'AddListenerCertificatesInput')
    AddListenerCertificatesOutput = Shapes::StructureShape.new(name: 'AddListenerCertificatesOutput')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AddTrustStoreRevocationsInput = Shapes::StructureShape.new(name: 'AddTrustStoreRevocationsInput')
    AddTrustStoreRevocationsOutput = Shapes::StructureShape.new(name: 'AddTrustStoreRevocationsOutput')
    AdministrativeOverride = Shapes::StructureShape.new(name: 'AdministrativeOverride')
    AdvertiseTrustStoreCaNamesEnum = Shapes::StringShape.new(name: 'AdvertiseTrustStoreCaNamesEnum')
    AllocationId = Shapes::StringShape.new(name: 'AllocationId')
    AllocationIdNotFoundException = Shapes::StructureShape.new(name: 'AllocationIdNotFoundException', error: {"code" => "AllocationIdNotFound", "httpStatusCode" => 400, "senderFault" => true})
    AlpnPolicyName = Shapes::ListShape.new(name: 'AlpnPolicyName')
    AlpnPolicyValue = Shapes::StringShape.new(name: 'AlpnPolicyValue')
    AnomalyDetection = Shapes::StructureShape.new(name: 'AnomalyDetection')
    AnomalyResultEnum = Shapes::StringShape.new(name: 'AnomalyResultEnum')
    AuthenticateCognitoActionAuthenticationRequestExtraParams = Shapes::MapShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestExtraParams')
    AuthenticateCognitoActionAuthenticationRequestParamName = Shapes::StringShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestParamName')
    AuthenticateCognitoActionAuthenticationRequestParamValue = Shapes::StringShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestParamValue')
    AuthenticateCognitoActionConditionalBehaviorEnum = Shapes::StringShape.new(name: 'AuthenticateCognitoActionConditionalBehaviorEnum')
    AuthenticateCognitoActionConfig = Shapes::StructureShape.new(name: 'AuthenticateCognitoActionConfig')
    AuthenticateCognitoActionScope = Shapes::StringShape.new(name: 'AuthenticateCognitoActionScope')
    AuthenticateCognitoActionSessionCookieName = Shapes::StringShape.new(name: 'AuthenticateCognitoActionSessionCookieName')
    AuthenticateCognitoActionSessionTimeout = Shapes::IntegerShape.new(name: 'AuthenticateCognitoActionSessionTimeout')
    AuthenticateCognitoActionUserPoolArn = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolArn')
    AuthenticateCognitoActionUserPoolClientId = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolClientId')
    AuthenticateCognitoActionUserPoolDomain = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolDomain')
    AuthenticateOidcActionAuthenticationRequestExtraParams = Shapes::MapShape.new(name: 'AuthenticateOidcActionAuthenticationRequestExtraParams')
    AuthenticateOidcActionAuthenticationRequestParamName = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthenticationRequestParamName')
    AuthenticateOidcActionAuthenticationRequestParamValue = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthenticationRequestParamValue')
    AuthenticateOidcActionAuthorizationEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthorizationEndpoint')
    AuthenticateOidcActionClientId = Shapes::StringShape.new(name: 'AuthenticateOidcActionClientId')
    AuthenticateOidcActionClientSecret = Shapes::StringShape.new(name: 'AuthenticateOidcActionClientSecret')
    AuthenticateOidcActionConditionalBehaviorEnum = Shapes::StringShape.new(name: 'AuthenticateOidcActionConditionalBehaviorEnum')
    AuthenticateOidcActionConfig = Shapes::StructureShape.new(name: 'AuthenticateOidcActionConfig')
    AuthenticateOidcActionIssuer = Shapes::StringShape.new(name: 'AuthenticateOidcActionIssuer')
    AuthenticateOidcActionScope = Shapes::StringShape.new(name: 'AuthenticateOidcActionScope')
    AuthenticateOidcActionSessionCookieName = Shapes::StringShape.new(name: 'AuthenticateOidcActionSessionCookieName')
    AuthenticateOidcActionSessionTimeout = Shapes::IntegerShape.new(name: 'AuthenticateOidcActionSessionTimeout')
    AuthenticateOidcActionTokenEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionTokenEndpoint')
    AuthenticateOidcActionUseExistingClientSecret = Shapes::BooleanShape.new(name: 'AuthenticateOidcActionUseExistingClientSecret')
    AuthenticateOidcActionUserInfoEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionUserInfoEndpoint')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneNotSupportedException = Shapes::StructureShape.new(name: 'AvailabilityZoneNotSupportedException', error: {"code" => "AvailabilityZoneNotSupported", "httpStatusCode" => 400, "senderFault" => true})
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    CaCertificatesBundleNotFoundException = Shapes::StructureShape.new(name: 'CaCertificatesBundleNotFoundException', error: {"code" => "CaCertificatesBundleNotFound", "httpStatusCode" => 400, "senderFault" => true})
    CanonicalHostedZoneId = Shapes::StringShape.new(name: 'CanonicalHostedZoneId')
    CapacityDecreaseRequestsLimitExceededException = Shapes::StructureShape.new(name: 'CapacityDecreaseRequestsLimitExceededException', error: {"code" => "CapacityDecreaseRequestLimitExceeded", "httpStatusCode" => 400, "senderFault" => true})
    CapacityReservationPendingException = Shapes::StructureShape.new(name: 'CapacityReservationPendingException', error: {"code" => "CapacityReservationPending", "httpStatusCode" => 400, "senderFault" => true})
    CapacityReservationStateEnum = Shapes::StringShape.new(name: 'CapacityReservationStateEnum')
    CapacityReservationStatus = Shapes::StructureShape.new(name: 'CapacityReservationStatus')
    CapacityUnits = Shapes::IntegerShape.new(name: 'CapacityUnits')
    CapacityUnitsDouble = Shapes::FloatShape.new(name: 'CapacityUnitsDouble')
    CapacityUnitsLimitExceededException = Shapes::StructureShape.new(name: 'CapacityUnitsLimitExceededException', error: {"code" => "CapacityUnitsLimitExceeded", "httpStatusCode" => 400, "senderFault" => true})
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateNotFoundException = Shapes::StructureShape.new(name: 'CertificateNotFoundException', error: {"code" => "CertificateNotFound", "httpStatusCode" => 400, "senderFault" => true})
    Cipher = Shapes::StructureShape.new(name: 'Cipher')
    CipherName = Shapes::StringShape.new(name: 'CipherName')
    CipherPriority = Shapes::IntegerShape.new(name: 'CipherPriority')
    Ciphers = Shapes::ListShape.new(name: 'Ciphers')
    ConditionFieldName = Shapes::StringShape.new(name: 'ConditionFieldName')
    CreateListenerInput = Shapes::StructureShape.new(name: 'CreateListenerInput')
    CreateListenerOutput = Shapes::StructureShape.new(name: 'CreateListenerOutput')
    CreateLoadBalancerInput = Shapes::StructureShape.new(name: 'CreateLoadBalancerInput')
    CreateLoadBalancerOutput = Shapes::StructureShape.new(name: 'CreateLoadBalancerOutput')
    CreateRuleInput = Shapes::StructureShape.new(name: 'CreateRuleInput')
    CreateRuleOutput = Shapes::StructureShape.new(name: 'CreateRuleOutput')
    CreateTargetGroupInput = Shapes::StructureShape.new(name: 'CreateTargetGroupInput')
    CreateTargetGroupOutput = Shapes::StructureShape.new(name: 'CreateTargetGroupOutput')
    CreateTrustStoreInput = Shapes::StructureShape.new(name: 'CreateTrustStoreInput')
    CreateTrustStoreOutput = Shapes::StructureShape.new(name: 'CreateTrustStoreOutput')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
    CustomerOwnedIpv4Pool = Shapes::StringShape.new(name: 'CustomerOwnedIpv4Pool')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    DecreaseRequestsRemaining = Shapes::IntegerShape.new(name: 'DecreaseRequestsRemaining')
    Default = Shapes::BooleanShape.new(name: 'Default')
    DeleteAssociationSameAccountException = Shapes::StructureShape.new(name: 'DeleteAssociationSameAccountException', error: {"code" => "DeleteAssociationSameAccount", "httpStatusCode" => 400, "senderFault" => true})
    DeleteListenerInput = Shapes::StructureShape.new(name: 'DeleteListenerInput')
    DeleteListenerOutput = Shapes::StructureShape.new(name: 'DeleteListenerOutput')
    DeleteLoadBalancerInput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerInput')
    DeleteLoadBalancerOutput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerOutput')
    DeleteRuleInput = Shapes::StructureShape.new(name: 'DeleteRuleInput')
    DeleteRuleOutput = Shapes::StructureShape.new(name: 'DeleteRuleOutput')
    DeleteSharedTrustStoreAssociationInput = Shapes::StructureShape.new(name: 'DeleteSharedTrustStoreAssociationInput')
    DeleteSharedTrustStoreAssociationOutput = Shapes::StructureShape.new(name: 'DeleteSharedTrustStoreAssociationOutput')
    DeleteTargetGroupInput = Shapes::StructureShape.new(name: 'DeleteTargetGroupInput')
    DeleteTargetGroupOutput = Shapes::StructureShape.new(name: 'DeleteTargetGroupOutput')
    DeleteTrustStoreInput = Shapes::StructureShape.new(name: 'DeleteTrustStoreInput')
    DeleteTrustStoreOutput = Shapes::StructureShape.new(name: 'DeleteTrustStoreOutput')
    DeregisterTargetsInput = Shapes::StructureShape.new(name: 'DeregisterTargetsInput')
    DeregisterTargetsOutput = Shapes::StructureShape.new(name: 'DeregisterTargetsOutput')
    DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
    DescribeCapacityReservationInput = Shapes::StructureShape.new(name: 'DescribeCapacityReservationInput')
    DescribeCapacityReservationOutput = Shapes::StructureShape.new(name: 'DescribeCapacityReservationOutput')
    DescribeListenerAttributesInput = Shapes::StructureShape.new(name: 'DescribeListenerAttributesInput')
    DescribeListenerAttributesOutput = Shapes::StructureShape.new(name: 'DescribeListenerAttributesOutput')
    DescribeListenerCertificatesInput = Shapes::StructureShape.new(name: 'DescribeListenerCertificatesInput')
    DescribeListenerCertificatesOutput = Shapes::StructureShape.new(name: 'DescribeListenerCertificatesOutput')
    DescribeListenersInput = Shapes::StructureShape.new(name: 'DescribeListenersInput')
    DescribeListenersOutput = Shapes::StructureShape.new(name: 'DescribeListenersOutput')
    DescribeLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesInput')
    DescribeLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesOutput')
    DescribeLoadBalancersInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancersInput')
    DescribeLoadBalancersOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancersOutput')
    DescribeRulesInput = Shapes::StructureShape.new(name: 'DescribeRulesInput')
    DescribeRulesOutput = Shapes::StructureShape.new(name: 'DescribeRulesOutput')
    DescribeSSLPoliciesInput = Shapes::StructureShape.new(name: 'DescribeSSLPoliciesInput')
    DescribeSSLPoliciesOutput = Shapes::StructureShape.new(name: 'DescribeSSLPoliciesOutput')
    DescribeTagsInput = Shapes::StructureShape.new(name: 'DescribeTagsInput')
    DescribeTagsOutput = Shapes::StructureShape.new(name: 'DescribeTagsOutput')
    DescribeTargetGroupAttributesInput = Shapes::StructureShape.new(name: 'DescribeTargetGroupAttributesInput')
    DescribeTargetGroupAttributesOutput = Shapes::StructureShape.new(name: 'DescribeTargetGroupAttributesOutput')
    DescribeTargetGroupsInput = Shapes::StructureShape.new(name: 'DescribeTargetGroupsInput')
    DescribeTargetGroupsOutput = Shapes::StructureShape.new(name: 'DescribeTargetGroupsOutput')
    DescribeTargetHealthInput = Shapes::StructureShape.new(name: 'DescribeTargetHealthInput')
    DescribeTargetHealthInputIncludeEnum = Shapes::StringShape.new(name: 'DescribeTargetHealthInputIncludeEnum')
    DescribeTargetHealthOutput = Shapes::StructureShape.new(name: 'DescribeTargetHealthOutput')
    DescribeTrustStoreAssociationsInput = Shapes::StructureShape.new(name: 'DescribeTrustStoreAssociationsInput')
    DescribeTrustStoreAssociationsOutput = Shapes::StructureShape.new(name: 'DescribeTrustStoreAssociationsOutput')
    DescribeTrustStoreRevocation = Shapes::StructureShape.new(name: 'DescribeTrustStoreRevocation')
    DescribeTrustStoreRevocationResponse = Shapes::ListShape.new(name: 'DescribeTrustStoreRevocationResponse')
    DescribeTrustStoreRevocationsInput = Shapes::StructureShape.new(name: 'DescribeTrustStoreRevocationsInput')
    DescribeTrustStoreRevocationsOutput = Shapes::StructureShape.new(name: 'DescribeTrustStoreRevocationsOutput')
    DescribeTrustStoresInput = Shapes::StructureShape.new(name: 'DescribeTrustStoresInput')
    DescribeTrustStoresOutput = Shapes::StructureShape.new(name: 'DescribeTrustStoresOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DuplicateListenerException = Shapes::StructureShape.new(name: 'DuplicateListenerException', error: {"code" => "DuplicateListener", "httpStatusCode" => 400, "senderFault" => true})
    DuplicateLoadBalancerNameException = Shapes::StructureShape.new(name: 'DuplicateLoadBalancerNameException', error: {"code" => "DuplicateLoadBalancerName", "httpStatusCode" => 400, "senderFault" => true})
    DuplicateTagKeysException = Shapes::StructureShape.new(name: 'DuplicateTagKeysException', error: {"code" => "DuplicateTagKeys", "httpStatusCode" => 400, "senderFault" => true})
    DuplicateTargetGroupNameException = Shapes::StructureShape.new(name: 'DuplicateTargetGroupNameException', error: {"code" => "DuplicateTargetGroupName", "httpStatusCode" => 400, "senderFault" => true})
    DuplicateTrustStoreNameException = Shapes::StructureShape.new(name: 'DuplicateTrustStoreNameException', error: {"code" => "DuplicateTrustStoreName", "httpStatusCode" => 400, "senderFault" => true})
    EnablePrefixForIpv6SourceNatEnum = Shapes::StringShape.new(name: 'EnablePrefixForIpv6SourceNatEnum')
    EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = Shapes::StringShape.new(name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic')
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = Shapes::StringShape.new(name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum')
    FixedResponseActionConfig = Shapes::StructureShape.new(name: 'FixedResponseActionConfig')
    FixedResponseActionContentType = Shapes::StringShape.new(name: 'FixedResponseActionContentType')
    FixedResponseActionMessage = Shapes::StringShape.new(name: 'FixedResponseActionMessage')
    FixedResponseActionStatusCode = Shapes::StringShape.new(name: 'FixedResponseActionStatusCode')
    ForwardActionConfig = Shapes::StructureShape.new(name: 'ForwardActionConfig')
    GetResourcePolicyInput = Shapes::StructureShape.new(name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Shapes::StructureShape.new(name: 'GetResourcePolicyOutput')
    GetTrustStoreCaCertificatesBundleInput = Shapes::StructureShape.new(name: 'GetTrustStoreCaCertificatesBundleInput')
    GetTrustStoreCaCertificatesBundleOutput = Shapes::StructureShape.new(name: 'GetTrustStoreCaCertificatesBundleOutput')
    GetTrustStoreRevocationContentInput = Shapes::StructureShape.new(name: 'GetTrustStoreRevocationContentInput')
    GetTrustStoreRevocationContentOutput = Shapes::StructureShape.new(name: 'GetTrustStoreRevocationContentOutput')
    GrpcCode = Shapes::StringShape.new(name: 'GrpcCode')
    HealthCheckEnabled = Shapes::BooleanShape.new(name: 'HealthCheckEnabled')
    HealthCheckIntervalSeconds = Shapes::IntegerShape.new(name: 'HealthCheckIntervalSeconds')
    HealthCheckPort = Shapes::StringShape.new(name: 'HealthCheckPort')
    HealthCheckThresholdCount = Shapes::IntegerShape.new(name: 'HealthCheckThresholdCount')
    HealthCheckTimeoutSeconds = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutSeconds')
    HealthUnavailableException = Shapes::StructureShape.new(name: 'HealthUnavailableException', error: {"code" => "HealthUnavailable", "httpStatusCode" => 500})
    HostHeaderConditionConfig = Shapes::StructureShape.new(name: 'HostHeaderConditionConfig')
    HostHeaderRewriteConfig = Shapes::StructureShape.new(name: 'HostHeaderRewriteConfig')
    HttpCode = Shapes::StringShape.new(name: 'HttpCode')
    HttpHeaderConditionConfig = Shapes::StructureShape.new(name: 'HttpHeaderConditionConfig')
    HttpHeaderConditionName = Shapes::StringShape.new(name: 'HttpHeaderConditionName')
    HttpRequestMethodConditionConfig = Shapes::StructureShape.new(name: 'HttpRequestMethodConditionConfig')
    IPv6Address = Shapes::StringShape.new(name: 'IPv6Address')
    IgnoreClientCertificateExpiry = Shapes::BooleanShape.new(name: 'IgnoreClientCertificateExpiry')
    IncompatibleProtocolsException = Shapes::StructureShape.new(name: 'IncompatibleProtocolsException', error: {"code" => "IncompatibleProtocols", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientCapacityException = Shapes::StructureShape.new(name: 'InsufficientCapacityException', error: {"code" => "InsufficientCapacity", "httpStatusCode" => 500})
    InvalidCaCertificatesBundleException = Shapes::StructureShape.new(name: 'InvalidCaCertificatesBundleException', error: {"code" => "InvalidCaCertificatesBundle", "httpStatusCode" => 400, "senderFault" => true})
    InvalidConfigurationRequestException = Shapes::StructureShape.new(name: 'InvalidConfigurationRequestException', error: {"code" => "InvalidConfigurationRequest", "httpStatusCode" => 400, "senderFault" => true})
    InvalidLoadBalancerActionException = Shapes::StructureShape.new(name: 'InvalidLoadBalancerActionException', error: {"code" => "InvalidLoadBalancerAction", "httpStatusCode" => 400, "senderFault" => true})
    InvalidRevocationContentException = Shapes::StructureShape.new(name: 'InvalidRevocationContentException', error: {"code" => "InvalidRevocationContent", "httpStatusCode" => 400, "senderFault" => true})
    InvalidSchemeException = Shapes::StructureShape.new(name: 'InvalidSchemeException', error: {"code" => "InvalidScheme", "httpStatusCode" => 400, "senderFault" => true})
    InvalidSecurityGroupException = Shapes::StructureShape.new(name: 'InvalidSecurityGroupException', error: {"code" => "InvalidSecurityGroup", "httpStatusCode" => 400, "senderFault" => true})
    InvalidSubnetException = Shapes::StructureShape.new(name: 'InvalidSubnetException', error: {"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true})
    InvalidTargetException = Shapes::StructureShape.new(name: 'InvalidTargetException', error: {"code" => "InvalidTarget", "httpStatusCode" => 400, "senderFault" => true})
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    IpamPoolId = Shapes::StringShape.new(name: 'IpamPoolId')
    IpamPools = Shapes::StructureShape.new(name: 'IpamPools')
    IsDefault = Shapes::BooleanShape.new(name: 'IsDefault')
    JwtValidationActionAdditionalClaim = Shapes::StructureShape.new(name: 'JwtValidationActionAdditionalClaim')
    JwtValidationActionAdditionalClaimFormatEnum = Shapes::StringShape.new(name: 'JwtValidationActionAdditionalClaimFormatEnum')
    JwtValidationActionAdditionalClaimName = Shapes::StringShape.new(name: 'JwtValidationActionAdditionalClaimName')
    JwtValidationActionAdditionalClaimValue = Shapes::StringShape.new(name: 'JwtValidationActionAdditionalClaimValue')
    JwtValidationActionAdditionalClaimValues = Shapes::ListShape.new(name: 'JwtValidationActionAdditionalClaimValues')
    JwtValidationActionAdditionalClaims = Shapes::ListShape.new(name: 'JwtValidationActionAdditionalClaims')
    JwtValidationActionConfig = Shapes::StructureShape.new(name: 'JwtValidationActionConfig')
    JwtValidationActionIssuer = Shapes::StringShape.new(name: 'JwtValidationActionIssuer')
    JwtValidationActionJwksEndpoint = Shapes::StringShape.new(name: 'JwtValidationActionJwksEndpoint')
    LastModifiedTime = Shapes::TimestampShape.new(name: 'LastModifiedTime')
    Limit = Shapes::StructureShape.new(name: 'Limit')
    Limits = Shapes::ListShape.new(name: 'Limits')
    ListOfDescribeTargetHealthIncludeOptions = Shapes::ListShape.new(name: 'ListOfDescribeTargetHealthIncludeOptions')
    ListOfString = Shapes::ListShape.new(name: 'ListOfString')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    ListenerArn = Shapes::StringShape.new(name: 'ListenerArn')
    ListenerArns = Shapes::ListShape.new(name: 'ListenerArns')
    ListenerAttribute = Shapes::StructureShape.new(name: 'ListenerAttribute')
    ListenerAttributeKey = Shapes::StringShape.new(name: 'ListenerAttributeKey')
    ListenerAttributeValue = Shapes::StringShape.new(name: 'ListenerAttributeValue')
    ListenerAttributes = Shapes::ListShape.new(name: 'ListenerAttributes')
    ListenerNotFoundException = Shapes::StructureShape.new(name: 'ListenerNotFoundException', error: {"code" => "ListenerNotFound", "httpStatusCode" => 400, "senderFault" => true})
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancerAddress = Shapes::StructureShape.new(name: 'LoadBalancerAddress')
    LoadBalancerAddresses = Shapes::ListShape.new(name: 'LoadBalancerAddresses')
    LoadBalancerArn = Shapes::StringShape.new(name: 'LoadBalancerArn')
    LoadBalancerArns = Shapes::ListShape.new(name: 'LoadBalancerArns')
    LoadBalancerAttribute = Shapes::StructureShape.new(name: 'LoadBalancerAttribute')
    LoadBalancerAttributeKey = Shapes::StringShape.new(name: 'LoadBalancerAttributeKey')
    LoadBalancerAttributeValue = Shapes::StringShape.new(name: 'LoadBalancerAttributeValue')
    LoadBalancerAttributes = Shapes::ListShape.new(name: 'LoadBalancerAttributes')
    LoadBalancerName = Shapes::StringShape.new(name: 'LoadBalancerName')
    LoadBalancerNames = Shapes::ListShape.new(name: 'LoadBalancerNames')
    LoadBalancerNotFoundException = Shapes::StructureShape.new(name: 'LoadBalancerNotFoundException', error: {"code" => "LoadBalancerNotFound", "httpStatusCode" => 400, "senderFault" => true})
    LoadBalancerSchemeEnum = Shapes::StringShape.new(name: 'LoadBalancerSchemeEnum')
    LoadBalancerState = Shapes::StructureShape.new(name: 'LoadBalancerState')
    LoadBalancerStateEnum = Shapes::StringShape.new(name: 'LoadBalancerStateEnum')
    LoadBalancerTypeEnum = Shapes::StringShape.new(name: 'LoadBalancerTypeEnum')
    LoadBalancers = Shapes::ListShape.new(name: 'LoadBalancers')
    Location = Shapes::StringShape.new(name: 'Location')
    Marker = Shapes::StringShape.new(name: 'Marker')
    Matcher = Shapes::StructureShape.new(name: 'Matcher')
    Max = Shapes::StringShape.new(name: 'Max')
    MinimumLoadBalancerCapacity = Shapes::StructureShape.new(name: 'MinimumLoadBalancerCapacity')
    MitigationInEffectEnum = Shapes::StringShape.new(name: 'MitigationInEffectEnum')
    Mode = Shapes::StringShape.new(name: 'Mode')
    ModifyCapacityReservationInput = Shapes::StructureShape.new(name: 'ModifyCapacityReservationInput')
    ModifyCapacityReservationOutput = Shapes::StructureShape.new(name: 'ModifyCapacityReservationOutput')
    ModifyIpPoolsInput = Shapes::StructureShape.new(name: 'ModifyIpPoolsInput')
    ModifyIpPoolsOutput = Shapes::StructureShape.new(name: 'ModifyIpPoolsOutput')
    ModifyListenerAttributesInput = Shapes::StructureShape.new(name: 'ModifyListenerAttributesInput')
    ModifyListenerAttributesOutput = Shapes::StructureShape.new(name: 'ModifyListenerAttributesOutput')
    ModifyListenerInput = Shapes::StructureShape.new(name: 'ModifyListenerInput')
    ModifyListenerOutput = Shapes::StructureShape.new(name: 'ModifyListenerOutput')
    ModifyLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesInput')
    ModifyLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesOutput')
    ModifyRuleInput = Shapes::StructureShape.new(name: 'ModifyRuleInput')
    ModifyRuleOutput = Shapes::StructureShape.new(name: 'ModifyRuleOutput')
    ModifyTargetGroupAttributesInput = Shapes::StructureShape.new(name: 'ModifyTargetGroupAttributesInput')
    ModifyTargetGroupAttributesOutput = Shapes::StructureShape.new(name: 'ModifyTargetGroupAttributesOutput')
    ModifyTargetGroupInput = Shapes::StructureShape.new(name: 'ModifyTargetGroupInput')
    ModifyTargetGroupOutput = Shapes::StructureShape.new(name: 'ModifyTargetGroupOutput')
    ModifyTrustStoreInput = Shapes::StructureShape.new(name: 'ModifyTrustStoreInput')
    ModifyTrustStoreOutput = Shapes::StructureShape.new(name: 'ModifyTrustStoreOutput')
    MutualAuthenticationAttributes = Shapes::StructureShape.new(name: 'MutualAuthenticationAttributes')
    Name = Shapes::StringShape.new(name: 'Name')
    NumberOfCaCertificates = Shapes::IntegerShape.new(name: 'NumberOfCaCertificates')
    NumberOfRevokedEntries = Shapes::IntegerShape.new(name: 'NumberOfRevokedEntries')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException', error: {"code" => "OperationNotPermitted", "httpStatusCode" => 400, "senderFault" => true})
    OutpostId = Shapes::StringShape.new(name: 'OutpostId')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    Path = Shapes::StringShape.new(name: 'Path')
    PathPatternConditionConfig = Shapes::StructureShape.new(name: 'PathPatternConditionConfig')
    Policy = Shapes::StringShape.new(name: 'Policy')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PriorRequestNotCompleteException = Shapes::StructureShape.new(name: 'PriorRequestNotCompleteException', error: {"code" => "PriorRequestNotComplete", "httpStatusCode" => 429, "senderFault" => true})
    PriorityInUseException = Shapes::StructureShape.new(name: 'PriorityInUseException', error: {"code" => "PriorityInUse", "httpStatusCode" => 400, "senderFault" => true})
    PrivateIPv4Address = Shapes::StringShape.new(name: 'PrivateIPv4Address')
    ProtocolEnum = Shapes::StringShape.new(name: 'ProtocolEnum')
    ProtocolVersion = Shapes::StringShape.new(name: 'ProtocolVersion')
    QueryStringConditionConfig = Shapes::StructureShape.new(name: 'QueryStringConditionConfig')
    QueryStringKeyValuePair = Shapes::StructureShape.new(name: 'QueryStringKeyValuePair')
    QueryStringKeyValuePairList = Shapes::ListShape.new(name: 'QueryStringKeyValuePairList')
    QuicServerId = Shapes::StringShape.new(name: 'QuicServerId')
    RedirectActionConfig = Shapes::StructureShape.new(name: 'RedirectActionConfig')
    RedirectActionHost = Shapes::StringShape.new(name: 'RedirectActionHost')
    RedirectActionPath = Shapes::StringShape.new(name: 'RedirectActionPath')
    RedirectActionPort = Shapes::StringShape.new(name: 'RedirectActionPort')
    RedirectActionProtocol = Shapes::StringShape.new(name: 'RedirectActionProtocol')
    RedirectActionQuery = Shapes::StringShape.new(name: 'RedirectActionQuery')
    RedirectActionStatusCodeEnum = Shapes::StringShape.new(name: 'RedirectActionStatusCodeEnum')
    RegisterTargetsInput = Shapes::StructureShape.new(name: 'RegisterTargetsInput')
    RegisterTargetsOutput = Shapes::StructureShape.new(name: 'RegisterTargetsOutput')
    RemoveIpamPoolEnum = Shapes::StringShape.new(name: 'RemoveIpamPoolEnum')
    RemoveIpamPools = Shapes::ListShape.new(name: 'RemoveIpamPools')
    RemoveListenerCertificatesInput = Shapes::StructureShape.new(name: 'RemoveListenerCertificatesInput')
    RemoveListenerCertificatesOutput = Shapes::StructureShape.new(name: 'RemoveListenerCertificatesOutput')
    RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
    RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
    RemoveTrustStoreRevocationsInput = Shapes::StructureShape.new(name: 'RemoveTrustStoreRevocationsInput')
    RemoveTrustStoreRevocationsOutput = Shapes::StructureShape.new(name: 'RemoveTrustStoreRevocationsOutput')
    ResetCapacityReservation = Shapes::BooleanShape.new(name: 'ResetCapacityReservation')
    ResetTransforms = Shapes::BooleanShape.new(name: 'ResetTransforms')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException', error: {"code" => "ResourceInUse", "httpStatusCode" => 400, "senderFault" => true})
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException', error: {"code" => "ResourceNotFound", "httpStatusCode" => 400, "senderFault" => true})
    RevocationContent = Shapes::StructureShape.new(name: 'RevocationContent')
    RevocationContentNotFoundException = Shapes::StructureShape.new(name: 'RevocationContentNotFoundException', error: {"code" => "RevocationContentNotFound", "httpStatusCode" => 400, "senderFault" => true})
    RevocationContents = Shapes::ListShape.new(name: 'RevocationContents')
    RevocationId = Shapes::IntegerShape.new(name: 'RevocationId')
    RevocationIdNotFoundException = Shapes::StructureShape.new(name: 'RevocationIdNotFoundException', error: {"code" => "RevocationIdNotFound", "httpStatusCode" => 400, "senderFault" => true})
    RevocationIds = Shapes::ListShape.new(name: 'RevocationIds')
    RevocationType = Shapes::StringShape.new(name: 'RevocationType')
    RewriteConfig = Shapes::StructureShape.new(name: 'RewriteConfig')
    RewriteConfigList = Shapes::ListShape.new(name: 'RewriteConfigList')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleArns = Shapes::ListShape.new(name: 'RuleArns')
    RuleCondition = Shapes::StructureShape.new(name: 'RuleCondition')
    RuleConditionList = Shapes::ListShape.new(name: 'RuleConditionList')
    RuleNotFoundException = Shapes::StructureShape.new(name: 'RuleNotFoundException', error: {"code" => "RuleNotFound", "httpStatusCode" => 400, "senderFault" => true})
    RulePriority = Shapes::IntegerShape.new(name: 'RulePriority')
    RulePriorityList = Shapes::ListShape.new(name: 'RulePriorityList')
    RulePriorityPair = Shapes::StructureShape.new(name: 'RulePriorityPair')
    RuleTransform = Shapes::StructureShape.new(name: 'RuleTransform')
    RuleTransformList = Shapes::ListShape.new(name: 'RuleTransformList')
    Rules = Shapes::ListShape.new(name: 'Rules')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SSLPolicyNotFoundException = Shapes::StructureShape.new(name: 'SSLPolicyNotFoundException', error: {"code" => "SSLPolicyNotFound", "httpStatusCode" => 400, "senderFault" => true})
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SetIpAddressTypeInput = Shapes::StructureShape.new(name: 'SetIpAddressTypeInput')
    SetIpAddressTypeOutput = Shapes::StructureShape.new(name: 'SetIpAddressTypeOutput')
    SetRulePrioritiesInput = Shapes::StructureShape.new(name: 'SetRulePrioritiesInput')
    SetRulePrioritiesOutput = Shapes::StructureShape.new(name: 'SetRulePrioritiesOutput')
    SetSecurityGroupsInput = Shapes::StructureShape.new(name: 'SetSecurityGroupsInput')
    SetSecurityGroupsOutput = Shapes::StructureShape.new(name: 'SetSecurityGroupsOutput')
    SetSubnetsInput = Shapes::StructureShape.new(name: 'SetSubnetsInput')
    SetSubnetsOutput = Shapes::StructureShape.new(name: 'SetSubnetsOutput')
    SourceIpConditionConfig = Shapes::StructureShape.new(name: 'SourceIpConditionConfig')
    SourceNatIpv6Prefix = Shapes::StringShape.new(name: 'SourceNatIpv6Prefix')
    SourceNatIpv6Prefixes = Shapes::ListShape.new(name: 'SourceNatIpv6Prefixes')
    SslPolicies = Shapes::ListShape.new(name: 'SslPolicies')
    SslPolicy = Shapes::StructureShape.new(name: 'SslPolicy')
    SslPolicyName = Shapes::StringShape.new(name: 'SslPolicyName')
    SslPolicyNames = Shapes::ListShape.new(name: 'SslPolicyNames')
    SslProtocol = Shapes::StringShape.new(name: 'SslProtocol')
    SslProtocols = Shapes::ListShape.new(name: 'SslProtocols')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    String = Shapes::StringShape.new(name: 'String')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetMapping = Shapes::StructureShape.new(name: 'SubnetMapping')
    SubnetMappings = Shapes::ListShape.new(name: 'SubnetMappings')
    SubnetNotFoundException = Shapes::StructureShape.new(name: 'SubnetNotFoundException', error: {"code" => "SubnetNotFound", "httpStatusCode" => 400, "senderFault" => true})
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDescription = Shapes::StructureShape.new(name: 'TagDescription')
    TagDescriptions = Shapes::ListShape.new(name: 'TagDescriptions')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetAdministrativeOverrideReasonEnum = Shapes::StringShape.new(name: 'TargetAdministrativeOverrideReasonEnum')
    TargetAdministrativeOverrideStateEnum = Shapes::StringShape.new(name: 'TargetAdministrativeOverrideStateEnum')
    TargetControlPort = Shapes::IntegerShape.new(name: 'TargetControlPort')
    TargetDescription = Shapes::StructureShape.new(name: 'TargetDescription')
    TargetDescriptions = Shapes::ListShape.new(name: 'TargetDescriptions')
    TargetGroup = Shapes::StructureShape.new(name: 'TargetGroup')
    TargetGroupArn = Shapes::StringShape.new(name: 'TargetGroupArn')
    TargetGroupArns = Shapes::ListShape.new(name: 'TargetGroupArns')
    TargetGroupAssociationLimitException = Shapes::StructureShape.new(name: 'TargetGroupAssociationLimitException', error: {"code" => "TargetGroupAssociationLimit", "httpStatusCode" => 400, "senderFault" => true})
    TargetGroupAttribute = Shapes::StructureShape.new(name: 'TargetGroupAttribute')
    TargetGroupAttributeKey = Shapes::StringShape.new(name: 'TargetGroupAttributeKey')
    TargetGroupAttributeValue = Shapes::StringShape.new(name: 'TargetGroupAttributeValue')
    TargetGroupAttributes = Shapes::ListShape.new(name: 'TargetGroupAttributes')
    TargetGroupIpAddressTypeEnum = Shapes::StringShape.new(name: 'TargetGroupIpAddressTypeEnum')
    TargetGroupList = Shapes::ListShape.new(name: 'TargetGroupList')
    TargetGroupName = Shapes::StringShape.new(name: 'TargetGroupName')
    TargetGroupNames = Shapes::ListShape.new(name: 'TargetGroupNames')
    TargetGroupNotFoundException = Shapes::StructureShape.new(name: 'TargetGroupNotFoundException', error: {"code" => "TargetGroupNotFound", "httpStatusCode" => 400, "senderFault" => true})
    TargetGroupStickinessConfig = Shapes::StructureShape.new(name: 'TargetGroupStickinessConfig')
    TargetGroupStickinessDurationSeconds = Shapes::IntegerShape.new(name: 'TargetGroupStickinessDurationSeconds')
    TargetGroupStickinessEnabled = Shapes::BooleanShape.new(name: 'TargetGroupStickinessEnabled')
    TargetGroupTuple = Shapes::StructureShape.new(name: 'TargetGroupTuple')
    TargetGroupWeight = Shapes::IntegerShape.new(name: 'TargetGroupWeight')
    TargetGroups = Shapes::ListShape.new(name: 'TargetGroups')
    TargetHealth = Shapes::StructureShape.new(name: 'TargetHealth')
    TargetHealthDescription = Shapes::StructureShape.new(name: 'TargetHealthDescription')
    TargetHealthDescriptions = Shapes::ListShape.new(name: 'TargetHealthDescriptions')
    TargetHealthReasonEnum = Shapes::StringShape.new(name: 'TargetHealthReasonEnum')
    TargetHealthStateEnum = Shapes::StringShape.new(name: 'TargetHealthStateEnum')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetTypeEnum = Shapes::StringShape.new(name: 'TargetTypeEnum')
    TooManyActionsException = Shapes::StructureShape.new(name: 'TooManyActionsException', error: {"code" => "TooManyActions", "httpStatusCode" => 400, "senderFault" => true})
    TooManyCertificatesException = Shapes::StructureShape.new(name: 'TooManyCertificatesException', error: {"code" => "TooManyCertificates", "httpStatusCode" => 400, "senderFault" => true})
    TooManyListenersException = Shapes::StructureShape.new(name: 'TooManyListenersException', error: {"code" => "TooManyListeners", "httpStatusCode" => 400, "senderFault" => true})
    TooManyLoadBalancersException = Shapes::StructureShape.new(name: 'TooManyLoadBalancersException', error: {"code" => "TooManyLoadBalancers", "httpStatusCode" => 400, "senderFault" => true})
    TooManyRegistrationsForTargetIdException = Shapes::StructureShape.new(name: 'TooManyRegistrationsForTargetIdException', error: {"code" => "TooManyRegistrationsForTargetId", "httpStatusCode" => 400, "senderFault" => true})
    TooManyRulesException = Shapes::StructureShape.new(name: 'TooManyRulesException', error: {"code" => "TooManyRules", "httpStatusCode" => 400, "senderFault" => true})
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException', error: {"code" => "TooManyTags", "httpStatusCode" => 400, "senderFault" => true})
    TooManyTargetGroupsException = Shapes::StructureShape.new(name: 'TooManyTargetGroupsException', error: {"code" => "TooManyTargetGroups", "httpStatusCode" => 400, "senderFault" => true})
    TooManyTargetsException = Shapes::StructureShape.new(name: 'TooManyTargetsException', error: {"code" => "TooManyTargets", "httpStatusCode" => 400, "senderFault" => true})
    TooManyTrustStoreRevocationEntriesException = Shapes::StructureShape.new(name: 'TooManyTrustStoreRevocationEntriesException', error: {"code" => "TooManyTrustStoreRevocationEntries", "httpStatusCode" => 400, "senderFault" => true})
    TooManyTrustStoresException = Shapes::StructureShape.new(name: 'TooManyTrustStoresException', error: {"code" => "TooManyTrustStores", "httpStatusCode" => 400, "senderFault" => true})
    TooManyUniqueTargetGroupsPerLoadBalancerException = Shapes::StructureShape.new(name: 'TooManyUniqueTargetGroupsPerLoadBalancerException', error: {"code" => "TooManyUniqueTargetGroupsPerLoadBalancer", "httpStatusCode" => 400, "senderFault" => true})
    TotalRevokedEntries = Shapes::IntegerShape.new(name: 'TotalRevokedEntries')
    TransformTypeEnum = Shapes::StringShape.new(name: 'TransformTypeEnum')
    TrustStore = Shapes::StructureShape.new(name: 'TrustStore')
    TrustStoreArn = Shapes::StringShape.new(name: 'TrustStoreArn')
    TrustStoreArns = Shapes::ListShape.new(name: 'TrustStoreArns')
    TrustStoreAssociation = Shapes::StructureShape.new(name: 'TrustStoreAssociation')
    TrustStoreAssociationNotFoundException = Shapes::StructureShape.new(name: 'TrustStoreAssociationNotFoundException', error: {"code" => "AssociationNotFound", "httpStatusCode" => 400, "senderFault" => true})
    TrustStoreAssociationResourceArn = Shapes::StringShape.new(name: 'TrustStoreAssociationResourceArn')
    TrustStoreAssociationStatusEnum = Shapes::StringShape.new(name: 'TrustStoreAssociationStatusEnum')
    TrustStoreAssociations = Shapes::ListShape.new(name: 'TrustStoreAssociations')
    TrustStoreInUseException = Shapes::StructureShape.new(name: 'TrustStoreInUseException', error: {"code" => "TrustStoreInUse", "httpStatusCode" => 400, "senderFault" => true})
    TrustStoreName = Shapes::StringShape.new(name: 'TrustStoreName')
    TrustStoreNames = Shapes::ListShape.new(name: 'TrustStoreNames')
    TrustStoreNotFoundException = Shapes::StructureShape.new(name: 'TrustStoreNotFoundException', error: {"code" => "TrustStoreNotFound", "httpStatusCode" => 400, "senderFault" => true})
    TrustStoreNotReadyException = Shapes::StructureShape.new(name: 'TrustStoreNotReadyException', error: {"code" => "TrustStoreNotReady", "httpStatusCode" => 400, "senderFault" => true})
    TrustStoreRevocation = Shapes::StructureShape.new(name: 'TrustStoreRevocation')
    TrustStoreRevocations = Shapes::ListShape.new(name: 'TrustStoreRevocations')
    TrustStoreStatus = Shapes::StringShape.new(name: 'TrustStoreStatus')
    TrustStores = Shapes::ListShape.new(name: 'TrustStores')
    UnsupportedProtocolException = Shapes::StructureShape.new(name: 'UnsupportedProtocolException', error: {"code" => "UnsupportedProtocol", "httpStatusCode" => 400, "senderFault" => true})
    UrlRewriteConfig = Shapes::StructureShape.new(name: 'UrlRewriteConfig')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    ZonalCapacityReservationState = Shapes::StructureShape.new(name: 'ZonalCapacityReservationState')
    ZonalCapacityReservationStates = Shapes::ListShape.new(name: 'ZonalCapacityReservationStates')
    ZoneName = Shapes::StringShape.new(name: 'ZoneName')

    ALPNPolicyNotSupportedException.struct_class = Types::ALPNPolicyNotSupportedException

    Action.add_member(:type, Shapes::ShapeRef.new(shape: ActionTypeEnum, required: true, location_name: "Type"))
    Action.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "TargetGroupArn"))
    Action.add_member(:authenticate_oidc_config, Shapes::ShapeRef.new(shape: AuthenticateOidcActionConfig, location_name: "AuthenticateOidcConfig"))
    Action.add_member(:authenticate_cognito_config, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConfig, location_name: "AuthenticateCognitoConfig"))
    Action.add_member(:order, Shapes::ShapeRef.new(shape: ActionOrder, location_name: "Order"))
    Action.add_member(:redirect_config, Shapes::ShapeRef.new(shape: RedirectActionConfig, location_name: "RedirectConfig"))
    Action.add_member(:fixed_response_config, Shapes::ShapeRef.new(shape: FixedResponseActionConfig, location_name: "FixedResponseConfig"))
    Action.add_member(:forward_config, Shapes::ShapeRef.new(shape: ForwardActionConfig, location_name: "ForwardConfig"))
    Action.add_member(:jwt_validation_config, Shapes::ShapeRef.new(shape: JwtValidationActionConfig, location_name: "JwtValidationConfig"))
    Action.struct_class = Types::Action

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    AddListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    AddListenerCertificatesInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, required: true, location_name: "Certificates"))
    AddListenerCertificatesInput.struct_class = Types::AddListenerCertificatesInput

    AddListenerCertificatesOutput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    AddListenerCertificatesOutput.struct_class = Types::AddListenerCertificatesOutput

    AddTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.struct_class = Types::AddTagsOutput

    AddTrustStoreRevocationsInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    AddTrustStoreRevocationsInput.add_member(:revocation_contents, Shapes::ShapeRef.new(shape: RevocationContents, location_name: "RevocationContents"))
    AddTrustStoreRevocationsInput.struct_class = Types::AddTrustStoreRevocationsInput

    AddTrustStoreRevocationsOutput.add_member(:trust_store_revocations, Shapes::ShapeRef.new(shape: TrustStoreRevocations, location_name: "TrustStoreRevocations"))
    AddTrustStoreRevocationsOutput.struct_class = Types::AddTrustStoreRevocationsOutput

    AdministrativeOverride.add_member(:state, Shapes::ShapeRef.new(shape: TargetAdministrativeOverrideStateEnum, location_name: "State"))
    AdministrativeOverride.add_member(:reason, Shapes::ShapeRef.new(shape: TargetAdministrativeOverrideReasonEnum, location_name: "Reason"))
    AdministrativeOverride.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    AdministrativeOverride.struct_class = Types::AdministrativeOverride

    AllocationIdNotFoundException.struct_class = Types::AllocationIdNotFoundException

    AlpnPolicyName.member = Shapes::ShapeRef.new(shape: AlpnPolicyValue)

    AnomalyDetection.add_member(:result, Shapes::ShapeRef.new(shape: AnomalyResultEnum, location_name: "Result"))
    AnomalyDetection.add_member(:mitigation_in_effect, Shapes::ShapeRef.new(shape: MitigationInEffectEnum, location_name: "MitigationInEffect"))
    AnomalyDetection.struct_class = Types::AnomalyDetection

    AuthenticateCognitoActionAuthenticationRequestExtraParams.key = Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamName)
    AuthenticateCognitoActionAuthenticationRequestExtraParams.value = Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamValue)

    AuthenticateCognitoActionConfig.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolArn, required: true, location_name: "UserPoolArn"))
    AuthenticateCognitoActionConfig.add_member(:user_pool_client_id, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolClientId, required: true, location_name: "UserPoolClientId"))
    AuthenticateCognitoActionConfig.add_member(:user_pool_domain, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolDomain, required: true, location_name: "UserPoolDomain"))
    AuthenticateCognitoActionConfig.add_member(:session_cookie_name, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateCognitoActionConfig.add_member(:scope, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionScope, location_name: "Scope"))
    AuthenticateCognitoActionConfig.add_member(:session_timeout, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateCognitoActionConfig.add_member(:authentication_request_extra_params, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateCognitoActionConfig.add_member(:on_unauthenticated_request, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateCognitoActionConfig.struct_class = Types::AuthenticateCognitoActionConfig

    AuthenticateOidcActionAuthenticationRequestExtraParams.key = Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamName)
    AuthenticateOidcActionAuthenticationRequestExtraParams.value = Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamValue)

    AuthenticateOidcActionConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: AuthenticateOidcActionIssuer, required: true, location_name: "Issuer"))
    AuthenticateOidcActionConfig.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthorizationEndpoint, required: true, location_name: "AuthorizationEndpoint"))
    AuthenticateOidcActionConfig.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionTokenEndpoint, required: true, location_name: "TokenEndpoint"))
    AuthenticateOidcActionConfig.add_member(:user_info_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionUserInfoEndpoint, required: true, location_name: "UserInfoEndpoint"))
    AuthenticateOidcActionConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientId, required: true, location_name: "ClientId"))
    AuthenticateOidcActionConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientSecret, location_name: "ClientSecret"))
    AuthenticateOidcActionConfig.add_member(:session_cookie_name, Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateOidcActionConfig.add_member(:scope, Shapes::ShapeRef.new(shape: AuthenticateOidcActionScope, location_name: "Scope"))
    AuthenticateOidcActionConfig.add_member(:session_timeout, Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateOidcActionConfig.add_member(:authentication_request_extra_params, Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateOidcActionConfig.add_member(:on_unauthenticated_request, Shapes::ShapeRef.new(shape: AuthenticateOidcActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateOidcActionConfig.add_member(:use_existing_client_secret, Shapes::ShapeRef.new(shape: AuthenticateOidcActionUseExistingClientSecret, location_name: "UseExistingClientSecret"))
    AuthenticateOidcActionConfig.struct_class = Types::AuthenticateOidcActionConfig

    AvailabilityZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: ZoneName, location_name: "ZoneName"))
    AvailabilityZone.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    AvailabilityZone.add_member(:outpost_id, Shapes::ShapeRef.new(shape: OutpostId, location_name: "OutpostId"))
    AvailabilityZone.add_member(:load_balancer_addresses, Shapes::ShapeRef.new(shape: LoadBalancerAddresses, location_name: "LoadBalancerAddresses"))
    AvailabilityZone.add_member(:source_nat_ipv_6_prefixes, Shapes::ShapeRef.new(shape: SourceNatIpv6Prefixes, location_name: "SourceNatIpv6Prefixes"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneNotSupportedException.struct_class = Types::AvailabilityZoneNotSupportedException

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    CaCertificatesBundleNotFoundException.struct_class = Types::CaCertificatesBundleNotFoundException

    CapacityDecreaseRequestsLimitExceededException.struct_class = Types::CapacityDecreaseRequestsLimitExceededException

    CapacityReservationPendingException.struct_class = Types::CapacityReservationPendingException

    CapacityReservationStatus.add_member(:code, Shapes::ShapeRef.new(shape: CapacityReservationStateEnum, location_name: "Code"))
    CapacityReservationStatus.add_member(:reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "Reason"))
    CapacityReservationStatus.struct_class = Types::CapacityReservationStatus

    CapacityUnitsLimitExceededException.struct_class = Types::CapacityUnitsLimitExceededException

    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "CertificateArn"))
    Certificate.add_member(:is_default, Shapes::ShapeRef.new(shape: Default, location_name: "IsDefault"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate)

    CertificateNotFoundException.struct_class = Types::CertificateNotFoundException

    Cipher.add_member(:name, Shapes::ShapeRef.new(shape: CipherName, location_name: "Name"))
    Cipher.add_member(:priority, Shapes::ShapeRef.new(shape: CipherPriority, location_name: "Priority"))
    Cipher.struct_class = Types::Cipher

    Ciphers.member = Shapes::ShapeRef.new(shape: Cipher)

    CreateListenerInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    CreateListenerInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    CreateListenerInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    CreateListenerInput.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    CreateListenerInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    CreateListenerInput.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "DefaultActions"))
    CreateListenerInput.add_member(:alpn_policy, Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: "AlpnPolicy"))
    CreateListenerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateListenerInput.add_member(:mutual_authentication, Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    CreateListenerInput.struct_class = Types::CreateListenerInput

    CreateListenerOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    CreateListenerOutput.struct_class = Types::CreateListenerOutput

    CreateLoadBalancerInput.add_member(:name, Shapes::ShapeRef.new(shape: LoadBalancerName, required: true, location_name: "Name"))
    CreateLoadBalancerInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    CreateLoadBalancerInput.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    CreateLoadBalancerInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateLoadBalancerInput.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: "Scheme"))
    CreateLoadBalancerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLoadBalancerInput.add_member(:type, Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: "Type"))
    CreateLoadBalancerInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateLoadBalancerInput.add_member(:customer_owned_ipv_4_pool, Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
    CreateLoadBalancerInput.add_member(:enable_prefix_for_ipv_6_source_nat, Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    CreateLoadBalancerInput.add_member(:ipam_pools, Shapes::ShapeRef.new(shape: IpamPools, location_name: "IpamPools"))
    CreateLoadBalancerInput.struct_class = Types::CreateLoadBalancerInput

    CreateLoadBalancerOutput.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "LoadBalancers"))
    CreateLoadBalancerOutput.struct_class = Types::CreateLoadBalancerOutput

    CreateRuleInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    CreateRuleInput.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, required: true, location_name: "Conditions"))
    CreateRuleInput.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "Priority"))
    CreateRuleInput.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "Actions"))
    CreateRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleInput.add_member(:transforms, Shapes::ShapeRef.new(shape: RuleTransformList, location_name: "Transforms"))
    CreateRuleInput.struct_class = Types::CreateRuleInput

    CreateRuleOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    CreateRuleOutput.struct_class = Types::CreateRuleOutput

    CreateTargetGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, required: true, location_name: "Name"))
    CreateTargetGroupInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    CreateTargetGroupInput.add_member(:protocol_version, Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: "ProtocolVersion"))
    CreateTargetGroupInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    CreateTargetGroupInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    CreateTargetGroupInput.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    CreateTargetGroupInput.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateTargetGroupInput.add_member(:health_check_enabled, Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    CreateTargetGroupInput.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    CreateTargetGroupInput.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateTargetGroupInput.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    CreateTargetGroupInput.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    CreateTargetGroupInput.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: "TargetType"))
    CreateTargetGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTargetGroupInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: TargetGroupIpAddressTypeEnum, location_name: "IpAddressType"))
    CreateTargetGroupInput.add_member(:target_control_port, Shapes::ShapeRef.new(shape: TargetControlPort, location_name: "TargetControlPort"))
    CreateTargetGroupInput.struct_class = Types::CreateTargetGroupInput

    CreateTargetGroupOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    CreateTargetGroupOutput.struct_class = Types::CreateTargetGroupOutput

    CreateTrustStoreInput.add_member(:name, Shapes::ShapeRef.new(shape: TrustStoreName, required: true, location_name: "Name"))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "CaCertificatesBundleS3Bucket"))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "CaCertificatesBundleS3Key"))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "CaCertificatesBundleS3ObjectVersion"))
    CreateTrustStoreInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrustStoreInput.struct_class = Types::CreateTrustStoreInput

    CreateTrustStoreOutput.add_member(:trust_stores, Shapes::ShapeRef.new(shape: TrustStores, location_name: "TrustStores"))
    CreateTrustStoreOutput.struct_class = Types::CreateTrustStoreOutput

    DeleteAssociationSameAccountException.struct_class = Types::DeleteAssociationSameAccountException

    DeleteListenerInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    DeleteListenerInput.struct_class = Types::DeleteListenerInput

    DeleteListenerOutput.struct_class = Types::DeleteListenerOutput

    DeleteLoadBalancerInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    DeleteLoadBalancerInput.struct_class = Types::DeleteLoadBalancerInput

    DeleteLoadBalancerOutput.struct_class = Types::DeleteLoadBalancerOutput

    DeleteRuleInput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "RuleArn"))
    DeleteRuleInput.struct_class = Types::DeleteRuleInput

    DeleteRuleOutput.struct_class = Types::DeleteRuleOutput

    DeleteSharedTrustStoreAssociationInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    DeleteSharedTrustStoreAssociationInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteSharedTrustStoreAssociationInput.struct_class = Types::DeleteSharedTrustStoreAssociationInput

    DeleteSharedTrustStoreAssociationOutput.struct_class = Types::DeleteSharedTrustStoreAssociationOutput

    DeleteTargetGroupInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DeleteTargetGroupInput.struct_class = Types::DeleteTargetGroupInput

    DeleteTargetGroupOutput.struct_class = Types::DeleteTargetGroupOutput

    DeleteTrustStoreInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    DeleteTrustStoreInput.struct_class = Types::DeleteTrustStoreInput

    DeleteTrustStoreOutput.struct_class = Types::DeleteTrustStoreOutput

    DeregisterTargetsInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DeregisterTargetsInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, required: true, location_name: "Targets"))
    DeregisterTargetsInput.struct_class = Types::DeregisterTargetsInput

    DeregisterTargetsOutput.struct_class = Types::DeregisterTargetsOutput

    DescribeAccountLimitsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeAccountLimitsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeAccountLimitsInput.struct_class = Types::DescribeAccountLimitsInput

    DescribeAccountLimitsOutput.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    DescribeAccountLimitsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeAccountLimitsOutput.struct_class = Types::DescribeAccountLimitsOutput

    DescribeCapacityReservationInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    DescribeCapacityReservationInput.struct_class = Types::DescribeCapacityReservationInput

    DescribeCapacityReservationOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeCapacityReservationOutput.add_member(:decrease_requests_remaining, Shapes::ShapeRef.new(shape: DecreaseRequestsRemaining, location_name: "DecreaseRequestsRemaining"))
    DescribeCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    DescribeCapacityReservationOutput.add_member(:capacity_reservation_state, Shapes::ShapeRef.new(shape: ZonalCapacityReservationStates, location_name: "CapacityReservationState"))
    DescribeCapacityReservationOutput.struct_class = Types::DescribeCapacityReservationOutput

    DescribeListenerAttributesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    DescribeListenerAttributesInput.struct_class = Types::DescribeListenerAttributesInput

    DescribeListenerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: ListenerAttributes, location_name: "Attributes"))
    DescribeListenerAttributesOutput.struct_class = Types::DescribeListenerAttributesOutput

    DescribeListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    DescribeListenerCertificatesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeListenerCertificatesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeListenerCertificatesInput.struct_class = Types::DescribeListenerCertificatesInput

    DescribeListenerCertificatesOutput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    DescribeListenerCertificatesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeListenerCertificatesOutput.struct_class = Types::DescribeListenerCertificatesOutput

    DescribeListenersInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeListenersInput.add_member(:listener_arns, Shapes::ShapeRef.new(shape: ListenerArns, location_name: "ListenerArns"))
    DescribeListenersInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeListenersInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeListenersInput.struct_class = Types::DescribeListenersInput

    DescribeListenersOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    DescribeListenersOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeListenersOutput.struct_class = Types::DescribeListenersOutput

    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    DescribeLoadBalancerAttributesInput.struct_class = Types::DescribeLoadBalancerAttributesInput

    DescribeLoadBalancerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "Attributes"))
    DescribeLoadBalancerAttributesOutput.struct_class = Types::DescribeLoadBalancerAttributesOutput

    DescribeLoadBalancersInput.add_member(:load_balancer_arns, Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: "LoadBalancerArns"))
    DescribeLoadBalancersInput.add_member(:names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "Names"))
    DescribeLoadBalancersInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeLoadBalancersInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeLoadBalancersInput.struct_class = Types::DescribeLoadBalancersInput

    DescribeLoadBalancersOutput.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "LoadBalancers"))
    DescribeLoadBalancersOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeLoadBalancersOutput.struct_class = Types::DescribeLoadBalancersOutput

    DescribeRulesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "ListenerArn"))
    DescribeRulesInput.add_member(:rule_arns, Shapes::ShapeRef.new(shape: RuleArns, location_name: "RuleArns"))
    DescribeRulesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeRulesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeRulesInput.struct_class = Types::DescribeRulesInput

    DescribeRulesOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    DescribeRulesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeRulesOutput.struct_class = Types::DescribeRulesOutput

    DescribeSSLPoliciesInput.add_member(:names, Shapes::ShapeRef.new(shape: SslPolicyNames, location_name: "Names"))
    DescribeSSLPoliciesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeSSLPoliciesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeSSLPoliciesInput.add_member(:load_balancer_type, Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: "LoadBalancerType"))
    DescribeSSLPoliciesInput.struct_class = Types::DescribeSSLPoliciesInput

    DescribeSSLPoliciesOutput.add_member(:ssl_policies, Shapes::ShapeRef.new(shape: SslPolicies, location_name: "SslPolicies"))
    DescribeSSLPoliciesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeSSLPoliciesOutput.struct_class = Types::DescribeSSLPoliciesOutput

    DescribeTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    DescribeTagsInput.struct_class = Types::DescribeTagsInput

    DescribeTagsOutput.add_member(:tag_descriptions, Shapes::ShapeRef.new(shape: TagDescriptions, location_name: "TagDescriptions"))
    DescribeTagsOutput.struct_class = Types::DescribeTagsOutput

    DescribeTargetGroupAttributesInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DescribeTargetGroupAttributesInput.struct_class = Types::DescribeTargetGroupAttributesInput

    DescribeTargetGroupAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: "Attributes"))
    DescribeTargetGroupAttributesOutput.struct_class = Types::DescribeTargetGroupAttributesOutput

    DescribeTargetGroupsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeTargetGroupsInput.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupArns, location_name: "TargetGroupArns"))
    DescribeTargetGroupsInput.add_member(:names, Shapes::ShapeRef.new(shape: TargetGroupNames, location_name: "Names"))
    DescribeTargetGroupsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTargetGroupsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeTargetGroupsInput.struct_class = Types::DescribeTargetGroupsInput

    DescribeTargetGroupsOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    DescribeTargetGroupsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTargetGroupsOutput.struct_class = Types::DescribeTargetGroupsOutput

    DescribeTargetHealthInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DescribeTargetHealthInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, location_name: "Targets"))
    DescribeTargetHealthInput.add_member(:include, Shapes::ShapeRef.new(shape: ListOfDescribeTargetHealthIncludeOptions, location_name: "Include"))
    DescribeTargetHealthInput.struct_class = Types::DescribeTargetHealthInput

    DescribeTargetHealthOutput.add_member(:target_health_descriptions, Shapes::ShapeRef.new(shape: TargetHealthDescriptions, location_name: "TargetHealthDescriptions"))
    DescribeTargetHealthOutput.struct_class = Types::DescribeTargetHealthOutput

    DescribeTrustStoreAssociationsInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    DescribeTrustStoreAssociationsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTrustStoreAssociationsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeTrustStoreAssociationsInput.struct_class = Types::DescribeTrustStoreAssociationsInput

    DescribeTrustStoreAssociationsOutput.add_member(:trust_store_associations, Shapes::ShapeRef.new(shape: TrustStoreAssociations, location_name: "TrustStoreAssociations"))
    DescribeTrustStoreAssociationsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTrustStoreAssociationsOutput.struct_class = Types::DescribeTrustStoreAssociationsOutput

    DescribeTrustStoreRevocation.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: "TrustStoreArn"))
    DescribeTrustStoreRevocation.add_member(:revocation_id, Shapes::ShapeRef.new(shape: RevocationId, location_name: "RevocationId"))
    DescribeTrustStoreRevocation.add_member(:revocation_type, Shapes::ShapeRef.new(shape: RevocationType, location_name: "RevocationType"))
    DescribeTrustStoreRevocation.add_member(:number_of_revoked_entries, Shapes::ShapeRef.new(shape: NumberOfRevokedEntries, location_name: "NumberOfRevokedEntries"))
    DescribeTrustStoreRevocation.struct_class = Types::DescribeTrustStoreRevocation

    DescribeTrustStoreRevocationResponse.member = Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocation)

    DescribeTrustStoreRevocationsInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    DescribeTrustStoreRevocationsInput.add_member(:revocation_ids, Shapes::ShapeRef.new(shape: RevocationIds, location_name: "RevocationIds"))
    DescribeTrustStoreRevocationsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTrustStoreRevocationsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeTrustStoreRevocationsInput.struct_class = Types::DescribeTrustStoreRevocationsInput

    DescribeTrustStoreRevocationsOutput.add_member(:trust_store_revocations, Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationResponse, location_name: "TrustStoreRevocations"))
    DescribeTrustStoreRevocationsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTrustStoreRevocationsOutput.struct_class = Types::DescribeTrustStoreRevocationsOutput

    DescribeTrustStoresInput.add_member(:trust_store_arns, Shapes::ShapeRef.new(shape: TrustStoreArns, location_name: "TrustStoreArns"))
    DescribeTrustStoresInput.add_member(:names, Shapes::ShapeRef.new(shape: TrustStoreNames, location_name: "Names"))
    DescribeTrustStoresInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTrustStoresInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeTrustStoresInput.struct_class = Types::DescribeTrustStoresInput

    DescribeTrustStoresOutput.add_member(:trust_stores, Shapes::ShapeRef.new(shape: TrustStores, location_name: "TrustStores"))
    DescribeTrustStoresOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTrustStoresOutput.struct_class = Types::DescribeTrustStoresOutput

    DuplicateListenerException.struct_class = Types::DuplicateListenerException

    DuplicateLoadBalancerNameException.struct_class = Types::DuplicateLoadBalancerNameException

    DuplicateTagKeysException.struct_class = Types::DuplicateTagKeysException

    DuplicateTargetGroupNameException.struct_class = Types::DuplicateTargetGroupNameException

    DuplicateTrustStoreNameException.struct_class = Types::DuplicateTrustStoreNameException

    FixedResponseActionConfig.add_member(:message_body, Shapes::ShapeRef.new(shape: FixedResponseActionMessage, location_name: "MessageBody"))
    FixedResponseActionConfig.add_member(:status_code, Shapes::ShapeRef.new(shape: FixedResponseActionStatusCode, required: true, location_name: "StatusCode"))
    FixedResponseActionConfig.add_member(:content_type, Shapes::ShapeRef.new(shape: FixedResponseActionContentType, location_name: "ContentType"))
    FixedResponseActionConfig.struct_class = Types::FixedResponseActionConfig

    ForwardActionConfig.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroupList, location_name: "TargetGroups"))
    ForwardActionConfig.add_member(:target_group_stickiness_config, Shapes::ShapeRef.new(shape: TargetGroupStickinessConfig, location_name: "TargetGroupStickinessConfig"))
    ForwardActionConfig.struct_class = Types::ForwardActionConfig

    GetResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetResourcePolicyInput.struct_class = Types::GetResourcePolicyInput

    GetResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetResourcePolicyOutput.struct_class = Types::GetResourcePolicyOutput

    GetTrustStoreCaCertificatesBundleInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    GetTrustStoreCaCertificatesBundleInput.struct_class = Types::GetTrustStoreCaCertificatesBundleInput

    GetTrustStoreCaCertificatesBundleOutput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    GetTrustStoreCaCertificatesBundleOutput.struct_class = Types::GetTrustStoreCaCertificatesBundleOutput

    GetTrustStoreRevocationContentInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    GetTrustStoreRevocationContentInput.add_member(:revocation_id, Shapes::ShapeRef.new(shape: RevocationId, required: true, location_name: "RevocationId"))
    GetTrustStoreRevocationContentInput.struct_class = Types::GetTrustStoreRevocationContentInput

    GetTrustStoreRevocationContentOutput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    GetTrustStoreRevocationContentOutput.struct_class = Types::GetTrustStoreRevocationContentOutput

    HealthUnavailableException.struct_class = Types::HealthUnavailableException

    HostHeaderConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    HostHeaderConditionConfig.add_member(:regex_values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "RegexValues"))
    HostHeaderConditionConfig.struct_class = Types::HostHeaderConditionConfig

    HostHeaderRewriteConfig.add_member(:rewrites, Shapes::ShapeRef.new(shape: RewriteConfigList, location_name: "Rewrites"))
    HostHeaderRewriteConfig.struct_class = Types::HostHeaderRewriteConfig

    HttpHeaderConditionConfig.add_member(:http_header_name, Shapes::ShapeRef.new(shape: HttpHeaderConditionName, location_name: "HttpHeaderName"))
    HttpHeaderConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    HttpHeaderConditionConfig.add_member(:regex_values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "RegexValues"))
    HttpHeaderConditionConfig.struct_class = Types::HttpHeaderConditionConfig

    HttpRequestMethodConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    HttpRequestMethodConditionConfig.struct_class = Types::HttpRequestMethodConditionConfig

    IncompatibleProtocolsException.struct_class = Types::IncompatibleProtocolsException

    InsufficientCapacityException.struct_class = Types::InsufficientCapacityException

    InvalidCaCertificatesBundleException.struct_class = Types::InvalidCaCertificatesBundleException

    InvalidConfigurationRequestException.struct_class = Types::InvalidConfigurationRequestException

    InvalidLoadBalancerActionException.struct_class = Types::InvalidLoadBalancerActionException

    InvalidRevocationContentException.struct_class = Types::InvalidRevocationContentException

    InvalidSchemeException.struct_class = Types::InvalidSchemeException

    InvalidSecurityGroupException.struct_class = Types::InvalidSecurityGroupException

    InvalidSubnetException.struct_class = Types::InvalidSubnetException

    InvalidTargetException.struct_class = Types::InvalidTargetException

    IpamPools.add_member(:ipv_4_ipam_pool_id, Shapes::ShapeRef.new(shape: IpamPoolId, location_name: "Ipv4IpamPoolId"))
    IpamPools.struct_class = Types::IpamPools

    JwtValidationActionAdditionalClaim.add_member(:format, Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaimFormatEnum, required: true, location_name: "Format"))
    JwtValidationActionAdditionalClaim.add_member(:name, Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaimName, required: true, location_name: "Name"))
    JwtValidationActionAdditionalClaim.add_member(:values, Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaimValues, required: true, location_name: "Values"))
    JwtValidationActionAdditionalClaim.struct_class = Types::JwtValidationActionAdditionalClaim

    JwtValidationActionAdditionalClaimValues.member = Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaimValue)

    JwtValidationActionAdditionalClaims.member = Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaim)

    JwtValidationActionConfig.add_member(:jwks_endpoint, Shapes::ShapeRef.new(shape: JwtValidationActionJwksEndpoint, required: true, location_name: "JwksEndpoint"))
    JwtValidationActionConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: JwtValidationActionIssuer, required: true, location_name: "Issuer"))
    JwtValidationActionConfig.add_member(:additional_claims, Shapes::ShapeRef.new(shape: JwtValidationActionAdditionalClaims, location_name: "AdditionalClaims"))
    JwtValidationActionConfig.struct_class = Types::JwtValidationActionConfig

    Limit.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Limit.add_member(:max, Shapes::ShapeRef.new(shape: Max, location_name: "Max"))
    Limit.struct_class = Types::Limit

    Limits.member = Shapes::ShapeRef.new(shape: Limit)

    ListOfDescribeTargetHealthIncludeOptions.member = Shapes::ShapeRef.new(shape: DescribeTargetHealthInputIncludeEnum)

    ListOfString.member = Shapes::ShapeRef.new(shape: StringValue)

    Listener.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "ListenerArn"))
    Listener.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    Listener.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    Listener.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    Listener.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    Listener.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, location_name: "DefaultActions"))
    Listener.add_member(:alpn_policy, Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: "AlpnPolicy"))
    Listener.add_member(:mutual_authentication, Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    Listener.struct_class = Types::Listener

    ListenerArns.member = Shapes::ShapeRef.new(shape: ListenerArn)

    ListenerAttribute.add_member(:key, Shapes::ShapeRef.new(shape: ListenerAttributeKey, location_name: "Key"))
    ListenerAttribute.add_member(:value, Shapes::ShapeRef.new(shape: ListenerAttributeValue, location_name: "Value"))
    ListenerAttribute.struct_class = Types::ListenerAttribute

    ListenerAttributes.member = Shapes::ShapeRef.new(shape: ListenerAttribute)

    ListenerNotFoundException.struct_class = Types::ListenerNotFoundException

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    LoadBalancer.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    LoadBalancer.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    LoadBalancer.add_member(:canonical_hosted_zone_id, Shapes::ShapeRef.new(shape: CanonicalHostedZoneId, location_name: "CanonicalHostedZoneId"))
    LoadBalancer.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    LoadBalancer.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: LoadBalancerName, location_name: "LoadBalancerName"))
    LoadBalancer.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: "Scheme"))
    LoadBalancer.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    LoadBalancer.add_member(:state, Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: "State"))
    LoadBalancer.add_member(:type, Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: "Type"))
    LoadBalancer.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    LoadBalancer.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    LoadBalancer.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    LoadBalancer.add_member(:customer_owned_ipv_4_pool, Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
    LoadBalancer.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    LoadBalancer.add_member(:enable_prefix_for_ipv_6_source_nat, Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    LoadBalancer.add_member(:ipam_pools, Shapes::ShapeRef.new(shape: IpamPools, location_name: "IpamPools"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancerAddress.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    LoadBalancerAddress.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, location_name: "AllocationId"))
    LoadBalancerAddress.add_member(:private_i_pv_4_address, Shapes::ShapeRef.new(shape: PrivateIPv4Address, location_name: "PrivateIPv4Address"))
    LoadBalancerAddress.add_member(:i_pv_6_address, Shapes::ShapeRef.new(shape: IPv6Address, location_name: "IPv6Address"))
    LoadBalancerAddress.struct_class = Types::LoadBalancerAddress

    LoadBalancerAddresses.member = Shapes::ShapeRef.new(shape: LoadBalancerAddress)

    LoadBalancerArns.member = Shapes::ShapeRef.new(shape: LoadBalancerArn)

    LoadBalancerAttribute.add_member(:key, Shapes::ShapeRef.new(shape: LoadBalancerAttributeKey, location_name: "Key"))
    LoadBalancerAttribute.add_member(:value, Shapes::ShapeRef.new(shape: LoadBalancerAttributeValue, location_name: "Value"))
    LoadBalancerAttribute.struct_class = Types::LoadBalancerAttribute

    LoadBalancerAttributes.member = Shapes::ShapeRef.new(shape: LoadBalancerAttribute)

    LoadBalancerNames.member = Shapes::ShapeRef.new(shape: LoadBalancerName)

    LoadBalancerNotFoundException.struct_class = Types::LoadBalancerNotFoundException

    LoadBalancerState.add_member(:code, Shapes::ShapeRef.new(shape: LoadBalancerStateEnum, location_name: "Code"))
    LoadBalancerState.add_member(:reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "Reason"))
    LoadBalancerState.struct_class = Types::LoadBalancerState

    LoadBalancers.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    Matcher.add_member(:http_code, Shapes::ShapeRef.new(shape: HttpCode, location_name: "HttpCode"))
    Matcher.add_member(:grpc_code, Shapes::ShapeRef.new(shape: GrpcCode, location_name: "GrpcCode"))
    Matcher.struct_class = Types::Matcher

    MinimumLoadBalancerCapacity.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnits, location_name: "CapacityUnits"))
    MinimumLoadBalancerCapacity.struct_class = Types::MinimumLoadBalancerCapacity

    ModifyCapacityReservationInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    ModifyCapacityReservationInput.add_member(:minimum_load_balancer_capacity, Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    ModifyCapacityReservationInput.add_member(:reset_capacity_reservation, Shapes::ShapeRef.new(shape: ResetCapacityReservation, location_name: "ResetCapacityReservation"))
    ModifyCapacityReservationInput.struct_class = Types::ModifyCapacityReservationInput

    ModifyCapacityReservationOutput.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: "LastModifiedTime"))
    ModifyCapacityReservationOutput.add_member(:decrease_requests_remaining, Shapes::ShapeRef.new(shape: DecreaseRequestsRemaining, location_name: "DecreaseRequestsRemaining"))
    ModifyCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    ModifyCapacityReservationOutput.add_member(:capacity_reservation_state, Shapes::ShapeRef.new(shape: ZonalCapacityReservationStates, location_name: "CapacityReservationState"))
    ModifyCapacityReservationOutput.struct_class = Types::ModifyCapacityReservationOutput

    ModifyIpPoolsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    ModifyIpPoolsInput.add_member(:ipam_pools, Shapes::ShapeRef.new(shape: IpamPools, location_name: "IpamPools"))
    ModifyIpPoolsInput.add_member(:remove_ipam_pools, Shapes::ShapeRef.new(shape: RemoveIpamPools, location_name: "RemoveIpamPools"))
    ModifyIpPoolsInput.struct_class = Types::ModifyIpPoolsInput

    ModifyIpPoolsOutput.add_member(:ipam_pools, Shapes::ShapeRef.new(shape: IpamPools, location_name: "IpamPools"))
    ModifyIpPoolsOutput.struct_class = Types::ModifyIpPoolsOutput

    ModifyListenerAttributesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    ModifyListenerAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: ListenerAttributes, required: true, location_name: "Attributes"))
    ModifyListenerAttributesInput.struct_class = Types::ModifyListenerAttributesInput

    ModifyListenerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: ListenerAttributes, location_name: "Attributes"))
    ModifyListenerAttributesOutput.struct_class = Types::ModifyListenerAttributesOutput

    ModifyListenerInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    ModifyListenerInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    ModifyListenerInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    ModifyListenerInput.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    ModifyListenerInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    ModifyListenerInput.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, location_name: "DefaultActions"))
    ModifyListenerInput.add_member(:alpn_policy, Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: "AlpnPolicy"))
    ModifyListenerInput.add_member(:mutual_authentication, Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    ModifyListenerInput.struct_class = Types::ModifyListenerInput

    ModifyListenerOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    ModifyListenerOutput.struct_class = Types::ModifyListenerOutput

    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    ModifyLoadBalancerAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, required: true, location_name: "Attributes"))
    ModifyLoadBalancerAttributesInput.struct_class = Types::ModifyLoadBalancerAttributesInput

    ModifyLoadBalancerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "Attributes"))
    ModifyLoadBalancerAttributesOutput.struct_class = Types::ModifyLoadBalancerAttributesOutput

    ModifyRuleInput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "RuleArn"))
    ModifyRuleInput.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, location_name: "Conditions"))
    ModifyRuleInput.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "Actions"))
    ModifyRuleInput.add_member(:transforms, Shapes::ShapeRef.new(shape: RuleTransformList, location_name: "Transforms"))
    ModifyRuleInput.add_member(:reset_transforms, Shapes::ShapeRef.new(shape: ResetTransforms, location_name: "ResetTransforms"))
    ModifyRuleInput.struct_class = Types::ModifyRuleInput

    ModifyRuleOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    ModifyRuleOutput.struct_class = Types::ModifyRuleOutput

    ModifyTargetGroupAttributesInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    ModifyTargetGroupAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, required: true, location_name: "Attributes"))
    ModifyTargetGroupAttributesInput.struct_class = Types::ModifyTargetGroupAttributesInput

    ModifyTargetGroupAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: "Attributes"))
    ModifyTargetGroupAttributesOutput.struct_class = Types::ModifyTargetGroupAttributesOutput

    ModifyTargetGroupInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    ModifyTargetGroupInput.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    ModifyTargetGroupInput.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    ModifyTargetGroupInput.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    ModifyTargetGroupInput.add_member(:health_check_enabled, Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    ModifyTargetGroupInput.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    ModifyTargetGroupInput.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    ModifyTargetGroupInput.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    ModifyTargetGroupInput.struct_class = Types::ModifyTargetGroupInput

    ModifyTargetGroupOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    ModifyTargetGroupOutput.struct_class = Types::ModifyTargetGroupOutput

    ModifyTrustStoreInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "CaCertificatesBundleS3Bucket"))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "CaCertificatesBundleS3Key"))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "CaCertificatesBundleS3ObjectVersion"))
    ModifyTrustStoreInput.struct_class = Types::ModifyTrustStoreInput

    ModifyTrustStoreOutput.add_member(:trust_stores, Shapes::ShapeRef.new(shape: TrustStores, location_name: "TrustStores"))
    ModifyTrustStoreOutput.struct_class = Types::ModifyTrustStoreOutput

    MutualAuthenticationAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    MutualAuthenticationAttributes.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: "TrustStoreArn"))
    MutualAuthenticationAttributes.add_member(:ignore_client_certificate_expiry, Shapes::ShapeRef.new(shape: IgnoreClientCertificateExpiry, location_name: "IgnoreClientCertificateExpiry"))
    MutualAuthenticationAttributes.add_member(:trust_store_association_status, Shapes::ShapeRef.new(shape: TrustStoreAssociationStatusEnum, location_name: "TrustStoreAssociationStatus"))
    MutualAuthenticationAttributes.add_member(:advertise_trust_store_ca_names, Shapes::ShapeRef.new(shape: AdvertiseTrustStoreCaNamesEnum, location_name: "AdvertiseTrustStoreCaNames"))
    MutualAuthenticationAttributes.struct_class = Types::MutualAuthenticationAttributes

    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    PathPatternConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    PathPatternConditionConfig.add_member(:regex_values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "RegexValues"))
    PathPatternConditionConfig.struct_class = Types::PathPatternConditionConfig

    PriorRequestNotCompleteException.struct_class = Types::PriorRequestNotCompleteException

    PriorityInUseException.struct_class = Types::PriorityInUseException

    QueryStringConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: QueryStringKeyValuePairList, location_name: "Values"))
    QueryStringConditionConfig.struct_class = Types::QueryStringConditionConfig

    QueryStringKeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: StringValue, location_name: "Key"))
    QueryStringKeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: StringValue, location_name: "Value"))
    QueryStringKeyValuePair.struct_class = Types::QueryStringKeyValuePair

    QueryStringKeyValuePairList.member = Shapes::ShapeRef.new(shape: QueryStringKeyValuePair)

    RedirectActionConfig.add_member(:protocol, Shapes::ShapeRef.new(shape: RedirectActionProtocol, location_name: "Protocol"))
    RedirectActionConfig.add_member(:port, Shapes::ShapeRef.new(shape: RedirectActionPort, location_name: "Port"))
    RedirectActionConfig.add_member(:host, Shapes::ShapeRef.new(shape: RedirectActionHost, location_name: "Host"))
    RedirectActionConfig.add_member(:path, Shapes::ShapeRef.new(shape: RedirectActionPath, location_name: "Path"))
    RedirectActionConfig.add_member(:query, Shapes::ShapeRef.new(shape: RedirectActionQuery, location_name: "Query"))
    RedirectActionConfig.add_member(:status_code, Shapes::ShapeRef.new(shape: RedirectActionStatusCodeEnum, required: true, location_name: "StatusCode"))
    RedirectActionConfig.struct_class = Types::RedirectActionConfig

    RegisterTargetsInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    RegisterTargetsInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, required: true, location_name: "Targets"))
    RegisterTargetsInput.struct_class = Types::RegisterTargetsInput

    RegisterTargetsOutput.struct_class = Types::RegisterTargetsOutput

    RemoveIpamPools.member = Shapes::ShapeRef.new(shape: RemoveIpamPoolEnum)

    RemoveListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    RemoveListenerCertificatesInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, required: true, location_name: "Certificates"))
    RemoveListenerCertificatesInput.struct_class = Types::RemoveListenerCertificatesInput

    RemoveListenerCertificatesOutput.struct_class = Types::RemoveListenerCertificatesOutput

    RemoveTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    RemoveTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    RemoveTagsInput.struct_class = Types::RemoveTagsInput

    RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

    RemoveTrustStoreRevocationsInput.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, required: true, location_name: "TrustStoreArn"))
    RemoveTrustStoreRevocationsInput.add_member(:revocation_ids, Shapes::ShapeRef.new(shape: RevocationIds, required: true, location_name: "RevocationIds"))
    RemoveTrustStoreRevocationsInput.struct_class = Types::RemoveTrustStoreRevocationsInput

    RemoveTrustStoreRevocationsOutput.struct_class = Types::RemoveTrustStoreRevocationsOutput

    ResourceArns.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevocationContent.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    RevocationContent.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    RevocationContent.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    RevocationContent.add_member(:revocation_type, Shapes::ShapeRef.new(shape: RevocationType, location_name: "RevocationType"))
    RevocationContent.struct_class = Types::RevocationContent

    RevocationContentNotFoundException.struct_class = Types::RevocationContentNotFoundException

    RevocationContents.member = Shapes::ShapeRef.new(shape: RevocationContent)

    RevocationIdNotFoundException.struct_class = Types::RevocationIdNotFoundException

    RevocationIds.member = Shapes::ShapeRef.new(shape: RevocationId)

    RewriteConfig.add_member(:regex, Shapes::ShapeRef.new(shape: StringValue, required: true, location_name: "Regex"))
    RewriteConfig.add_member(:replace, Shapes::ShapeRef.new(shape: StringValue, required: true, location_name: "Replace"))
    RewriteConfig.struct_class = Types::RewriteConfig

    RewriteConfigList.member = Shapes::ShapeRef.new(shape: RewriteConfig)

    Rule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    Rule.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "Priority"))
    Rule.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, location_name: "Conditions"))
    Rule.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "Actions"))
    Rule.add_member(:is_default, Shapes::ShapeRef.new(shape: IsDefault, location_name: "IsDefault"))
    Rule.add_member(:transforms, Shapes::ShapeRef.new(shape: RuleTransformList, location_name: "Transforms"))
    Rule.struct_class = Types::Rule

    RuleArns.member = Shapes::ShapeRef.new(shape: RuleArn)

    RuleCondition.add_member(:field, Shapes::ShapeRef.new(shape: ConditionFieldName, location_name: "Field"))
    RuleCondition.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    RuleCondition.add_member(:host_header_config, Shapes::ShapeRef.new(shape: HostHeaderConditionConfig, location_name: "HostHeaderConfig"))
    RuleCondition.add_member(:path_pattern_config, Shapes::ShapeRef.new(shape: PathPatternConditionConfig, location_name: "PathPatternConfig"))
    RuleCondition.add_member(:http_header_config, Shapes::ShapeRef.new(shape: HttpHeaderConditionConfig, location_name: "HttpHeaderConfig"))
    RuleCondition.add_member(:query_string_config, Shapes::ShapeRef.new(shape: QueryStringConditionConfig, location_name: "QueryStringConfig"))
    RuleCondition.add_member(:http_request_method_config, Shapes::ShapeRef.new(shape: HttpRequestMethodConditionConfig, location_name: "HttpRequestMethodConfig"))
    RuleCondition.add_member(:source_ip_config, Shapes::ShapeRef.new(shape: SourceIpConditionConfig, location_name: "SourceIpConfig"))
    RuleCondition.add_member(:regex_values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "RegexValues"))
    RuleCondition.struct_class = Types::RuleCondition

    RuleConditionList.member = Shapes::ShapeRef.new(shape: RuleCondition)

    RuleNotFoundException.struct_class = Types::RuleNotFoundException

    RulePriorityList.member = Shapes::ShapeRef.new(shape: RulePriorityPair)

    RulePriorityPair.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    RulePriorityPair.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "Priority"))
    RulePriorityPair.struct_class = Types::RulePriorityPair

    RuleTransform.add_member(:type, Shapes::ShapeRef.new(shape: TransformTypeEnum, required: true, location_name: "Type"))
    RuleTransform.add_member(:host_header_rewrite_config, Shapes::ShapeRef.new(shape: HostHeaderRewriteConfig, location_name: "HostHeaderRewriteConfig"))
    RuleTransform.add_member(:url_rewrite_config, Shapes::ShapeRef.new(shape: UrlRewriteConfig, location_name: "UrlRewriteConfig"))
    RuleTransform.struct_class = Types::RuleTransform

    RuleTransformList.member = Shapes::ShapeRef.new(shape: RuleTransform)

    Rules.member = Shapes::ShapeRef.new(shape: Rule)

    SSLPolicyNotFoundException.struct_class = Types::SSLPolicyNotFoundException

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SetIpAddressTypeInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetIpAddressTypeInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "IpAddressType"))
    SetIpAddressTypeInput.struct_class = Types::SetIpAddressTypeInput

    SetIpAddressTypeOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    SetIpAddressTypeOutput.struct_class = Types::SetIpAddressTypeOutput

    SetRulePrioritiesInput.add_member(:rule_priorities, Shapes::ShapeRef.new(shape: RulePriorityList, required: true, location_name: "RulePriorities"))
    SetRulePrioritiesInput.struct_class = Types::SetRulePrioritiesInput

    SetRulePrioritiesOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    SetRulePrioritiesOutput.struct_class = Types::SetRulePrioritiesOutput

    SetSecurityGroupsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetSecurityGroupsInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "SecurityGroups"))
    SetSecurityGroupsInput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    SetSecurityGroupsInput.struct_class = Types::SetSecurityGroupsInput

    SetSecurityGroupsOutput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroupIds"))
    SetSecurityGroupsOutput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    SetSecurityGroupsOutput.struct_class = Types::SetSecurityGroupsOutput

    SetSubnetsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetSubnetsInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    SetSubnetsInput.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    SetSubnetsInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    SetSubnetsInput.add_member(:enable_prefix_for_ipv_6_source_nat, Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    SetSubnetsInput.struct_class = Types::SetSubnetsInput

    SetSubnetsOutput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    SetSubnetsOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    SetSubnetsOutput.add_member(:enable_prefix_for_ipv_6_source_nat, Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    SetSubnetsOutput.struct_class = Types::SetSubnetsOutput

    SourceIpConditionConfig.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    SourceIpConditionConfig.struct_class = Types::SourceIpConditionConfig

    SourceNatIpv6Prefixes.member = Shapes::ShapeRef.new(shape: SourceNatIpv6Prefix)

    SslPolicies.member = Shapes::ShapeRef.new(shape: SslPolicy)

    SslPolicy.add_member(:ssl_protocols, Shapes::ShapeRef.new(shape: SslProtocols, location_name: "SslProtocols"))
    SslPolicy.add_member(:ciphers, Shapes::ShapeRef.new(shape: Ciphers, location_name: "Ciphers"))
    SslPolicy.add_member(:name, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "Name"))
    SslPolicy.add_member(:supported_load_balancer_types, Shapes::ShapeRef.new(shape: ListOfString, location_name: "SupportedLoadBalancerTypes"))
    SslPolicy.struct_class = Types::SslPolicy

    SslPolicyNames.member = Shapes::ShapeRef.new(shape: SslPolicyName)

    SslProtocols.member = Shapes::ShapeRef.new(shape: SslProtocol)

    SubnetMapping.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    SubnetMapping.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, location_name: "AllocationId"))
    SubnetMapping.add_member(:private_i_pv_4_address, Shapes::ShapeRef.new(shape: PrivateIPv4Address, location_name: "PrivateIPv4Address"))
    SubnetMapping.add_member(:i_pv_6_address, Shapes::ShapeRef.new(shape: IPv6Address, location_name: "IPv6Address"))
    SubnetMapping.add_member(:source_nat_ipv_6_prefix, Shapes::ShapeRef.new(shape: SourceNatIpv6Prefix, location_name: "SourceNatIpv6Prefix"))
    SubnetMapping.struct_class = Types::SubnetMapping

    SubnetMappings.member = Shapes::ShapeRef.new(shape: SubnetMapping)

    SubnetNotFoundException.struct_class = Types::SubnetNotFoundException

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    TagDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagDescription.struct_class = Types::TagDescription

    TagDescriptions.member = Shapes::ShapeRef.new(shape: TagDescription)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetDescription.add_member(:id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "Id"))
    TargetDescription.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    TargetDescription.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ZoneName, location_name: "AvailabilityZone"))
    TargetDescription.add_member(:quic_server_id, Shapes::ShapeRef.new(shape: QuicServerId, location_name: "QuicServerId"))
    TargetDescription.struct_class = Types::TargetDescription

    TargetDescriptions.member = Shapes::ShapeRef.new(shape: TargetDescription)

    TargetGroup.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "TargetGroupArn"))
    TargetGroup.add_member(:target_group_name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "TargetGroupName"))
    TargetGroup.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    TargetGroup.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    TargetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    TargetGroup.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    TargetGroup.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetGroup.add_member(:health_check_enabled, Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    TargetGroup.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    TargetGroup.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    TargetGroup.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    TargetGroup.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    TargetGroup.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    TargetGroup.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    TargetGroup.add_member(:load_balancer_arns, Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: "LoadBalancerArns"))
    TargetGroup.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: "TargetType"))
    TargetGroup.add_member(:protocol_version, Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: "ProtocolVersion"))
    TargetGroup.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: TargetGroupIpAddressTypeEnum, location_name: "IpAddressType"))
    TargetGroup.add_member(:target_control_port, Shapes::ShapeRef.new(shape: TargetControlPort, location_name: "TargetControlPort"))
    TargetGroup.struct_class = Types::TargetGroup

    TargetGroupArns.member = Shapes::ShapeRef.new(shape: TargetGroupArn)

    TargetGroupAssociationLimitException.struct_class = Types::TargetGroupAssociationLimitException

    TargetGroupAttribute.add_member(:key, Shapes::ShapeRef.new(shape: TargetGroupAttributeKey, location_name: "Key"))
    TargetGroupAttribute.add_member(:value, Shapes::ShapeRef.new(shape: TargetGroupAttributeValue, location_name: "Value"))
    TargetGroupAttribute.struct_class = Types::TargetGroupAttribute

    TargetGroupAttributes.member = Shapes::ShapeRef.new(shape: TargetGroupAttribute)

    TargetGroupList.member = Shapes::ShapeRef.new(shape: TargetGroupTuple)

    TargetGroupNames.member = Shapes::ShapeRef.new(shape: TargetGroupName)

    TargetGroupNotFoundException.struct_class = Types::TargetGroupNotFoundException

    TargetGroupStickinessConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: TargetGroupStickinessEnabled, location_name: "Enabled"))
    TargetGroupStickinessConfig.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: TargetGroupStickinessDurationSeconds, location_name: "DurationSeconds"))
    TargetGroupStickinessConfig.struct_class = Types::TargetGroupStickinessConfig

    TargetGroupTuple.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "TargetGroupArn"))
    TargetGroupTuple.add_member(:weight, Shapes::ShapeRef.new(shape: TargetGroupWeight, location_name: "Weight"))
    TargetGroupTuple.struct_class = Types::TargetGroupTuple

    TargetGroups.member = Shapes::ShapeRef.new(shape: TargetGroup)

    TargetHealth.add_member(:state, Shapes::ShapeRef.new(shape: TargetHealthStateEnum, location_name: "State"))
    TargetHealth.add_member(:reason, Shapes::ShapeRef.new(shape: TargetHealthReasonEnum, location_name: "Reason"))
    TargetHealth.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TargetHealth.struct_class = Types::TargetHealth

    TargetHealthDescription.add_member(:target, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "Target"))
    TargetHealthDescription.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetHealthDescription.add_member(:target_health, Shapes::ShapeRef.new(shape: TargetHealth, location_name: "TargetHealth"))
    TargetHealthDescription.add_member(:anomaly_detection, Shapes::ShapeRef.new(shape: AnomalyDetection, location_name: "AnomalyDetection"))
    TargetHealthDescription.add_member(:administrative_override, Shapes::ShapeRef.new(shape: AdministrativeOverride, location_name: "AdministrativeOverride"))
    TargetHealthDescription.struct_class = Types::TargetHealthDescription

    TargetHealthDescriptions.member = Shapes::ShapeRef.new(shape: TargetHealthDescription)

    TooManyActionsException.struct_class = Types::TooManyActionsException

    TooManyCertificatesException.struct_class = Types::TooManyCertificatesException

    TooManyListenersException.struct_class = Types::TooManyListenersException

    TooManyLoadBalancersException.struct_class = Types::TooManyLoadBalancersException

    TooManyRegistrationsForTargetIdException.struct_class = Types::TooManyRegistrationsForTargetIdException

    TooManyRulesException.struct_class = Types::TooManyRulesException

    TooManyTagsException.struct_class = Types::TooManyTagsException

    TooManyTargetGroupsException.struct_class = Types::TooManyTargetGroupsException

    TooManyTargetsException.struct_class = Types::TooManyTargetsException

    TooManyTrustStoreRevocationEntriesException.struct_class = Types::TooManyTrustStoreRevocationEntriesException

    TooManyTrustStoresException.struct_class = Types::TooManyTrustStoresException

    TooManyUniqueTargetGroupsPerLoadBalancerException.struct_class = Types::TooManyUniqueTargetGroupsPerLoadBalancerException

    TrustStore.add_member(:name, Shapes::ShapeRef.new(shape: TrustStoreName, location_name: "Name"))
    TrustStore.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: "TrustStoreArn"))
    TrustStore.add_member(:status, Shapes::ShapeRef.new(shape: TrustStoreStatus, location_name: "Status"))
    TrustStore.add_member(:number_of_ca_certificates, Shapes::ShapeRef.new(shape: NumberOfCaCertificates, location_name: "NumberOfCaCertificates"))
    TrustStore.add_member(:total_revoked_entries, Shapes::ShapeRef.new(shape: TotalRevokedEntries, location_name: "TotalRevokedEntries"))
    TrustStore.struct_class = Types::TrustStore

    TrustStoreArns.member = Shapes::ShapeRef.new(shape: TrustStoreArn)

    TrustStoreAssociation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TrustStoreAssociationResourceArn, location_name: "ResourceArn"))
    TrustStoreAssociation.struct_class = Types::TrustStoreAssociation

    TrustStoreAssociationNotFoundException.struct_class = Types::TrustStoreAssociationNotFoundException

    TrustStoreAssociations.member = Shapes::ShapeRef.new(shape: TrustStoreAssociation)

    TrustStoreInUseException.struct_class = Types::TrustStoreInUseException

    TrustStoreNames.member = Shapes::ShapeRef.new(shape: TrustStoreName)

    TrustStoreNotFoundException.struct_class = Types::TrustStoreNotFoundException

    TrustStoreNotReadyException.struct_class = Types::TrustStoreNotReadyException

    TrustStoreRevocation.add_member(:trust_store_arn, Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: "TrustStoreArn"))
    TrustStoreRevocation.add_member(:revocation_id, Shapes::ShapeRef.new(shape: RevocationId, location_name: "RevocationId"))
    TrustStoreRevocation.add_member(:revocation_type, Shapes::ShapeRef.new(shape: RevocationType, location_name: "RevocationType"))
    TrustStoreRevocation.add_member(:number_of_revoked_entries, Shapes::ShapeRef.new(shape: NumberOfRevokedEntries, location_name: "NumberOfRevokedEntries"))
    TrustStoreRevocation.struct_class = Types::TrustStoreRevocation

    TrustStoreRevocations.member = Shapes::ShapeRef.new(shape: TrustStoreRevocation)

    TrustStores.member = Shapes::ShapeRef.new(shape: TrustStore)

    UnsupportedProtocolException.struct_class = Types::UnsupportedProtocolException

    UrlRewriteConfig.add_member(:rewrites, Shapes::ShapeRef.new(shape: RewriteConfigList, location_name: "Rewrites"))
    UrlRewriteConfig.struct_class = Types::UrlRewriteConfig

    ZonalCapacityReservationState.add_member(:state, Shapes::ShapeRef.new(shape: CapacityReservationStatus, location_name: "State"))
    ZonalCapacityReservationState.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ZoneName, location_name: "AvailabilityZone"))
    ZonalCapacityReservationState.add_member(:effective_capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsDouble, location_name: "EffectiveCapacityUnits"))
    ZonalCapacityReservationState.struct_class = Types::ZonalCapacityReservationState

    ZonalCapacityReservationStates.member = Shapes::ShapeRef.new(shape: ZonalCapacityReservationState)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-12-01"

      api.metadata = {
        "apiVersion" => "2015-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "elasticloadbalancing",
        "protocol" => "query",
        "protocols" => ["query"],
        "serviceAbbreviation" => "Elastic Load Balancing v2",
        "serviceFullName" => "Elastic Load Balancing",
        "serviceId" => "Elastic Load Balancing v2",
        "signatureVersion" => "v4",
        "uid" => "elasticloadbalancingv2-2015-12-01",
        "xmlNamespace" => "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/",
      }

      api.add_operation(:add_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: AddListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
      end)

      api.add_operation(:add_trust_store_revocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTrustStoreRevocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTrustStoreRevocationsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTrustStoreRevocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRevocationContentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustStoreRevocationEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: RevocationContentNotFoundException)
      end)

      api.add_operation(:create_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateListenerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateListenerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyListenersException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        o.errors << Shapes::ShapeRef.new(shape: ALPNPolicyNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotReadyException)
      end)

      api.add_operation(:create_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateLoadBalancerNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLoadBalancersException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchemeException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: PriorityInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRulesException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTargetGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrustStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustStoreInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTrustStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTrustStoreNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustStoresException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCaCertificatesBundleException)
        o.errors << Shapes::ShapeRef.new(shape: CaCertificatesBundleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
      end)

      api.add_operation(:delete_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteListenerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_shared_trust_store_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSharedTrustStoreAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSharedTrustStoreAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSharedTrustStoreAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteAssociationSameAccountException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreAssociationNotFoundException)
      end)

      api.add_operation(:delete_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrustStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrustStoreInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrustStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreInUseException)
      end)

      api.add_operation(:deregister_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
      end)

      api.add_operation(:describe_listener_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListenerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
      end)

      api.add_operation(:describe_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenersInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
      end)

      api.add_operation(:describe_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancersInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancersOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_ssl_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSSLPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSSLPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSSLPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
      end)

      api.add_operation(:describe_target_group_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetGroupAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
      end)

      api.add_operation(:describe_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_target_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetHealthInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetHealthOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: HealthUnavailableException)
      end)

      api.add_operation(:describe_trust_store_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustStoreAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustStoreAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustStoreAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_trust_store_revocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustStoreRevocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_trust_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustStores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustStoresInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustStoresOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_trust_store_ca_certificates_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustStoreCaCertificatesBundle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrustStoreCaCertificatesBundleInput)
        o.output = Shapes::ShapeRef.new(shape: GetTrustStoreCaCertificatesBundleOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
      end)

      api.add_operation(:get_trust_store_revocation_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustStoreRevocationContent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrustStoreRevocationContentInput)
        o.output = Shapes::ShapeRef.new(shape: GetTrustStoreRevocationContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
      end)

      api.add_operation(:modify_capacity_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCapacityReservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCapacityReservationInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyCapacityReservationOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityUnitsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityReservationPendingException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityDecreaseRequestsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotCompleteException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:modify_ip_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyIpPools"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyIpPoolsInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyIpPoolsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
      end)

      api.add_operation(:modify_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyListenerInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateListenerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyListenersException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        o.errors << Shapes::ShapeRef.new(shape: ALPNPolicyNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotReadyException)
      end)

      api.add_operation(:modify_listener_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyListenerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyListenerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyListenerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyRuleInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
      end)

      api.add_operation(:modify_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_target_group_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTargetGroupAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_trust_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTrustStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTrustStoreInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyTrustStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCaCertificatesBundleException)
        o.errors << Shapes::ShapeRef.new(shape: CaCertificatesBundleNotFoundException)
      end)

      api.add_operation(:register_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
      end)

      api.add_operation(:remove_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
      end)

      api.add_operation(:remove_trust_store_revocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTrustStoreRevocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTrustStoreRevocationsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTrustStoreRevocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
      end)

      api.add_operation(:set_ip_address_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetIpAddressType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetIpAddressTypeInput)
        o.output = Shapes::ShapeRef.new(shape: SetIpAddressTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
      end)

      api.add_operation(:set_rule_priorities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetRulePriorities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetRulePrioritiesInput)
        o.output = Shapes::ShapeRef.new(shape: SetRulePrioritiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PriorityInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:set_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSecurityGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSecurityGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: SetSecurityGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
      end)

      api.add_operation(:set_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSubnetsInput)
        o.output = Shapes::ShapeRef.new(shape: SetSubnetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
        o.errors << Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityReservationPendingException)
      end)
    end

  end
end
