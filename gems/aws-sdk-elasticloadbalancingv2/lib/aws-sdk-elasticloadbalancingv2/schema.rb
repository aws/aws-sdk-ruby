# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancingV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ALPNPolicyNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ALPNPolicyNotSupportedException', name: 'ALPNPolicyNotSupportedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ALPNPolicyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Action', name: 'Action')
    ActionOrder = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ActionOrder', name: 'ActionOrder', traits: {"smithy.api#range" => {"min" => 1, "max" => 50000}})
    ActionTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ActionTypeEnum', name: 'ActionTypeEnum')
    Actions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Actions', name: 'Actions')
    AddListenerCertificatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddListenerCertificatesInput', name: 'AddListenerCertificatesInput')
    AddListenerCertificatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddListenerCertificatesOutput', name: 'AddListenerCertificatesOutput')
    AddTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddTagsInput', name: 'AddTagsInput')
    AddTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddTagsOutput', name: 'AddTagsOutput')
    AddTrustStoreRevocationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocationsInput', name: 'AddTrustStoreRevocationsInput')
    AddTrustStoreRevocationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocationsOutput', name: 'AddTrustStoreRevocationsOutput')
    AdministrativeOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AdministrativeOverride', name: 'AdministrativeOverride')
    AdvertiseTrustStoreCaNamesEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AdvertiseTrustStoreCaNamesEnum', name: 'AdvertiseTrustStoreCaNamesEnum')
    AllocationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AllocationId', name: 'AllocationId')
    AllocationIdNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AllocationIdNotFoundException', name: 'AllocationIdNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "AllocationIdNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AlpnPolicyName = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AlpnPolicyName', name: 'AlpnPolicyName')
    AlpnPolicyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AlpnPolicyValue', name: 'AlpnPolicyValue')
    AnomalyDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AnomalyDetection', name: 'AnomalyDetection')
    AnomalyResultEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AnomalyResultEnum', name: 'AnomalyResultEnum')
    AuthenticateCognitoActionAuthenticationRequestExtraParams = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestExtraParams', name: 'AuthenticateCognitoActionAuthenticationRequestExtraParams')
    AuthenticateCognitoActionAuthenticationRequestParamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestParamName', name: 'AuthenticateCognitoActionAuthenticationRequestParamName')
    AuthenticateCognitoActionAuthenticationRequestParamValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestParamValue', name: 'AuthenticateCognitoActionAuthenticationRequestParamValue')
    AuthenticateCognitoActionConditionalBehaviorEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionConditionalBehaviorEnum', name: 'AuthenticateCognitoActionConditionalBehaviorEnum')
    AuthenticateCognitoActionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionConfig', name: 'AuthenticateCognitoActionConfig')
    AuthenticateCognitoActionScope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionScope', name: 'AuthenticateCognitoActionScope')
    AuthenticateCognitoActionSessionCookieName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionSessionCookieName', name: 'AuthenticateCognitoActionSessionCookieName')
    AuthenticateCognitoActionSessionTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionSessionTimeout', name: 'AuthenticateCognitoActionSessionTimeout')
    AuthenticateCognitoActionUserPoolArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolArn', name: 'AuthenticateCognitoActionUserPoolArn')
    AuthenticateCognitoActionUserPoolClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolClientId', name: 'AuthenticateCognitoActionUserPoolClientId')
    AuthenticateCognitoActionUserPoolDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolDomain', name: 'AuthenticateCognitoActionUserPoolDomain')
    AuthenticateOidcActionAuthenticationRequestExtraParams = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestExtraParams', name: 'AuthenticateOidcActionAuthenticationRequestExtraParams')
    AuthenticateOidcActionAuthenticationRequestParamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestParamName', name: 'AuthenticateOidcActionAuthenticationRequestParamName')
    AuthenticateOidcActionAuthenticationRequestParamValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestParamValue', name: 'AuthenticateOidcActionAuthenticationRequestParamValue')
    AuthenticateOidcActionAuthorizationEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthorizationEndpoint', name: 'AuthenticateOidcActionAuthorizationEndpoint')
    AuthenticateOidcActionClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionClientId', name: 'AuthenticateOidcActionClientId')
    AuthenticateOidcActionClientSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionClientSecret', name: 'AuthenticateOidcActionClientSecret')
    AuthenticateOidcActionConditionalBehaviorEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionConditionalBehaviorEnum', name: 'AuthenticateOidcActionConditionalBehaviorEnum')
    AuthenticateOidcActionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionConfig', name: 'AuthenticateOidcActionConfig')
    AuthenticateOidcActionIssuer = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionIssuer', name: 'AuthenticateOidcActionIssuer')
    AuthenticateOidcActionScope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionScope', name: 'AuthenticateOidcActionScope')
    AuthenticateOidcActionSessionCookieName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionSessionCookieName', name: 'AuthenticateOidcActionSessionCookieName')
    AuthenticateOidcActionSessionTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionSessionTimeout', name: 'AuthenticateOidcActionSessionTimeout')
    AuthenticateOidcActionTokenEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionTokenEndpoint', name: 'AuthenticateOidcActionTokenEndpoint')
    AuthenticateOidcActionUseExistingClientSecret = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionUseExistingClientSecret', name: 'AuthenticateOidcActionUseExistingClientSecret')
    AuthenticateOidcActionUserInfoEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionUserInfoEndpoint', name: 'AuthenticateOidcActionUserInfoEndpoint')
    AvailabilityZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AvailabilityZoneNotSupportedException', name: 'AvailabilityZoneNotSupportedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AvailabilityZoneNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AvailabilityZones = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#AvailabilityZones', name: 'AvailabilityZones')
    CaCertificatesBundleNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CaCertificatesBundleNotFoundException', name: 'CaCertificatesBundleNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "CaCertificatesBundleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CanonicalHostedZoneId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CanonicalHostedZoneId', name: 'CanonicalHostedZoneId')
    CapacityDecreaseRequestsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityDecreaseRequestsLimitExceededException', name: 'CapacityDecreaseRequestsLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityDecreaseRequestLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CapacityReservationPendingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityReservationPendingException', name: 'CapacityReservationPendingException', traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityReservationPending", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CapacityReservationStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityReservationStateEnum', name: 'CapacityReservationStateEnum')
    CapacityReservationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityReservationStatus', name: 'CapacityReservationStatus')
    CapacityUnits = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityUnits', name: 'CapacityUnits')
    CapacityUnitsDouble = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityUnitsDouble', name: 'CapacityUnitsDouble')
    CapacityUnitsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CapacityUnitsLimitExceededException', name: 'CapacityUnitsLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityUnitsLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Certificate', name: 'Certificate')
    CertificateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CertificateArn', name: 'CertificateArn')
    CertificateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CertificateList', name: 'CertificateList')
    CertificateNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CertificateNotFoundException', name: 'CertificateNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Cipher = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Cipher', name: 'Cipher')
    CipherName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CipherName', name: 'CipherName')
    CipherPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CipherPriority', name: 'CipherPriority')
    Ciphers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Ciphers', name: 'Ciphers')
    ConditionFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ConditionFieldName', name: 'ConditionFieldName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    CreateListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateListenerInput', name: 'CreateListenerInput')
    CreateListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateListenerOutput', name: 'CreateListenerOutput')
    CreateLoadBalancerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateLoadBalancerInput', name: 'CreateLoadBalancerInput')
    CreateLoadBalancerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateLoadBalancerOutput', name: 'CreateLoadBalancerOutput')
    CreateRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateRuleInput', name: 'CreateRuleInput')
    CreateRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateRuleOutput', name: 'CreateRuleOutput')
    CreateTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateTargetGroupInput', name: 'CreateTargetGroupInput')
    CreateTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateTargetGroupOutput', name: 'CreateTargetGroupOutput')
    CreateTrustStoreInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateTrustStoreInput', name: 'CreateTrustStoreInput')
    CreateTrustStoreOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreateTrustStoreOutput', name: 'CreateTrustStoreOutput')
    CreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CreatedTime', name: 'CreatedTime')
    CustomerOwnedIpv4Pool = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#CustomerOwnedIpv4Pool', name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(ipv4pool-coip-)[a-zA-Z0-9]+$"})
    DNSName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DNSName', name: 'DNSName')
    DecreaseRequestsRemaining = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DecreaseRequestsRemaining', name: 'DecreaseRequestsRemaining')
    Default = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Default', name: 'Default')
    DeleteAssociationSameAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteAssociationSameAccountException', name: 'DeleteAssociationSameAccountException', traits: {"aws.protocols#awsQueryError" => {"code" => "DeleteAssociationSameAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteListenerInput', name: 'DeleteListenerInput')
    DeleteListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteListenerOutput', name: 'DeleteListenerOutput')
    DeleteLoadBalancerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancerInput', name: 'DeleteLoadBalancerInput')
    DeleteLoadBalancerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancerOutput', name: 'DeleteLoadBalancerOutput')
    DeleteRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteRuleInput', name: 'DeleteRuleInput')
    DeleteRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteRuleOutput', name: 'DeleteRuleOutput')
    DeleteSharedTrustStoreAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociationInput', name: 'DeleteSharedTrustStoreAssociationInput')
    DeleteSharedTrustStoreAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociationOutput', name: 'DeleteSharedTrustStoreAssociationOutput')
    DeleteTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteTargetGroupInput', name: 'DeleteTargetGroupInput')
    DeleteTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteTargetGroupOutput', name: 'DeleteTargetGroupOutput')
    DeleteTrustStoreInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteTrustStoreInput', name: 'DeleteTrustStoreInput')
    DeleteTrustStoreOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeleteTrustStoreOutput', name: 'DeleteTrustStoreOutput')
    DeregisterTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeregisterTargetsInput', name: 'DeregisterTargetsInput')
    DeregisterTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DeregisterTargetsOutput', name: 'DeregisterTargetsOutput')
    DescribeAccountLimitsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeAccountLimitsInput', name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeAccountLimitsOutput', name: 'DescribeAccountLimitsOutput')
    DescribeCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservationInput', name: 'DescribeCapacityReservationInput')
    DescribeCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservationOutput', name: 'DescribeCapacityReservationOutput')
    DescribeListenerAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributesInput', name: 'DescribeListenerAttributesInput')
    DescribeListenerAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributesOutput', name: 'DescribeListenerAttributesOutput')
    DescribeListenerCertificatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificatesInput', name: 'DescribeListenerCertificatesInput')
    DescribeListenerCertificatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificatesOutput', name: 'DescribeListenerCertificatesOutput')
    DescribeListenersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenersInput', name: 'DescribeListenersInput')
    DescribeListenersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeListenersOutput', name: 'DescribeListenersOutput')
    DescribeLoadBalancerAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributesInput', name: 'DescribeLoadBalancerAttributesInput')
    DescribeLoadBalancerAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributesOutput', name: 'DescribeLoadBalancerAttributesOutput')
    DescribeLoadBalancersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancersInput', name: 'DescribeLoadBalancersInput')
    DescribeLoadBalancersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancersOutput', name: 'DescribeLoadBalancersOutput')
    DescribeRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeRulesInput', name: 'DescribeRulesInput')
    DescribeRulesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeRulesOutput', name: 'DescribeRulesOutput')
    DescribeSSLPoliciesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeSSLPoliciesInput', name: 'DescribeSSLPoliciesInput')
    DescribeSSLPoliciesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeSSLPoliciesOutput', name: 'DescribeSSLPoliciesOutput')
    DescribeTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTagsInput', name: 'DescribeTagsInput')
    DescribeTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTagsOutput', name: 'DescribeTagsOutput')
    DescribeTargetGroupAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributesInput', name: 'DescribeTargetGroupAttributesInput')
    DescribeTargetGroupAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributesOutput', name: 'DescribeTargetGroupAttributesOutput')
    DescribeTargetGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupsInput', name: 'DescribeTargetGroupsInput')
    DescribeTargetGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupsOutput', name: 'DescribeTargetGroupsOutput')
    DescribeTargetHealthInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthInput', name: 'DescribeTargetHealthInput')
    DescribeTargetHealthInputIncludeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthInputIncludeEnum', name: 'DescribeTargetHealthInputIncludeEnum')
    DescribeTargetHealthOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthOutput', name: 'DescribeTargetHealthOutput')
    DescribeTrustStoreAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociationsInput', name: 'DescribeTrustStoreAssociationsInput')
    DescribeTrustStoreAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociationsOutput', name: 'DescribeTrustStoreAssociationsOutput')
    DescribeTrustStoreRevocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocation', name: 'DescribeTrustStoreRevocation')
    DescribeTrustStoreRevocationResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationResponse', name: 'DescribeTrustStoreRevocationResponse')
    DescribeTrustStoreRevocationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationsInput', name: 'DescribeTrustStoreRevocationsInput')
    DescribeTrustStoreRevocationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationsOutput', name: 'DescribeTrustStoreRevocationsOutput')
    DescribeTrustStoresInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoresInput', name: 'DescribeTrustStoresInput')
    DescribeTrustStoresOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DescribeTrustStoresOutput', name: 'DescribeTrustStoresOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Description', name: 'Description')
    DuplicateListenerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DuplicateListenerException', name: 'DuplicateListenerException', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateListener", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateLoadBalancerNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DuplicateLoadBalancerNameException', name: 'DuplicateLoadBalancerNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateLoadBalancerName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTagKeysException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DuplicateTagKeysException', name: 'DuplicateTagKeysException', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTagKeys", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTargetGroupNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DuplicateTargetGroupNameException', name: 'DuplicateTargetGroupNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTargetGroupName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTrustStoreNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#DuplicateTrustStoreNameException', name: 'DuplicateTrustStoreNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTrustStoreName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EnablePrefixForIpv6SourceNatEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#EnablePrefixForIpv6SourceNatEnum', name: 'EnablePrefixForIpv6SourceNatEnum')
    EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic', name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic')
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum', name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum')
    ErrorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ErrorDescription', name: 'ErrorDescription')
    FixedResponseActionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#FixedResponseActionConfig', name: 'FixedResponseActionConfig')
    FixedResponseActionContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#FixedResponseActionContentType', name: 'FixedResponseActionContentType', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    FixedResponseActionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#FixedResponseActionMessage', name: 'FixedResponseActionMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FixedResponseActionStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#FixedResponseActionStatusCode', name: 'FixedResponseActionStatusCode', traits: {"smithy.api#pattern" => "^(2|4|5)\\d\\d$"})
    ForwardActionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ForwardActionConfig', name: 'ForwardActionConfig')
    GetResourcePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetResourcePolicyInput', name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetResourcePolicyOutput', name: 'GetResourcePolicyOutput')
    GetTrustStoreCaCertificatesBundleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundleInput', name: 'GetTrustStoreCaCertificatesBundleInput')
    GetTrustStoreCaCertificatesBundleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundleOutput', name: 'GetTrustStoreCaCertificatesBundleOutput')
    GetTrustStoreRevocationContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContentInput', name: 'GetTrustStoreRevocationContentInput')
    GetTrustStoreRevocationContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContentOutput', name: 'GetTrustStoreRevocationContentOutput')
    GrpcCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#GrpcCode', name: 'GrpcCode')
    HealthCheckEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthCheckEnabled', name: 'HealthCheckEnabled')
    HealthCheckIntervalSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthCheckIntervalSeconds', name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 300}})
    HealthCheckPort = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthCheckPort', name: 'HealthCheckPort')
    HealthCheckThresholdCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthCheckThresholdCount', name: 'HealthCheckThresholdCount', traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    HealthCheckTimeoutSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthCheckTimeoutSeconds', name: 'HealthCheckTimeoutSeconds', traits: {"smithy.api#range" => {"min" => 2, "max" => 120}})
    HealthUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HealthUnavailableException', name: 'HealthUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "HealthUnavailable", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    HostHeaderConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HostHeaderConditionConfig', name: 'HostHeaderConditionConfig')
    HttpCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HttpCode', name: 'HttpCode')
    HttpHeaderConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HttpHeaderConditionConfig', name: 'HttpHeaderConditionConfig')
    HttpHeaderConditionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HttpHeaderConditionName', name: 'HttpHeaderConditionName')
    HttpRequestMethodConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#HttpRequestMethodConditionConfig', name: 'HttpRequestMethodConditionConfig')
    IPv6Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IPv6Address', name: 'IPv6Address')
    IgnoreClientCertificateExpiry = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IgnoreClientCertificateExpiry', name: 'IgnoreClientCertificateExpiry')
    IncompatibleProtocolsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IncompatibleProtocolsException', name: 'IncompatibleProtocolsException', traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatibleProtocols", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientCapacityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InsufficientCapacityException', name: 'InsufficientCapacityException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientCapacity", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidCaCertificatesBundleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidCaCertificatesBundleException', name: 'InvalidCaCertificatesBundleException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCaCertificatesBundle", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidConfigurationRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidConfigurationRequestException', name: 'InvalidConfigurationRequestException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfigurationRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLoadBalancerActionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidLoadBalancerActionException', name: 'InvalidLoadBalancerActionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLoadBalancerAction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRevocationContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidRevocationContentException', name: 'InvalidRevocationContentException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRevocationContent", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSchemeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidSchemeException', name: 'InvalidSchemeException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheme", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSecurityGroupException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidSecurityGroupException', name: 'InvalidSecurityGroupException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidSubnetException', name: 'InvalidSubnetException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTargetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#InvalidTargetException', name: 'InvalidTargetException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTarget", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IpAddress', name: 'IpAddress')
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IpAddressType', name: 'IpAddressType')
    IpamPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IpamPoolId', name: 'IpamPoolId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(ipam-pool-)[a-zA-Z0-9]+$"})
    IpamPools = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IpamPools', name: 'IpamPools')
    IsDefault = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#IsDefault', name: 'IsDefault')
    LastModifiedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LastModifiedTime', name: 'LastModifiedTime')
    Limit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Limit', name: 'Limit')
    Limits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Limits', name: 'Limits')
    ListOfDescribeTargetHealthIncludeOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListOfDescribeTargetHealthIncludeOptions', name: 'ListOfDescribeTargetHealthIncludeOptions')
    ListOfString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListOfString', name: 'ListOfString')
    Listener = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Listener', name: 'Listener')
    ListenerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerArn', name: 'ListenerArn')
    ListenerArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerArns', name: 'ListenerArns')
    ListenerAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerAttribute', name: 'ListenerAttribute')
    ListenerAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerAttributeKey', name: 'ListenerAttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    ListenerAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerAttributeValue', name: 'ListenerAttributeValue')
    ListenerAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerAttributes', name: 'ListenerAttributes')
    ListenerNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ListenerNotFoundException', name: 'ListenerNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ListenerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Listeners = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Listeners', name: 'Listeners')
    LoadBalancer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancer', name: 'LoadBalancer')
    LoadBalancerAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAddress', name: 'LoadBalancerAddress')
    LoadBalancerAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAddresses', name: 'LoadBalancerAddresses')
    LoadBalancerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerArn', name: 'LoadBalancerArn')
    LoadBalancerArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerArns', name: 'LoadBalancerArns')
    LoadBalancerAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAttribute', name: 'LoadBalancerAttribute')
    LoadBalancerAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributeKey', name: 'LoadBalancerAttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    LoadBalancerAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributeValue', name: 'LoadBalancerAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    LoadBalancerAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributes', name: 'LoadBalancerAttributes', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LoadBalancerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerName', name: 'LoadBalancerName')
    LoadBalancerNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerNames', name: 'LoadBalancerNames')
    LoadBalancerNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerNotFoundException', name: 'LoadBalancerNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "LoadBalancerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoadBalancerSchemeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerSchemeEnum', name: 'LoadBalancerSchemeEnum')
    LoadBalancerState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerState', name: 'LoadBalancerState')
    LoadBalancerStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerStateEnum', name: 'LoadBalancerStateEnum')
    LoadBalancerTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancerTypeEnum', name: 'LoadBalancerTypeEnum')
    LoadBalancers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#LoadBalancers', name: 'LoadBalancers')
    Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Location', name: 'Location')
    Marker = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Marker', name: 'Marker')
    Matcher = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Matcher', name: 'Matcher')
    Max = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Max', name: 'Max')
    MinimumLoadBalancerCapacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#MinimumLoadBalancerCapacity', name: 'MinimumLoadBalancerCapacity')
    MitigationInEffectEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#MitigationInEffectEnum', name: 'MitigationInEffectEnum')
    Mode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Mode', name: 'Mode')
    ModifyCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservationInput', name: 'ModifyCapacityReservationInput')
    ModifyCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservationOutput', name: 'ModifyCapacityReservationOutput')
    ModifyIpPoolsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyIpPoolsInput', name: 'ModifyIpPoolsInput')
    ModifyIpPoolsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyIpPoolsOutput', name: 'ModifyIpPoolsOutput')
    ModifyListenerAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributesInput', name: 'ModifyListenerAttributesInput')
    ModifyListenerAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributesOutput', name: 'ModifyListenerAttributesOutput')
    ModifyListenerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyListenerInput', name: 'ModifyListenerInput')
    ModifyListenerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyListenerOutput', name: 'ModifyListenerOutput')
    ModifyLoadBalancerAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributesInput', name: 'ModifyLoadBalancerAttributesInput')
    ModifyLoadBalancerAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributesOutput', name: 'ModifyLoadBalancerAttributesOutput')
    ModifyRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyRuleInput', name: 'ModifyRuleInput')
    ModifyRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyRuleOutput', name: 'ModifyRuleOutput')
    ModifyTargetGroupAttributesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributesInput', name: 'ModifyTargetGroupAttributesInput')
    ModifyTargetGroupAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributesOutput', name: 'ModifyTargetGroupAttributesOutput')
    ModifyTargetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupInput', name: 'ModifyTargetGroupInput')
    ModifyTargetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupOutput', name: 'ModifyTargetGroupOutput')
    ModifyTrustStoreInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTrustStoreInput', name: 'ModifyTrustStoreInput')
    ModifyTrustStoreOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ModifyTrustStoreOutput', name: 'ModifyTrustStoreOutput')
    MutualAuthenticationAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#MutualAuthenticationAttributes', name: 'MutualAuthenticationAttributes')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Name', name: 'Name')
    NumberOfCaCertificates = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#NumberOfCaCertificates', name: 'NumberOfCaCertificates')
    NumberOfRevokedEntries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#NumberOfRevokedEntries', name: 'NumberOfRevokedEntries')
    OperationNotPermittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OutpostId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#OutpostId', name: 'OutpostId')
    PageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#PageSize', name: 'PageSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 400}})
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PathPatternConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#PathPatternConditionConfig', name: 'PathPatternConditionConfig')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1}})
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PriorRequestNotCompleteException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#PriorRequestNotCompleteException', name: 'PriorRequestNotCompleteException', traits: {"aws.protocols#awsQueryError" => {"code" => "PriorRequestNotComplete", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    PriorityInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#PriorityInUseException', name: 'PriorityInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "PriorityInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PrivateIPv4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#PrivateIPv4Address', name: 'PrivateIPv4Address')
    ProtocolEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ProtocolEnum', name: 'ProtocolEnum')
    ProtocolVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ProtocolVersion', name: 'ProtocolVersion')
    QueryStringConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#QueryStringConditionConfig', name: 'QueryStringConditionConfig')
    QueryStringKeyValuePair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#QueryStringKeyValuePair', name: 'QueryStringKeyValuePair')
    QueryStringKeyValuePairList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#QueryStringKeyValuePairList', name: 'QueryStringKeyValuePairList')
    RedirectActionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionConfig', name: 'RedirectActionConfig')
    RedirectActionHost = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionHost', name: 'RedirectActionHost', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RedirectActionPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionPath', name: 'RedirectActionPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RedirectActionPort = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionPort', name: 'RedirectActionPort')
    RedirectActionProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionProtocol', name: 'RedirectActionProtocol', traits: {"smithy.api#pattern" => "^(HTTPS?|#\\{protocol\\})$"})
    RedirectActionQuery = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionQuery', name: 'RedirectActionQuery', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    RedirectActionStatusCodeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RedirectActionStatusCodeEnum', name: 'RedirectActionStatusCodeEnum')
    RegisterTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RegisterTargetsInput', name: 'RegisterTargetsInput')
    RegisterTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RegisterTargetsOutput', name: 'RegisterTargetsOutput')
    RemoveIpamPoolEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveIpamPoolEnum', name: 'RemoveIpamPoolEnum')
    RemoveIpamPools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveIpamPools', name: 'RemoveIpamPools')
    RemoveListenerCertificatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificatesInput', name: 'RemoveListenerCertificatesInput')
    RemoveListenerCertificatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificatesOutput', name: 'RemoveListenerCertificatesOutput')
    RemoveTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveTagsInput', name: 'RemoveTagsInput')
    RemoveTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveTagsOutput', name: 'RemoveTagsOutput')
    RemoveTrustStoreRevocationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocationsInput', name: 'RemoveTrustStoreRevocationsInput')
    RemoveTrustStoreRevocationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocationsOutput', name: 'RemoveTrustStoreRevocationsOutput')
    ResetCapacityReservation = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ResetCapacityReservation', name: 'ResetCapacityReservation')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ResourceArn', name: 'ResourceArn')
    ResourceArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ResourceArns', name: 'ResourceArns')
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ResourceInUseException', name: 'ResourceInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationContent', name: 'RevocationContent')
    RevocationContentNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationContentNotFoundException', name: 'RevocationContentNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "RevocationContentNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationContents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationContents', name: 'RevocationContents')
    RevocationId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationId', name: 'RevocationId')
    RevocationIdNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationIdNotFoundException', name: 'RevocationIdNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "RevocationIdNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationIds', name: 'RevocationIds')
    RevocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RevocationType', name: 'RevocationType')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Rule', name: 'Rule')
    RuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RuleArn', name: 'RuleArn')
    RuleArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RuleArns', name: 'RuleArns')
    RuleCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RuleCondition', name: 'RuleCondition')
    RuleConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RuleConditionList', name: 'RuleConditionList')
    RuleNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RuleNotFoundException', name: 'RuleNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "RuleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RulePriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RulePriority', name: 'RulePriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 50000}})
    RulePriorityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RulePriorityList', name: 'RulePriorityList')
    RulePriorityPair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#RulePriorityPair', name: 'RulePriorityPair')
    Rules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Rules', name: 'Rules')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#S3Bucket', name: 'S3Bucket')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#S3Key', name: 'S3Key')
    S3ObjectVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#S3ObjectVersion', name: 'S3ObjectVersion')
    SSLPolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SSLPolicyNotFoundException', name: 'SSLPolicyNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "SSLPolicyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SecurityGroupId', name: 'SecurityGroupId')
    SecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SecurityGroups', name: 'SecurityGroups')
    SetIpAddressTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetIpAddressTypeInput', name: 'SetIpAddressTypeInput')
    SetIpAddressTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetIpAddressTypeOutput', name: 'SetIpAddressTypeOutput')
    SetRulePrioritiesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetRulePrioritiesInput', name: 'SetRulePrioritiesInput')
    SetRulePrioritiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetRulePrioritiesOutput', name: 'SetRulePrioritiesOutput')
    SetSecurityGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetSecurityGroupsInput', name: 'SetSecurityGroupsInput')
    SetSecurityGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetSecurityGroupsOutput', name: 'SetSecurityGroupsOutput')
    SetSubnetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetSubnetsInput', name: 'SetSubnetsInput')
    SetSubnetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SetSubnetsOutput', name: 'SetSubnetsOutput')
    SourceIpConditionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SourceIpConditionConfig', name: 'SourceIpConditionConfig')
    SourceNatIpv6Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SourceNatIpv6Prefix', name: 'SourceNatIpv6Prefix')
    SourceNatIpv6Prefixes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SourceNatIpv6Prefixes', name: 'SourceNatIpv6Prefixes')
    SslPolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslPolicies', name: 'SslPolicies')
    SslPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslPolicy', name: 'SslPolicy')
    SslPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslPolicyName', name: 'SslPolicyName')
    SslPolicyNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslPolicyNames', name: 'SslPolicyNames')
    SslProtocol = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslProtocol', name: 'SslProtocol')
    SslProtocols = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SslProtocols', name: 'SslProtocols')
    StateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#StateReason', name: 'StateReason')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#String', name: 'String')
    StringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#StringValue', name: 'StringValue')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SubnetId', name: 'SubnetId')
    SubnetMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SubnetMapping', name: 'SubnetMapping')
    SubnetMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SubnetMappings', name: 'SubnetMappings')
    SubnetNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#SubnetNotFoundException', name: 'SubnetNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Subnets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Subnets', name: 'Subnets')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#Tag', name: 'Tag')
    TagDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagDescription', name: 'TagDescription')
    TagDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagDescriptions', name: 'TagDescriptions')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagKeys', name: 'TagKeys')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetAdministrativeOverrideReasonEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetAdministrativeOverrideReasonEnum', name: 'TargetAdministrativeOverrideReasonEnum')
    TargetAdministrativeOverrideStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetAdministrativeOverrideStateEnum', name: 'TargetAdministrativeOverrideStateEnum')
    TargetDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetDescription', name: 'TargetDescription')
    TargetDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetDescriptions', name: 'TargetDescriptions')
    TargetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroup', name: 'TargetGroup')
    TargetGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupArn', name: 'TargetGroupArn')
    TargetGroupArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupArns', name: 'TargetGroupArns')
    TargetGroupAssociationLimitException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupAssociationLimitException', name: 'TargetGroupAssociationLimitException', traits: {"aws.protocols#awsQueryError" => {"code" => "TargetGroupAssociationLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TargetGroupAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupAttribute', name: 'TargetGroupAttribute')
    TargetGroupAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupAttributeKey', name: 'TargetGroupAttributeKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    TargetGroupAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupAttributeValue', name: 'TargetGroupAttributeValue')
    TargetGroupAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupAttributes', name: 'TargetGroupAttributes')
    TargetGroupIpAddressTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupIpAddressTypeEnum', name: 'TargetGroupIpAddressTypeEnum')
    TargetGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupList', name: 'TargetGroupList')
    TargetGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupName', name: 'TargetGroupName')
    TargetGroupNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupNames', name: 'TargetGroupNames')
    TargetGroupNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupNotFoundException', name: 'TargetGroupNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "TargetGroupNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TargetGroupStickinessConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessConfig', name: 'TargetGroupStickinessConfig')
    TargetGroupStickinessDurationSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessDurationSeconds', name: 'TargetGroupStickinessDurationSeconds')
    TargetGroupStickinessEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessEnabled', name: 'TargetGroupStickinessEnabled')
    TargetGroupTuple = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupTuple', name: 'TargetGroupTuple')
    TargetGroupWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroupWeight', name: 'TargetGroupWeight')
    TargetGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetGroups', name: 'TargetGroups')
    TargetHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetHealth', name: 'TargetHealth')
    TargetHealthDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetHealthDescription', name: 'TargetHealthDescription')
    TargetHealthDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetHealthDescriptions', name: 'TargetHealthDescriptions')
    TargetHealthReasonEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetHealthReasonEnum', name: 'TargetHealthReasonEnum')
    TargetHealthStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetHealthStateEnum', name: 'TargetHealthStateEnum')
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetId', name: 'TargetId')
    TargetTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TargetTypeEnum', name: 'TargetTypeEnum')
    TooManyActionsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyActionsException', name: 'TooManyActionsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyActions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCertificatesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyCertificatesException', name: 'TooManyCertificatesException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyCertificates", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyListenersException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyListenersException', name: 'TooManyListenersException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyListeners", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyLoadBalancersException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyLoadBalancersException', name: 'TooManyLoadBalancersException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyLoadBalancers", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRegistrationsForTargetIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyRegistrationsForTargetIdException', name: 'TooManyRegistrationsForTargetIdException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRegistrationsForTargetId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRulesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyRulesException', name: 'TooManyRulesException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRules", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyTagsException', name: 'TooManyTagsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTags", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTargetGroupsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyTargetGroupsException', name: 'TooManyTargetGroupsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTargetGroups", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTargetsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyTargetsException', name: 'TooManyTargetsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTargets", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustStoreRevocationEntriesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyTrustStoreRevocationEntriesException', name: 'TooManyTrustStoreRevocationEntriesException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTrustStoreRevocationEntries", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustStoresException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyTrustStoresException', name: 'TooManyTrustStoresException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTrustStores", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyUniqueTargetGroupsPerLoadBalancerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TooManyUniqueTargetGroupsPerLoadBalancerException', name: 'TooManyUniqueTargetGroupsPerLoadBalancerException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyUniqueTargetGroupsPerLoadBalancer", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TotalRevokedEntries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TotalRevokedEntries', name: 'TotalRevokedEntries')
    TrustStore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStore', name: 'TrustStore')
    TrustStoreArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreArn', name: 'TrustStoreArn')
    TrustStoreArns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreArns', name: 'TrustStoreArns')
    TrustStoreAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreAssociation', name: 'TrustStoreAssociation')
    TrustStoreAssociationNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationNotFoundException', name: 'TrustStoreAssociationNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreAssociationResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationResourceArn', name: 'TrustStoreAssociationResourceArn')
    TrustStoreAssociationStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationStatusEnum', name: 'TrustStoreAssociationStatusEnum')
    TrustStoreAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreAssociations', name: 'TrustStoreAssociations')
    TrustStoreInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreInUseException', name: 'TrustStoreInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreName', name: 'TrustStoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-zA-Z0-9]+-)*[a-zA-Z0-9]+$"})
    TrustStoreNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreNames', name: 'TrustStoreNames')
    TrustStoreNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreNotFoundException', name: 'TrustStoreNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreNotReadyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreNotReadyException', name: 'TrustStoreNotReadyException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreNotReady", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreRevocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreRevocation', name: 'TrustStoreRevocation')
    TrustStoreRevocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreRevocations', name: 'TrustStoreRevocations')
    TrustStoreStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStoreStatus', name: 'TrustStoreStatus')
    TrustStores = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#TrustStores', name: 'TrustStores')
    UnsupportedProtocolException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#UnsupportedProtocolException', name: 'UnsupportedProtocolException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedProtocol", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#VpcId', name: 'VpcId')
    ZonalCapacityReservationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ZonalCapacityReservationState', name: 'ZonalCapacityReservationState')
    ZonalCapacityReservationStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ZonalCapacityReservationStates', name: 'ZonalCapacityReservationStates')
    ZoneName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticloadbalancingv2#ZoneName', name: 'ZoneName')

    ALPNPolicyNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    ALPNPolicyNotSupportedException.type = Types::ALPNPolicyNotSupportedException
    Action.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeEnum, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of action.</p>", "smithy.api#required" => {}}))
    Action.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group. Specify only when <code>Type</code> is\n        <code>forward</code> and you want to route to a single target group. To route to one or more\n      target groups, use <code>ForwardConfig</code> instead.</p>"}))
    Action.add_member(:authenticate_oidc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionConfig, location_name: 'AuthenticateOidcConfig', traits: {"smithy.api#documentation" => "<p>[HTTPS listeners] Information about an identity provider that is compliant with OpenID\n      Connect (OIDC). Specify only when <code>Type</code> is <code>authenticate-oidc</code>.</p>"}))
    Action.add_member(:authenticate_cognito_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConfig, location_name: 'AuthenticateCognitoConfig', traits: {"smithy.api#documentation" => "<p>[HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only\n      when <code>Type</code> is <code>authenticate-cognito</code>.</p>"}))
    Action.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOrder, location_name: 'Order', traits: {"smithy.api#documentation" => "<p>The order for the action. This value is required for rules with multiple actions. The\n      action with the lowest value for order is performed first.</p>"}))
    Action.add_member(:redirect_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionConfig, location_name: 'RedirectConfig', traits: {"smithy.api#documentation" => "<p>[Application Load Balancer] Information for creating a redirect action. Specify only when\n        <code>Type</code> is <code>redirect</code>.</p>"}))
    Action.add_member(:fixed_response_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedResponseActionConfig, location_name: 'FixedResponseConfig', traits: {"smithy.api#documentation" => "<p>[Application Load Balancer] Information for creating an action that returns a custom HTTP\n      response. Specify only when <code>Type</code> is <code>fixed-response</code>.</p>"}))
    Action.add_member(:forward_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardActionConfig, location_name: 'ForwardConfig', traits: {"smithy.api#documentation" => "<p>Information for creating an action that distributes requests among one or more target\n      groups. For Network Load Balancers, you can specify a single target group. Specify only when\n        <code>Type</code> is <code>forward</code>. If you specify both <code>ForwardConfig</code>\n      and <code>TargetGroupArn</code>, you can specify only one target group using\n        <code>ForwardConfig</code> and it must be the same target group specified in\n        <code>TargetGroupArn</code>.</p>"}))
    Action.type = Types::Action
    ActionTypeEnum.add_member(:forward, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORWARD', traits: {"smithy.api#enumValue" => "forward"}))
    ActionTypeEnum.add_member(:authenticate_oidc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATE_OIDC', traits: {"smithy.api#enumValue" => "authenticate-oidc"}))
    ActionTypeEnum.add_member(:authenticate_cognito, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATE_COGNITO', traits: {"smithy.api#enumValue" => "authenticate-cognito"}))
    ActionTypeEnum.add_member(:redirect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDIRECT', traits: {"smithy.api#enumValue" => "redirect"}))
    ActionTypeEnum.add_member(:fixed_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED_RESPONSE', traits: {"smithy.api#enumValue" => "fixed-response"}))
    Actions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    AddListenerCertificatesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    AddListenerCertificatesInput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The certificate to add. You can specify one certificate per call. Set\n        <code>CertificateArn</code> to the certificate ARN but do not set\n      <code>IsDefault</code>.</p>", "smithy.api#required" => {}}))
    AddListenerCertificatesInput.type = Types::AddListenerCertificatesInput
    AddListenerCertificatesOutput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>Information about the certificates in the certificate list.</p>"}))
    AddListenerCertificatesOutput.type = Types::AddListenerCertificatesOutput
    AddTagsInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'ResourceArns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tags.</p>", "smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    AddTrustStoreRevocationsInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    AddTrustStoreRevocationsInput.add_member(:revocation_contents, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationContents, location_name: 'RevocationContents', traits: {"smithy.api#documentation" => "<p>The revocation file to add.</p>"}))
    AddTrustStoreRevocationsInput.type = Types::AddTrustStoreRevocationsInput
    AddTrustStoreRevocationsOutput.add_member(:trust_store_revocations, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreRevocations, location_name: 'TrustStoreRevocations', traits: {"smithy.api#documentation" => "<p>Information about the revocation file added to the trust store.</p>"}))
    AddTrustStoreRevocationsOutput.type = Types::AddTrustStoreRevocationsOutput
    AdministrativeOverride.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAdministrativeOverrideStateEnum, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the override.</p>"}))
    AdministrativeOverride.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAdministrativeOverrideReasonEnum, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason code for the state.</p>"}))
    AdministrativeOverride.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the override state that provides additional details.</p>"}))
    AdministrativeOverride.type = Types::AdministrativeOverride
    AdvertiseTrustStoreCaNamesEnum.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'on', traits: {"smithy.api#enumValue" => "on"}))
    AdvertiseTrustStoreCaNamesEnum.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'off', traits: {"smithy.api#enumValue" => "off"}))
    AllocationIdNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    AllocationIdNotFoundException.type = Types::AllocationIdNotFoundException
    AlpnPolicyName.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlpnPolicyValue)
    AnomalyDetection.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyResultEnum, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>The latest anomaly detection result.</p>"}))
    AnomalyDetection.add_member(:mitigation_in_effect, Smithy::Schema::Shapes::ShapeRef.new(shape: MitigationInEffectEnum, location_name: 'MitigationInEffect', traits: {"smithy.api#documentation" => "<p>Indicates whether anomaly mitigation is in progress.</p>"}))
    AnomalyDetection.type = Types::AnomalyDetection
    AnomalyResultEnum.add_member(:anomalous, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALOUS', traits: {"smithy.api#enumValue" => "anomalous"}))
    AnomalyResultEnum.add_member(:normal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMAL', traits: {"smithy.api#enumValue" => "normal"}))
    AuthenticateCognitoActionAuthenticationRequestExtraParams.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamName)
    AuthenticateCognitoActionAuthenticationRequestExtraParams.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamValue)
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "deny"}))
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "allow"}))
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:authenticate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATE', traits: {"smithy.api#enumValue" => "authenticate"}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolArn, location_name: 'UserPoolArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Cognito user pool.</p>", "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolClientId, location_name: 'UserPoolClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the Amazon Cognito user pool client.</p>", "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolDomain, location_name: 'UserPoolDomain', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.</p>", "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:session_cookie_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionCookieName, location_name: 'SessionCookieName', traits: {"smithy.api#documentation" => "<p>The name of the cookie used to maintain session information. The default is\n      AWSELBAuthSessionCookie.</p>"}))
    AuthenticateCognitoActionConfig.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The set of user claims to be requested from the IdP. The default is\n      <code>openid</code>.</p>\n         <p>To verify which scope values your IdP supports and how to separate multiple values, see\n      the documentation for your IdP.</p>"}))
    AuthenticateCognitoActionConfig.add_member(:session_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionTimeout, location_name: 'SessionTimeout', traits: {"smithy.api#documentation" => "<p>The maximum duration of the authentication session, in seconds. The default is 604800\n      seconds (7 days).</p>"}))
    AuthenticateCognitoActionConfig.add_member(:authentication_request_extra_params, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestExtraParams, location_name: 'AuthenticationRequestExtraParams', traits: {"smithy.api#documentation" => "<p>The query parameters (up to 10) to include in the redirect request to the authorization\n      endpoint.</p>"}))
    AuthenticateCognitoActionConfig.add_member(:on_unauthenticated_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConditionalBehaviorEnum, location_name: 'OnUnauthenticatedRequest', traits: {"smithy.api#documentation" => "<p>The behavior if the user is not authenticated. The following are possible values:</p>\n         <ul>\n            <li>\n               <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>\n            </li>\n            <li>\n               <p>allow<code></code> - Allow the request to be forwarded to the target.</p>\n            </li>\n            <li>\n               <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is\n          the default value.</p>\n            </li>\n         </ul>"}))
    AuthenticateCognitoActionConfig.type = Types::AuthenticateCognitoActionConfig
    AuthenticateOidcActionAuthenticationRequestExtraParams.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamName)
    AuthenticateOidcActionAuthenticationRequestExtraParams.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamValue)
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "deny"}))
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "allow"}))
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:authenticate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATE', traits: {"smithy.api#enumValue" => "authenticate"}))
    AuthenticateOidcActionConfig.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionIssuer, location_name: 'Issuer', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS\n      protocol, the domain, and the path.</p>", "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:authorization_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthorizationEndpoint, location_name: 'AuthorizationEndpoint', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authorization endpoint of the IdP. This must be a full URL, including the HTTPS\n      protocol, the domain, and the path.</p>", "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:token_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionTokenEndpoint, location_name: 'TokenEndpoint', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the\n      domain, and the path.</p>", "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:user_info_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionUserInfoEndpoint, location_name: 'UserInfoEndpoint', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol,\n      the domain, and the path.</p>", "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientId, location_name: 'ClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The OAuth 2.0 client identifier.</p>", "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientSecret, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you\n      are modifying a rule, you can omit this parameter if you set\n        <code>UseExistingClientSecret</code> to true.</p>"}))
    AuthenticateOidcActionConfig.add_member(:session_cookie_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionCookieName, location_name: 'SessionCookieName', traits: {"smithy.api#documentation" => "<p>The name of the cookie used to maintain session information. The default is\n      AWSELBAuthSessionCookie.</p>"}))
    AuthenticateOidcActionConfig.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The set of user claims to be requested from the IdP. The default is\n      <code>openid</code>.</p>\n         <p>To verify which scope values your IdP supports and how to separate multiple values, see\n      the documentation for your IdP.</p>"}))
    AuthenticateOidcActionConfig.add_member(:session_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionTimeout, location_name: 'SessionTimeout', traits: {"smithy.api#documentation" => "<p>The maximum duration of the authentication session, in seconds. The default is 604800\n      seconds (7 days).</p>"}))
    AuthenticateOidcActionConfig.add_member(:authentication_request_extra_params, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestExtraParams, location_name: 'AuthenticationRequestExtraParams', traits: {"smithy.api#documentation" => "<p>The query parameters (up to 10) to include in the redirect request to the authorization\n      endpoint.</p>"}))
    AuthenticateOidcActionConfig.add_member(:on_unauthenticated_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionConditionalBehaviorEnum, location_name: 'OnUnauthenticatedRequest', traits: {"smithy.api#documentation" => "<p>The behavior if the user is not authenticated. The following are possible values:</p>\n         <ul>\n            <li>\n               <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>\n            </li>\n            <li>\n               <p>allow<code></code> - Allow the request to be forwarded to the target.</p>\n            </li>\n            <li>\n               <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is\n          the default value.</p>\n            </li>\n         </ul>"}))
    AuthenticateOidcActionConfig.add_member(:use_existing_client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticateOidcActionUseExistingClientSecret, location_name: 'UseExistingClientSecret', traits: {"smithy.api#documentation" => "<p>Indicates whether to use the existing client secret when modifying a rule. If you are\n      creating a rule, you can omit this parameter or set it to false.</p>"}))
    AuthenticateOidcActionConfig.type = Types::AuthenticateOidcActionConfig
    AvailabilityZone.add_member(:zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneName, location_name: 'ZoneName', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone.</p>"}))
    AvailabilityZone.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>"}))
    AvailabilityZone.add_member(:outpost_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostId, location_name: 'OutpostId', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers on Outposts] The ID of the Outpost.</p>"}))
    AvailabilityZone.add_member(:load_balancer_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAddresses, location_name: 'LoadBalancerAddresses', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] If you need static IP addresses for your load balancer, you can\n      specify one Elastic IP address per Availability Zone when you create an internal-facing load\n      balancer. For internal load balancers, you can specify a private IP address from the IPv4\n      range of the subnet.</p>"}))
    AvailabilityZone.add_member(:source_nat_ipv6_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNatIpv6Prefixes, location_name: 'SourceNatIpv6Prefixes', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers with UDP listeners] The IPv6 prefixes to use for source NAT.\n      For each subnet, specify an IPv6 prefix (/80 netmask) from the subnet CIDR block or\n     <code>auto_assigned</code> to use an IPv6 prefix selected at random from the subnet CIDR\n      block.</p>"}))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    AvailabilityZoneNotSupportedException.type = Types::AvailabilityZoneNotSupportedException
    AvailabilityZones.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    CaCertificatesBundleNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    CaCertificatesBundleNotFoundException.type = Types::CaCertificatesBundleNotFoundException
    CapacityDecreaseRequestsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    CapacityDecreaseRequestsLimitExceededException.type = Types::CapacityDecreaseRequestsLimitExceededException
    CapacityReservationPendingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    CapacityReservationPendingException.type = Types::CapacityReservationPendingException
    CapacityReservationStateEnum.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "provisioned"}))
    CapacityReservationStateEnum.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    CapacityReservationStateEnum.add_member(:rebalancing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBALANCING', traits: {"smithy.api#enumValue" => "rebalancing"}))
    CapacityReservationStateEnum.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    CapacityReservationStatus.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationStateEnum, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The status code.</p>"}))
    CapacityReservationStatus.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason code for the status.</p>"}))
    CapacityReservationStatus.type = Types::CapacityReservationStatus
    CapacityUnitsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    CapacityUnitsLimitExceededException.type = Types::CapacityUnitsLimitExceededException
    Certificate.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate.</p>"}))
    Certificate.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Default, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether the certificate is the default certificate. Do not set this value when\n      specifying a certificate as an input. This value is not included in the output when describing\n      a listener, but is included when describing listener certificates.</p>"}))
    Certificate.type = Types::Certificate
    CertificateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate)
    CertificateNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    CertificateNotFoundException.type = Types::CertificateNotFoundException
    Cipher.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CipherName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cipher.</p>"}))
    Cipher.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: CipherPriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority of the cipher.</p>"}))
    Cipher.type = Types::Cipher
    Ciphers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cipher)
    CreateListenerInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol for connections from clients to the load balancer. For Application Load\n      Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the\n      supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP\n      protocol if dual-stack mode is enabled. You can't specify a protocol for a Gateway Load\n      Balancer.</p>"}))
    CreateListenerInput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port on which the load balancer is listening. You can't specify a port for a Gateway\n      Load Balancer.</p>"}))
    CreateListenerInput.add_member(:ssl_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyName, location_name: 'SslPolicy', traits: {"smithy.api#documentation" => "<p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are\n      supported.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html\">Security policies</a> in the <i>Application Load Balancers Guide</i> and\n        <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html\">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>"}))
    CreateListenerInput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide\n      exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set\n        <code>IsDefault</code>.</p>"}))
    CreateListenerInput.add_member(:default_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'DefaultActions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The actions for the default rule.</p>", "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:alpn_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: 'AlpnPolicy', traits: {"smithy.api#documentation" => "<p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You\n      can specify one policy name. The following are the possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HTTP1Only</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Only</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Optional</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Preferred</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>None</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies\">ALPN\n        policies</a> in the <i>Network Load Balancers Guide</i>.</p>"}))
    CreateListenerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the listener.</p>"}))
    CreateListenerInput.add_member(:mutual_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: 'MutualAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual authentication configuration information.</p>"}))
    CreateListenerInput.type = Types::CreateListenerInput
    CreateListenerOutput.add_member(:listeners, Smithy::Schema::Shapes::ShapeRef.new(shape: Listeners, location_name: 'Listeners', traits: {"smithy.api#documentation" => "<p>Information about the listener.</p>"}))
    CreateListenerOutput.type = Types::CreateListenerOutput
    CreateLoadBalancerInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the load balancer.</p>\n         <p>This name must be unique per region per account, can have a maximum of 32 characters, must\n      contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must\n      not begin with \"internal-\".</p>", "smithy.api#required" => {}}))
    CreateLoadBalancerInput.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You\n      must specify either subnets or subnet mappings, but not both. To specify an Elastic IP\n      address, specify subnet mappings instead of subnets.</p>\n         <p>[Application Load Balancers] You must specify subnets from at least two Availability\n      Zones.</p>\n         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>\n         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local\n      Zones.</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more \n      Availability Zones.</p>"}))
    CreateLoadBalancerInput.add_member(:subnet_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: 'SubnetMappings', traits: {"smithy.api#documentation" => "<p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You\n      must specify either subnets or subnet mappings, but not both.</p>\n         <p>[Application Load Balancers] You must specify subnets from at least two Availability\n      Zones. You can't specify Elastic IP addresses for your subnets.</p>\n         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>\n         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local\n      Zones.</p>\n         <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You\n      can specify one Elastic IP address per subnet if you need static IP addresses for your\n      internet-facing load balancer. For internal load balancers, you can specify one private IP\n      address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you\n      can specify one IPv6 address per subnet.</p>\n         <p>[Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You\n      can't specify Elastic IP addresses for your subnets.</p>"}))
    CreateLoadBalancerInput.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers and Network Load Balancers] The IDs of the security groups for\n      the load balancer.</p>"}))
    CreateLoadBalancerInput.add_member(:scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: 'Scheme', traits: {"smithy.api#documentation" => "<p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an\n      Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.\n      Therefore, Internet-facing load balancers can route requests from clients over the\n      internet.</p>\n         <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an\n      internal load balancer is publicly resolvable to the private IP addresses of the nodes.\n      Therefore, internal load balancers can route requests only from clients with access to the VPC\n      for the load balancer.</p>\n         <p>The default is an Internet-facing load balancer.</p>\n         <p>You can't specify a scheme for a Gateway Load Balancer.</p>"}))
    CreateLoadBalancerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the load balancer.</p>"}))
    CreateLoadBalancerInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of load balancer. The default is <code>application</code>.</p>"}))
    CreateLoadBalancerInput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>\n         <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), \n      <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> \n      (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> \n      (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>"}))
    CreateLoadBalancerInput.add_member(:customer_owned_ipv4_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP\n      pool).</p>"}))
    CreateLoadBalancerInput.add_member(:enable_prefix_for_ipv6_source_nat, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: 'EnablePrefixForIpv6SourceNat', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix \n      from each subnet for source NAT. The IP address type must be <code>dualstack</code>. \n      The default value is <code>off</code>.</p>"}))
    CreateLoadBalancerInput.add_member(:ipam_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: IpamPools, location_name: 'IpamPools', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers] The IPAM pools to use with the load balancer.</p>"}))
    CreateLoadBalancerInput.type = Types::CreateLoadBalancerInput
    CreateLoadBalancerOutput.add_member(:load_balancers, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancers, location_name: 'LoadBalancers', traits: {"smithy.api#documentation" => "<p>Information about the load balancer.</p>"}))
    CreateLoadBalancerOutput.type = Types::CreateLoadBalancerOutput
    CreateRuleInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditionList, location_name: 'Conditions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The conditions.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'Priority', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The rule priority. A listener can't have multiple rules with the same priority.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'Actions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The actions.</p>", "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the rule.</p>"}))
    CreateRuleInput.type = Types::CreateRuleInput
    CreateRuleOutput.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Information about the rule.</p>"}))
    CreateRuleOutput.type = Types::CreateRuleOutput
    CreateTargetGroupInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the target group.</p>\n         <p>This name must be unique per region per account, can have a maximum of 32 characters, must\n      contain only alphanumeric characters or hyphens, and must not begin or end with a\n      hyphen.</p>", "smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol to use for routing traffic to the targets. For Application Load Balancers,\n      the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported\n      protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is\n      GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a\n      Lambda function, this parameter does not apply.</p>"}))
    CreateTargetGroupInput.add_member(:protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: 'ProtocolVersion', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to\n      targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The\n      default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>"}))
    CreateTargetGroupInput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port on which the targets receive traffic. This port is used unless you specify a port\n      override when registering the target. If the target is a Lambda function, this parameter does\n      not apply. If the protocol is GENEVE, the supported port is 6081.</p>"}))
    CreateTargetGroupInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,\n      this parameter does not apply. Otherwise, this parameter is required.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol the load balancer uses when performing health checks on targets. For\n      Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load\n      Balancers, the default is TCP. The TCP protocol is not supported for health checks if the\n      protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are\n      not supported for health checks.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port the load balancer uses when performing health checks on targets. If the protocol\n      is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is\n      the port on which each target receives traffic from the load balancer. If the protocol is\n      GENEVE, the default is port 80.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: 'HealthCheckEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,\n      health checks are disabled by default but can be enabled. If the target type is\n        <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always\n      enabled and can't be disabled.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>\n         <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>\n         <p>[GRPC protocol version] The path of a custom health check method with the format\n      /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300.\n      If the target group protocol is TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30 seconds. \n      If the target group protocol is GENEVE, the default is 10 seconds. \n      If the target type is <code>lambda</code>, the default is 35 seconds.</p>"}))
    CreateTargetGroupInput.add_member(:health_check_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: 'HealthCheckTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, during which no response from a target means a failed \n      health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the \n      default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default \n      is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If \n      the target type is <code>lambda</code>, the default is 30 seconds.</p>"}))
    CreateTargetGroupInput.add_member(:healthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'HealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health check successes required before considering a target healthy. The range is \n      2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5. For target groups \n      with a protocol of GENEVE, the default is 5. If the target type \n      is <code>lambda</code>, the default is 5.</p>"}))
    CreateTargetGroupInput.add_member(:unhealthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'UnhealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health check failures required before considering a target unhealthy. The range is \n      2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2. For target groups \n      with a protocol of GENEVE, the default is 2. If the target type \n      is <code>lambda</code>, the default is 5.</p>"}))
    CreateTargetGroupInput.add_member(:matcher, Smithy::Schema::Shapes::ShapeRef.new(shape: Matcher, location_name: 'Matcher', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful \n      response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range \n      is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target \n      groups with a protocol of GENEVE, the range is 200-399.</p>"}))
    CreateTargetGroupInput.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The type of target that you must specify when registering targets with this target group.\n      You can't specify targets for a target group using more than one target type.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>instance</code> - Register targets by instance ID. This is the default\n          value.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ip</code> - Register targets by IP address. You can specify IP addresses from\n          the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range\n          (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10).\n          You can't specify publicly routable IP addresses.</p>\n            </li>\n            <li>\n               <p>\n                  <code>lambda</code> - Register a single Lambda function as a target.</p>\n            </li>\n            <li>\n               <p>\n                  <code>alb</code> - Register a single Application Load Balancer as a target.</p>\n            </li>\n         </ul>"}))
    CreateTargetGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the target group.</p>"}))
    CreateTargetGroupInput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIpAddressTypeEnum, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type. The default value is <code>ipv4</code>.</p>"}))
    CreateTargetGroupInput.type = Types::CreateTargetGroupInput
    CreateTargetGroupOutput.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroups, location_name: 'TargetGroups', traits: {"smithy.api#documentation" => "<p>Information about the target group.</p>"}))
    CreateTargetGroupOutput.type = Types::CreateTargetGroupOutput
    CreateTrustStoreInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the trust store.</p>\n         <p>This name must be unique per region and can't be changed after creation.</p>", "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'CaCertificatesBundleS3Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon S3 bucket for the ca certificates bundle.</p>", "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'CaCertificatesBundleS3Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon S3 path for the ca certificates bundle.</p>", "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'CaCertificatesBundleS3ObjectVersion', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>"}))
    CreateTrustStoreInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the trust store.</p>"}))
    CreateTrustStoreInput.type = Types::CreateTrustStoreInput
    CreateTrustStoreOutput.add_member(:trust_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStores, location_name: 'TrustStores', traits: {"smithy.api#documentation" => "<p>Information about the trust store created.</p>"}))
    CreateTrustStoreOutput.type = Types::CreateTrustStoreOutput
    DeleteAssociationSameAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DeleteAssociationSameAccountException.type = Types::DeleteAssociationSameAccountException
    DeleteListenerInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    DeleteListenerInput.type = Types::DeleteListenerInput
    DeleteListenerOutput.type = Types::DeleteListenerOutput
    DeleteLoadBalancerInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    DeleteLoadBalancerInput.type = Types::DeleteLoadBalancerInput
    DeleteLoadBalancerOutput.type = Types::DeleteLoadBalancerOutput
    DeleteRuleInput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>", "smithy.api#required" => {}}))
    DeleteRuleInput.type = Types::DeleteRuleInput
    DeleteRuleOutput.type = Types::DeleteRuleOutput
    DeleteSharedTrustStoreAssociationInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    DeleteSharedTrustStoreAssociationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    DeleteSharedTrustStoreAssociationInput.type = Types::DeleteSharedTrustStoreAssociationInput
    DeleteSharedTrustStoreAssociationOutput.type = Types::DeleteSharedTrustStoreAssociationOutput
    DeleteTargetGroupInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    DeleteTargetGroupInput.type = Types::DeleteTargetGroupInput
    DeleteTargetGroupOutput.type = Types::DeleteTargetGroupOutput
    DeleteTrustStoreInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    DeleteTrustStoreInput.type = Types::DeleteTrustStoreInput
    DeleteTrustStoreOutput.type = Types::DeleteTrustStoreOutput
    DeregisterTargetsInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    DeregisterTargetsInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescriptions, location_name: 'Targets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The targets. If you specified a port override when you registered a target, you must\n      specify both the target ID and the port when you deregister it.</p>", "smithy.api#required" => {}}))
    DeregisterTargetsInput.type = Types::DeregisterTargetsInput
    DeregisterTargetsOutput.type = Types::DeregisterTargetsOutput
    DescribeAccountLimitsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeAccountLimitsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeAccountLimitsInput.type = Types::DescribeAccountLimitsInput
    DescribeAccountLimitsOutput.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: Limits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>Information about the limits.</p>"}))
    DescribeAccountLimitsOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeAccountLimitsOutput.type = Types::DescribeAccountLimitsOutput
    DescribeCapacityReservationInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    DescribeCapacityReservationInput.type = Types::DescribeCapacityReservationInput
    DescribeCapacityReservationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the capacity reservation was modified.</p>"}))
    DescribeCapacityReservationOutput.add_member(:decrease_requests_remaining, Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseRequestsRemaining, location_name: 'DecreaseRequestsRemaining', traits: {"smithy.api#documentation" => "<p>The amount of daily capacity decreases remaining.</p>"}))
    DescribeCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: 'MinimumLoadBalancerCapacity', traits: {"smithy.api#documentation" => "<p>The requested minimum capacity reservation for the load balancer</p>"}))
    DescribeCapacityReservationOutput.add_member(:capacity_reservation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalCapacityReservationStates, location_name: 'CapacityReservationState', traits: {"smithy.api#documentation" => "<p>The state of the capacity reservation.</p>"}))
    DescribeCapacityReservationOutput.type = Types::DescribeCapacityReservationOutput
    DescribeListenerAttributesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    DescribeListenerAttributesInput.type = Types::DescribeListenerAttributesInput
    DescribeListenerAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the listener attributes.</p>"}))
    DescribeListenerAttributesOutput.type = Types::DescribeListenerAttributesOutput
    DescribeListenerCertificatesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    DescribeListenerCertificatesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeListenerCertificatesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeListenerCertificatesInput.type = Types::DescribeListenerCertificatesInput
    DescribeListenerCertificatesOutput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>Information about the certificates.</p>"}))
    DescribeListenerCertificatesOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeListenerCertificatesOutput.type = Types::DescribeListenerCertificatesOutput
    DescribeListenersInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>"}))
    DescribeListenersInput.add_member(:listener_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArns, location_name: 'ListenerArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the listeners.</p>"}))
    DescribeListenersInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeListenersInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeListenersInput.type = Types::DescribeListenersInput
    DescribeListenersOutput.add_member(:listeners, Smithy::Schema::Shapes::ShapeRef.new(shape: Listeners, location_name: 'Listeners', traits: {"smithy.api#documentation" => "<p>Information about the listeners.</p>"}))
    DescribeListenersOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeListenersOutput.type = Types::DescribeListenersOutput
    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    DescribeLoadBalancerAttributesInput.type = Types::DescribeLoadBalancerAttributesInput
    DescribeLoadBalancerAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the load balancer attributes.</p>"}))
    DescribeLoadBalancerAttributesOutput.type = Types::DescribeLoadBalancerAttributesOutput
    DescribeLoadBalancersInput.add_member(:load_balancer_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: 'LoadBalancerArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load\n      balancers in a single call.</p>"}))
    DescribeLoadBalancersInput.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the load balancers.</p>"}))
    DescribeLoadBalancersInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeLoadBalancersInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeLoadBalancersInput.type = Types::DescribeLoadBalancersInput
    DescribeLoadBalancersOutput.add_member(:load_balancers, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancers, location_name: 'LoadBalancers', traits: {"smithy.api#documentation" => "<p>Information about the load balancers.</p>"}))
    DescribeLoadBalancersOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeLoadBalancersOutput.type = Types::DescribeLoadBalancersOutput
    DescribeRulesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    DescribeRulesInput.add_member(:rule_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArns, location_name: 'RuleArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the rules.</p>"}))
    DescribeRulesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeRulesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeRulesInput.type = Types::DescribeRulesInput
    DescribeRulesOutput.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Information about the rules.</p>"}))
    DescribeRulesOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeRulesOutput.type = Types::DescribeRulesOutput
    DescribeSSLPoliciesInput.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the policies.</p>"}))
    DescribeSSLPoliciesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeSSLPoliciesInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeSSLPoliciesInput.add_member(:load_balancer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: 'LoadBalancerType', traits: {"smithy.api#documentation" => "<p> The type of load balancer. The default lists the SSL policies for all load\n      balancers.</p>"}))
    DescribeSSLPoliciesInput.type = Types::DescribeSSLPoliciesInput
    DescribeSSLPoliciesOutput.add_member(:ssl_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicies, location_name: 'SslPolicies', traits: {"smithy.api#documentation" => "<p>Information about the security policies.</p>"}))
    DescribeSSLPoliciesOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeSSLPoliciesOutput.type = Types::DescribeSSLPoliciesOutput
    DescribeTagsInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'ResourceArns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a\n      single call.</p>", "smithy.api#required" => {}}))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:tag_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TagDescriptions, location_name: 'TagDescriptions', traits: {"smithy.api#documentation" => "<p>Information about the tags.</p>"}))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DescribeTargetGroupAttributesInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    DescribeTargetGroupAttributesInput.type = Types::DescribeTargetGroupAttributesInput
    DescribeTargetGroupAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the target group attributes</p>"}))
    DescribeTargetGroupAttributesOutput.type = Types::DescribeTargetGroupAttributesOutput
    DescribeTargetGroupsInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>"}))
    DescribeTargetGroupsInput.add_member(:target_group_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArns, location_name: 'TargetGroupArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARN) of the target groups.</p>"}))
    DescribeTargetGroupsInput.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the target groups.</p>"}))
    DescribeTargetGroupsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous\n      call.)</p>"}))
    DescribeTargetGroupsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeTargetGroupsInput.type = Types::DescribeTargetGroupsInput
    DescribeTargetGroupsOutput.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroups, location_name: 'TargetGroups', traits: {"smithy.api#documentation" => "<p>Information about the target groups.</p>"}))
    DescribeTargetGroupsOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeTargetGroupsOutput.type = Types::DescribeTargetGroupsOutput
    DescribeTargetHealthInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    DescribeTargetHealthInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescriptions, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The targets.</p>"}))
    DescribeTargetHealthInput.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDescribeTargetHealthIncludeOptions, location_name: 'Include', traits: {"smithy.api#documentation" => "<p>Used to include anomaly detection information.</p>"}))
    DescribeTargetHealthInput.type = Types::DescribeTargetHealthInput
    DescribeTargetHealthInputIncludeEnum.add_member(:anomaly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALY', traits: {"smithy.api#enumValue" => "AnomalyDetection"}))
    DescribeTargetHealthInputIncludeEnum.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "All"}))
    DescribeTargetHealthOutput.add_member(:target_health_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealthDescriptions, location_name: 'TargetHealthDescriptions', traits: {"smithy.api#documentation" => "<p>Information about the health of the targets.</p>"}))
    DescribeTargetHealthOutput.type = Types::DescribeTargetHealthOutput
    DescribeTrustStoreAssociationsInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    DescribeTrustStoreAssociationsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>"}))
    DescribeTrustStoreAssociationsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeTrustStoreAssociationsInput.type = Types::DescribeTrustStoreAssociationsInput
    DescribeTrustStoreAssociationsOutput.add_member(:trust_store_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreAssociations, location_name: 'TrustStoreAssociations', traits: {"smithy.api#documentation" => "<p>Information about the resources the trust store is associated to.</p>"}))
    DescribeTrustStoreAssociationsOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeTrustStoreAssociationsOutput.type = Types::DescribeTrustStoreAssociationsOutput
    DescribeTrustStoreRevocation.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>"}))
    DescribeTrustStoreRevocation.add_member(:revocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationId, location_name: 'RevocationId', traits: {"smithy.api#documentation" => "<p>The revocation ID of a revocation file in use.</p>"}))
    DescribeTrustStoreRevocation.add_member(:revocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationType, location_name: 'RevocationType', traits: {"smithy.api#documentation" => "<p>The type of revocation file.</p>"}))
    DescribeTrustStoreRevocation.add_member(:number_of_revoked_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRevokedEntries, location_name: 'NumberOfRevokedEntries', traits: {"smithy.api#documentation" => "<p>The number of revoked certificates.</p>"}))
    DescribeTrustStoreRevocation.type = Types::DescribeTrustStoreRevocation
    DescribeTrustStoreRevocationResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocation)
    DescribeTrustStoreRevocationsInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    DescribeTrustStoreRevocationsInput.add_member(:revocation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationIds, location_name: 'RevocationIds', traits: {"smithy.api#documentation" => "<p>The revocation IDs of the revocation files you want to describe.</p>"}))
    DescribeTrustStoreRevocationsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>"}))
    DescribeTrustStoreRevocationsInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeTrustStoreRevocationsInput.type = Types::DescribeTrustStoreRevocationsInput
    DescribeTrustStoreRevocationsOutput.add_member(:trust_store_revocations, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationResponse, location_name: 'TrustStoreRevocations', traits: {"smithy.api#documentation" => "<p>Information about the revocation file in the trust store.</p>"}))
    DescribeTrustStoreRevocationsOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeTrustStoreRevocationsOutput.type = Types::DescribeTrustStoreRevocationsOutput
    DescribeTrustStoresInput.add_member(:trust_store_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArns, location_name: 'TrustStoreArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>"}))
    DescribeTrustStoresInput.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the trust stores.</p>"}))
    DescribeTrustStoresInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>"}))
    DescribeTrustStoresInput.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with this call.</p>"}))
    DescribeTrustStoresInput.type = Types::DescribeTrustStoresInput
    DescribeTrustStoresOutput.add_member(:trust_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStores, location_name: 'TrustStores', traits: {"smithy.api#documentation" => "<p>Information about the trust stores.</p>"}))
    DescribeTrustStoresOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the marker for the next set of results.\n      Otherwise, this is null.</p>"}))
    DescribeTrustStoresOutput.type = Types::DescribeTrustStoresOutput
    DuplicateListenerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DuplicateListenerException.type = Types::DuplicateListenerException
    DuplicateLoadBalancerNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DuplicateLoadBalancerNameException.type = Types::DuplicateLoadBalancerNameException
    DuplicateTagKeysException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DuplicateTagKeysException.type = Types::DuplicateTagKeysException
    DuplicateTargetGroupNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DuplicateTargetGroupNameException.type = Types::DuplicateTargetGroupNameException
    DuplicateTrustStoreNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    DuplicateTrustStoreNameException.type = Types::DuplicateTrustStoreNameException
    EnablePrefixForIpv6SourceNatEnum.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "on"}))
    EnablePrefixForIpv6SourceNatEnum.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "off"}))
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'on', traits: {"smithy.api#enumValue" => "on"}))
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'off', traits: {"smithy.api#enumValue" => "off"}))
    FixedResponseActionConfig.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedResponseActionMessage, location_name: 'MessageBody', traits: {"smithy.api#documentation" => "<p>The message.</p>"}))
    FixedResponseActionConfig.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedResponseActionStatusCode, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The HTTP response code (2XX, 4XX, or 5XX).</p>", "smithy.api#required" => {}}))
    FixedResponseActionConfig.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedResponseActionContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type.</p>\n         <p>Valid Values: text/plain | text/css | text/html | application/javascript |\n      application/json</p>"}))
    FixedResponseActionConfig.type = Types::FixedResponseActionConfig
    ForwardActionConfig.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupList, location_name: 'TargetGroups', traits: {"smithy.api#documentation" => "<p>The target groups. For Network Load Balancers, you can specify a single target\n      group.</p>"}))
    ForwardActionConfig.add_member(:target_group_stickiness_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStickinessConfig, location_name: 'TargetGroupStickinessConfig', traits: {"smithy.api#documentation" => "<p>The target group stickiness for the rule.</p>"}))
    ForwardActionConfig.type = Types::ForwardActionConfig
    GetResourcePolicyInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The content of the resource policy.</p>"}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetTrustStoreCaCertificatesBundleInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    GetTrustStoreCaCertificatesBundleInput.type = Types::GetTrustStoreCaCertificatesBundleInput
    GetTrustStoreCaCertificatesBundleOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The ca certificate bundles Amazon S3 URI.</p>"}))
    GetTrustStoreCaCertificatesBundleOutput.type = Types::GetTrustStoreCaCertificatesBundleOutput
    GetTrustStoreRevocationContentInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    GetTrustStoreRevocationContentInput.add_member(:revocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationId, location_name: 'RevocationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The revocation ID of the revocation file.</p>", "smithy.api#required" => {}}))
    GetTrustStoreRevocationContentInput.type = Types::GetTrustStoreRevocationContentInput
    GetTrustStoreRevocationContentOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The revocation files Amazon S3 URI.</p>"}))
    GetTrustStoreRevocationContentOutput.type = Types::GetTrustStoreRevocationContentOutput
    HealthUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    HealthUnavailableException.type = Types::HealthUnavailableException
    HostHeaderConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The host names. The maximum size of each name is 128 characters. The comparison is\n      case insensitive. The following wildcard characters are supported: * (matches 0 or more\n      characters) and ? (matches exactly 1 character). You must include at least one \".\" \n      character. You can include only alphabetical characters after the final \".\" character.</p>\n         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches\n      the host name.</p>"}))
    HostHeaderConditionConfig.type = Types::HostHeaderConditionConfig
    HttpHeaderConditionConfig.add_member(:http_header_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpHeaderConditionName, location_name: 'HttpHeaderName', traits: {"smithy.api#documentation" => "<p>The name of the HTTP header field. The maximum size is 40 characters. The header name is\n      case insensitive. The allowed characters are specified by RFC 7230. Wildcards are not\n      supported.</p>\n         <p>You can't use an HTTP header condition to specify the host header. Instead, use a <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#host-conditions\">host condition</a>.</p>"}))
    HttpHeaderConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The strings to compare against the value of the HTTP header. The maximum size of\n      each string is 128 characters. The comparison strings are case insensitive. The following\n      wildcard characters are supported: * (matches 0 or more characters) and ? (matches exactly 1\n      character).</p>\n         <p>If the same header appears multiple times in the request, we search them in order until a\n      match is found.</p>\n         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches\n      the value of the HTTP header. To require that all of the strings are a match, create one\n      condition per string.</p>"}))
    HttpHeaderConditionConfig.type = Types::HttpHeaderConditionConfig
    HttpRequestMethodConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The name of the request method. The maximum size is 40 characters. The allowed characters\n      are A-Z, hyphen (-), and underscore (_). The comparison is case sensitive. Wildcards are not\n      supported; therefore, the method name must be an exact match.</p>\n         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches\n      the HTTP request method. We recommend that you route GET and HEAD requests in the same way,\n      because the response to a HEAD request may be cached.</p>"}))
    HttpRequestMethodConditionConfig.type = Types::HttpRequestMethodConditionConfig
    IncompatibleProtocolsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    IncompatibleProtocolsException.type = Types::IncompatibleProtocolsException
    InsufficientCapacityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InvalidCaCertificatesBundleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidCaCertificatesBundleException.type = Types::InvalidCaCertificatesBundleException
    InvalidConfigurationRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidConfigurationRequestException.type = Types::InvalidConfigurationRequestException
    InvalidLoadBalancerActionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidLoadBalancerActionException.type = Types::InvalidLoadBalancerActionException
    InvalidRevocationContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidRevocationContentException.type = Types::InvalidRevocationContentException
    InvalidSchemeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidSchemeException.type = Types::InvalidSchemeException
    InvalidSecurityGroupException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidSecurityGroupException.type = Types::InvalidSecurityGroupException
    InvalidSubnetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidSubnetException.type = Types::InvalidSubnetException
    InvalidTargetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    InvalidTargetException.type = Types::InvalidTargetException
    IpAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "dualstack"}))
    IpAddressType.add_member(:dualstack_without_public_ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK_WITHOUT_PUBLIC_IPV4', traits: {"smithy.api#enumValue" => "dualstack-without-public-ipv4"}))
    IpamPools.add_member(:ipv4_ipam_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpamPoolId, location_name: 'Ipv4IpamPoolId', traits: {"smithy.api#documentation" => "<p>The ID of the IPv4 IPAM pool.</p>"}))
    IpamPools.type = Types::IpamPools
    Limit.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the limit. The possible values are:</p>\n         <ul>\n            <li>\n               <p>application-load-balancers</p>\n            </li>\n            <li>\n               <p>condition-values-per-alb-rule</p>\n            </li>\n            <li>\n               <p>condition-wildcards-per-alb-rule</p>\n            </li>\n            <li>\n               <p>gateway-load-balancers</p>\n            </li>\n            <li>\n               <p>gateway-load-balancers-per-vpc</p>\n            </li>\n            <li>\n               <p>geneve-target-groups</p>\n            </li>\n            <li>\n               <p>listeners-per-application-load-balancer</p>\n            </li>\n            <li>\n               <p>listeners-per-network-load-balancer</p>\n            </li>\n            <li>\n               <p>network-load-balancers</p>\n            </li>\n            <li>\n               <p>rules-per-application-load-balancer</p>\n            </li>\n            <li>\n               <p>target-groups</p>\n            </li>\n            <li>\n               <p>target-groups-per-action-on-application-load-balancer</p>\n            </li>\n            <li>\n               <p>target-groups-per-action-on-network-load-balancer</p>\n            </li>\n            <li>\n               <p>target-groups-per-application-load-balancer</p>\n            </li>\n            <li>\n               <p>targets-per-application-load-balancer</p>\n            </li>\n            <li>\n               <p>targets-per-availability-zone-per-gateway-load-balancer</p>\n            </li>\n            <li>\n               <p>targets-per-availability-zone-per-network-load-balancer</p>\n            </li>\n            <li>\n               <p>targets-per-network-load-balancer</p>\n            </li>\n         </ul>"}))
    Limit.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Max, location_name: 'Max', traits: {"smithy.api#documentation" => "<p>The maximum value of the limit.</p>"}))
    Limit.type = Types::Limit
    Limits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Limit)
    ListOfDescribeTargetHealthIncludeOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetHealthInputIncludeEnum)
    ListOfString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue)
    Listener.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    Listener.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>"}))
    Listener.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port on which the load balancer is listening.</p>"}))
    Listener.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol for connections from clients to the load balancer.</p>"}))
    Listener.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>[HTTPS or TLS listener] The default certificate for the listener.</p>"}))
    Listener.add_member(:ssl_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyName, location_name: 'SslPolicy', traits: {"smithy.api#documentation" => "<p>[HTTPS or TLS listener] The security policy that defines which protocols and ciphers are\n      supported.</p>"}))
    Listener.add_member(:default_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'DefaultActions', traits: {"smithy.api#documentation" => "<p>The default actions for the listener.</p>"}))
    Listener.add_member(:alpn_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: 'AlpnPolicy', traits: {"smithy.api#documentation" => "<p>[TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN)\n      policy.</p>"}))
    Listener.add_member(:mutual_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: 'MutualAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual authentication configuration information.</p>"}))
    Listener.type = Types::Listener
    ListenerArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn)
    ListenerAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttributeKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>\n         <p>The following attribute is supported by Network Load Balancers, and Gateway Load Balancers.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>tcp.idle_timeout.seconds</code> - The tcp idle timeout value, in seconds. The \n          valid range is 60-6000 seconds. The default is 350 seconds.</p>\n            </li>\n         </ul>\n         <p>The following attributes are only supported by Application Load Balancers.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert_serial_number.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert-Serial-Number</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert_issuer.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert-Issuer</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert_subject.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert-Subject</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert_validity.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert-Validity</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert_leaf.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert-Leaf</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_mtls_clientcert.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Mtls-Clientcert</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_tls_version.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Tls-Version</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.request.x_amzn_tls_cipher_suite.header_name</code> - \n          Enables you to modify the header name of the  \n          <b>X-Amzn-Tls-Cipher-Suite</b> HTTP request header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.server.enabled</code> - \n          Enables you to allow or remove the HTTP response server header.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.strict_transport_security.header_value</code> - \n          Informs browsers that the site should only be accessed using HTTPS, and that \n          any future attempts to access it using HTTP should automatically be converted \n          to HTTPS.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_allow_origin.header_value</code> - \n          Specifies which origins are allowed to access the server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_allow_methods.header_value</code> - \n          Returns which HTTP methods are allowed when accessing the server from a different \n          origin.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_allow_headers.header_value</code> - \n          Specifies which headers can be used during the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_allow_credentials.header_value</code> - \n          Indicates whether the browser should include credentials such as cookies or \n          authentication when making requests.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_expose_headers.header_value</code> - \n          Returns which headers the browser can expose to the requesting client.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.access_control_max_age.header_value</code> - \n          Specifies how long the results of a preflight request can be cached, in seconds.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.content_security_policy.header_value</code> - \n          Specifies restrictions enforced by the browser to help minimize the risk of certain \n          types of security threats.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.x_content_type_options.header_value</code> - \n          Indicates whether the MIME types advertised in the <b>Content-Type</b> \n          headers should be followed and not be changed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.response.x_frame_options.header_value</code> - Indicates \n          whether the browser is allowed to render a page in a <b>frame</b>, \n          <b>iframe</b>, <b>embed</b> or \n          <b>object</b>.</p>\n            </li>\n         </ul>"}))
    ListenerAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>"}))
    ListenerAttribute.type = Types::ListenerAttribute
    ListenerAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttribute)
    ListenerNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    ListenerNotFoundException.type = Types::ListenerNotFoundException
    Listeners.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Listener)
    LoadBalancer.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>"}))
    LoadBalancer.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'DNSName', traits: {"smithy.api#documentation" => "<p>The public DNS name of the load balancer.</p>"}))
    LoadBalancer.add_member(:canonical_hosted_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CanonicalHostedZoneId, location_name: 'CanonicalHostedZoneId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>"}))
    LoadBalancer.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the load balancer was created.</p>"}))
    LoadBalancer.add_member(:load_balancer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerName, location_name: 'LoadBalancerName', traits: {"smithy.api#documentation" => "<p>The name of the load balancer.</p>"}))
    LoadBalancer.add_member(:scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: 'Scheme', traits: {"smithy.api#documentation" => "<p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an\n      Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.\n      Therefore, Internet-facing load balancers can route requests from clients over the\n      internet.</p>\n         <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an\n      internal load balancer is publicly resolvable to the private IP addresses of the nodes.\n      Therefore, internal load balancers can route requests only from clients with access to the VPC\n      for the load balancer.</p>"}))
    LoadBalancer.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the load balancer.</p>"}))
    LoadBalancer.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the load balancer.</p>"}))
    LoadBalancer.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of load balancer.</p>"}))
    LoadBalancer.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The subnets for the load balancer.</p>"}))
    LoadBalancer.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups for the load balancer.</p>"}))
    LoadBalancer.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The type of IP addresses used for public or private connections by the subnets \n      attached to your load balancer.</p>\n         <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), \n      <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> \n      (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> \n      (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>"}))
    LoadBalancer.add_member(:customer_owned_ipv4_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerOwnedIpv4Pool, location_name: 'CustomerOwnedIpv4Pool', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool.</p>"}))
    LoadBalancer.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic, location_name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic', traits: {"smithy.api#documentation" => "<p>Indicates whether to evaluate inbound security group rules for traffic sent to a \n      Network Load Balancer through Amazon Web Services PrivateLink.</p>"}))
    LoadBalancer.add_member(:enable_prefix_for_ipv6_source_nat, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: 'EnablePrefixForIpv6SourceNat', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix \n      from each subnet for source NAT. The IP address type must be <code>dualstack</code>.\n      The default value is <code>off</code>.</p>"}))
    LoadBalancer.add_member(:ipam_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: IpamPools, location_name: 'IpamPools', traits: {"smithy.api#documentation" => "<p>[Application Load Balancers] The IPAM pool in use by the load balancer, if configured.</p>"}))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancerAddress.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The static IP address.</p>"}))
    LoadBalancerAddress.add_member(:allocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AllocationId, location_name: 'AllocationId', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The allocation ID of the Elastic IP address for an\n      internal-facing load balancer.</p>"}))
    LoadBalancerAddress.add_member(:private_i_pv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIPv4Address, location_name: 'PrivateIPv4Address', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>"}))
    LoadBalancerAddress.add_member(:i_pv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPv6Address, location_name: 'IPv6Address', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The IPv6 address.</p>"}))
    LoadBalancerAddress.type = Types::LoadBalancerAddress
    LoadBalancerAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAddress)
    LoadBalancerArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn)
    LoadBalancerAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributeKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>\n         <p>The following attributes are supported by all load balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deletion_protection.enabled</code> - Indicates whether deletion protection is\n          enabled. The value is <code>true</code> or <code>false</code>. The default is\n            <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross-zone load\n          balancing is enabled. The possible values are <code>true</code> and <code>false</code>.\n          The default for Network Load Balancers and Gateway Load Balancers is <code>false</code>. \n          The default for Application Load Balancers is <code>true</code>, and can't be changed.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported by both Application Load Balancers and Network Load\n      Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>access_logs.s3.enabled</code> - Indicates whether access logs are enabled. The\n          value is <code>true</code> or <code>false</code>. The default is\n          <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>access_logs.s3.bucket</code> - The name of the S3 bucket for the access logs.\n          This attribute is required if access logs are enabled. The bucket must exist in the same\n          region as the load balancer and have a bucket policy that grants Elastic Load Balancing\n          permissions to write to the bucket.</p>\n            </li>\n            <li>\n               <p>\n                  <code>access_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the\n          access logs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ipv6.deny_all_igw_traffic</code> - Blocks internet gateway (IGW) access to the\n          load balancer. It is set to <code>false</code> for internet-facing load balancers and\n            <code>true</code> for internal load balancers, preventing unintended access to your\n          internal load balancer through an internet gateway.</p>\n            </li>\n            <li>\n               <p>\n                  <code>zonal_shift.config.enabled</code> - Indicates whether zonal shift is \n          enabled. The possible values are <code>true</code> and <code>false</code>. The \n          default is <code>false</code>.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported by only Application Load Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>idle_timeout.timeout_seconds</code> - The idle timeout value, in seconds. The\n          valid range is 1-4000 seconds. The default is 60 seconds.</p>\n            </li>\n            <li>\n               <p>\n                  <code>client_keep_alive.seconds</code> - The client keep alive value, in seconds. The \n          valid range is 60-604800 seconds. The default is 3600 seconds.</p>\n            </li>\n            <li>\n               <p>\n                  <code>connection_logs.s3.enabled</code> - Indicates whether connection logs are enabled. The\n          value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>connection_logs.s3.bucket</code> - The name of the S3 bucket for the connection logs.\n          This attribute is required if connection logs are enabled. The bucket must exist in the same\n          region as the load balancer and have a bucket policy that grants Elastic Load Balancing\n          permissions to write to the bucket.</p>\n            </li>\n            <li>\n               <p>\n                  <code>connection_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the\n          connection logs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.desync_mitigation_mode</code> - Determines how the load balancer\n          handles requests that might pose a security risk to your application. The possible values\n          are <code>monitor</code>, <code>defensive</code>, and <code>strictest</code>. The default\n          is <code>defensive</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.drop_invalid_header_fields.enabled</code> - Indicates whether HTTP\n          headers with invalid header fields are removed by the load balancer (<code>true</code>) or\n          routed to targets (<code>false</code>). The default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.preserve_host_header.enabled</code> - Indicates whether the\n          Application Load Balancer should preserve the <code>Host</code> header in the HTTP request\n          and send it to the target without any change. The possible values are <code>true</code>\n          and <code>false</code>. The default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.x_amzn_tls_version_and_cipher_suite.enabled</code> - Indicates\n          whether the two headers (<code>x-amzn-tls-version</code> and\n            <code>x-amzn-tls-cipher-suite</code>), which contain information about the negotiated\n          TLS version and cipher suite, are added to the client request before sending it to the\n          target. The <code>x-amzn-tls-version</code> header has information about the TLS protocol\n          version negotiated with the client, and the <code>x-amzn-tls-cipher-suite</code> header\n          has information about the cipher suite negotiated with the client. Both headers are in\n          OpenSSL format. The possible values for the attribute are <code>true</code> and\n            <code>false</code>. The default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.xff_client_port.enabled</code> - Indicates whether the\n            <code>X-Forwarded-For</code> header should preserve the source port that the client used\n          to connect to the load balancer. The possible values are <code>true</code> and\n            <code>false</code>. The default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http.xff_header_processing.mode</code> - Enables you to modify,\n          preserve, or remove the <code>X-Forwarded-For</code> header in the HTTP request before the\n          Application Load Balancer sends the request to the target. The possible values are\n            <code>append</code>, <code>preserve</code>, and <code>remove</code>. The default is\n            <code>append</code>.</p>\n               <ul>\n                  <li>\n                     <p>If the value is <code>append</code>, the Application Load Balancer adds the client\n              IP address (of the last hop) to the <code>X-Forwarded-For</code> header in the HTTP\n              request before it sends it to targets.</p>\n                  </li>\n                  <li>\n                     <p>If the value is <code>preserve</code> the Application Load Balancer preserves the\n                <code>X-Forwarded-For</code> header in the HTTP request, and sends it to targets\n              without any change.</p>\n                  </li>\n                  <li>\n                     <p>If the value is <code>remove</code>, the Application Load Balancer removes the\n                <code>X-Forwarded-For</code> header in the HTTP request before it sends it to\n              targets.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <code>routing.http2.enabled</code> - Indicates whether HTTP/2 is enabled. The possible\n          values are <code>true</code> and <code>false</code>. The default is <code>true</code>.\n          Elastic Load Balancing requires that message header names contain only alphanumeric\n          characters and hyphens.</p>\n            </li>\n            <li>\n               <p>\n                  <code>waf.fail_open.enabled</code> - Indicates whether to allow a WAF-enabled load\n          balancer to route requests to targets if it is unable to forward the request to Amazon Web Services WAF. The possible values are <code>true</code> and <code>false</code>. The\n          default is <code>false</code>.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported by only Network Load Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>dns_record.client_routing_policy</code> - Indicates how traffic is \n          distributed among the load balancer Availability Zones. The possible values are \n          <code>availability_zone_affinity</code> with 100 percent zonal affinity, \n          <code>partial_availability_zone_affinity</code> with 85 percent zonal affinity, \n          and <code>any_availability_zone</code> with 0 percent zonal affinity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>secondary_ips.auto_assigned.per_subnet</code> - The number of secondary\n            IP addresses to configure for your load balancer nodes. Use to address port \n            allocation errors if you can't add targets. The valid range is 0 to 7. The \n            default is 0. After you set this value, you can't decrease it.</p>\n            </li>\n         </ul>"}))
    LoadBalancerAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>"}))
    LoadBalancerAttribute.type = Types::LoadBalancerAttribute
    LoadBalancerAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttribute)
    LoadBalancerNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerName)
    LoadBalancerNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    LoadBalancerNotFoundException.type = Types::LoadBalancerNotFoundException
    LoadBalancerSchemeEnum.add_member(:internet_facing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNET_FACING', traits: {"smithy.api#enumValue" => "internet-facing"}))
    LoadBalancerSchemeEnum.add_member(:internal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "internal"}))
    LoadBalancerState.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerStateEnum, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The state code. The initial state of the load balancer is <code>provisioning</code>. After\n      the load balancer is fully set up and ready to route traffic, its state is\n      <code>active</code>. If load balancer is routing traffic but does not have the resources it\n      needs to scale, its state is<code>active_impaired</code>. If the load balancer could not be\n      set up, its state is <code>failed</code>.</p>"}))
    LoadBalancerState.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StateReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A description of the state.</p>"}))
    LoadBalancerState.type = Types::LoadBalancerState
    LoadBalancerStateEnum.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    LoadBalancerStateEnum.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "provisioning"}))
    LoadBalancerStateEnum.add_member(:active_impaired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_IMPAIRED', traits: {"smithy.api#enumValue" => "active_impaired"}))
    LoadBalancerStateEnum.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    LoadBalancerTypeEnum.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "application"}))
    LoadBalancerTypeEnum.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK', traits: {"smithy.api#enumValue" => "network"}))
    LoadBalancerTypeEnum.add_member(:gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GATEWAY', traits: {"smithy.api#enumValue" => "gateway"}))
    LoadBalancers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancer)
    Matcher.add_member(:http_code, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpCode, location_name: 'HttpCode', traits: {"smithy.api#documentation" => "<p>For Application Load Balancers, you can specify values between 200 and 499, with the\n      default value being 200. You can specify multiple values (for example, \"200,202\") or a range of values (for example, \"200-299\").</p>\n         <p>For Network Load Balancers, you can specify values between 200 and 599, with the\n      default value being 200-399. You can specify multiple values (for example, \"200,202\") or a range of values (for example, \"200-299\").</p>\n         <p>For Gateway Load Balancers, this must be \"200–399\".</p>\n         <p>Note that when using shorthand syntax, some values such as commas need to be\n      escaped.</p>"}))
    Matcher.add_member(:grpc_code, Smithy::Schema::Shapes::ShapeRef.new(shape: GrpcCode, location_name: 'GrpcCode', traits: {"smithy.api#documentation" => "<p>You can specify values between 0 and 99. You can specify multiple values (for example,\n      \"0,1\") or a range of values (for example, \"0-5\"). The default value is 12.</p>"}))
    Matcher.type = Types::Matcher
    MinimumLoadBalancerCapacity.add_member(:capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'CapacityUnits', traits: {"smithy.api#documentation" => "<p>The number of capacity units.</p>"}))
    MinimumLoadBalancerCapacity.type = Types::MinimumLoadBalancerCapacity
    MitigationInEffectEnum.add_member(:yes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YES', traits: {"smithy.api#enumValue" => "yes"}))
    MitigationInEffectEnum.add_member(:no, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "no"}))
    ModifyCapacityReservationInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    ModifyCapacityReservationInput.add_member(:minimum_load_balancer_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: 'MinimumLoadBalancerCapacity', traits: {"smithy.api#documentation" => "<p>The minimum load balancer capacity reserved.</p>"}))
    ModifyCapacityReservationInput.add_member(:reset_capacity_reservation, Smithy::Schema::Shapes::ShapeRef.new(shape: ResetCapacityReservation, location_name: 'ResetCapacityReservation', traits: {"smithy.api#documentation" => "<p>Resets the capacity reservation.</p>"}))
    ModifyCapacityReservationInput.type = Types::ModifyCapacityReservationInput
    ModifyCapacityReservationOutput.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTime, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the capacity reservation was modified.</p>"}))
    ModifyCapacityReservationOutput.add_member(:decrease_requests_remaining, Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseRequestsRemaining, location_name: 'DecreaseRequestsRemaining', traits: {"smithy.api#documentation" => "<p>The amount of daily capacity decreases remaining.</p>"}))
    ModifyCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumLoadBalancerCapacity, location_name: 'MinimumLoadBalancerCapacity', traits: {"smithy.api#documentation" => "<p>The requested minimum capacity reservation for the load balancer</p>"}))
    ModifyCapacityReservationOutput.add_member(:capacity_reservation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalCapacityReservationStates, location_name: 'CapacityReservationState', traits: {"smithy.api#documentation" => "<p>The state of the capacity reservation.</p>"}))
    ModifyCapacityReservationOutput.type = Types::ModifyCapacityReservationOutput
    ModifyIpPoolsInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    ModifyIpPoolsInput.add_member(:ipam_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: IpamPools, location_name: 'IpamPools', traits: {"smithy.api#documentation" => "<p>The IPAM pools to be modified.</p>"}))
    ModifyIpPoolsInput.add_member(:remove_ipam_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveIpamPools, location_name: 'RemoveIpamPools', traits: {"smithy.api#documentation" => "<p>Remove the IP pools in use by the load balancer.</p>"}))
    ModifyIpPoolsInput.type = Types::ModifyIpPoolsInput
    ModifyIpPoolsOutput.add_member(:ipam_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: IpamPools, location_name: 'IpamPools', traits: {"smithy.api#documentation" => "<p>The IPAM pool ID.</p>"}))
    ModifyIpPoolsOutput.type = Types::ModifyIpPoolsOutput
    ModifyListenerAttributesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    ModifyListenerAttributesInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttributes, location_name: 'Attributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The listener attributes.</p>", "smithy.api#required" => {}}))
    ModifyListenerAttributesInput.type = Types::ModifyListenerAttributesInput
    ModifyListenerAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the listener attributes.</p>"}))
    ModifyListenerAttributesOutput.type = Types::ModifyListenerAttributesOutput
    ModifyListenerInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    ModifyListenerInput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port for connections from clients to the load balancer. You can't specify a port for\n      a Gateway Load Balancer.</p>"}))
    ModifyListenerInput.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol for connections from clients to the load balancer. Application Load Balancers\n      support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and\n      TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is\n      enabled. You can't specify a protocol for a Gateway Load Balancer.</p>"}))
    ModifyListenerInput.add_member(:ssl_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyName, location_name: 'SslPolicy', traits: {"smithy.api#documentation" => "<p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are\n      supported.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html\">Security policies</a> in the <i>Application Load Balancers Guide</i> or\n        <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html\">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>"}))
    ModifyListenerInput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide\n      exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set\n        <code>IsDefault</code>.</p>"}))
    ModifyListenerInput.add_member(:default_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'DefaultActions', traits: {"smithy.api#documentation" => "<p>The actions for the default rule.</p>"}))
    ModifyListenerInput.add_member(:alpn_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AlpnPolicyName, location_name: 'AlpnPolicy', traits: {"smithy.api#documentation" => "<p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You\n      can specify one policy name. The following are the possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HTTP1Only</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Only</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Optional</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>HTTP2Preferred</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>None</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies\">ALPN\n        policies</a> in the <i>Network Load Balancers Guide</i>.</p>"}))
    ModifyListenerInput.add_member(:mutual_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: MutualAuthenticationAttributes, location_name: 'MutualAuthentication', traits: {"smithy.api#documentation" => "<p>The mutual authentication configuration information.</p>"}))
    ModifyListenerInput.type = Types::ModifyListenerInput
    ModifyListenerOutput.add_member(:listeners, Smithy::Schema::Shapes::ShapeRef.new(shape: Listeners, location_name: 'Listeners', traits: {"smithy.api#documentation" => "<p>Information about the modified listener.</p>"}))
    ModifyListenerOutput.type = Types::ModifyListenerOutput
    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: 'Attributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The load balancer attributes.</p>", "smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.type = Types::ModifyLoadBalancerAttributesInput
    ModifyLoadBalancerAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the load balancer attributes.</p>"}))
    ModifyLoadBalancerAttributesOutput.type = Types::ModifyLoadBalancerAttributesOutput
    ModifyRuleInput.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>", "smithy.api#required" => {}}))
    ModifyRuleInput.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditionList, location_name: 'Conditions', traits: {"smithy.api#documentation" => "<p>The conditions.</p>"}))
    ModifyRuleInput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions.</p>"}))
    ModifyRuleInput.type = Types::ModifyRuleInput
    ModifyRuleOutput.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Information about the modified rule.</p>"}))
    ModifyRuleOutput.type = Types::ModifyRuleOutput
    ModifyTargetGroupAttributesInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    ModifyTargetGroupAttributesInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: 'Attributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The target group attributes.</p>", "smithy.api#required" => {}}))
    ModifyTargetGroupAttributesInput.type = Types::ModifyTargetGroupAttributesInput
    ModifyTargetGroupAttributesOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>Information about the target group attributes.</p>"}))
    ModifyTargetGroupAttributesOutput.type = Types::ModifyTargetGroupAttributesOutput
    ModifyTargetGroupInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    ModifyTargetGroupInput.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol the load balancer uses when performing health checks on targets. For\n      Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load\n      Balancers, the default is TCP. The TCP protocol is not supported for health checks if the\n      protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the\n      protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP\n      protocols are not supported for health checks.</p>"}))
    ModifyTargetGroupInput.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port the load balancer uses when performing health checks on targets.</p>"}))
    ModifyTargetGroupInput.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>\n         <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>\n         <p>[GRPC protocol version] The path of a custom health check method with the format\n      /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>"}))
    ModifyTargetGroupInput.add_member(:health_check_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: 'HealthCheckEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether health checks are enabled.</p>"}))
    ModifyTargetGroupInput.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The approximate amount of time, in seconds, between health checks of an individual target.</p>"}))
    ModifyTargetGroupInput.add_member(:health_check_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: 'HealthCheckTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means\n      a failed health check.</p>"}))
    ModifyTargetGroupInput.add_member(:healthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'HealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health checks successes required before considering an unhealthy\n      target healthy.</p>"}))
    ModifyTargetGroupInput.add_member(:unhealthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'UnhealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health check failures required before considering the target\n      unhealthy.</p>"}))
    ModifyTargetGroupInput.add_member(:matcher, Smithy::Schema::Shapes::ShapeRef.new(shape: Matcher, location_name: 'Matcher', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful \n      response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range \n      is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target \n      groups with a protocol of GENEVE, the range is 200-399.</p>"}))
    ModifyTargetGroupInput.type = Types::ModifyTargetGroupInput
    ModifyTargetGroupOutput.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroups, location_name: 'TargetGroups', traits: {"smithy.api#documentation" => "<p>Information about the modified target group.</p>"}))
    ModifyTargetGroupOutput.type = Types::ModifyTargetGroupOutput
    ModifyTrustStoreInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'CaCertificatesBundleS3Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon S3 bucket for the ca certificates bundle.</p>", "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'CaCertificatesBundleS3Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon S3 path for the ca certificates bundle.</p>", "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'CaCertificatesBundleS3ObjectVersion', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>"}))
    ModifyTrustStoreInput.type = Types::ModifyTrustStoreInput
    ModifyTrustStoreOutput.add_member(:trust_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStores, location_name: 'TrustStores', traits: {"smithy.api#documentation" => "<p>Information about the modified trust store.</p>"}))
    ModifyTrustStoreOutput.type = Types::ModifyTrustStoreOutput
    MutualAuthenticationAttributes.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The client certificate handling method. Options are <code>off</code>, \n      <code>passthrough</code> or <code>verify</code>. The default value is \n      <code>off</code>.</p>"}))
    MutualAuthenticationAttributes.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>"}))
    MutualAuthenticationAttributes.add_member(:ignore_client_certificate_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: IgnoreClientCertificateExpiry, location_name: 'IgnoreClientCertificateExpiry', traits: {"smithy.api#documentation" => "<p>Indicates whether expired client certificates are ignored.</p>"}))
    MutualAuthenticationAttributes.add_member(:trust_store_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreAssociationStatusEnum, location_name: 'TrustStoreAssociationStatus', traits: {"smithy.api#documentation" => "<p>Indicates a shared trust stores association status.</p>"}))
    MutualAuthenticationAttributes.add_member(:advertise_trust_store_ca_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvertiseTrustStoreCaNamesEnum, location_name: 'AdvertiseTrustStoreCaNames', traits: {"smithy.api#documentation" => "<p>Indicates whether trust store CA certificate names are advertised.</p>"}))
    MutualAuthenticationAttributes.type = Types::MutualAuthenticationAttributes
    OperationNotPermittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    PathPatternConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The path patterns to compare against the request URL. The maximum size of each\n      string is 128 characters. The comparison is case sensitive. The following wildcard characters\n      are supported: * (matches 0 or more characters) and ? (matches exactly 1 character).</p>\n         <p>If you specify multiple strings, the condition is satisfied if one of them matches the\n      request URL. The path pattern is compared only to the path of the URL, not to its query\n      string. To compare against the query string, use a <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#query-string-conditions\">query string condition</a>.</p>"}))
    PathPatternConditionConfig.type = Types::PathPatternConditionConfig
    PriorRequestNotCompleteException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    PriorRequestNotCompleteException.type = Types::PriorRequestNotCompleteException
    PriorityInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    PriorityInUseException.type = Types::PriorityInUseException
    ProtocolEnum.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    ProtocolEnum.add_member(:https, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    ProtocolEnum.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    ProtocolEnum.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS', traits: {"smithy.api#enumValue" => "TLS"}))
    ProtocolEnum.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    ProtocolEnum.add_member(:tcp_udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP_UDP', traits: {"smithy.api#enumValue" => "TCP_UDP"}))
    ProtocolEnum.add_member(:geneve, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENEVE', traits: {"smithy.api#enumValue" => "GENEVE"}))
    QueryStringConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringKeyValuePairList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The key/value pairs or values to find in the query string. The maximum size of\n      each string is 128 characters. The comparison is case insensitive. The following wildcard\n      characters are supported: * (matches 0 or more characters) and ? (matches exactly 1\n      character). To search for a literal '*' or '?' character in a query string, you must escape\n      these characters in <code>Values</code> using a '\\' character.</p>\n         <p>If you specify multiple key/value pairs or values, the condition is satisfied if one of\n      them is found in the query string.</p>"}))
    QueryStringConditionConfig.type = Types::QueryStringConditionConfig
    QueryStringKeyValuePair.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key. You can omit the key.</p>"}))
    QueryStringKeyValuePair.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value.</p>"}))
    QueryStringKeyValuePair.type = Types::QueryStringKeyValuePair
    QueryStringKeyValuePairList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringKeyValuePair)
    RedirectActionConfig.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol. You can specify HTTP, HTTPS, or \#{protocol}. You can redirect HTTP to HTTP,\n      HTTP to HTTPS, and HTTPS to HTTPS. You can't redirect HTTPS to HTTP.</p>"}))
    RedirectActionConfig.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionPort, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port. You can specify a value from 1 to 65535 or \#{port}.</p>"}))
    RedirectActionConfig.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionHost, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The hostname. This component is not percent-encoded. The hostname can contain\n      \#{host}.</p>"}))
    RedirectActionConfig.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionPath, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The absolute path, starting with the leading \"/\". This component is not percent-encoded.\n      The path can contain \#{host}, \#{path}, and \#{port}.</p>"}))
    RedirectActionConfig.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionQuery, location_name: 'Query', traits: {"smithy.api#documentation" => "<p>The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include\n      the leading \"?\", as it is automatically added. You can specify any of the reserved\n      keywords.</p>"}))
    RedirectActionConfig.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectActionStatusCodeEnum, location_name: 'StatusCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP\n      302).</p>", "smithy.api#required" => {}}))
    RedirectActionConfig.type = Types::RedirectActionConfig
    RedirectActionStatusCodeEnum.add_member(:http_301, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_301', traits: {"smithy.api#enumValue" => "HTTP_301"}))
    RedirectActionStatusCodeEnum.add_member(:http_302, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_302', traits: {"smithy.api#enumValue" => "HTTP_302"}))
    RegisterTargetsInput.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>", "smithy.api#required" => {}}))
    RegisterTargetsInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescriptions, location_name: 'Targets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The targets.</p>", "smithy.api#required" => {}}))
    RegisterTargetsInput.type = Types::RegisterTargetsInput
    RegisterTargetsOutput.type = Types::RegisterTargetsOutput
    RemoveIpamPoolEnum.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ipv4', traits: {"smithy.api#enumValue" => "ipv4"}))
    RemoveIpamPools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveIpamPoolEnum)
    RemoveListenerCertificatesInput.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn, location_name: 'ListenerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    RemoveListenerCertificatesInput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The certificate to remove. You can specify one certificate per call. Set\n        <code>CertificateArn</code> to the certificate ARN but do not set\n      <code>IsDefault</code>.</p>", "smithy.api#required" => {}}))
    RemoveListenerCertificatesInput.type = Types::RemoveListenerCertificatesInput
    RemoveListenerCertificatesOutput.type = Types::RemoveListenerCertificatesOutput
    RemoveTagsInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArns, location_name: 'ResourceArns', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tag keys for the tags to remove.</p>", "smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    RemoveTrustStoreRevocationsInput.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>", "smithy.api#required" => {}}))
    RemoveTrustStoreRevocationsInput.add_member(:revocation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationIds, location_name: 'RevocationIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The revocation IDs of the revocation files you want to remove.</p>", "smithy.api#required" => {}}))
    RemoveTrustStoreRevocationsInput.type = Types::RemoveTrustStoreRevocationsInput
    RemoveTrustStoreRevocationsOutput.type = Types::RemoveTrustStoreRevocationsOutput
    ResourceArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevocationContent.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket for the revocation file.</p>"}))
    RevocationContent.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The Amazon S3 path for the revocation file.</p>"}))
    RevocationContent.add_member(:s3_object_version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'S3ObjectVersion', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object version of the revocation file.</p>"}))
    RevocationContent.add_member(:revocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationType, location_name: 'RevocationType', traits: {"smithy.api#documentation" => "<p>The type of revocation file.</p>"}))
    RevocationContent.type = Types::RevocationContent
    RevocationContentNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    RevocationContentNotFoundException.type = Types::RevocationContentNotFoundException
    RevocationContents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationContent)
    RevocationIdNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    RevocationIdNotFoundException.type = Types::RevocationIdNotFoundException
    RevocationIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationId)
    RevocationType.add_member(:crl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRL', traits: {"smithy.api#enumValue" => "CRL"}))
    Rule.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    Rule.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority.</p>"}))
    Rule.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConditionList, location_name: 'Conditions', traits: {"smithy.api#documentation" => "<p>The conditions. Each rule can include zero or one of the following conditions:\n        <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and\n        <code>source-ip</code>, and zero or more of the following conditions:\n        <code>http-header</code> and <code>query-string</code>.</p>"}))
    Rule.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions. Each rule must include exactly one of the following types of actions:\n        <code>forward</code>, <code>redirect</code>, or <code>fixed-response</code>, and it must be\n      the last action to be performed.</p>"}))
    Rule.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: IsDefault, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Indicates whether this is the default rule.</p>"}))
    Rule.type = Types::Rule
    RuleArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn)
    RuleCondition.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionFieldName, location_name: 'Field', traits: {"smithy.api#documentation" => "<p>The field in the HTTP request. The following are the possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>http-header</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>http-request-method</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>host-header</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>path-pattern</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>query-string</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>source-ip</code>\n               </p>\n            </li>\n         </ul>"}))
    RuleCondition.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The condition value. Specify only when <code>Field</code> is <code>host-header</code> or\n        <code>path-pattern</code>. Alternatively, to specify multiple host names or multiple path\n      patterns, use <code>HostHeaderConfig</code> or <code>PathPatternConfig</code>.</p>\n         <p>If <code>Field</code> is <code>host-header</code> and you are not using\n        <code>HostHeaderConfig</code>, you can specify a single host name (for example,\n      my.example.com) in <code>Values</code>. A host name is case insensitive, can be up to 128\n      characters in length, and can contain any of the following characters.</p>\n         <ul>\n            <li>\n               <p>A-Z, a-z, 0-9</p>\n            </li>\n            <li>\n               <p>- .</p>\n            </li>\n            <li>\n               <p>* (matches 0 or more characters)</p>\n            </li>\n            <li>\n               <p>? (matches exactly 1 character)</p>\n            </li>\n         </ul>\n         <p>If <code>Field</code> is <code>path-pattern</code> and you are not using\n        <code>PathPatternConfig</code>, you can specify a single path pattern (for example, /img/*)\n      in <code>Values</code>. A path pattern is case-sensitive, can be up to 128 characters in\n      length, and can contain any of the following characters.</p>\n         <ul>\n            <li>\n               <p>A-Z, a-z, 0-9</p>\n            </li>\n            <li>\n               <p>_ - . $ / ~ \" ' @ : +</p>\n            </li>\n            <li>\n               <p>& (using &amp;)</p>\n            </li>\n            <li>\n               <p>* (matches 0 or more characters)</p>\n            </li>\n            <li>\n               <p>? (matches exactly 1 character)</p>\n            </li>\n         </ul>"}))
    RuleCondition.add_member(:host_header_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HostHeaderConditionConfig, location_name: 'HostHeaderConfig', traits: {"smithy.api#documentation" => "<p>Information for a host header condition. Specify only when <code>Field</code> is\n        <code>host-header</code>.</p>"}))
    RuleCondition.add_member(:path_pattern_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PathPatternConditionConfig, location_name: 'PathPatternConfig', traits: {"smithy.api#documentation" => "<p>Information for a path pattern condition. Specify only when <code>Field</code> is\n        <code>path-pattern</code>.</p>"}))
    RuleCondition.add_member(:http_header_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpHeaderConditionConfig, location_name: 'HttpHeaderConfig', traits: {"smithy.api#documentation" => "<p>Information for an HTTP header condition. Specify only when <code>Field</code> is\n        <code>http-header</code>.</p>"}))
    RuleCondition.add_member(:query_string_config, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringConditionConfig, location_name: 'QueryStringConfig', traits: {"smithy.api#documentation" => "<p>Information for a query string condition. Specify only when <code>Field</code> is\n        <code>query-string</code>.</p>"}))
    RuleCondition.add_member(:http_request_method_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpRequestMethodConditionConfig, location_name: 'HttpRequestMethodConfig', traits: {"smithy.api#documentation" => "<p>Information for an HTTP method condition. Specify only when <code>Field</code> is\n        <code>http-request-method</code>.</p>"}))
    RuleCondition.add_member(:source_ip_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIpConditionConfig, location_name: 'SourceIpConfig', traits: {"smithy.api#documentation" => "<p>Information for a source IP condition. Specify only when <code>Field</code> is\n        <code>source-ip</code>.</p>"}))
    RuleCondition.type = Types::RuleCondition
    RuleConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCondition)
    RuleNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    RuleNotFoundException.type = Types::RuleNotFoundException
    RulePriorityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriorityPair)
    RulePriorityPair.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule.</p>"}))
    RulePriorityPair.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The rule priority.</p>"}))
    RulePriorityPair.type = Types::RulePriorityPair
    Rules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    SSLPolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    SSLPolicyNotFoundException.type = Types::SSLPolicyNotFoundException
    SecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SetIpAddressTypeInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    SetIpAddressTypeInput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>\n         <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), \n      <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> \n      (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>\n         <p>Application Load Balancer authentication supports IPv4 addresses only when \n      connecting to an Identity Provider (IdP) or Amazon Cognito endpoint. Without a public \n      IPv4 address the load balancer can't complete the authentication process, resulting \n      in HTTP 500 errors.</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> \n      (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>", "smithy.api#required" => {}}))
    SetIpAddressTypeInput.type = Types::SetIpAddressTypeInput
    SetIpAddressTypeOutput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type.</p>"}))
    SetIpAddressTypeOutput.type = Types::SetIpAddressTypeOutput
    SetRulePrioritiesInput.add_member(:rule_priorities, Smithy::Schema::Shapes::ShapeRef.new(shape: RulePriorityList, location_name: 'RulePriorities', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The rule priorities.</p>", "smithy.api#required" => {}}))
    SetRulePrioritiesInput.type = Types::SetRulePrioritiesInput
    SetRulePrioritiesOutput.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Information about the rules.</p>"}))
    SetRulePrioritiesOutput.type = Types::SetRulePrioritiesOutput
    SetSecurityGroupsInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    SetSecurityGroupsInput.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IDs of the security groups.</p>", "smithy.api#required" => {}}))
    SetSecurityGroupsInput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic', traits: {"smithy.api#documentation" => "<p>Indicates whether to evaluate inbound security group rules for traffic sent to a \n      Network Load Balancer through Amazon Web Services PrivateLink. The default is <code>on</code>.</p>"}))
    SetSecurityGroupsInput.type = Types::SetSecurityGroupsInput
    SetSecurityGroupsOutput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups associated with the load balancer.</p>"}))
    SetSecurityGroupsOutput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: 'EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic', traits: {"smithy.api#documentation" => "<p>Indicates whether to evaluate inbound security group rules for traffic sent to a \n      Network Load Balancer through Amazon Web Services PrivateLink.</p>"}))
    SetSecurityGroupsOutput.type = Types::SetSecurityGroupsOutput
    SetSubnetsInput.add_member(:load_balancer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: 'LoadBalancerArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer.</p>", "smithy.api#required" => {}}))
    SetSubnetsInput.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You\n      must specify either subnets or subnet mappings.</p>\n         <p>[Application Load Balancers] You must specify subnets from at least two Availability\n      Zones.</p>\n         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>\n         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local\n      Zones.</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more \n      Availability Zones.</p>"}))
    SetSubnetsInput.add_member(:subnet_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: 'SubnetMappings', traits: {"smithy.api#documentation" => "<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You\n      must specify either subnets or subnet mappings.</p>\n         <p>[Application Load Balancers] You must specify subnets from at least two Availability\n      Zones. You can't specify Elastic IP addresses for your subnets.</p>\n         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>\n         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local\n      Zones.</p>\n         <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You\n      can specify one Elastic IP address per subnet if you need static IP addresses for your\n      internet-facing load balancer. For internal load balancers, you can specify one private IP\n      address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you\n      can specify one IPv6 address per subnet.</p>\n         <p>[Gateway Load Balancers] You can specify subnets from one or more Availability\n      Zones.</p>"}))
    SetSubnetsInput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type.</p>\n         <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), \n      <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> \n      (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>\n         <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> \n      (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>"}))
    SetSubnetsInput.add_member(:enable_prefix_for_ipv6_source_nat, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: 'EnablePrefixForIpv6SourceNat', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix \n      from each subnet for source NAT. The IP address type must be <code>dualstack</code>.\n      The default value is <code>off</code>.</p>"}))
    SetSubnetsInput.type = Types::SetSubnetsInput
    SetSubnetsOutput.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>Information about the subnets.</p>"}))
    SetSubnetsOutput.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type.</p>"}))
    SetSubnetsOutput.add_member(:enable_prefix_for_ipv6_source_nat, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePrefixForIpv6SourceNatEnum, location_name: 'EnablePrefixForIpv6SourceNat', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] Indicates whether to use an IPv6 prefix from each subnet for source NAT.</p>"}))
    SetSubnetsOutput.type = Types::SetSubnetsOutput
    SourceIpConditionConfig.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The source IP addresses, in CIDR format. You can use both IPv4 and IPv6 addresses.\n      Wildcards are not supported.</p>\n         <p>If you specify multiple addresses, the condition is satisfied if the source IP address of\n      the request matches one of the CIDR blocks. This condition is not satisfied by the addresses\n      in the X-Forwarded-For header. To search for addresses in the X-Forwarded-For header, use\n      an <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#http-header-conditions\">HTTP header condition</a>.</p>\n         <p>The total number of values must be less than, or equal to five.</p>"}))
    SourceIpConditionConfig.type = Types::SourceIpConditionConfig
    SourceNatIpv6Prefixes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNatIpv6Prefix)
    SslPolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicy)
    SslPolicy.add_member(:ssl_protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: SslProtocols, location_name: 'SslProtocols', traits: {"smithy.api#documentation" => "<p>The protocols.</p>"}))
    SslPolicy.add_member(:ciphers, Smithy::Schema::Shapes::ShapeRef.new(shape: Ciphers, location_name: 'Ciphers', traits: {"smithy.api#documentation" => "<p>The ciphers.</p>"}))
    SslPolicy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the policy.</p>"}))
    SslPolicy.add_member(:supported_load_balancer_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'SupportedLoadBalancerTypes', traits: {"smithy.api#documentation" => "<p> The supported load balancers. </p>"}))
    SslPolicy.type = Types::SslPolicy
    SslPolicyNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SslPolicyName)
    SslProtocols.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SslProtocol)
    SubnetMapping.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet.</p>"}))
    SubnetMapping.add_member(:allocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AllocationId, location_name: 'AllocationId', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The allocation ID of the Elastic IP address for an\n      internet-facing load balancer.</p>"}))
    SubnetMapping.add_member(:private_i_pv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIPv4Address, location_name: 'PrivateIPv4Address', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>"}))
    SubnetMapping.add_member(:i_pv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPv6Address, location_name: 'IPv6Address', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers] The IPv6 address.</p>"}))
    SubnetMapping.add_member(:source_nat_ipv6_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNatIpv6Prefix, location_name: 'SourceNatIpv6Prefix', traits: {"smithy.api#documentation" => "<p>[Network Load Balancers with UDP listeners] The IPv6 prefix to use for source NAT.\n      Specify an IPv6 prefix (/80 netmask) from the subnet CIDR block or <code>auto_assigned</code> \n      to use an IPv6 prefix selected at random from the subnet CIDR block.</p>"}))
    SubnetMapping.type = Types::SubnetMapping
    SubnetMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMapping)
    SubnetNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    SubnetNotFoundException.type = Types::SubnetNotFoundException
    Subnets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>"}))
    Tag.type = Types::Tag
    TagDescription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    TagDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags.</p>"}))
    TagDescription.type = Types::TagDescription
    TagDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagDescription)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetAdministrativeOverrideReasonEnum.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "AdministrativeOverride.Unknown"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:no_override_engaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_OVERRIDE_ENGAGED', traits: {"smithy.api#enumValue" => "AdministrativeOverride.NoOverride"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:zonal_shift_engaged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_ENGAGED', traits: {"smithy.api#enumValue" => "AdministrativeOverride.ZonalShiftActive"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:zonal_shift_delegated_to_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_DELEGATED_TO_DNS', traits: {"smithy.api#enumValue" => "AdministrativeOverride.ZonalShiftDelegatedToDns"}))
    TargetAdministrativeOverrideStateEnum.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "unknown"}))
    TargetAdministrativeOverrideStateEnum.add_member(:no_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_OVERRIDE', traits: {"smithy.api#enumValue" => "no_override"}))
    TargetAdministrativeOverrideStateEnum.add_member(:zonal_shift_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_ACTIVE', traits: {"smithy.api#enumValue" => "zonal_shift_active"}))
    TargetAdministrativeOverrideStateEnum.add_member(:zonal_shift_delegated_to_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_DELEGATED_TO_DNS', traits: {"smithy.api#enumValue" => "zonal_shift_delegated_to_dns"}))
    TargetDescription.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the target. If the target type of the target group is <code>instance</code>,\n      specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the\n      target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type\n      is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>", "smithy.api#required" => {}}))
    TargetDescription.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port on which the target is listening. If the target group protocol is GENEVE, the\n      supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load\n      Balancer must have at least one listener whose port matches the target group port. This \n      parameter is not used if the target is a Lambda function.</p>"}))
    TargetDescription.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneName, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>An Availability Zone or <code>all</code>. This determines whether the target receives \n      traffic from the load balancer nodes in the specified Availability Zone or from all enabled \n      Availability Zones for the load balancer.</p>\n         <p>For Application Load Balancer target groups, the specified Availability Zone value is only applicable \n      when cross-zone load balancing is off. Otherwise the parameter is ignored and treated \n      as <code>all</code>.</p>\n         <p>This parameter is not supported if the target type of the target group is\n      <code>instance</code> or <code>alb</code>.</p>\n         <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the target group, \n      the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside \n      the VPC, this parameter is required.</p>\n         <p>For Application Load Balancer target groups with cross-zone load balancing off, if the target type \n      is <code>ip</code> and the IP address is outside of the VPC for the target group, this should be an \n      Availability Zone inside the VPC for the target group.</p>\n         <p>If the target type is <code>lambda</code>, this parameter is optional and the only\n      supported value is <code>all</code>.</p>"}))
    TargetDescription.type = Types::TargetDescription
    TargetDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription)
    TargetGroup.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    TargetGroup.add_member(:target_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'TargetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the target group.</p>"}))
    TargetGroup.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol to use for routing traffic to the targets.</p>"}))
    TargetGroup.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port on which the targets are listening. This parameter is not used if the target is \n      a Lambda function.</p>"}))
    TargetGroup.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC for the targets.</p>"}))
    TargetGroup.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol to use to connect with the target. The GENEVE, TLS, UDP, and TCP_UDP\n      protocols are not supported for health checks.</p>"}))
    TargetGroup.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port to use to connect with the target.</p>"}))
    TargetGroup.add_member(:health_check_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckEnabled, location_name: 'HealthCheckEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether health checks are enabled.</p>"}))
    TargetGroup.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The approximate amount of time, in seconds, between health checks of an individual\n      target.</p>"}))
    TargetGroup.add_member(:health_check_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: 'HealthCheckTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, during which no response means a failed health\n      check.</p>"}))
    TargetGroup.add_member(:healthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'HealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health checks successes required before considering an unhealthy\n      target healthy.</p>"}))
    TargetGroup.add_member(:unhealthy_threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: 'UnhealthyThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health check failures required before considering the target\n      unhealthy.</p>"}))
    TargetGroup.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>The destination for health checks on the targets.</p>"}))
    TargetGroup.add_member(:matcher, Smithy::Schema::Shapes::ShapeRef.new(shape: Matcher, location_name: 'Matcher', traits: {"smithy.api#documentation" => "<p>The HTTP or gRPC codes to use when checking for a successful response from a\n      target.</p>"}))
    TargetGroup.add_member(:load_balancer_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: 'LoadBalancerArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the load balancer that routes traffic to this target\n      group. You can use each target group with only one load balancer.</p>"}))
    TargetGroup.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The type of target that you must specify when registering targets with this target group.\n      The possible values are <code>instance</code> (register targets by instance ID),\n        <code>ip</code> (register targets by IP address), <code>lambda</code> (register a single\n      Lambda function as a target), or <code>alb</code> (register a single Application Load Balancer\n      as a target).</p>"}))
    TargetGroup.add_member(:protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: 'ProtocolVersion', traits: {"smithy.api#documentation" => "<p>[HTTP/HTTPS protocol] The protocol version. The possible values are <code>GRPC</code>,\n        <code>HTTP1</code>, and <code>HTTP2</code>.</p>"}))
    TargetGroup.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupIpAddressTypeEnum, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type. The default value is <code>ipv4</code>.</p>"}))
    TargetGroup.type = Types::TargetGroup
    TargetGroupArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn)
    TargetGroupAssociationLimitException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TargetGroupAssociationLimitException.type = Types::TargetGroupAssociationLimitException
    TargetGroupAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttributeKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>\n         <p>The following attributes are supported by all load balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deregistration_delay.timeout_seconds</code> - The amount of time, in seconds,\n          for Elastic Load Balancing to wait before changing the state of a deregistering target\n          from <code>draining</code> to <code>unused</code>. The range is 0-3600 seconds. The\n          default value is 300 seconds. If the target is a Lambda function, this attribute is not\n          supported.</p>\n            </li>\n            <li>\n               <p>\n                  <code>stickiness.enabled</code> - Indicates whether target stickiness is enabled. The\n          value is <code>true</code> or <code>false</code>. The default is\n          <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>stickiness.type</code> - Indicates the type of stickiness. The possible values are:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>lb_cookie</code> and <code>app_cookie</code> for Application Load Balancers.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>source_ip</code> for Network Load Balancers.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>source_ip_dest_ip</code> and <code>source_ip_dest_ip_proto</code> for Gateway Load Balancers.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>\n         <p>The following attributes are supported by Application Load Balancers and \n      Network Load Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross zone load \n          balancing is enabled. The value is <code>true</code>, <code>false</code> or \n          <code>use_load_balancer_configuration</code>. The default is \n          <code>use_load_balancer_configuration</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>target_group_health.dns_failover.minimum_healthy_targets.count</code> - \n          The minimum number of targets that must be healthy.\n          If the number of healthy targets is below this value, mark the zone as unhealthy\n          in DNS, so that traffic is routed only to healthy zones. The possible values are\n          <code>off</code> or an integer from 1 to the maximum number of targets.\n          The default is 1.</p>\n            </li>\n            <li>\n               <p>\n                  <code>target_group_health.dns_failover.minimum_healthy_targets.percentage</code> - \n          The minimum percentage of targets that must be healthy.\n          If the percentage of healthy targets is below this value, mark the zone as unhealthy\n          in DNS, so that traffic is routed only to healthy zones. The possible values are\n          <code>off</code> or an integer from 1 to 100. The default is <code>off</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>target_group_health.unhealthy_state_routing.minimum_healthy_targets.count</code> - \n          The minimum number of targets that must be healthy.  \n          If the number of healthy targets is below this value, send traffic to all targets, including unhealthy targets.\n          The possible values are 1 to the maximum number of targets. The default is 1.</p>\n            </li>\n            <li>\n               <p>\n                  <code>target_group_health.unhealthy_state_routing.minimum_healthy_targets.percentage</code> - \n          The minimum percentage of targets that must be healthy. \n          If the percentage of healthy targets is below this value, send traffic to all targets, including unhealthy targets.\n          The possible values are <code>off</code> or an integer from 1 to 100.\n          The default is <code>off</code>.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported only if the load balancer is an Application Load\n      Balancer and the target is an instance or an IP address:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>load_balancing.algorithm.type</code> - The load balancing algorithm determines\n          how the load balancer selects targets when routing requests. The value is\n            <code>round_robin</code>, <code>least_outstanding_requests</code>, or <code>weighted_random</code>. The default is\n            <code>round_robin</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>load_balancing.algorithm.anomaly_mitigation</code> - Only available when <code>load_balancing.algorithm.type</code> \n          is <code>weighted_random</code>. Indicates whether anomaly mitigation is enabled. The value is <code>on</code> \n          or <code>off</code>. The default is <code>off</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>slow_start.duration_seconds</code> - The time period, in seconds, during which a\n          newly registered target receives an increasing share of the traffic to the target group.\n          After this time period ends, the target receives its full share of traffic. The range is\n          30-900 seconds (15 minutes). The default is 0 seconds (disabled).</p>\n            </li>\n            <li>\n               <p>\n                  <code>stickiness.app_cookie.cookie_name</code> - Indicates the name of the\n          application-based cookie. Names that start with the following prefixes are not allowed:\n            <code>AWSALB</code>, <code>AWSALBAPP</code>, and <code>AWSALBTG</code>; they're reserved\n          for use by the load balancer.</p>\n            </li>\n            <li>\n               <p>\n                  <code>stickiness.app_cookie.duration_seconds</code> - The time period, in seconds,\n          during which requests from a client should be routed to the same target. After this time\n          period expires, the application-based cookie is considered stale. The range is 1 second to\n          1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>\n            </li>\n            <li>\n               <p>\n                  <code>stickiness.lb_cookie.duration_seconds</code> - The time period, in seconds,\n          during which requests from a client should be routed to the same target. After this time\n          period expires, the load balancer-generated cookie is considered stale. The range is 1\n          second to 1 week (604800 seconds). The default value is 1 day (86400 seconds). </p>\n            </li>\n         </ul>\n         <p>The following attribute is supported only if the load balancer is an Application Load\n      Balancer and the target is a Lambda function:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>lambda.multi_value_headers.enabled</code> - Indicates whether the request and\n          response headers that are exchanged between the load balancer and the Lambda function\n          include arrays of values or strings. The value is <code>true</code> or <code>false</code>.\n          The default is <code>false</code>. If the value is <code>false</code> and the request\n          contains a duplicate header field name or query parameter key, the load balancer uses the\n          last value sent by the client.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported only by Network Load Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deregistration_delay.connection_termination.enabled</code> - Indicates whether\n          the load balancer terminates connections at the end of the deregistration timeout. The\n          value is <code>true</code> or <code>false</code>. For new UDP/TCP_UDP target groups the \n          default is <code>true</code>. Otherwise, the default is <code>false</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>preserve_client_ip.enabled</code> - Indicates whether client IP preservation is\n          enabled. The value is <code>true</code> or <code>false</code>. The default is disabled if\n          the target group type is IP address and the target group protocol is TCP or TLS.\n          Otherwise, the default is enabled. Client IP preservation can't be disabled for UDP and\n          TCP_UDP target groups.</p>\n            </li>\n            <li>\n               <p>\n                  <code>proxy_protocol_v2.enabled</code> - Indicates whether Proxy Protocol version 2 is\n          enabled. The value is <code>true</code> or <code>false</code>. The default is\n            <code>false</code>. </p>\n            </li>\n            <li>\n               <p>\n                  <code>target_health_state.unhealthy.connection_termination.enabled</code> - Indicates whether \n          the load balancer terminates connections to unhealthy targets. The value is <code>true</code> \n          or <code>false</code>. The default is <code>true</code>. This attribute can't be enabled for UDP and\n          TCP_UDP target groups.</p>\n            </li>\n            <li>\n               <p>\n                  <code>target_health_state.unhealthy.draining_interval_seconds</code> - The amount of time \n          for Elastic Load Balancing to wait before changing the state of an unhealthy target from \n          <code>unhealthy.draining</code> to <code>unhealthy</code>. The range is 0-360000 seconds. \n          The default value is 0 seconds.</p>\n               <p>Note: This attribute can only be configured when \n          <code>target_health_state.unhealthy.connection_termination.enabled</code> is <code>false</code>.</p>\n            </li>\n         </ul>\n         <p>The following attributes are supported only by Gateway Load Balancers:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>target_failover.on_deregistration</code> - Indicates how the Gateway Load\n          Balancer handles existing flows when a target is deregistered. The possible values are\n            <code>rebalance</code> and <code>no_rebalance</code>. The default is\n            <code>no_rebalance</code>. The two attributes\n            (<code>target_failover.on_deregistration</code> and\n            <code>target_failover.on_unhealthy</code>) can't be set independently. The value you set\n          for both attributes must be the same.  </p>\n            </li>\n            <li>\n               <p>\n                  <code>target_failover.on_unhealthy</code> - Indicates how the Gateway Load Balancer\n          handles existing flows when a target is unhealthy. The possible values are\n            <code>rebalance</code> and <code>no_rebalance</code>. The default is\n            <code>no_rebalance</code>. The two attributes\n            (<code>target_failover.on_deregistration</code> and\n            <code>target_failover.on_unhealthy</code>) can't be set independently. The value you\n          set for both attributes must be the same.  </p>\n            </li>\n         </ul>"}))
    TargetGroupAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>"}))
    TargetGroupAttribute.type = Types::TargetGroupAttribute
    TargetGroupAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAttribute)
    TargetGroupIpAddressTypeEnum.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    TargetGroupIpAddressTypeEnum.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    TargetGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupTuple)
    TargetGroupNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName)
    TargetGroupNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TargetGroupNotFoundException.type = Types::TargetGroupNotFoundException
    TargetGroupStickinessConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStickinessEnabled, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether target group stickiness is enabled.</p>"}))
    TargetGroupStickinessConfig.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupStickinessDurationSeconds, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The time period, in seconds, during which requests from a client should be routed to the\n      same target group. The range is 1-604800 seconds (7 days). You must specify this value when\n      enabling target group stickiness.</p>"}))
    TargetGroupStickinessConfig.type = Types::TargetGroupStickinessConfig
    TargetGroupTuple.add_member(:target_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: 'TargetGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target group.</p>"}))
    TargetGroupTuple.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupWeight, location_name: 'Weight', traits: {"smithy.api#documentation" => "<p>The weight. The range is 0 to 999.</p>"}))
    TargetGroupTuple.type = Types::TargetGroupTuple
    TargetGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroup)
    TargetHealth.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealthStateEnum, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the target.</p>"}))
    TargetHealth.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealthReasonEnum, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason code.</p>\n         <p>If the target state is <code>healthy</code>, a reason code is not provided.</p>\n         <p>If the target state is <code>initial</code>, the reason code can be one of the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered\n          with the load balancer.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the\n          minimum number of health checks required to determine its health status.</p>\n            </li>\n         </ul>\n         <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Target.ResponseCodeMismatch</code> - The health checks did not return an\n          expected HTTP code. Applies only to Application Load Balancers and Gateway Load\n          Balancers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Target.Timeout</code> - The health check requests timed out. Applies only to\n          Application Load Balancers and Gateway Load Balancers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Target.FailedHealthChecks</code> - The load balancer received an error while\n          establishing a connection to the target or the target response was malformed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Elb.InternalError</code> - The health checks failed due to an internal error.\n          Applies only to Application Load Balancers.</p>\n            </li>\n         </ul>\n         <p>If the target state is <code>unused</code>, the reason code can be one of the following\n      values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Target.NotRegistered</code> - The target is not registered with the target\n          group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Target.NotInUse</code> - The target group is not used by any load balancer or\n          the target is in an Availability Zone that is not enabled for its load balancer.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Target.InvalidState</code> - The target is in the stopped or terminated\n          state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load\n          balancer.</p>\n            </li>\n         </ul>\n         <p>If the target state is <code>draining</code>, the reason code can be the following\n      value:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Target.DeregistrationInProgress</code> - The target is in the process of being\n          deregistered and the deregistration delay period has not expired.</p>\n            </li>\n         </ul>\n         <p>If the target state is <code>unavailable</code>, the reason code can be the following\n      value:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target\n          group. Applies only to Application Load Balancers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Elb.InternalError</code> - Target health is unavailable due to an internal\n          error. Applies only to Network Load Balancers.</p>\n            </li>\n         </ul>"}))
    TargetHealth.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the target health that provides additional details. If the state is\n        <code>healthy</code>, a description is not provided.</p>"}))
    TargetHealth.type = Types::TargetHealth
    TargetHealthDescription.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The description of the target.</p>"}))
    TargetHealthDescription.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port to use to connect with the target.</p>"}))
    TargetHealthDescription.add_member(:target_health, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealth, location_name: 'TargetHealth', traits: {"smithy.api#documentation" => "<p>The health information for the target.</p>"}))
    TargetHealthDescription.add_member(:anomaly_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDetection, location_name: 'AnomalyDetection', traits: {"smithy.api#documentation" => "<p>The anomaly detection result for the target.</p>\n         <p>If no anomalies were detected, the result is <code>normal</code>.</p>\n         <p>If anomalies were detected, the result is <code>anomalous</code>.</p>"}))
    TargetHealthDescription.add_member(:administrative_override, Smithy::Schema::Shapes::ShapeRef.new(shape: AdministrativeOverride, location_name: 'AdministrativeOverride', traits: {"smithy.api#documentation" => "<p>The administrative override information for the target.</p>"}))
    TargetHealthDescription.type = Types::TargetHealthDescription
    TargetHealthDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealthDescription)
    TargetHealthReasonEnum.add_member(:registration_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTRATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "Elb.RegistrationInProgress"}))
    TargetHealthReasonEnum.add_member(:initial_health_checking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIAL_HEALTH_CHECKING', traits: {"smithy.api#enumValue" => "Elb.InitialHealthChecking"}))
    TargetHealthReasonEnum.add_member(:response_code_mismatch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESPONSE_CODE_MISMATCH', traits: {"smithy.api#enumValue" => "Target.ResponseCodeMismatch"}))
    TargetHealthReasonEnum.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "Target.Timeout"}))
    TargetHealthReasonEnum.add_member(:failed_health_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_HEALTH_CHECKS', traits: {"smithy.api#enumValue" => "Target.FailedHealthChecks"}))
    TargetHealthReasonEnum.add_member(:not_registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_REGISTERED', traits: {"smithy.api#enumValue" => "Target.NotRegistered"}))
    TargetHealthReasonEnum.add_member(:not_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_IN_USE', traits: {"smithy.api#enumValue" => "Target.NotInUse"}))
    TargetHealthReasonEnum.add_member(:deregistration_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTRATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "Target.DeregistrationInProgress"}))
    TargetHealthReasonEnum.add_member(:invalid_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_STATE', traits: {"smithy.api#enumValue" => "Target.InvalidState"}))
    TargetHealthReasonEnum.add_member(:ip_unusable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_UNUSABLE', traits: {"smithy.api#enumValue" => "Target.IpUnusable"}))
    TargetHealthReasonEnum.add_member(:health_check_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTH_CHECK_DISABLED', traits: {"smithy.api#enumValue" => "Target.HealthCheckDisabled"}))
    TargetHealthReasonEnum.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "Elb.InternalError"}))
    TargetHealthStateEnum.add_member(:initial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIAL', traits: {"smithy.api#enumValue" => "initial"}))
    TargetHealthStateEnum.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "healthy"}))
    TargetHealthStateEnum.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "unhealthy"}))
    TargetHealthStateEnum.add_member(:unhealthy_draining, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY_DRAINING', traits: {"smithy.api#enumValue" => "unhealthy.draining"}))
    TargetHealthStateEnum.add_member(:unused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNUSED', traits: {"smithy.api#enumValue" => "unused"}))
    TargetHealthStateEnum.add_member(:draining, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAINING', traits: {"smithy.api#enumValue" => "draining"}))
    TargetHealthStateEnum.add_member(:unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "unavailable"}))
    TargetTypeEnum.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE', traits: {"smithy.api#enumValue" => "instance"}))
    TargetTypeEnum.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP', traits: {"smithy.api#enumValue" => "ip"}))
    TargetTypeEnum.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "lambda"}))
    TargetTypeEnum.add_member(:alb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALB', traits: {"smithy.api#enumValue" => "alb"}))
    TooManyActionsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyActionsException.type = Types::TooManyActionsException
    TooManyCertificatesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyCertificatesException.type = Types::TooManyCertificatesException
    TooManyListenersException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyListenersException.type = Types::TooManyListenersException
    TooManyLoadBalancersException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyLoadBalancersException.type = Types::TooManyLoadBalancersException
    TooManyRegistrationsForTargetIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyRegistrationsForTargetIdException.type = Types::TooManyRegistrationsForTargetIdException
    TooManyRulesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyRulesException.type = Types::TooManyRulesException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    TooManyTargetGroupsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyTargetGroupsException.type = Types::TooManyTargetGroupsException
    TooManyTargetsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyTargetsException.type = Types::TooManyTargetsException
    TooManyTrustStoreRevocationEntriesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyTrustStoreRevocationEntriesException.type = Types::TooManyTrustStoreRevocationEntriesException
    TooManyTrustStoresException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyTrustStoresException.type = Types::TooManyTrustStoresException
    TooManyUniqueTargetGroupsPerLoadBalancerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TooManyUniqueTargetGroupsPerLoadBalancerException.type = Types::TooManyUniqueTargetGroupsPerLoadBalancerException
    TrustStore.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the trust store.</p>"}))
    TrustStore.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>"}))
    TrustStore.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the trust store.</p>"}))
    TrustStore.add_member(:number_of_ca_certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfCaCertificates, location_name: 'NumberOfCaCertificates', traits: {"smithy.api#documentation" => "<p>The number of ca certificates in the trust store.</p>"}))
    TrustStore.add_member(:total_revoked_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalRevokedEntries, location_name: 'TotalRevokedEntries', traits: {"smithy.api#documentation" => "<p>The number of revoked certificates in the trust store.</p>"}))
    TrustStore.type = Types::TrustStore
    TrustStoreArns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn)
    TrustStoreAssociation.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreAssociationResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    TrustStoreAssociation.type = Types::TrustStoreAssociation
    TrustStoreAssociationNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TrustStoreAssociationNotFoundException.type = Types::TrustStoreAssociationNotFoundException
    TrustStoreAssociationStatusEnum.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    TrustStoreAssociationStatusEnum.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "removed"}))
    TrustStoreAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreAssociation)
    TrustStoreInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TrustStoreInUseException.type = Types::TrustStoreInUseException
    TrustStoreNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreName)
    TrustStoreNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TrustStoreNotFoundException.type = Types::TrustStoreNotFoundException
    TrustStoreNotReadyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    TrustStoreNotReadyException.type = Types::TrustStoreNotReadyException
    TrustStoreRevocation.add_member(:trust_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreArn, location_name: 'TrustStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the trust store.</p>"}))
    TrustStoreRevocation.add_member(:revocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationId, location_name: 'RevocationId', traits: {"smithy.api#documentation" => "<p>The revocation ID of the revocation file.</p>"}))
    TrustStoreRevocation.add_member(:revocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationType, location_name: 'RevocationType', traits: {"smithy.api#documentation" => "<p>The type of revocation file.</p>"}))
    TrustStoreRevocation.add_member(:number_of_revoked_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRevokedEntries, location_name: 'NumberOfRevokedEntries', traits: {"smithy.api#documentation" => "<p>The number of revoked certificates.</p>"}))
    TrustStoreRevocation.type = Types::TrustStoreRevocation
    TrustStoreRevocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreRevocation)
    TrustStoreStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrustStoreStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    TrustStores.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStore)
    UnsupportedProtocolException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDescription, location_name: 'Message'))
    UnsupportedProtocolException.type = Types::UnsupportedProtocolException
    ZonalCapacityReservationState.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationStatus, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the capacity reservation.</p>"}))
    ZonalCapacityReservationState.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: ZoneName, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>Information about the Availability Zone.</p>"}))
    ZonalCapacityReservationState.add_member(:effective_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnitsDouble, location_name: 'EffectiveCapacityUnits', traits: {"smithy.api#documentation" => "<p>The number of effective capacity units.</p>"}))
    ZonalCapacityReservationState.type = Types::ZonalCapacityReservationState
    ZonalCapacityReservationStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalCapacityReservationState)

    ElasticLoadBalancingV10 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticloadbalancingv2#ElasticLoadBalancing_v10"
      service.name = "ElasticLoadBalancingV10"
      service.version = "2015-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Elastic Load Balancing v2", "arnNamespace" => "elasticloadbalancing", "cloudFormationName" => "ElasticLoadBalancingV2", "cloudTrailEventSource" => "elasticloadbalancing.amazonaws.com", "docId" => "elasticloadbalancingv2-2015-12-01", "endpointPrefix" => "elasticloadbalancing"}, "aws.auth#sigv4" => {"name" => "elasticloadbalancing"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Elastic Load Balancing", "smithy.api#xmlNamespace" => {"uri" => "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/"}}
      service.add_operation(:add_listener_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddListenerCertificates"
        operation.name = "AddListenerCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddListenerCertificatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddListenerCertificatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        operation.traits = {}
      end)
      service.add_operation(:add_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddTags"
        operation.name = "AddTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:add_trust_store_revocations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocations"
        operation.name = "AddTrustStoreRevocations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTrustStoreRevocationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTrustStoreRevocationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevocationContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationContentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustStoreRevocationEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateListener"
        operation.name = "CreateListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ALPNPolicyNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateListenerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyActionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyListenersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
      end)
      service.add_operation(:create_load_balancer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateLoadBalancer"
        operation.name = "CreateLoadBalancer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLoadBalancerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateLoadBalancerNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSchemeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLoadBalancersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateRule"
        operation.name = "CreateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PriorityInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyActionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRulesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
      end)
      service.add_operation(:create_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateTargetGroup"
        operation.name = "CreateTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTargetGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        operation.traits = {}
      end)
      service.add_operation(:create_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateTrustStore"
        operation.name = "CreateTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustStoreInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustStoreOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaCertificatesBundleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateTrustStoreNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCaCertificatesBundleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustStoresException)
        operation.traits = {}
      end)
      service.add_operation(:delete_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {}
      end)
      service.add_operation(:delete_load_balancer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancer"
        operation.name = "DeleteLoadBalancer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLoadBalancerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_shared_trust_store_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociation"
        operation.name = "DeleteSharedTrustStoreAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSharedTrustStoreAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSharedTrustStoreAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssociationSameAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreAssociationNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteTargetGroup"
        operation.name = "DeleteTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {}
      end)
      service.add_operation(:delete_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteTrustStore"
        operation.name = "DeleteTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustStoreInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustStoreOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeregisterTargets"
        operation.name = "DeregisterTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountLimits.new
      end)
      service.add_operation(:describe_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservation"
        operation.name = "DescribeCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_listener_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributes"
        operation.name = "DescribeListenerAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_listener_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificates"
        operation.name = "DescribeListenerCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerCertificatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerCertificatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeListenerCertificates.new
      end)
      service.add_operation(:describe_listeners, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListeners"
        operation.name = "DescribeListeners"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeListeners.new
      end)
      service.add_operation(:describe_load_balancer_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributes"
        operation.name = "DescribeLoadBalancerAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancers"
        operation.name = "DescribeLoadBalancers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBalancersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBalancersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeLoadBalancers.new
      end)
      service.add_operation(:describe_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeRules"
        operation.name = "DescribeRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRules.new
      end)
      service.add_operation(:describe_ssl_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeSSLPolicies"
        operation.name = "DescribeSSLPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSSLPoliciesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSSLPoliciesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_target_group_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributes"
        operation.name = "DescribeTargetGroupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_target_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroups"
        operation.name = "DescribeTargetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTargetGroups.new
      end)
      service.add_operation(:describe_target_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetHealth"
        operation.name = "DescribeTargetHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetHealthInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTargetHealthOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HealthUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:describe_trust_store_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociations"
        operation.name = "DescribeTrustStoreAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStoreAssociations.new
      end)
      service.add_operation(:describe_trust_store_revocations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocations"
        operation.name = "DescribeTrustStoreRevocations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoreRevocationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStoreRevocations.new
      end)
      service.add_operation(:describe_trust_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStores"
        operation.name = "DescribeTrustStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoresInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustStoresOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStores.new
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_trust_store_ca_certificates_bundle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundle"
        operation.name = "GetTrustStoreCaCertificatesBundle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreCaCertificatesBundleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreCaCertificatesBundleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_trust_store_revocation_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContent"
        operation.name = "GetTrustStoreRevocationContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreRevocationContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrustStoreRevocationContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservation"
        operation.name = "ModifyCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityDecreaseRequestsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationPendingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnitsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotCompleteException)
        operation.traits = {}
      end)
      service.add_operation(:modify_ip_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyIpPools"
        operation.name = "ModifyIpPools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIpPoolsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIpPoolsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyListener"
        operation.name = "ModifyListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyListenerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyListenerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ALPNPolicyNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateListenerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyActionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyListenersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
      end)
      service.add_operation(:modify_listener_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributes"
        operation.name = "ModifyListenerAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyListenerAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyListenerAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_load_balancer_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributes"
        operation.name = "ModifyLoadBalancerAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyRule"
        operation.name = "ModifyRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyActionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyUniqueTargetGroupsPerLoadBalancerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        operation.traits = {}
      end)
      service.add_operation(:modify_target_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroup"
        operation.name = "ModifyTargetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTargetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTargetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_target_group_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributes"
        operation.name = "ModifyTargetGroupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_trust_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTrustStore"
        operation.name = "ModifyTrustStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTrustStoreInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTrustStoreOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaCertificatesBundleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCaCertificatesBundleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:register_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RegisterTargets"
        operation.name = "RegisterTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTargetsException)
        operation.traits = {}
      end)
      service.add_operation(:remove_listener_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificates"
        operation.name = "RemoveListenerCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveListenerCertificatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveListenerCertificatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:remove_trust_store_revocations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocations"
        operation.name = "RemoveTrustStoreRevocations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTrustStoreRevocationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTrustStoreRevocationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStoreNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:set_ip_address_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetIpAddressType"
        operation.name = "SetIpAddressType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIpAddressTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetIpAddressTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:set_rule_priorities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetRulePriorities"
        operation.name = "SetRulePriorities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetRulePrioritiesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetRulePrioritiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PriorityInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:set_security_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetSecurityGroups"
        operation.name = "SetSecurityGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSecurityGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSecurityGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:set_subnets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetSubnets"
        operation.name = "SetSubnets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSubnetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSubnetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationPendingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        operation.traits = {}
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
