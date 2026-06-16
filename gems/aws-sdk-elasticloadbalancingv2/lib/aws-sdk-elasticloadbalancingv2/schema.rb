# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancingV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ALPNPolicyNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ALPNPolicyNotSupportedException", name: "ALPNPolicyNotSupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ALPNPolicyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Action", name: "Action")
    ActionOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#ActionOrder", name: "ActionOrder", traits: {"smithy.api#range" => {"min" => 1, "max" => 50000}})
    ActionTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#ActionTypeEnum", name: "ActionTypeEnum")
    Actions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Actions", name: "Actions")
    AddListenerCertificatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddListenerCertificatesInput", name: "AddListenerCertificatesInput")
    AddListenerCertificatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddListenerCertificatesOutput", name: "AddListenerCertificatesOutput")
    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddTagsInput", name: "AddTagsInput")
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddTagsOutput", name: "AddTagsOutput")
    AddTrustStoreRevocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocationsInput", name: "AddTrustStoreRevocationsInput")
    AddTrustStoreRevocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocationsOutput", name: "AddTrustStoreRevocationsOutput")
    AdministrativeOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AdministrativeOverride", name: "AdministrativeOverride")
    AdvertiseTrustStoreCaNamesEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#AdvertiseTrustStoreCaNamesEnum", name: "AdvertiseTrustStoreCaNamesEnum")
    AllocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AllocationId", name: "AllocationId")
    AllocationIdNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AllocationIdNotFoundException", name: "AllocationIdNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AllocationIdNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AlpnPolicyName = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#AlpnPolicyName", name: "AlpnPolicyName")
    AlpnPolicyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AlpnPolicyValue", name: "AlpnPolicyValue")
    AnomalyDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AnomalyDetection", name: "AnomalyDetection")
    AnomalyResultEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#AnomalyResultEnum", name: "AnomalyResultEnum")
    AuthenticateCognitoActionAuthenticationRequestExtraParams = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestExtraParams", name: "AuthenticateCognitoActionAuthenticationRequestExtraParams")
    AuthenticateCognitoActionAuthenticationRequestParamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestParamName", name: "AuthenticateCognitoActionAuthenticationRequestParamName")
    AuthenticateCognitoActionAuthenticationRequestParamValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionAuthenticationRequestParamValue", name: "AuthenticateCognitoActionAuthenticationRequestParamValue")
    AuthenticateCognitoActionConditionalBehaviorEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionConditionalBehaviorEnum", name: "AuthenticateCognitoActionConditionalBehaviorEnum")
    AuthenticateCognitoActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionConfig", name: "AuthenticateCognitoActionConfig")
    AuthenticateCognitoActionScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionScope", name: "AuthenticateCognitoActionScope")
    AuthenticateCognitoActionSessionCookieName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionSessionCookieName", name: "AuthenticateCognitoActionSessionCookieName")
    AuthenticateCognitoActionSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionSessionTimeout", name: "AuthenticateCognitoActionSessionTimeout")
    AuthenticateCognitoActionUserPoolArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolArn", name: "AuthenticateCognitoActionUserPoolArn")
    AuthenticateCognitoActionUserPoolClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolClientId", name: "AuthenticateCognitoActionUserPoolClientId")
    AuthenticateCognitoActionUserPoolDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateCognitoActionUserPoolDomain", name: "AuthenticateCognitoActionUserPoolDomain")
    AuthenticateOidcActionAuthenticationRequestExtraParams = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestExtraParams", name: "AuthenticateOidcActionAuthenticationRequestExtraParams")
    AuthenticateOidcActionAuthenticationRequestParamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestParamName", name: "AuthenticateOidcActionAuthenticationRequestParamName")
    AuthenticateOidcActionAuthenticationRequestParamValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthenticationRequestParamValue", name: "AuthenticateOidcActionAuthenticationRequestParamValue")
    AuthenticateOidcActionAuthorizationEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionAuthorizationEndpoint", name: "AuthenticateOidcActionAuthorizationEndpoint")
    AuthenticateOidcActionClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionClientId", name: "AuthenticateOidcActionClientId")
    AuthenticateOidcActionClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionClientSecret", name: "AuthenticateOidcActionClientSecret")
    AuthenticateOidcActionConditionalBehaviorEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionConditionalBehaviorEnum", name: "AuthenticateOidcActionConditionalBehaviorEnum")
    AuthenticateOidcActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionConfig", name: "AuthenticateOidcActionConfig")
    AuthenticateOidcActionIssuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionIssuer", name: "AuthenticateOidcActionIssuer")
    AuthenticateOidcActionScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionScope", name: "AuthenticateOidcActionScope")
    AuthenticateOidcActionSessionCookieName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionSessionCookieName", name: "AuthenticateOidcActionSessionCookieName")
    AuthenticateOidcActionSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionSessionTimeout", name: "AuthenticateOidcActionSessionTimeout")
    AuthenticateOidcActionTokenEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionTokenEndpoint", name: "AuthenticateOidcActionTokenEndpoint")
    AuthenticateOidcActionUseExistingClientSecret = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionUseExistingClientSecret", name: "AuthenticateOidcActionUseExistingClientSecret")
    AuthenticateOidcActionUserInfoEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#AuthenticateOidcActionUserInfoEndpoint", name: "AuthenticateOidcActionUserInfoEndpoint")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#AvailabilityZoneNotSupportedException", name: "AvailabilityZoneNotSupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AvailabilityZoneNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#AvailabilityZones", name: "AvailabilityZones")
    CaCertificatesBundleNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CaCertificatesBundleNotFoundException", name: "CaCertificatesBundleNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "CaCertificatesBundleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CanonicalHostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#CanonicalHostedZoneId", name: "CanonicalHostedZoneId")
    CapacityDecreaseRequestsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityDecreaseRequestsLimitExceededException", name: "CapacityDecreaseRequestsLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityDecreaseRequestLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CapacityReservationPendingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityReservationPendingException", name: "CapacityReservationPendingException", traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityReservationPending", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CapacityReservationStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityReservationStateEnum", name: "CapacityReservationStateEnum")
    CapacityReservationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityReservationStatus", name: "CapacityReservationStatus")
    CapacityUnits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityUnits", name: "CapacityUnits")
    CapacityUnitsDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityUnitsDouble", name: "CapacityUnitsDouble")
    CapacityUnitsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CapacityUnitsLimitExceededException", name: "CapacityUnitsLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "CapacityUnitsLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Certificate", name: "Certificate")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#CertificateArn", name: "CertificateArn")
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#CertificateList", name: "CertificateList")
    CertificateNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CertificateNotFoundException", name: "CertificateNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Cipher = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Cipher", name: "Cipher")
    CipherName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#CipherName", name: "CipherName")
    CipherPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#CipherPriority", name: "CipherPriority")
    Ciphers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Ciphers", name: "Ciphers")
    ConditionFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ConditionFieldName", name: "ConditionFieldName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    CreateListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateListenerInput", name: "CreateListenerInput")
    CreateListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateListenerOutput", name: "CreateListenerOutput")
    CreateLoadBalancerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateLoadBalancerInput", name: "CreateLoadBalancerInput")
    CreateLoadBalancerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateLoadBalancerOutput", name: "CreateLoadBalancerOutput")
    CreateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateRuleInput", name: "CreateRuleInput")
    CreateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateRuleOutput", name: "CreateRuleOutput")
    CreateTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateTargetGroupInput", name: "CreateTargetGroupInput")
    CreateTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateTargetGroupOutput", name: "CreateTargetGroupOutput")
    CreateTrustStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateTrustStoreInput", name: "CreateTrustStoreInput")
    CreateTrustStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreateTrustStoreOutput", name: "CreateTrustStoreOutput")
    CreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticloadbalancingv2#CreatedTime", name: "CreatedTime")
    CustomerOwnedIpv4Pool = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#CustomerOwnedIpv4Pool", name: "CustomerOwnedIpv4Pool", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(ipv4pool-coip-)[a-zA-Z0-9]+$"})
    DNSName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#DNSName", name: "DNSName")
    DecreaseRequestsRemaining = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#DecreaseRequestsRemaining", name: "DecreaseRequestsRemaining")
    Default = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#Default", name: "Default")
    DeleteAssociationSameAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteAssociationSameAccountException", name: "DeleteAssociationSameAccountException", traits: {"aws.protocols#awsQueryError" => {"code" => "DeleteAssociationSameAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteListenerInput", name: "DeleteListenerInput")
    DeleteListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteListenerOutput", name: "DeleteListenerOutput")
    DeleteLoadBalancerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancerInput", name: "DeleteLoadBalancerInput")
    DeleteLoadBalancerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancerOutput", name: "DeleteLoadBalancerOutput")
    DeleteRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteRuleInput", name: "DeleteRuleInput")
    DeleteRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteRuleOutput", name: "DeleteRuleOutput")
    DeleteSharedTrustStoreAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociationInput", name: "DeleteSharedTrustStoreAssociationInput")
    DeleteSharedTrustStoreAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociationOutput", name: "DeleteSharedTrustStoreAssociationOutput")
    DeleteTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteTargetGroupInput", name: "DeleteTargetGroupInput")
    DeleteTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteTargetGroupOutput", name: "DeleteTargetGroupOutput")
    DeleteTrustStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteTrustStoreInput", name: "DeleteTrustStoreInput")
    DeleteTrustStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeleteTrustStoreOutput", name: "DeleteTrustStoreOutput")
    DeregisterTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeregisterTargetsInput", name: "DeregisterTargetsInput")
    DeregisterTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DeregisterTargetsOutput", name: "DeregisterTargetsOutput")
    DescribeAccountLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeAccountLimitsInput", name: "DescribeAccountLimitsInput")
    DescribeAccountLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeAccountLimitsOutput", name: "DescribeAccountLimitsOutput")
    DescribeCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservationInput", name: "DescribeCapacityReservationInput")
    DescribeCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservationOutput", name: "DescribeCapacityReservationOutput")
    DescribeListenerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributesInput", name: "DescribeListenerAttributesInput")
    DescribeListenerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributesOutput", name: "DescribeListenerAttributesOutput")
    DescribeListenerCertificatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificatesInput", name: "DescribeListenerCertificatesInput")
    DescribeListenerCertificatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificatesOutput", name: "DescribeListenerCertificatesOutput")
    DescribeListenersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenersInput", name: "DescribeListenersInput")
    DescribeListenersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeListenersOutput", name: "DescribeListenersOutput")
    DescribeLoadBalancerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributesInput", name: "DescribeLoadBalancerAttributesInput")
    DescribeLoadBalancerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributesOutput", name: "DescribeLoadBalancerAttributesOutput")
    DescribeLoadBalancersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancersInput", name: "DescribeLoadBalancersInput")
    DescribeLoadBalancersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancersOutput", name: "DescribeLoadBalancersOutput")
    DescribeRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeRulesInput", name: "DescribeRulesInput")
    DescribeRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeRulesOutput", name: "DescribeRulesOutput")
    DescribeSSLPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeSSLPoliciesInput", name: "DescribeSSLPoliciesInput")
    DescribeSSLPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeSSLPoliciesOutput", name: "DescribeSSLPoliciesOutput")
    DescribeTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTagsInput", name: "DescribeTagsInput")
    DescribeTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTagsOutput", name: "DescribeTagsOutput")
    DescribeTargetGroupAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributesInput", name: "DescribeTargetGroupAttributesInput")
    DescribeTargetGroupAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributesOutput", name: "DescribeTargetGroupAttributesOutput")
    DescribeTargetGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupsInput", name: "DescribeTargetGroupsInput")
    DescribeTargetGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupsOutput", name: "DescribeTargetGroupsOutput")
    DescribeTargetHealthInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthInput", name: "DescribeTargetHealthInput")
    DescribeTargetHealthInputIncludeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthInputIncludeEnum", name: "DescribeTargetHealthInputIncludeEnum")
    DescribeTargetHealthOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTargetHealthOutput", name: "DescribeTargetHealthOutput")
    DescribeTrustStoreAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociationsInput", name: "DescribeTrustStoreAssociationsInput")
    DescribeTrustStoreAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociationsOutput", name: "DescribeTrustStoreAssociationsOutput")
    DescribeTrustStoreRevocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocation", name: "DescribeTrustStoreRevocation")
    DescribeTrustStoreRevocationResponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationResponse", name: "DescribeTrustStoreRevocationResponse")
    DescribeTrustStoreRevocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationsInput", name: "DescribeTrustStoreRevocationsInput")
    DescribeTrustStoreRevocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocationsOutput", name: "DescribeTrustStoreRevocationsOutput")
    DescribeTrustStoresInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoresInput", name: "DescribeTrustStoresInput")
    DescribeTrustStoresOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoresOutput", name: "DescribeTrustStoresOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Description", name: "Description")
    DuplicateListenerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DuplicateListenerException", name: "DuplicateListenerException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateListener", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateLoadBalancerNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DuplicateLoadBalancerNameException", name: "DuplicateLoadBalancerNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateLoadBalancerName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTagKeysException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DuplicateTagKeysException", name: "DuplicateTagKeysException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTagKeys", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTargetGroupNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DuplicateTargetGroupNameException", name: "DuplicateTargetGroupNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTargetGroupName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DuplicateTrustStoreNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#DuplicateTrustStoreNameException", name: "DuplicateTrustStoreNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateTrustStoreName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EnablePrefixForIpv6SourceNatEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#EnablePrefixForIpv6SourceNatEnum", name: "EnablePrefixForIpv6SourceNatEnum")
    EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic", name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic")
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum", name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum")
    ErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ErrorDescription", name: "ErrorDescription")
    FixedResponseActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#FixedResponseActionConfig", name: "FixedResponseActionConfig")
    FixedResponseActionContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#FixedResponseActionContentType", name: "FixedResponseActionContentType", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    FixedResponseActionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#FixedResponseActionMessage", name: "FixedResponseActionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FixedResponseActionStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#FixedResponseActionStatusCode", name: "FixedResponseActionStatusCode", traits: {"smithy.api#pattern" => "^(2|4|5)\\d\\d$"})
    ForwardActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ForwardActionConfig", name: "ForwardActionConfig")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GetTrustStoreCaCertificatesBundleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundleInput", name: "GetTrustStoreCaCertificatesBundleInput")
    GetTrustStoreCaCertificatesBundleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundleOutput", name: "GetTrustStoreCaCertificatesBundleOutput")
    GetTrustStoreRevocationContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContentInput", name: "GetTrustStoreRevocationContentInput")
    GetTrustStoreRevocationContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContentOutput", name: "GetTrustStoreRevocationContentOutput")
    GrpcCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#GrpcCode", name: "GrpcCode")
    HealthCheckEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthCheckEnabled", name: "HealthCheckEnabled")
    HealthCheckIntervalSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthCheckIntervalSeconds", name: "HealthCheckIntervalSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 300}})
    HealthCheckPort = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthCheckPort", name: "HealthCheckPort")
    HealthCheckThresholdCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthCheckThresholdCount", name: "HealthCheckThresholdCount", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    HealthCheckTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthCheckTimeoutSeconds", name: "HealthCheckTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 2, "max" => 120}})
    HealthUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#HealthUnavailableException", name: "HealthUnavailableException", traits: {"aws.protocols#awsQueryError" => {"code" => "HealthUnavailable", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    HostHeaderConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#HostHeaderConditionConfig", name: "HostHeaderConditionConfig")
    HttpCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#HttpCode", name: "HttpCode")
    HttpHeaderConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#HttpHeaderConditionConfig", name: "HttpHeaderConditionConfig")
    HttpHeaderConditionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#HttpHeaderConditionName", name: "HttpHeaderConditionName")
    HttpRequestMethodConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#HttpRequestMethodConditionConfig", name: "HttpRequestMethodConditionConfig")
    IPv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#IPv6Address", name: "IPv6Address")
    IgnoreClientCertificateExpiry = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#IgnoreClientCertificateExpiry", name: "IgnoreClientCertificateExpiry")
    IncompatibleProtocolsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#IncompatibleProtocolsException", name: "IncompatibleProtocolsException", traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatibleProtocols", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InsufficientCapacityException", name: "InsufficientCapacityException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientCapacity", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidCaCertificatesBundleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidCaCertificatesBundleException", name: "InvalidCaCertificatesBundleException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCaCertificatesBundle", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidConfigurationRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidConfigurationRequestException", name: "InvalidConfigurationRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidConfigurationRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLoadBalancerActionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidLoadBalancerActionException", name: "InvalidLoadBalancerActionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLoadBalancerAction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRevocationContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidRevocationContentException", name: "InvalidRevocationContentException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRevocationContent", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSchemeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidSchemeException", name: "InvalidSchemeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheme", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSecurityGroupException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidSecurityGroupException", name: "InvalidSecurityGroupException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidSubnetException", name: "InvalidSubnetException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTargetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#InvalidTargetException", name: "InvalidTargetException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTarget", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#IpAddress", name: "IpAddress")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#IpAddressType", name: "IpAddressType")
    IpamPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#IpamPoolId", name: "IpamPoolId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(ipam-pool-)[a-zA-Z0-9]+$"})
    IpamPools = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#IpamPools", name: "IpamPools")
    IsDefault = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#IsDefault", name: "IsDefault")
    LastModifiedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticloadbalancingv2#LastModifiedTime", name: "LastModifiedTime")
    Limit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Limit", name: "Limit")
    Limits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Limits", name: "Limits")
    ListOfDescribeTargetHealthIncludeOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListOfDescribeTargetHealthIncludeOptions", name: "ListOfDescribeTargetHealthIncludeOptions")
    ListOfString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListOfString", name: "ListOfString")
    Listener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Listener", name: "Listener")
    ListenerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerArn", name: "ListenerArn")
    ListenerArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerArns", name: "ListenerArns")
    ListenerAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerAttribute", name: "ListenerAttribute")
    ListenerAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerAttributeKey", name: "ListenerAttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    ListenerAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerAttributeValue", name: "ListenerAttributeValue")
    ListenerAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerAttributes", name: "ListenerAttributes")
    ListenerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ListenerNotFoundException", name: "ListenerNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ListenerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Listeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Listeners", name: "Listeners")
    LoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancer", name: "LoadBalancer")
    LoadBalancerAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAddress", name: "LoadBalancerAddress")
    LoadBalancerAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAddresses", name: "LoadBalancerAddresses")
    LoadBalancerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerArn", name: "LoadBalancerArn")
    LoadBalancerArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerArns", name: "LoadBalancerArns")
    LoadBalancerAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAttribute", name: "LoadBalancerAttribute")
    LoadBalancerAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributeKey", name: "LoadBalancerAttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    LoadBalancerAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributeValue", name: "LoadBalancerAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    LoadBalancerAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerAttributes", name: "LoadBalancerAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LoadBalancerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerName", name: "LoadBalancerName")
    LoadBalancerNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerNames", name: "LoadBalancerNames")
    LoadBalancerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerNotFoundException", name: "LoadBalancerNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "LoadBalancerNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoadBalancerSchemeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerSchemeEnum", name: "LoadBalancerSchemeEnum")
    LoadBalancerState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerState", name: "LoadBalancerState")
    LoadBalancerStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerStateEnum", name: "LoadBalancerStateEnum")
    LoadBalancerTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancerTypeEnum", name: "LoadBalancerTypeEnum")
    LoadBalancers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#LoadBalancers", name: "LoadBalancers")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Location", name: "Location")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Marker", name: "Marker")
    Matcher = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Matcher", name: "Matcher")
    Max = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Max", name: "Max")
    MinimumLoadBalancerCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#MinimumLoadBalancerCapacity", name: "MinimumLoadBalancerCapacity")
    MitigationInEffectEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#MitigationInEffectEnum", name: "MitigationInEffectEnum")
    Mode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Mode", name: "Mode")
    ModifyCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservationInput", name: "ModifyCapacityReservationInput")
    ModifyCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservationOutput", name: "ModifyCapacityReservationOutput")
    ModifyIpPoolsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyIpPoolsInput", name: "ModifyIpPoolsInput")
    ModifyIpPoolsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyIpPoolsOutput", name: "ModifyIpPoolsOutput")
    ModifyListenerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributesInput", name: "ModifyListenerAttributesInput")
    ModifyListenerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributesOutput", name: "ModifyListenerAttributesOutput")
    ModifyListenerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyListenerInput", name: "ModifyListenerInput")
    ModifyListenerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyListenerOutput", name: "ModifyListenerOutput")
    ModifyLoadBalancerAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributesInput", name: "ModifyLoadBalancerAttributesInput")
    ModifyLoadBalancerAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributesOutput", name: "ModifyLoadBalancerAttributesOutput")
    ModifyRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyRuleInput", name: "ModifyRuleInput")
    ModifyRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyRuleOutput", name: "ModifyRuleOutput")
    ModifyTargetGroupAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributesInput", name: "ModifyTargetGroupAttributesInput")
    ModifyTargetGroupAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributesOutput", name: "ModifyTargetGroupAttributesOutput")
    ModifyTargetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupInput", name: "ModifyTargetGroupInput")
    ModifyTargetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupOutput", name: "ModifyTargetGroupOutput")
    ModifyTrustStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTrustStoreInput", name: "ModifyTrustStoreInput")
    ModifyTrustStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ModifyTrustStoreOutput", name: "ModifyTrustStoreOutput")
    MutualAuthenticationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#MutualAuthenticationAttributes", name: "MutualAuthenticationAttributes")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Name", name: "Name")
    NumberOfCaCertificates = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#NumberOfCaCertificates", name: "NumberOfCaCertificates")
    NumberOfRevokedEntries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#NumberOfRevokedEntries", name: "NumberOfRevokedEntries")
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#OperationNotPermittedException", name: "OperationNotPermittedException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OutpostId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#OutpostId", name: "OutpostId")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 400}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Path", name: "Path", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    PathPatternConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#PathPatternConditionConfig", name: "PathPatternConditionConfig")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PriorRequestNotCompleteException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#PriorRequestNotCompleteException", name: "PriorRequestNotCompleteException", traits: {"aws.protocols#awsQueryError" => {"code" => "PriorRequestNotComplete", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    PriorityInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#PriorityInUseException", name: "PriorityInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "PriorityInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PrivateIPv4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#PrivateIPv4Address", name: "PrivateIPv4Address")
    ProtocolEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#ProtocolEnum", name: "ProtocolEnum")
    ProtocolVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ProtocolVersion", name: "ProtocolVersion")
    QueryStringConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#QueryStringConditionConfig", name: "QueryStringConditionConfig")
    QueryStringKeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#QueryStringKeyValuePair", name: "QueryStringKeyValuePair")
    QueryStringKeyValuePairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#QueryStringKeyValuePairList", name: "QueryStringKeyValuePairList")
    RedirectActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionConfig", name: "RedirectActionConfig")
    RedirectActionHost = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionHost", name: "RedirectActionHost", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RedirectActionPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionPath", name: "RedirectActionPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RedirectActionPort = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionPort", name: "RedirectActionPort")
    RedirectActionProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionProtocol", name: "RedirectActionProtocol", traits: {"smithy.api#pattern" => "^(HTTPS?|#\\{protocol\\})$"})
    RedirectActionQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionQuery", name: "RedirectActionQuery", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    RedirectActionStatusCodeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#RedirectActionStatusCodeEnum", name: "RedirectActionStatusCodeEnum")
    RegisterTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RegisterTargetsInput", name: "RegisterTargetsInput")
    RegisterTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RegisterTargetsOutput", name: "RegisterTargetsOutput")
    RemoveIpamPoolEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveIpamPoolEnum", name: "RemoveIpamPoolEnum")
    RemoveIpamPools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveIpamPools", name: "RemoveIpamPools")
    RemoveListenerCertificatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificatesInput", name: "RemoveListenerCertificatesInput")
    RemoveListenerCertificatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificatesOutput", name: "RemoveListenerCertificatesOutput")
    RemoveTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveTagsInput", name: "RemoveTagsInput")
    RemoveTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveTagsOutput", name: "RemoveTagsOutput")
    RemoveTrustStoreRevocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocationsInput", name: "RemoveTrustStoreRevocationsInput")
    RemoveTrustStoreRevocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocationsOutput", name: "RemoveTrustStoreRevocationsOutput")
    ResetCapacityReservation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#ResetCapacityReservation", name: "ResetCapacityReservation")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ResourceArn", name: "ResourceArn")
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ResourceArns", name: "ResourceArns")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ResourceInUseException", name: "ResourceInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationContent", name: "RevocationContent")
    RevocationContentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationContentNotFoundException", name: "RevocationContentNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "RevocationContentNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationContents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationContents", name: "RevocationContents")
    RevocationId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationId", name: "RevocationId")
    RevocationIdNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationIdNotFoundException", name: "RevocationIdNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "RevocationIdNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RevocationIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationIds", name: "RevocationIds")
    RevocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#RevocationType", name: "RevocationType")
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Rule", name: "Rule")
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#RuleArn", name: "RuleArn")
    RuleArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RuleArns", name: "RuleArns")
    RuleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RuleCondition", name: "RuleCondition")
    RuleConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RuleConditionList", name: "RuleConditionList")
    RuleNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RuleNotFoundException", name: "RuleNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "RuleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#RulePriority", name: "RulePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 50000}})
    RulePriorityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#RulePriorityList", name: "RulePriorityList")
    RulePriorityPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#RulePriorityPair", name: "RulePriorityPair")
    Rules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Rules", name: "Rules")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#S3Bucket", name: "S3Bucket")
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#S3Key", name: "S3Key")
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#S3ObjectVersion", name: "S3ObjectVersion")
    SSLPolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SSLPolicyNotFoundException", name: "SSLPolicyNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "SSLPolicyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#SecurityGroupId", name: "SecurityGroupId")
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SecurityGroups", name: "SecurityGroups")
    SetIpAddressTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetIpAddressTypeInput", name: "SetIpAddressTypeInput")
    SetIpAddressTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetIpAddressTypeOutput", name: "SetIpAddressTypeOutput")
    SetRulePrioritiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetRulePrioritiesInput", name: "SetRulePrioritiesInput")
    SetRulePrioritiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetRulePrioritiesOutput", name: "SetRulePrioritiesOutput")
    SetSecurityGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetSecurityGroupsInput", name: "SetSecurityGroupsInput")
    SetSecurityGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetSecurityGroupsOutput", name: "SetSecurityGroupsOutput")
    SetSubnetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetSubnetsInput", name: "SetSubnetsInput")
    SetSubnetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SetSubnetsOutput", name: "SetSubnetsOutput")
    SourceIpConditionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SourceIpConditionConfig", name: "SourceIpConditionConfig")
    SourceNatIpv6Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#SourceNatIpv6Prefix", name: "SourceNatIpv6Prefix")
    SourceNatIpv6Prefixes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SourceNatIpv6Prefixes", name: "SourceNatIpv6Prefixes")
    SslPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslPolicies", name: "SslPolicies")
    SslPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslPolicy", name: "SslPolicy")
    SslPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslPolicyName", name: "SslPolicyName")
    SslPolicyNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslPolicyNames", name: "SslPolicyNames")
    SslProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslProtocol", name: "SslProtocol")
    SslProtocols = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SslProtocols", name: "SslProtocols")
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#StateReason", name: "StateReason")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#String", name: "String")
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#StringValue", name: "StringValue")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#SubnetId", name: "SubnetId")
    SubnetMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SubnetMapping", name: "SubnetMapping")
    SubnetMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#SubnetMappings", name: "SubnetMappings")
    SubnetNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#SubnetNotFoundException", name: "SubnetNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#Subnets", name: "Subnets")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#Tag", name: "Tag")
    TagDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagDescription", name: "TagDescription")
    TagDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagDescriptions", name: "TagDescriptions")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagKeys", name: "TagKeys")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetAdministrativeOverrideReasonEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetAdministrativeOverrideReasonEnum", name: "TargetAdministrativeOverrideReasonEnum")
    TargetAdministrativeOverrideStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetAdministrativeOverrideStateEnum", name: "TargetAdministrativeOverrideStateEnum")
    TargetDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetDescription", name: "TargetDescription")
    TargetDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetDescriptions", name: "TargetDescriptions")
    TargetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroup", name: "TargetGroup")
    TargetGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupArn", name: "TargetGroupArn")
    TargetGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupArns", name: "TargetGroupArns")
    TargetGroupAssociationLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupAssociationLimitException", name: "TargetGroupAssociationLimitException", traits: {"aws.protocols#awsQueryError" => {"code" => "TargetGroupAssociationLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TargetGroupAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupAttribute", name: "TargetGroupAttribute")
    TargetGroupAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupAttributeKey", name: "TargetGroupAttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._]+$"})
    TargetGroupAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupAttributeValue", name: "TargetGroupAttributeValue")
    TargetGroupAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupAttributes", name: "TargetGroupAttributes")
    TargetGroupIpAddressTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupIpAddressTypeEnum", name: "TargetGroupIpAddressTypeEnum")
    TargetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupList", name: "TargetGroupList")
    TargetGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupName", name: "TargetGroupName")
    TargetGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupNames", name: "TargetGroupNames")
    TargetGroupNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupNotFoundException", name: "TargetGroupNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TargetGroupNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TargetGroupStickinessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessConfig", name: "TargetGroupStickinessConfig")
    TargetGroupStickinessDurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessDurationSeconds", name: "TargetGroupStickinessDurationSeconds")
    TargetGroupStickinessEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupStickinessEnabled", name: "TargetGroupStickinessEnabled")
    TargetGroupTuple = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupTuple", name: "TargetGroupTuple")
    TargetGroupWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroupWeight", name: "TargetGroupWeight")
    TargetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetGroups", name: "TargetGroups")
    TargetHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetHealth", name: "TargetHealth")
    TargetHealthDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetHealthDescription", name: "TargetHealthDescription")
    TargetHealthDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetHealthDescriptions", name: "TargetHealthDescriptions")
    TargetHealthReasonEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetHealthReasonEnum", name: "TargetHealthReasonEnum")
    TargetHealthStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetHealthStateEnum", name: "TargetHealthStateEnum")
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetId", name: "TargetId")
    TargetTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TargetTypeEnum", name: "TargetTypeEnum")
    TooManyActionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyActionsException", name: "TooManyActionsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyActions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCertificatesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyCertificatesException", name: "TooManyCertificatesException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyCertificates", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyListenersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyListenersException", name: "TooManyListenersException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyListeners", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyLoadBalancersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyLoadBalancersException", name: "TooManyLoadBalancersException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyLoadBalancers", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRegistrationsForTargetIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyRegistrationsForTargetIdException", name: "TooManyRegistrationsForTargetIdException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRegistrationsForTargetId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRulesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyRulesException", name: "TooManyRulesException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRules", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyTagsException", name: "TooManyTagsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTags", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTargetGroupsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyTargetGroupsException", name: "TooManyTargetGroupsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTargetGroups", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTargetsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyTargetsException", name: "TooManyTargetsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTargets", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustStoreRevocationEntriesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyTrustStoreRevocationEntriesException", name: "TooManyTrustStoreRevocationEntriesException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTrustStoreRevocationEntries", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustStoresException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyTrustStoresException", name: "TooManyTrustStoresException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTrustStores", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyUniqueTargetGroupsPerLoadBalancerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TooManyUniqueTargetGroupsPerLoadBalancerException", name: "TooManyUniqueTargetGroupsPerLoadBalancerException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyUniqueTargetGroupsPerLoadBalancer", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TotalRevokedEntries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticloadbalancingv2#TotalRevokedEntries", name: "TotalRevokedEntries")
    TrustStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStore", name: "TrustStore")
    TrustStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreArn", name: "TrustStoreArn")
    TrustStoreArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreArns", name: "TrustStoreArns")
    TrustStoreAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreAssociation", name: "TrustStoreAssociation")
    TrustStoreAssociationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationNotFoundException", name: "TrustStoreAssociationNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreAssociationResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationResourceArn", name: "TrustStoreAssociationResourceArn")
    TrustStoreAssociationStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreAssociationStatusEnum", name: "TrustStoreAssociationStatusEnum")
    TrustStoreAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreAssociations", name: "TrustStoreAssociations")
    TrustStoreInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreInUseException", name: "TrustStoreInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreName", name: "TrustStoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-zA-Z0-9]+-)*[a-zA-Z0-9]+$"})
    TrustStoreNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreNames", name: "TrustStoreNames")
    TrustStoreNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreNotFoundException", name: "TrustStoreNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreNotReadyException", name: "TrustStoreNotReadyException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrustStoreNotReady", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustStoreRevocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreRevocation", name: "TrustStoreRevocation")
    TrustStoreRevocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreRevocations", name: "TrustStoreRevocations")
    TrustStoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStoreStatus", name: "TrustStoreStatus")
    TrustStores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#TrustStores", name: "TrustStores")
    UnsupportedProtocolException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#UnsupportedProtocolException", name: "UnsupportedProtocolException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedProtocol", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#VpcId", name: "VpcId")
    ZonalCapacityReservationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticloadbalancingv2#ZonalCapacityReservationState", name: "ZonalCapacityReservationState")
    ZonalCapacityReservationStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticloadbalancingv2#ZonalCapacityReservationStates", name: "ZonalCapacityReservationStates")
    ZoneName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticloadbalancingv2#ZoneName", name: "ZoneName")

    ALPNPolicyNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    ALPNPolicyNotSupportedException.type = Types::ALPNPolicyNotSupportedException
    Action.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeEnum, location_name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Action.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn"))
    Action.add_member(:authenticate_oidc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionConfig, location_name: "AuthenticateOidcConfig"))
    Action.add_member(:authenticate_cognito_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionConfig, location_name: "AuthenticateCognitoConfig"))
    Action.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOrder, location_name: "Order"))
    Action.add_member(:redirect_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionConfig, location_name: "RedirectConfig"))
    Action.add_member(:fixed_response_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedResponseActionConfig, location_name: "FixedResponseConfig"))
    Action.add_member(:forward_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardActionConfig, location_name: "ForwardConfig"))
    Action.type = Types::Action
    ActionTypeEnum.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORWARD", traits: {"smithy.api#enumValue" => "forward"}))
    ActionTypeEnum.add_member(:authenticate_oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATE_OIDC", traits: {"smithy.api#enumValue" => "authenticate-oidc"}))
    ActionTypeEnum.add_member(:authenticate_cognito, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATE_COGNITO", traits: {"smithy.api#enumValue" => "authenticate-cognito"}))
    ActionTypeEnum.add_member(:redirect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REDIRECT", traits: {"smithy.api#enumValue" => "redirect"}))
    ActionTypeEnum.add_member(:fixed_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIXED_RESPONSE", traits: {"smithy.api#enumValue" => "fixed-response"}))
    Actions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Action)
    AddListenerCertificatesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddListenerCertificatesInput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddListenerCertificatesInput.type = Types::AddListenerCertificatesInput
    AddListenerCertificatesOutput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates"))
    AddListenerCertificatesOutput.type = Types::AddListenerCertificatesOutput
    AddTagsInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, location_name: "ResourceArns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    AddTrustStoreRevocationsInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTrustStoreRevocationsInput.add_member(:revocation_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationContents, location_name: "RevocationContents"))
    AddTrustStoreRevocationsInput.type = Types::AddTrustStoreRevocationsInput
    AddTrustStoreRevocationsOutput.add_member(:trust_store_revocations, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreRevocations, location_name: "TrustStoreRevocations"))
    AddTrustStoreRevocationsOutput.type = Types::AddTrustStoreRevocationsOutput
    AdministrativeOverride.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAdministrativeOverrideStateEnum, location_name: "State"))
    AdministrativeOverride.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAdministrativeOverrideReasonEnum, location_name: "Reason"))
    AdministrativeOverride.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    AdministrativeOverride.type = Types::AdministrativeOverride
    AdvertiseTrustStoreCaNamesEnum.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "on", traits: {"smithy.api#enumValue" => "on"}))
    AdvertiseTrustStoreCaNamesEnum.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "off", traits: {"smithy.api#enumValue" => "off"}))
    AllocationIdNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    AllocationIdNotFoundException.type = Types::AllocationIdNotFoundException
    AlpnPolicyName.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AlpnPolicyValue)
    AnomalyDetection.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyResultEnum, location_name: "Result"))
    AnomalyDetection.add_member(:mitigation_in_effect, ::Smithy::Schema::Shapes::MemberShape.new(target: MitigationInEffectEnum, location_name: "MitigationInEffect"))
    AnomalyDetection.type = Types::AnomalyDetection
    AnomalyResultEnum.add_member(:anomalous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANOMALOUS", traits: {"smithy.api#enumValue" => "anomalous"}))
    AnomalyResultEnum.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NORMAL", traits: {"smithy.api#enumValue" => "normal"}))
    AuthenticateCognitoActionAuthenticationRequestExtraParams.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionAuthenticationRequestParamName)
    AuthenticateCognitoActionAuthenticationRequestExtraParams.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionAuthenticationRequestParamValue)
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "deny"}))
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "allow"}))
    AuthenticateCognitoActionConditionalBehaviorEnum.add_member(:authenticate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATE", traits: {"smithy.api#enumValue" => "authenticate"}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionUserPoolArn, location_name: "UserPoolArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionUserPoolClientId, location_name: "UserPoolClientId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:user_pool_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionUserPoolDomain, location_name: "UserPoolDomain", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateCognitoActionConfig.add_member(:session_cookie_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateCognitoActionConfig.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionScope, location_name: "Scope"))
    AuthenticateCognitoActionConfig.add_member(:session_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateCognitoActionConfig.add_member(:authentication_request_extra_params, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateCognitoActionConfig.add_member(:on_unauthenticated_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateCognitoActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateCognitoActionConfig.type = Types::AuthenticateCognitoActionConfig
    AuthenticateOidcActionAuthenticationRequestExtraParams.key = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionAuthenticationRequestParamName)
    AuthenticateOidcActionAuthenticationRequestExtraParams.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionAuthenticationRequestParamValue)
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "deny"}))
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "allow"}))
    AuthenticateOidcActionConditionalBehaviorEnum.add_member(:authenticate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATE", traits: {"smithy.api#enumValue" => "authenticate"}))
    AuthenticateOidcActionConfig.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionIssuer, location_name: "Issuer", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionAuthorizationEndpoint, location_name: "AuthorizationEndpoint", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:token_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionTokenEndpoint, location_name: "TokenEndpoint", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:user_info_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionUserInfoEndpoint, location_name: "UserInfoEndpoint", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionClientId, location_name: "ClientId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthenticateOidcActionConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionClientSecret, location_name: "ClientSecret"))
    AuthenticateOidcActionConfig.add_member(:session_cookie_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateOidcActionConfig.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionScope, location_name: "Scope"))
    AuthenticateOidcActionConfig.add_member(:session_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateOidcActionConfig.add_member(:authentication_request_extra_params, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateOidcActionConfig.add_member(:on_unauthenticated_request, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateOidcActionConfig.add_member(:use_existing_client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOidcActionUseExistingClientSecret, location_name: "UseExistingClientSecret"))
    AuthenticateOidcActionConfig.type = Types::AuthenticateOidcActionConfig
    AvailabilityZone.add_member(:zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ZoneName, location_name: "ZoneName"))
    AvailabilityZone.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "SubnetId"))
    AvailabilityZone.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostId, location_name: "OutpostId"))
    AvailabilityZone.add_member(:load_balancer_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAddresses, location_name: "LoadBalancerAddresses"))
    AvailabilityZone.add_member(:source_nat_ipv6_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNatIpv6Prefixes, location_name: "SourceNatIpv6Prefixes"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    AvailabilityZoneNotSupportedException.type = Types::AvailabilityZoneNotSupportedException
    AvailabilityZones.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone)
    CaCertificatesBundleNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    CaCertificatesBundleNotFoundException.type = Types::CaCertificatesBundleNotFoundException
    CapacityDecreaseRequestsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    CapacityDecreaseRequestsLimitExceededException.type = Types::CapacityDecreaseRequestsLimitExceededException
    CapacityReservationPendingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    CapacityReservationPendingException.type = Types::CapacityReservationPendingException
    CapacityReservationStateEnum.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONED", traits: {"smithy.api#enumValue" => "provisioned"}))
    CapacityReservationStateEnum.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    CapacityReservationStateEnum.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REBALANCING", traits: {"smithy.api#enumValue" => "rebalancing"}))
    CapacityReservationStateEnum.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    CapacityReservationStatus.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationStateEnum, location_name: "Code"))
    CapacityReservationStatus.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, location_name: "Reason"))
    CapacityReservationStatus.type = Types::CapacityReservationStatus
    CapacityUnitsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    CapacityUnitsLimitExceededException.type = Types::CapacityUnitsLimitExceededException
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, location_name: "CertificateArn"))
    Certificate.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Default, location_name: "IsDefault"))
    Certificate.type = Types::Certificate
    CertificateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate)
    CertificateNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    CertificateNotFoundException.type = Types::CertificateNotFoundException
    Cipher.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherName, location_name: "Name"))
    Cipher.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherPriority, location_name: "Priority"))
    Cipher.type = Types::Cipher
    Ciphers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Cipher)
    CreateListenerInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "Protocol"))
    CreateListenerInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    CreateListenerInput.add_member(:ssl_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyName, location_name: "SslPolicy"))
    CreateListenerInput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates"))
    CreateListenerInput.add_member(:default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "DefaultActions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateListenerInput.add_member(:alpn_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AlpnPolicyName, location_name: "AlpnPolicy"))
    CreateListenerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateListenerInput.add_member(:mutual_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    CreateListenerInput.type = Types::CreateListenerInput
    CreateListenerOutput.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, location_name: "Listeners"))
    CreateListenerOutput.type = Types::CreateListenerOutput
    CreateLoadBalancerInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLoadBalancerInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, location_name: "Subnets"))
    CreateLoadBalancerInput.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, location_name: "SubnetMappings"))
    CreateLoadBalancerInput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, location_name: "SecurityGroups"))
    CreateLoadBalancerInput.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerSchemeEnum, location_name: "Scheme"))
    CreateLoadBalancerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateLoadBalancerInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTypeEnum, location_name: "Type"))
    CreateLoadBalancerInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    CreateLoadBalancerInput.add_member(:customer_owned_ipv4_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
    CreateLoadBalancerInput.add_member(:enable_prefix_for_ipv6_source_nat, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    CreateLoadBalancerInput.add_member(:ipam_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: IpamPools, location_name: "IpamPools"))
    CreateLoadBalancerInput.type = Types::CreateLoadBalancerInput
    CreateLoadBalancerOutput.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "LoadBalancers"))
    CreateLoadBalancerOutput.type = Types::CreateLoadBalancerOutput
    CreateRuleInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConditionList, location_name: "Conditions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, location_name: "Priority", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateRuleInput.type = Types::CreateRuleInput
    CreateRuleOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, location_name: "Rules"))
    CreateRuleOutput.type = Types::CreateRuleOutput
    CreateTargetGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTargetGroupInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "Protocol"))
    CreateTargetGroupInput.add_member(:protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolVersion, location_name: "ProtocolVersion"))
    CreateTargetGroupInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    CreateTargetGroupInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "VpcId"))
    CreateTargetGroupInput.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "HealthCheckProtocol"))
    CreateTargetGroupInput.add_member(:health_check_port, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateTargetGroupInput.add_member(:health_check_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    CreateTargetGroupInput.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, location_name: "HealthCheckPath"))
    CreateTargetGroupInput.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateTargetGroupInput.add_member(:health_check_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    CreateTargetGroupInput.add_member(:healthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:unhealthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:matcher, ::Smithy::Schema::Shapes::MemberShape.new(target: Matcher, location_name: "Matcher"))
    CreateTargetGroupInput.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTypeEnum, location_name: "TargetType"))
    CreateTargetGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateTargetGroupInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIpAddressTypeEnum, location_name: "IpAddressType"))
    CreateTargetGroupInput.type = Types::CreateTargetGroupInput
    CreateTargetGroupOutput.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroups, location_name: "TargetGroups"))
    CreateTargetGroupOutput.type = Types::CreateTargetGroupOutput
    CreateTrustStoreInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "CaCertificatesBundleS3Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "CaCertificatesBundleS3Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, location_name: "CaCertificatesBundleS3ObjectVersion"))
    CreateTrustStoreInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateTrustStoreInput.type = Types::CreateTrustStoreInput
    CreateTrustStoreOutput.add_member(:trust_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStores, location_name: "TrustStores"))
    CreateTrustStoreOutput.type = Types::CreateTrustStoreOutput
    DeleteAssociationSameAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DeleteAssociationSameAccountException.type = Types::DeleteAssociationSameAccountException
    DeleteListenerInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteListenerInput.type = Types::DeleteListenerInput
    DeleteListenerOutput.type = Types::DeleteListenerOutput
    DeleteLoadBalancerInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteLoadBalancerInput.type = Types::DeleteLoadBalancerInput
    DeleteLoadBalancerOutput.type = Types::DeleteLoadBalancerOutput
    DeleteRuleInput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, location_name: "RuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.type = Types::DeleteRuleInput
    DeleteRuleOutput.type = Types::DeleteRuleOutput
    DeleteSharedTrustStoreAssociationInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSharedTrustStoreAssociationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSharedTrustStoreAssociationInput.type = Types::DeleteSharedTrustStoreAssociationInput
    DeleteSharedTrustStoreAssociationOutput.type = Types::DeleteSharedTrustStoreAssociationOutput
    DeleteTargetGroupInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTargetGroupInput.type = Types::DeleteTargetGroupInput
    DeleteTargetGroupOutput.type = Types::DeleteTargetGroupOutput
    DeleteTrustStoreInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTrustStoreInput.type = Types::DeleteTrustStoreInput
    DeleteTrustStoreOutput.type = Types::DeleteTrustStoreOutput
    DeregisterTargetsInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDescriptions, location_name: "Targets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterTargetsInput.type = Types::DeregisterTargetsInput
    DeregisterTargetsOutput.type = Types::DeregisterTargetsOutput
    DescribeAccountLimitsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeAccountLimitsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeAccountLimitsInput.type = Types::DescribeAccountLimitsInput
    DescribeAccountLimitsOutput.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: Limits, location_name: "Limits"))
    DescribeAccountLimitsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeAccountLimitsOutput.type = Types::DescribeAccountLimitsOutput
    DescribeCapacityReservationInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeCapacityReservationInput.type = Types::DescribeCapacityReservationInput
    DescribeCapacityReservationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTime, location_name: "LastModifiedTime"))
    DescribeCapacityReservationOutput.add_member(:decrease_requests_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: DecreaseRequestsRemaining, location_name: "DecreaseRequestsRemaining"))
    DescribeCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    DescribeCapacityReservationOutput.add_member(:capacity_reservation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalCapacityReservationStates, location_name: "CapacityReservationState"))
    DescribeCapacityReservationOutput.type = Types::DescribeCapacityReservationOutput
    DescribeListenerAttributesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeListenerAttributesInput.type = Types::DescribeListenerAttributesInput
    DescribeListenerAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttributes, location_name: "Attributes"))
    DescribeListenerAttributesOutput.type = Types::DescribeListenerAttributesOutput
    DescribeListenerCertificatesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeListenerCertificatesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeListenerCertificatesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeListenerCertificatesInput.type = Types::DescribeListenerCertificatesInput
    DescribeListenerCertificatesOutput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates"))
    DescribeListenerCertificatesOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeListenerCertificatesOutput.type = Types::DescribeListenerCertificatesOutput
    DescribeListenersInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeListenersInput.add_member(:listener_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArns, location_name: "ListenerArns"))
    DescribeListenersInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeListenersInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeListenersInput.type = Types::DescribeListenersInput
    DescribeListenersOutput.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, location_name: "Listeners"))
    DescribeListenersOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeListenersOutput.type = Types::DescribeListenersOutput
    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLoadBalancerAttributesInput.type = Types::DescribeLoadBalancerAttributesInput
    DescribeLoadBalancerAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, location_name: "Attributes"))
    DescribeLoadBalancerAttributesOutput.type = Types::DescribeLoadBalancerAttributesOutput
    DescribeLoadBalancersInput.add_member(:load_balancer_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArns, location_name: "LoadBalancerArns"))
    DescribeLoadBalancersInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, location_name: "Names"))
    DescribeLoadBalancersInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeLoadBalancersInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeLoadBalancersInput.type = Types::DescribeLoadBalancersInput
    DescribeLoadBalancersOutput.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, location_name: "LoadBalancers"))
    DescribeLoadBalancersOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeLoadBalancersOutput.type = Types::DescribeLoadBalancersOutput
    DescribeRulesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn"))
    DescribeRulesInput.add_member(:rule_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArns, location_name: "RuleArns"))
    DescribeRulesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeRulesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeRulesInput.type = Types::DescribeRulesInput
    DescribeRulesOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, location_name: "Rules"))
    DescribeRulesOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeRulesOutput.type = Types::DescribeRulesOutput
    DescribeSSLPoliciesInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyNames, location_name: "Names"))
    DescribeSSLPoliciesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeSSLPoliciesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeSSLPoliciesInput.add_member(:load_balancer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTypeEnum, location_name: "LoadBalancerType"))
    DescribeSSLPoliciesInput.type = Types::DescribeSSLPoliciesInput
    DescribeSSLPoliciesOutput.add_member(:ssl_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicies, location_name: "SslPolicies"))
    DescribeSSLPoliciesOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeSSLPoliciesOutput.type = Types::DescribeSSLPoliciesOutput
    DescribeTagsInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, location_name: "ResourceArns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:tag_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescriptions, location_name: "TagDescriptions"))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DescribeTargetGroupAttributesInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTargetGroupAttributesInput.type = Types::DescribeTargetGroupAttributesInput
    DescribeTargetGroupAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttributes, location_name: "Attributes"))
    DescribeTargetGroupAttributesOutput.type = Types::DescribeTargetGroupAttributesOutput
    DescribeTargetGroupsInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeTargetGroupsInput.add_member(:target_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArns, location_name: "TargetGroupArns"))
    DescribeTargetGroupsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupNames, location_name: "Names"))
    DescribeTargetGroupsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeTargetGroupsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeTargetGroupsInput.type = Types::DescribeTargetGroupsInput
    DescribeTargetGroupsOutput.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroups, location_name: "TargetGroups"))
    DescribeTargetGroupsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeTargetGroupsOutput.type = Types::DescribeTargetGroupsOutput
    DescribeTargetHealthInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTargetHealthInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDescriptions, location_name: "Targets"))
    DescribeTargetHealthInput.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDescribeTargetHealthIncludeOptions, location_name: "Include"))
    DescribeTargetHealthInput.type = Types::DescribeTargetHealthInput
    DescribeTargetHealthInputIncludeEnum.add_member(:anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANOMALY", traits: {"smithy.api#enumValue" => "AnomalyDetection"}))
    DescribeTargetHealthInputIncludeEnum.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "All"}))
    DescribeTargetHealthOutput.add_member(:target_health_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealthDescriptions, location_name: "TargetHealthDescriptions"))
    DescribeTargetHealthOutput.type = Types::DescribeTargetHealthOutput
    DescribeTrustStoreAssociationsInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTrustStoreAssociationsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeTrustStoreAssociationsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeTrustStoreAssociationsInput.type = Types::DescribeTrustStoreAssociationsInput
    DescribeTrustStoreAssociationsOutput.add_member(:trust_store_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreAssociations, location_name: "TrustStoreAssociations"))
    DescribeTrustStoreAssociationsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeTrustStoreAssociationsOutput.type = Types::DescribeTrustStoreAssociationsOutput
    DescribeTrustStoreRevocation.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn"))
    DescribeTrustStoreRevocation.add_member(:revocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationId, location_name: "RevocationId"))
    DescribeTrustStoreRevocation.add_member(:revocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationType, location_name: "RevocationType"))
    DescribeTrustStoreRevocation.add_member(:number_of_revoked_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfRevokedEntries, location_name: "NumberOfRevokedEntries"))
    DescribeTrustStoreRevocation.type = Types::DescribeTrustStoreRevocation
    DescribeTrustStoreRevocationResponse.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeTrustStoreRevocation)
    DescribeTrustStoreRevocationsInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTrustStoreRevocationsInput.add_member(:revocation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationIds, location_name: "RevocationIds"))
    DescribeTrustStoreRevocationsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeTrustStoreRevocationsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeTrustStoreRevocationsInput.type = Types::DescribeTrustStoreRevocationsInput
    DescribeTrustStoreRevocationsOutput.add_member(:trust_store_revocations, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeTrustStoreRevocationResponse, location_name: "TrustStoreRevocations"))
    DescribeTrustStoreRevocationsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeTrustStoreRevocationsOutput.type = Types::DescribeTrustStoreRevocationsOutput
    DescribeTrustStoresInput.add_member(:trust_store_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArns, location_name: "TrustStoreArns"))
    DescribeTrustStoresInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreNames, location_name: "Names"))
    DescribeTrustStoresInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "Marker"))
    DescribeTrustStoresInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, location_name: "PageSize"))
    DescribeTrustStoresInput.type = Types::DescribeTrustStoresInput
    DescribeTrustStoresOutput.add_member(:trust_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStores, location_name: "TrustStores"))
    DescribeTrustStoresOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, location_name: "NextMarker"))
    DescribeTrustStoresOutput.type = Types::DescribeTrustStoresOutput
    DuplicateListenerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DuplicateListenerException.type = Types::DuplicateListenerException
    DuplicateLoadBalancerNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DuplicateLoadBalancerNameException.type = Types::DuplicateLoadBalancerNameException
    DuplicateTagKeysException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DuplicateTagKeysException.type = Types::DuplicateTagKeysException
    DuplicateTargetGroupNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DuplicateTargetGroupNameException.type = Types::DuplicateTargetGroupNameException
    DuplicateTrustStoreNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    DuplicateTrustStoreNameException.type = Types::DuplicateTrustStoreNameException
    EnablePrefixForIpv6SourceNatEnum.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON", traits: {"smithy.api#enumValue" => "on"}))
    EnablePrefixForIpv6SourceNatEnum.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFF", traits: {"smithy.api#enumValue" => "off"}))
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "on", traits: {"smithy.api#enumValue" => "on"}))
    EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "off", traits: {"smithy.api#enumValue" => "off"}))
    FixedResponseActionConfig.add_member(:message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedResponseActionMessage, location_name: "MessageBody"))
    FixedResponseActionConfig.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedResponseActionStatusCode, location_name: "StatusCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FixedResponseActionConfig.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedResponseActionContentType, location_name: "ContentType"))
    FixedResponseActionConfig.type = Types::FixedResponseActionConfig
    ForwardActionConfig.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupList, location_name: "TargetGroups"))
    ForwardActionConfig.add_member(:target_group_stickiness_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStickinessConfig, location_name: "TargetGroupStickinessConfig"))
    ForwardActionConfig.type = Types::ForwardActionConfig
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "Policy"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetTrustStoreCaCertificatesBundleInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetTrustStoreCaCertificatesBundleInput.type = Types::GetTrustStoreCaCertificatesBundleInput
    GetTrustStoreCaCertificatesBundleOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, location_name: "Location"))
    GetTrustStoreCaCertificatesBundleOutput.type = Types::GetTrustStoreCaCertificatesBundleOutput
    GetTrustStoreRevocationContentInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetTrustStoreRevocationContentInput.add_member(:revocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationId, location_name: "RevocationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetTrustStoreRevocationContentInput.type = Types::GetTrustStoreRevocationContentInput
    GetTrustStoreRevocationContentOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, location_name: "Location"))
    GetTrustStoreRevocationContentOutput.type = Types::GetTrustStoreRevocationContentOutput
    HealthUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    HealthUnavailableException.type = Types::HealthUnavailableException
    HostHeaderConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    HostHeaderConditionConfig.type = Types::HostHeaderConditionConfig
    HttpHeaderConditionConfig.add_member(:http_header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeaderConditionName, location_name: "HttpHeaderName"))
    HttpHeaderConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    HttpHeaderConditionConfig.type = Types::HttpHeaderConditionConfig
    HttpRequestMethodConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    HttpRequestMethodConditionConfig.type = Types::HttpRequestMethodConditionConfig
    IncompatibleProtocolsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    IncompatibleProtocolsException.type = Types::IncompatibleProtocolsException
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InvalidCaCertificatesBundleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidCaCertificatesBundleException.type = Types::InvalidCaCertificatesBundleException
    InvalidConfigurationRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidConfigurationRequestException.type = Types::InvalidConfigurationRequestException
    InvalidLoadBalancerActionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidLoadBalancerActionException.type = Types::InvalidLoadBalancerActionException
    InvalidRevocationContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidRevocationContentException.type = Types::InvalidRevocationContentException
    InvalidSchemeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidSchemeException.type = Types::InvalidSchemeException
    InvalidSecurityGroupException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidSecurityGroupException.type = Types::InvalidSecurityGroupException
    InvalidSubnetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidSubnetException.type = Types::InvalidSubnetException
    InvalidTargetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    InvalidTargetException.type = Types::InvalidTargetException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUALSTACK", traits: {"smithy.api#enumValue" => "dualstack"}))
    IpAddressType.add_member(:dualstack_without_public_ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUALSTACK_WITHOUT_PUBLIC_IPV4", traits: {"smithy.api#enumValue" => "dualstack-without-public-ipv4"}))
    IpamPools.add_member(:ipv4_ipam_pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpamPoolId, location_name: "Ipv4IpamPoolId"))
    IpamPools.type = Types::IpamPools
    Limit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    Limit.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Max, location_name: "Max"))
    Limit.type = Types::Limit
    Limits.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Limit)
    ListOfDescribeTargetHealthIncludeOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeTargetHealthInputIncludeEnum)
    ListOfString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue)
    Listener.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn"))
    Listener.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn"))
    Listener.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    Listener.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "Protocol"))
    Listener.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates"))
    Listener.add_member(:ssl_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyName, location_name: "SslPolicy"))
    Listener.add_member(:default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "DefaultActions"))
    Listener.add_member(:alpn_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AlpnPolicyName, location_name: "AlpnPolicy"))
    Listener.add_member(:mutual_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    Listener.type = Types::Listener
    ListenerArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn)
    ListenerAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttributeKey, location_name: "Key"))
    ListenerAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttributeValue, location_name: "Value"))
    ListenerAttribute.type = Types::ListenerAttribute
    ListenerAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttribute)
    ListenerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    ListenerNotFoundException.type = Types::ListenerNotFoundException
    Listeners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Listener)
    LoadBalancer.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn"))
    LoadBalancer.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSName, location_name: "DNSName"))
    LoadBalancer.add_member(:canonical_hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CanonicalHostedZoneId, location_name: "CanonicalHostedZoneId"))
    LoadBalancer.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, location_name: "CreatedTime"))
    LoadBalancer.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerName, location_name: "LoadBalancerName"))
    LoadBalancer.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerSchemeEnum, location_name: "Scheme"))
    LoadBalancer.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "VpcId"))
    LoadBalancer.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerState, location_name: "State"))
    LoadBalancer.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTypeEnum, location_name: "Type"))
    LoadBalancer.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, location_name: "AvailabilityZones"))
    LoadBalancer.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, location_name: "SecurityGroups"))
    LoadBalancer.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    LoadBalancer.add_member(:customer_owned_ipv4_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerOwnedIpv4Pool, location_name: "CustomerOwnedIpv4Pool"))
    LoadBalancer.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    LoadBalancer.add_member(:enable_prefix_for_ipv6_source_nat, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    LoadBalancer.add_member(:ipam_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: IpamPools, location_name: "IpamPools"))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancerAddress.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    LoadBalancerAddress.add_member(:allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationId, location_name: "AllocationId"))
    LoadBalancerAddress.add_member(:private_i_pv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIPv4Address, location_name: "PrivateIPv4Address"))
    LoadBalancerAddress.add_member(:i_pv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Address, location_name: "IPv6Address"))
    LoadBalancerAddress.type = Types::LoadBalancerAddress
    LoadBalancerAddresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAddress)
    LoadBalancerArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn)
    LoadBalancerAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributeKey, location_name: "Key"))
    LoadBalancerAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributeValue, location_name: "Value"))
    LoadBalancerAttribute.type = Types::LoadBalancerAttribute
    LoadBalancerAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttribute)
    LoadBalancerNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerName)
    LoadBalancerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    LoadBalancerNotFoundException.type = Types::LoadBalancerNotFoundException
    LoadBalancerSchemeEnum.add_member(:internet_facing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNET_FACING", traits: {"smithy.api#enumValue" => "internet-facing"}))
    LoadBalancerSchemeEnum.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL", traits: {"smithy.api#enumValue" => "internal"}))
    LoadBalancerState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerStateEnum, location_name: "Code"))
    LoadBalancerState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, location_name: "Reason"))
    LoadBalancerState.type = Types::LoadBalancerState
    LoadBalancerStateEnum.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    LoadBalancerStateEnum.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "provisioning"}))
    LoadBalancerStateEnum.add_member(:active_impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE_IMPAIRED", traits: {"smithy.api#enumValue" => "active_impaired"}))
    LoadBalancerStateEnum.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    LoadBalancerTypeEnum.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "application"}))
    LoadBalancerTypeEnum.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NETWORK", traits: {"smithy.api#enumValue" => "network"}))
    LoadBalancerTypeEnum.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GATEWAY", traits: {"smithy.api#enumValue" => "gateway"}))
    LoadBalancers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancer)
    Matcher.add_member(:http_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpCode, location_name: "HttpCode"))
    Matcher.add_member(:grpc_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcCode, location_name: "GrpcCode"))
    Matcher.type = Types::Matcher
    MinimumLoadBalancerCapacity.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, location_name: "CapacityUnits"))
    MinimumLoadBalancerCapacity.type = Types::MinimumLoadBalancerCapacity
    MitigationInEffectEnum.add_member(:yes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YES", traits: {"smithy.api#enumValue" => "yes"}))
    MitigationInEffectEnum.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO", traits: {"smithy.api#enumValue" => "no"}))
    ModifyCapacityReservationInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCapacityReservationInput.add_member(:minimum_load_balancer_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    ModifyCapacityReservationInput.add_member(:reset_capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResetCapacityReservation, location_name: "ResetCapacityReservation"))
    ModifyCapacityReservationInput.type = Types::ModifyCapacityReservationInput
    ModifyCapacityReservationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTime, location_name: "LastModifiedTime"))
    ModifyCapacityReservationOutput.add_member(:decrease_requests_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: DecreaseRequestsRemaining, location_name: "DecreaseRequestsRemaining"))
    ModifyCapacityReservationOutput.add_member(:minimum_load_balancer_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumLoadBalancerCapacity, location_name: "MinimumLoadBalancerCapacity"))
    ModifyCapacityReservationOutput.add_member(:capacity_reservation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalCapacityReservationStates, location_name: "CapacityReservationState"))
    ModifyCapacityReservationOutput.type = Types::ModifyCapacityReservationOutput
    ModifyIpPoolsInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyIpPoolsInput.add_member(:ipam_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: IpamPools, location_name: "IpamPools"))
    ModifyIpPoolsInput.add_member(:remove_ipam_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveIpamPools, location_name: "RemoveIpamPools"))
    ModifyIpPoolsInput.type = Types::ModifyIpPoolsInput
    ModifyIpPoolsOutput.add_member(:ipam_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: IpamPools, location_name: "IpamPools"))
    ModifyIpPoolsOutput.type = Types::ModifyIpPoolsOutput
    ModifyListenerAttributesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyListenerAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttributes, location_name: "Attributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyListenerAttributesInput.type = Types::ModifyListenerAttributesInput
    ModifyListenerAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerAttributes, location_name: "Attributes"))
    ModifyListenerAttributesOutput.type = Types::ModifyListenerAttributesOutput
    ModifyListenerInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyListenerInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    ModifyListenerInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "Protocol"))
    ModifyListenerInput.add_member(:ssl_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyName, location_name: "SslPolicy"))
    ModifyListenerInput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates"))
    ModifyListenerInput.add_member(:default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "DefaultActions"))
    ModifyListenerInput.add_member(:alpn_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AlpnPolicyName, location_name: "AlpnPolicy"))
    ModifyListenerInput.add_member(:mutual_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: MutualAuthenticationAttributes, location_name: "MutualAuthentication"))
    ModifyListenerInput.type = Types::ModifyListenerInput
    ModifyListenerOutput.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, location_name: "Listeners"))
    ModifyListenerOutput.type = Types::ModifyListenerOutput
    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, location_name: "Attributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyLoadBalancerAttributesInput.type = Types::ModifyLoadBalancerAttributesInput
    ModifyLoadBalancerAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerAttributes, location_name: "Attributes"))
    ModifyLoadBalancerAttributesOutput.type = Types::ModifyLoadBalancerAttributesOutput
    ModifyRuleInput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, location_name: "RuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyRuleInput.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConditionList, location_name: "Conditions"))
    ModifyRuleInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "Actions"))
    ModifyRuleInput.type = Types::ModifyRuleInput
    ModifyRuleOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, location_name: "Rules"))
    ModifyRuleOutput.type = Types::ModifyRuleOutput
    ModifyTargetGroupAttributesInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTargetGroupAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttributes, location_name: "Attributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTargetGroupAttributesInput.type = Types::ModifyTargetGroupAttributesInput
    ModifyTargetGroupAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttributes, location_name: "Attributes"))
    ModifyTargetGroupAttributesOutput.type = Types::ModifyTargetGroupAttributesOutput
    ModifyTargetGroupInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTargetGroupInput.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "HealthCheckProtocol"))
    ModifyTargetGroupInput.add_member(:health_check_port, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPort, location_name: "HealthCheckPort"))
    ModifyTargetGroupInput.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, location_name: "HealthCheckPath"))
    ModifyTargetGroupInput.add_member(:health_check_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    ModifyTargetGroupInput.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    ModifyTargetGroupInput.add_member(:health_check_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    ModifyTargetGroupInput.add_member(:healthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:unhealthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:matcher, ::Smithy::Schema::Shapes::MemberShape.new(target: Matcher, location_name: "Matcher"))
    ModifyTargetGroupInput.type = Types::ModifyTargetGroupInput
    ModifyTargetGroupOutput.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroups, location_name: "TargetGroups"))
    ModifyTargetGroupOutput.type = Types::ModifyTargetGroupOutput
    ModifyTrustStoreInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "CaCertificatesBundleS3Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "CaCertificatesBundleS3Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTrustStoreInput.add_member(:ca_certificates_bundle_s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, location_name: "CaCertificatesBundleS3ObjectVersion"))
    ModifyTrustStoreInput.type = Types::ModifyTrustStoreInput
    ModifyTrustStoreOutput.add_member(:trust_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStores, location_name: "TrustStores"))
    ModifyTrustStoreOutput.type = Types::ModifyTrustStoreOutput
    MutualAuthenticationAttributes.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, location_name: "Mode"))
    MutualAuthenticationAttributes.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn"))
    MutualAuthenticationAttributes.add_member(:ignore_client_certificate_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoreClientCertificateExpiry, location_name: "IgnoreClientCertificateExpiry"))
    MutualAuthenticationAttributes.add_member(:trust_store_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreAssociationStatusEnum, location_name: "TrustStoreAssociationStatus"))
    MutualAuthenticationAttributes.add_member(:advertise_trust_store_ca_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvertiseTrustStoreCaNamesEnum, location_name: "AdvertiseTrustStoreCaNames"))
    MutualAuthenticationAttributes.type = Types::MutualAuthenticationAttributes
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    PathPatternConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    PathPatternConditionConfig.type = Types::PathPatternConditionConfig
    PriorRequestNotCompleteException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    PriorRequestNotCompleteException.type = Types::PriorRequestNotCompleteException
    PriorityInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    PriorityInUseException.type = Types::PriorityInUseException
    ProtocolEnum.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ProtocolEnum.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ProtocolEnum.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    ProtocolEnum.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    ProtocolEnum.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    ProtocolEnum.add_member(:tcp_udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP_UDP", traits: {"smithy.api#enumValue" => "TCP_UDP"}))
    ProtocolEnum.add_member(:geneve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENEVE", traits: {"smithy.api#enumValue" => "GENEVE"}))
    QueryStringConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKeyValuePairList, location_name: "Values"))
    QueryStringConditionConfig.type = Types::QueryStringConditionConfig
    QueryStringKeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, location_name: "Key"))
    QueryStringKeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, location_name: "Value"))
    QueryStringKeyValuePair.type = Types::QueryStringKeyValuePair
    QueryStringKeyValuePairList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKeyValuePair)
    RedirectActionConfig.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionProtocol, location_name: "Protocol"))
    RedirectActionConfig.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionPort, location_name: "Port"))
    RedirectActionConfig.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionHost, location_name: "Host"))
    RedirectActionConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionPath, location_name: "Path"))
    RedirectActionConfig.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionQuery, location_name: "Query"))
    RedirectActionConfig.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectActionStatusCodeEnum, location_name: "StatusCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RedirectActionConfig.type = Types::RedirectActionConfig
    RedirectActionStatusCodeEnum.add_member(:http_301, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_301", traits: {"smithy.api#enumValue" => "HTTP_301"}))
    RedirectActionStatusCodeEnum.add_member(:http_302, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_302", traits: {"smithy.api#enumValue" => "HTTP_302"}))
    RegisterTargetsInput.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterTargetsInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDescriptions, location_name: "Targets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterTargetsInput.type = Types::RegisterTargetsInput
    RegisterTargetsOutput.type = Types::RegisterTargetsOutput
    RemoveIpamPoolEnum.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ipv4", traits: {"smithy.api#enumValue" => "ipv4"}))
    RemoveIpamPools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveIpamPoolEnum)
    RemoveListenerCertificatesInput.add_member(:listener_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, location_name: "ListenerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveListenerCertificatesInput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, location_name: "Certificates", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveListenerCertificatesInput.type = Types::RemoveListenerCertificatesInput
    RemoveListenerCertificatesOutput.type = Types::RemoveListenerCertificatesOutput
    RemoveTagsInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, location_name: "ResourceArns", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    RemoveTrustStoreRevocationsInput.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTrustStoreRevocationsInput.add_member(:revocation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationIds, location_name: "RevocationIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTrustStoreRevocationsInput.type = Types::RemoveTrustStoreRevocationsInput
    RemoveTrustStoreRevocationsOutput.type = Types::RemoveTrustStoreRevocationsOutput
    ResourceArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevocationContent.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "S3Bucket"))
    RevocationContent.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "S3Key"))
    RevocationContent.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, location_name: "S3ObjectVersion"))
    RevocationContent.add_member(:revocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationType, location_name: "RevocationType"))
    RevocationContent.type = Types::RevocationContent
    RevocationContentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    RevocationContentNotFoundException.type = Types::RevocationContentNotFoundException
    RevocationContents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationContent)
    RevocationIdNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    RevocationIdNotFoundException.type = Types::RevocationIdNotFoundException
    RevocationIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationId)
    RevocationType.add_member(:crl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRL", traits: {"smithy.api#enumValue" => "CRL"}))
    Rule.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, location_name: "RuleArn"))
    Rule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Priority"))
    Rule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConditionList, location_name: "Conditions"))
    Rule.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Actions, location_name: "Actions"))
    Rule.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: IsDefault, location_name: "IsDefault"))
    Rule.type = Types::Rule
    RuleArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn)
    RuleCondition.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionFieldName, location_name: "Field"))
    RuleCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    RuleCondition.add_member(:host_header_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HostHeaderConditionConfig, location_name: "HostHeaderConfig"))
    RuleCondition.add_member(:path_pattern_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPatternConditionConfig, location_name: "PathPatternConfig"))
    RuleCondition.add_member(:http_header_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeaderConditionConfig, location_name: "HttpHeaderConfig"))
    RuleCondition.add_member(:query_string_config, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringConditionConfig, location_name: "QueryStringConfig"))
    RuleCondition.add_member(:http_request_method_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestMethodConditionConfig, location_name: "HttpRequestMethodConfig"))
    RuleCondition.add_member(:source_ip_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIpConditionConfig, location_name: "SourceIpConfig"))
    RuleCondition.type = Types::RuleCondition
    RuleConditionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition)
    RuleNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    RuleNotFoundException.type = Types::RuleNotFoundException
    RulePriorityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriorityPair)
    RulePriorityPair.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, location_name: "RuleArn"))
    RulePriorityPair.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, location_name: "Priority"))
    RulePriorityPair.type = Types::RulePriorityPair
    Rules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Rule)
    SSLPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    SSLPolicyNotFoundException.type = Types::SSLPolicyNotFoundException
    SecurityGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId)
    SetIpAddressTypeInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetIpAddressTypeInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetIpAddressTypeInput.type = Types::SetIpAddressTypeInput
    SetIpAddressTypeOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    SetIpAddressTypeOutput.type = Types::SetIpAddressTypeOutput
    SetRulePrioritiesInput.add_member(:rule_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriorityList, location_name: "RulePriorities", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetRulePrioritiesInput.type = Types::SetRulePrioritiesInput
    SetRulePrioritiesOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Rules, location_name: "Rules"))
    SetRulePrioritiesOutput.type = Types::SetRulePrioritiesOutput
    SetSecurityGroupsInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetSecurityGroupsInput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, location_name: "SecurityGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetSecurityGroupsInput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    SetSecurityGroupsInput.type = Types::SetSecurityGroupsInput
    SetSecurityGroupsOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, location_name: "SecurityGroupIds"))
    SetSecurityGroupsOutput.add_member(:enforce_security_group_inbound_rules_on_private_link_traffic, ::Smithy::Schema::Shapes::MemberShape.new(target: EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum, location_name: "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
    SetSecurityGroupsOutput.type = Types::SetSecurityGroupsOutput
    SetSubnetsInput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArn, location_name: "LoadBalancerArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetSubnetsInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, location_name: "Subnets"))
    SetSubnetsInput.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, location_name: "SubnetMappings"))
    SetSubnetsInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    SetSubnetsInput.add_member(:enable_prefix_for_ipv6_source_nat, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    SetSubnetsInput.type = Types::SetSubnetsInput
    SetSubnetsOutput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, location_name: "AvailabilityZones"))
    SetSubnetsOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, location_name: "IpAddressType"))
    SetSubnetsOutput.add_member(:enable_prefix_for_ipv6_source_nat, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePrefixForIpv6SourceNatEnum, location_name: "EnablePrefixForIpv6SourceNat"))
    SetSubnetsOutput.type = Types::SetSubnetsOutput
    SourceIpConditionConfig.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "Values"))
    SourceIpConditionConfig.type = Types::SourceIpConditionConfig
    SourceNatIpv6Prefixes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNatIpv6Prefix)
    SslPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicy)
    SslPolicy.add_member(:ssl_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: SslProtocols, location_name: "SslProtocols"))
    SslPolicy.add_member(:ciphers, ::Smithy::Schema::Shapes::MemberShape.new(target: Ciphers, location_name: "Ciphers"))
    SslPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyName, location_name: "Name"))
    SslPolicy.add_member(:supported_load_balancer_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, location_name: "SupportedLoadBalancerTypes"))
    SslPolicy.type = Types::SslPolicy
    SslPolicyNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SslPolicyName)
    SslProtocols.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SslProtocol)
    SubnetMapping.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "SubnetId"))
    SubnetMapping.add_member(:allocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationId, location_name: "AllocationId"))
    SubnetMapping.add_member(:private_i_pv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIPv4Address, location_name: "PrivateIPv4Address"))
    SubnetMapping.add_member(:i_pv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Address, location_name: "IPv6Address"))
    SubnetMapping.add_member(:source_nat_ipv6_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNatIpv6Prefix, location_name: "SourceNatIpv6Prefix"))
    SubnetMapping.type = Types::SubnetMapping
    SubnetMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMapping)
    SubnetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    SubnetNotFoundException.type = Types::SubnetNotFoundException
    Subnets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagDescription.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    TagDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    TagDescription.type = Types::TagDescription
    TagDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescription)
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TargetAdministrativeOverrideReasonEnum.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "AdministrativeOverride.Unknown"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:no_override_engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OVERRIDE_ENGAGED", traits: {"smithy.api#enumValue" => "AdministrativeOverride.NoOverride"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:zonal_shift_engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZONAL_SHIFT_ENGAGED", traits: {"smithy.api#enumValue" => "AdministrativeOverride.ZonalShiftActive"}))
    TargetAdministrativeOverrideReasonEnum.add_member(:zonal_shift_delegated_to_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZONAL_SHIFT_DELEGATED_TO_DNS", traits: {"smithy.api#enumValue" => "AdministrativeOverride.ZonalShiftDelegatedToDns"}))
    TargetAdministrativeOverrideStateEnum.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "unknown"}))
    TargetAdministrativeOverrideStateEnum.add_member(:no_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_OVERRIDE", traits: {"smithy.api#enumValue" => "no_override"}))
    TargetAdministrativeOverrideStateEnum.add_member(:zonal_shift_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZONAL_SHIFT_ACTIVE", traits: {"smithy.api#enumValue" => "zonal_shift_active"}))
    TargetAdministrativeOverrideStateEnum.add_member(:zonal_shift_delegated_to_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZONAL_SHIFT_DELEGATED_TO_DNS", traits: {"smithy.api#enumValue" => "zonal_shift_delegated_to_dns"}))
    TargetDescription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, location_name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetDescription.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    TargetDescription.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ZoneName, location_name: "AvailabilityZone"))
    TargetDescription.type = Types::TargetDescription
    TargetDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDescription)
    TargetGroup.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn"))
    TargetGroup.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, location_name: "TargetGroupName"))
    TargetGroup.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "Protocol"))
    TargetGroup.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "Port"))
    TargetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "VpcId"))
    TargetGroup.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolEnum, location_name: "HealthCheckProtocol"))
    TargetGroup.add_member(:health_check_port, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetGroup.add_member(:health_check_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckEnabled, location_name: "HealthCheckEnabled"))
    TargetGroup.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    TargetGroup.add_member(:health_check_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    TargetGroup.add_member(:healthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    TargetGroup.add_member(:unhealthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    TargetGroup.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, location_name: "HealthCheckPath"))
    TargetGroup.add_member(:matcher, ::Smithy::Schema::Shapes::MemberShape.new(target: Matcher, location_name: "Matcher"))
    TargetGroup.add_member(:load_balancer_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerArns, location_name: "LoadBalancerArns"))
    TargetGroup.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTypeEnum, location_name: "TargetType"))
    TargetGroup.add_member(:protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolVersion, location_name: "ProtocolVersion"))
    TargetGroup.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupIpAddressTypeEnum, location_name: "IpAddressType"))
    TargetGroup.type = Types::TargetGroup
    TargetGroupArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn)
    TargetGroupAssociationLimitException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TargetGroupAssociationLimitException.type = Types::TargetGroupAssociationLimitException
    TargetGroupAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttributeKey, location_name: "Key"))
    TargetGroupAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttributeValue, location_name: "Value"))
    TargetGroupAttribute.type = Types::TargetGroupAttribute
    TargetGroupAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupAttribute)
    TargetGroupIpAddressTypeEnum.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    TargetGroupIpAddressTypeEnum.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    TargetGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupTuple)
    TargetGroupNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName)
    TargetGroupNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TargetGroupNotFoundException.type = Types::TargetGroupNotFoundException
    TargetGroupStickinessConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStickinessEnabled, location_name: "Enabled"))
    TargetGroupStickinessConfig.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupStickinessDurationSeconds, location_name: "DurationSeconds"))
    TargetGroupStickinessConfig.type = Types::TargetGroupStickinessConfig
    TargetGroupTuple.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupArn, location_name: "TargetGroupArn"))
    TargetGroupTuple.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupWeight, location_name: "Weight"))
    TargetGroupTuple.type = Types::TargetGroupTuple
    TargetGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroup)
    TargetHealth.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealthStateEnum, location_name: "State"))
    TargetHealth.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealthReasonEnum, location_name: "Reason"))
    TargetHealth.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    TargetHealth.type = Types::TargetHealth
    TargetHealthDescription.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDescription, location_name: "Target"))
    TargetHealthDescription.add_member(:health_check_port, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetHealthDescription.add_member(:target_health, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealth, location_name: "TargetHealth"))
    TargetHealthDescription.add_member(:anomaly_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyDetection, location_name: "AnomalyDetection"))
    TargetHealthDescription.add_member(:administrative_override, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministrativeOverride, location_name: "AdministrativeOverride"))
    TargetHealthDescription.type = Types::TargetHealthDescription
    TargetHealthDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealthDescription)
    TargetHealthReasonEnum.add_member(:registration_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTRATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "Elb.RegistrationInProgress"}))
    TargetHealthReasonEnum.add_member(:initial_health_checking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIAL_HEALTH_CHECKING", traits: {"smithy.api#enumValue" => "Elb.InitialHealthChecking"}))
    TargetHealthReasonEnum.add_member(:response_code_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESPONSE_CODE_MISMATCH", traits: {"smithy.api#enumValue" => "Target.ResponseCodeMismatch"}))
    TargetHealthReasonEnum.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMEOUT", traits: {"smithy.api#enumValue" => "Target.Timeout"}))
    TargetHealthReasonEnum.add_member(:failed_health_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_HEALTH_CHECKS", traits: {"smithy.api#enumValue" => "Target.FailedHealthChecks"}))
    TargetHealthReasonEnum.add_member(:not_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_REGISTERED", traits: {"smithy.api#enumValue" => "Target.NotRegistered"}))
    TargetHealthReasonEnum.add_member(:not_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "Target.NotInUse"}))
    TargetHealthReasonEnum.add_member(:deregistration_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTRATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "Target.DeregistrationInProgress"}))
    TargetHealthReasonEnum.add_member(:invalid_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_STATE", traits: {"smithy.api#enumValue" => "Target.InvalidState"}))
    TargetHealthReasonEnum.add_member(:ip_unusable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP_UNUSABLE", traits: {"smithy.api#enumValue" => "Target.IpUnusable"}))
    TargetHealthReasonEnum.add_member(:health_check_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTH_CHECK_DISABLED", traits: {"smithy.api#enumValue" => "Target.HealthCheckDisabled"}))
    TargetHealthReasonEnum.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "Elb.InternalError"}))
    TargetHealthStateEnum.add_member(:initial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIAL", traits: {"smithy.api#enumValue" => "initial"}))
    TargetHealthStateEnum.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "healthy"}))
    TargetHealthStateEnum.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "unhealthy"}))
    TargetHealthStateEnum.add_member(:unhealthy_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY_DRAINING", traits: {"smithy.api#enumValue" => "unhealthy.draining"}))
    TargetHealthStateEnum.add_member(:unused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNUSED", traits: {"smithy.api#enumValue" => "unused"}))
    TargetHealthStateEnum.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAINING", traits: {"smithy.api#enumValue" => "draining"}))
    TargetHealthStateEnum.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "unavailable"}))
    TargetTypeEnum.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "instance"}))
    TargetTypeEnum.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP", traits: {"smithy.api#enumValue" => "ip"}))
    TargetTypeEnum.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA", traits: {"smithy.api#enumValue" => "lambda"}))
    TargetTypeEnum.add_member(:alb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALB", traits: {"smithy.api#enumValue" => "alb"}))
    TooManyActionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyActionsException.type = Types::TooManyActionsException
    TooManyCertificatesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyCertificatesException.type = Types::TooManyCertificatesException
    TooManyListenersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyListenersException.type = Types::TooManyListenersException
    TooManyLoadBalancersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyLoadBalancersException.type = Types::TooManyLoadBalancersException
    TooManyRegistrationsForTargetIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyRegistrationsForTargetIdException.type = Types::TooManyRegistrationsForTargetIdException
    TooManyRulesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyRulesException.type = Types::TooManyRulesException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    TooManyTargetGroupsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyTargetGroupsException.type = Types::TooManyTargetGroupsException
    TooManyTargetsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyTargetsException.type = Types::TooManyTargetsException
    TooManyTrustStoreRevocationEntriesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyTrustStoreRevocationEntriesException.type = Types::TooManyTrustStoreRevocationEntriesException
    TooManyTrustStoresException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyTrustStoresException.type = Types::TooManyTrustStoresException
    TooManyUniqueTargetGroupsPerLoadBalancerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TooManyUniqueTargetGroupsPerLoadBalancerException.type = Types::TooManyUniqueTargetGroupsPerLoadBalancerException
    TrustStore.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreName, location_name: "Name"))
    TrustStore.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn"))
    TrustStore.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreStatus, location_name: "Status"))
    TrustStore.add_member(:number_of_ca_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfCaCertificates, location_name: "NumberOfCaCertificates"))
    TrustStore.add_member(:total_revoked_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalRevokedEntries, location_name: "TotalRevokedEntries"))
    TrustStore.type = Types::TrustStore
    TrustStoreArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn)
    TrustStoreAssociation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreAssociationResourceArn, location_name: "ResourceArn"))
    TrustStoreAssociation.type = Types::TrustStoreAssociation
    TrustStoreAssociationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TrustStoreAssociationNotFoundException.type = Types::TrustStoreAssociationNotFoundException
    TrustStoreAssociationStatusEnum.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    TrustStoreAssociationStatusEnum.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVED", traits: {"smithy.api#enumValue" => "removed"}))
    TrustStoreAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreAssociation)
    TrustStoreInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TrustStoreInUseException.type = Types::TrustStoreInUseException
    TrustStoreNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreName)
    TrustStoreNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TrustStoreNotFoundException.type = Types::TrustStoreNotFoundException
    TrustStoreNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    TrustStoreNotReadyException.type = Types::TrustStoreNotReadyException
    TrustStoreRevocation.add_member(:trust_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreArn, location_name: "TrustStoreArn"))
    TrustStoreRevocation.add_member(:revocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationId, location_name: "RevocationId"))
    TrustStoreRevocation.add_member(:revocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationType, location_name: "RevocationType"))
    TrustStoreRevocation.add_member(:number_of_revoked_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfRevokedEntries, location_name: "NumberOfRevokedEntries"))
    TrustStoreRevocation.type = Types::TrustStoreRevocation
    TrustStoreRevocations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreRevocation)
    TrustStoreStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrustStoreStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TrustStores.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStore)
    UnsupportedProtocolException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, location_name: "Message"))
    UnsupportedProtocolException.type = Types::UnsupportedProtocolException
    ZonalCapacityReservationState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationStatus, location_name: "State"))
    ZonalCapacityReservationState.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ZoneName, location_name: "AvailabilityZone"))
    ZonalCapacityReservationState.add_member(:effective_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsDouble, location_name: "EffectiveCapacityUnits"))
    ZonalCapacityReservationState.type = Types::ZonalCapacityReservationState
    ZonalCapacityReservationStates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalCapacityReservationState)

    ElasticLoadBalancingV10 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticloadbalancingv2#ElasticLoadBalancing_v10"
      service.name = "ElasticLoadBalancingV10"
      service.version = "2015-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Elastic Load Balancing v2", "arnNamespace" => "elasticloadbalancing", "cloudFormationName" => "ElasticLoadBalancingV2", "cloudTrailEventSource" => "elasticloadbalancing.amazonaws.com", "docId" => "elasticloadbalancingv2-2015-12-01", "endpointPrefix" => "elasticloadbalancing"}, "aws.auth#sigv4" => {"name" => "elasticloadbalancing"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Elastic Load Balancing", "smithy.api#xmlNamespace" => {"uri" => "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/"}}
      service.add_operation(:add_listener_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddListenerCertificates"
        operation.name = "AddListenerCertificates"
        operation.input = AddListenerCertificatesInput
        operation.output = AddListenerCertificatesOutput
        operation.errors << CertificateNotFoundException
        operation.errors << ListenerNotFoundException
        operation.errors << TooManyCertificatesException
        operation.traits = {}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsInput
        operation.output = AddTagsOutput
        operation.errors << DuplicateTagKeysException
        operation.errors << ListenerNotFoundException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << RuleNotFoundException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:add_trust_store_revocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#AddTrustStoreRevocations"
        operation.name = "AddTrustStoreRevocations"
        operation.input = AddTrustStoreRevocationsInput
        operation.output = AddTrustStoreRevocationsOutput
        operation.errors << InvalidRevocationContentException
        operation.errors << RevocationContentNotFoundException
        operation.errors << TooManyTrustStoreRevocationEntriesException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateListener"
        operation.name = "CreateListener"
        operation.input = CreateListenerInput
        operation.output = CreateListenerOutput
        operation.errors << ALPNPolicyNotSupportedException
        operation.errors << CertificateNotFoundException
        operation.errors << DuplicateListenerException
        operation.errors << IncompatibleProtocolsException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidLoadBalancerActionException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << SSLPolicyNotFoundException
        operation.errors << TargetGroupAssociationLimitException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyActionsException
        operation.errors << TooManyCertificatesException
        operation.errors << TooManyListenersException
        operation.errors << TooManyRegistrationsForTargetIdException
        operation.errors << TooManyTagsException
        operation.errors << TooManyTargetsException
        operation.errors << TooManyUniqueTargetGroupsPerLoadBalancerException
        operation.errors << TrustStoreNotFoundException
        operation.errors << TrustStoreNotReadyException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:create_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateLoadBalancer"
        operation.name = "CreateLoadBalancer"
        operation.input = CreateLoadBalancerInput
        operation.output = CreateLoadBalancerOutput
        operation.errors << AllocationIdNotFoundException
        operation.errors << AvailabilityZoneNotSupportedException
        operation.errors << DuplicateLoadBalancerNameException
        operation.errors << DuplicateTagKeysException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSchemeException
        operation.errors << InvalidSecurityGroupException
        operation.errors << InvalidSubnetException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << SubnetNotFoundException
        operation.errors << TooManyLoadBalancersException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateRule"
        operation.name = "CreateRule"
        operation.input = CreateRuleInput
        operation.output = CreateRuleOutput
        operation.errors << IncompatibleProtocolsException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidLoadBalancerActionException
        operation.errors << ListenerNotFoundException
        operation.errors << PriorityInUseException
        operation.errors << TargetGroupAssociationLimitException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyActionsException
        operation.errors << TooManyRegistrationsForTargetIdException
        operation.errors << TooManyRulesException
        operation.errors << TooManyTagsException
        operation.errors << TooManyTargetGroupsException
        operation.errors << TooManyTargetsException
        operation.errors << TooManyUniqueTargetGroupsPerLoadBalancerException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:create_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateTargetGroup"
        operation.name = "CreateTargetGroup"
        operation.input = CreateTargetGroupInput
        operation.output = CreateTargetGroupOutput
        operation.errors << DuplicateTargetGroupNameException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << TooManyTagsException
        operation.errors << TooManyTargetGroupsException
        operation.traits = {}
      end)
      service.add_operation(:create_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#CreateTrustStore"
        operation.name = "CreateTrustStore"
        operation.input = CreateTrustStoreInput
        operation.output = CreateTrustStoreOutput
        operation.errors << CaCertificatesBundleNotFoundException
        operation.errors << DuplicateTagKeysException
        operation.errors << DuplicateTrustStoreNameException
        operation.errors << InvalidCaCertificatesBundleException
        operation.errors << TooManyTagsException
        operation.errors << TooManyTrustStoresException
        operation.traits = {}
      end)
      service.add_operation(:delete_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = DeleteListenerInput
        operation.output = DeleteListenerOutput
        operation.errors << ListenerNotFoundException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteLoadBalancer"
        operation.name = "DeleteLoadBalancer"
        operation.input = DeleteLoadBalancerInput
        operation.output = DeleteLoadBalancerOutput
        operation.errors << LoadBalancerNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleInput
        operation.output = DeleteRuleOutput
        operation.errors << OperationNotPermittedException
        operation.errors << RuleNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_shared_trust_store_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteSharedTrustStoreAssociation"
        operation.name = "DeleteSharedTrustStoreAssociation"
        operation.input = DeleteSharedTrustStoreAssociationInput
        operation.output = DeleteSharedTrustStoreAssociationOutput
        operation.errors << DeleteAssociationSameAccountException
        operation.errors << TrustStoreAssociationNotFoundException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteTargetGroup"
        operation.name = "DeleteTargetGroup"
        operation.input = DeleteTargetGroupInput
        operation.output = DeleteTargetGroupOutput
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeleteTrustStore"
        operation.name = "DeleteTrustStore"
        operation.input = DeleteTrustStoreInput
        operation.output = DeleteTrustStoreOutput
        operation.errors << TrustStoreInUseException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:deregister_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DeregisterTargets"
        operation.name = "DeregisterTargets"
        operation.input = DeregisterTargetsInput
        operation.output = DeregisterTargetsOutput
        operation.errors << InvalidTargetException
        operation.errors << TargetGroupNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = DescribeAccountLimitsInput
        operation.output = DescribeAccountLimitsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountLimits.new
      end)
      service.add_operation(:describe_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeCapacityReservation"
        operation.name = "DescribeCapacityReservation"
        operation.input = DescribeCapacityReservationInput
        operation.output = DescribeCapacityReservationOutput
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_listener_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListenerAttributes"
        operation.name = "DescribeListenerAttributes"
        operation.input = DescribeListenerAttributesInput
        operation.output = DescribeListenerAttributesOutput
        operation.errors << ListenerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_listener_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListenerCertificates"
        operation.name = "DescribeListenerCertificates"
        operation.input = DescribeListenerCertificatesInput
        operation.output = DescribeListenerCertificatesOutput
        operation.errors << ListenerNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeListenerCertificates.new
      end)
      service.add_operation(:describe_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeListeners"
        operation.name = "DescribeListeners"
        operation.input = DescribeListenersInput
        operation.output = DescribeListenersOutput
        operation.errors << ListenerNotFoundException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeListeners.new
      end)
      service.add_operation(:describe_load_balancer_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancerAttributes"
        operation.name = "DescribeLoadBalancerAttributes"
        operation.input = DescribeLoadBalancerAttributesInput
        operation.output = DescribeLoadBalancerAttributesOutput
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeLoadBalancers"
        operation.name = "DescribeLoadBalancers"
        operation.input = DescribeLoadBalancersInput
        operation.output = DescribeLoadBalancersOutput
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeLoadBalancers.new
      end)
      service.add_operation(:describe_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeRules"
        operation.name = "DescribeRules"
        operation.input = DescribeRulesInput
        operation.output = DescribeRulesOutput
        operation.errors << ListenerNotFoundException
        operation.errors << RuleNotFoundException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRules.new
      end)
      service.add_operation(:describe_ssl_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeSSLPolicies"
        operation.name = "DescribeSSLPolicies"
        operation.input = DescribeSSLPoliciesInput
        operation.output = DescribeSSLPoliciesOutput
        operation.errors << SSLPolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsInput
        operation.output = DescribeTagsOutput
        operation.errors << ListenerNotFoundException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << RuleNotFoundException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_target_group_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroupAttributes"
        operation.name = "DescribeTargetGroupAttributes"
        operation.input = DescribeTargetGroupAttributesInput
        operation.output = DescribeTargetGroupAttributesOutput
        operation.errors << TargetGroupNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetGroups"
        operation.name = "DescribeTargetGroups"
        operation.input = DescribeTargetGroupsInput
        operation.output = DescribeTargetGroupsOutput
        operation.errors << LoadBalancerNotFoundException
        operation.errors << TargetGroupNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTargetGroups.new
      end)
      service.add_operation(:describe_target_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTargetHealth"
        operation.name = "DescribeTargetHealth"
        operation.input = DescribeTargetHealthInput
        operation.output = DescribeTargetHealthOutput
        operation.errors << HealthUnavailableException
        operation.errors << InvalidTargetException
        operation.errors << TargetGroupNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:describe_trust_store_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreAssociations"
        operation.name = "DescribeTrustStoreAssociations"
        operation.input = DescribeTrustStoreAssociationsInput
        operation.output = DescribeTrustStoreAssociationsOutput
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStoreAssociations.new
      end)
      service.add_operation(:describe_trust_store_revocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStoreRevocations"
        operation.name = "DescribeTrustStoreRevocations"
        operation.input = DescribeTrustStoreRevocationsInput
        operation.output = DescribeTrustStoreRevocationsOutput
        operation.errors << RevocationIdNotFoundException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStoreRevocations.new
      end)
      service.add_operation(:describe_trust_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#DescribeTrustStores"
        operation.name = "DescribeTrustStores"
        operation.input = DescribeTrustStoresInput
        operation.output = DescribeTrustStoresOutput
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrustStores.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_trust_store_ca_certificates_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetTrustStoreCaCertificatesBundle"
        operation.name = "GetTrustStoreCaCertificatesBundle"
        operation.input = GetTrustStoreCaCertificatesBundleInput
        operation.output = GetTrustStoreCaCertificatesBundleOutput
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_trust_store_revocation_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#GetTrustStoreRevocationContent"
        operation.name = "GetTrustStoreRevocationContent"
        operation.input = GetTrustStoreRevocationContentInput
        operation.output = GetTrustStoreRevocationContentOutput
        operation.errors << RevocationIdNotFoundException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyCapacityReservation"
        operation.name = "ModifyCapacityReservation"
        operation.input = ModifyCapacityReservationInput
        operation.output = ModifyCapacityReservationOutput
        operation.errors << CapacityDecreaseRequestsLimitExceededException
        operation.errors << CapacityReservationPendingException
        operation.errors << CapacityUnitsLimitExceededException
        operation.errors << InsufficientCapacityException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << PriorRequestNotCompleteException
        operation.traits = {}
      end)
      service.add_operation(:modify_ip_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyIpPools"
        operation.name = "ModifyIpPools"
        operation.input = ModifyIpPoolsInput
        operation.output = ModifyIpPoolsOutput
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyListener"
        operation.name = "ModifyListener"
        operation.input = ModifyListenerInput
        operation.output = ModifyListenerOutput
        operation.errors << ALPNPolicyNotSupportedException
        operation.errors << CertificateNotFoundException
        operation.errors << DuplicateListenerException
        operation.errors << IncompatibleProtocolsException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidLoadBalancerActionException
        operation.errors << ListenerNotFoundException
        operation.errors << SSLPolicyNotFoundException
        operation.errors << TargetGroupAssociationLimitException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyActionsException
        operation.errors << TooManyCertificatesException
        operation.errors << TooManyListenersException
        operation.errors << TooManyRegistrationsForTargetIdException
        operation.errors << TooManyTargetsException
        operation.errors << TooManyUniqueTargetGroupsPerLoadBalancerException
        operation.errors << TrustStoreNotFoundException
        operation.errors << TrustStoreNotReadyException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:modify_listener_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyListenerAttributes"
        operation.name = "ModifyListenerAttributes"
        operation.input = ModifyListenerAttributesInput
        operation.output = ModifyListenerAttributesOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << ListenerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_load_balancer_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyLoadBalancerAttributes"
        operation.name = "ModifyLoadBalancerAttributes"
        operation.input = ModifyLoadBalancerAttributesInput
        operation.output = ModifyLoadBalancerAttributesOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyRule"
        operation.name = "ModifyRule"
        operation.input = ModifyRuleInput
        operation.output = ModifyRuleOutput
        operation.errors << IncompatibleProtocolsException
        operation.errors << InvalidLoadBalancerActionException
        operation.errors << OperationNotPermittedException
        operation.errors << RuleNotFoundException
        operation.errors << TargetGroupAssociationLimitException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyActionsException
        operation.errors << TooManyRegistrationsForTargetIdException
        operation.errors << TooManyTargetsException
        operation.errors << TooManyUniqueTargetGroupsPerLoadBalancerException
        operation.errors << UnsupportedProtocolException
        operation.traits = {}
      end)
      service.add_operation(:modify_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroup"
        operation.name = "ModifyTargetGroup"
        operation.input = ModifyTargetGroupInput
        operation.output = ModifyTargetGroupOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << TargetGroupNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_target_group_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTargetGroupAttributes"
        operation.name = "ModifyTargetGroupAttributes"
        operation.input = ModifyTargetGroupAttributesInput
        operation.output = ModifyTargetGroupAttributesOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << TargetGroupNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_trust_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#ModifyTrustStore"
        operation.name = "ModifyTrustStore"
        operation.input = ModifyTrustStoreInput
        operation.output = ModifyTrustStoreOutput
        operation.errors << CaCertificatesBundleNotFoundException
        operation.errors << InvalidCaCertificatesBundleException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:register_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RegisterTargets"
        operation.name = "RegisterTargets"
        operation.input = RegisterTargetsInput
        operation.output = RegisterTargetsOutput
        operation.errors << InvalidTargetException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyRegistrationsForTargetIdException
        operation.errors << TooManyTargetsException
        operation.traits = {}
      end)
      service.add_operation(:remove_listener_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveListenerCertificates"
        operation.name = "RemoveListenerCertificates"
        operation.input = RemoveListenerCertificatesInput
        operation.output = RemoveListenerCertificatesOutput
        operation.errors << ListenerNotFoundException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = RemoveTagsInput
        operation.output = RemoveTagsOutput
        operation.errors << ListenerNotFoundException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << RuleNotFoundException
        operation.errors << TargetGroupNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:remove_trust_store_revocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#RemoveTrustStoreRevocations"
        operation.name = "RemoveTrustStoreRevocations"
        operation.input = RemoveTrustStoreRevocationsInput
        operation.output = RemoveTrustStoreRevocationsOutput
        operation.errors << RevocationIdNotFoundException
        operation.errors << TrustStoreNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_ip_address_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetIpAddressType"
        operation.name = "SetIpAddressType"
        operation.input = SetIpAddressTypeInput
        operation.output = SetIpAddressTypeOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSubnetException
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_rule_priorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetRulePriorities"
        operation.name = "SetRulePriorities"
        operation.input = SetRulePrioritiesInput
        operation.output = SetRulePrioritiesOutput
        operation.errors << OperationNotPermittedException
        operation.errors << PriorityInUseException
        operation.errors << RuleNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetSecurityGroups"
        operation.name = "SetSecurityGroups"
        operation.input = SetSecurityGroupsInput
        operation.output = SetSecurityGroupsOutput
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSecurityGroupException
        operation.errors << LoadBalancerNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticloadbalancingv2#SetSubnets"
        operation.name = "SetSubnets"
        operation.input = SetSubnetsInput
        operation.output = SetSubnetsOutput
        operation.errors << AllocationIdNotFoundException
        operation.errors << AvailabilityZoneNotSupportedException
        operation.errors << CapacityReservationPendingException
        operation.errors << InvalidConfigurationRequestException
        operation.errors << InvalidSubnetException
        operation.errors << LoadBalancerNotFoundException
        operation.errors << SubnetNotFoundException
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
