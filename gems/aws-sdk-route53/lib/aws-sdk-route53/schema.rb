# frozen_string_literal: true

# This is generated code!

module Aws::Route53
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    AWSAccountID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#AWSAccountID', name: 'AWSAccountID')
    AWSRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#AWSRegion', name: 'AWSRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AccountLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#AccountLimit', name: 'AccountLimit')
    AccountLimitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#AccountLimitType', name: 'AccountLimitType')
    ActivateKeySigningKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ActivateKeySigningKeyRequest', name: 'ActivateKeySigningKeyRequest')
    ActivateKeySigningKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ActivateKeySigningKeyResponse', name: 'ActivateKeySigningKeyResponse')
    AlarmIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#AlarmIdentifier', name: 'AlarmIdentifier')
    AlarmName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#AlarmName', name: 'AlarmName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AliasHealthEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#AliasHealthEnabled', name: 'AliasHealthEnabled', traits: {"smithy.api#default" => false})
    AliasTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#AliasTarget', name: 'AliasTarget')
    AssociateVPCComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#AssociateVPCComment', name: 'AssociateVPCComment')
    AssociateVPCWithHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#AssociateVPCWithHostedZoneRequest', name: 'AssociateVPCWithHostedZoneRequest')
    AssociateVPCWithHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#AssociateVPCWithHostedZoneResponse', name: 'AssociateVPCWithHostedZoneResponse')
    Bias = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#Bias', name: 'Bias', traits: {"smithy.api#range" => {"min" => -99, "max" => 99}})
    Change = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#Change', name: 'Change')
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ChangeAction', name: 'ChangeAction')
    ChangeBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeBatch', name: 'ChangeBatch')
    ChangeCidrCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeCidrCollectionRequest', name: 'ChangeCidrCollectionRequest')
    ChangeCidrCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeCidrCollectionResponse', name: 'ChangeCidrCollectionResponse')
    ChangeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ChangeId', name: 'ChangeId', traits: {"smithy.api#length" => {"min" => 1, "max" => 6500}})
    ChangeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeInfo', name: 'ChangeInfo')
    ChangeResourceRecordSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeResourceRecordSetsRequest', name: 'ChangeResourceRecordSetsRequest')
    ChangeResourceRecordSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeResourceRecordSetsResponse', name: 'ChangeResourceRecordSetsResponse')
    ChangeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ChangeStatus', name: 'ChangeStatus')
    ChangeTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeTagsForResourceRequest', name: 'ChangeTagsForResourceRequest')
    ChangeTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ChangeTagsForResourceResponse', name: 'ChangeTagsForResourceResponse')
    Changes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#Changes', name: 'Changes', traits: {"smithy.api#length" => {"min" => 1}})
    CheckerIpRanges = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#CheckerIpRanges', name: 'CheckerIpRanges')
    ChildHealthCheckList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ChildHealthCheckList', name: 'ChildHealthCheckList', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Cidr', name: 'Cidr', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "\\S"})
    CidrBlockInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrBlockInUseException', name: 'CidrBlockInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CidrBlockSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#CidrBlockSummaries', name: 'CidrBlockSummaries')
    CidrBlockSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrBlockSummary', name: 'CidrBlockSummary')
    CidrCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrCollection', name: 'CidrCollection')
    CidrCollectionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrCollectionAlreadyExistsException', name: 'CidrCollectionAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    CidrCollectionChange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrCollectionChange', name: 'CidrCollectionChange')
    CidrCollectionChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#CidrCollectionChangeAction', name: 'CidrCollectionChangeAction')
    CidrCollectionChanges = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#CidrCollectionChanges', name: 'CidrCollectionChanges', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CidrCollectionInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrCollectionInUseException', name: 'CidrCollectionInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CidrCollectionVersionMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrCollectionVersionMismatchException', name: 'CidrCollectionVersionMismatchException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CidrList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#CidrList', name: 'CidrList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CidrLocationNameDefaultAllowed = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#CidrLocationNameDefaultAllowed', name: 'CidrLocationNameDefaultAllowed', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-\\*]+$"})
    CidrLocationNameDefaultNotAllowed = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#CidrLocationNameDefaultNotAllowed', name: 'CidrLocationNameDefaultNotAllowed', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-]+$"})
    CidrNonce = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#CidrNonce', name: 'CidrNonce', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\p{ASCII}+$"})
    CidrRoutingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CidrRoutingConfig', name: 'CidrRoutingConfig')
    CloudWatchAlarmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CloudWatchAlarmConfiguration', name: 'CloudWatchAlarmConfiguration')
    CloudWatchLogsLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#CloudWatchLogsLogGroupArn', name: 'CloudWatchLogsLogGroupArn')
    CloudWatchRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#CloudWatchRegion', name: 'CloudWatchRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CollectionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#CollectionName', name: 'CollectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z_\\-]+$"})
    CollectionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#CollectionSummaries', name: 'CollectionSummaries')
    CollectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CollectionSummary', name: 'CollectionSummary')
    CollectionVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#CollectionVersion', name: 'CollectionVersion', traits: {"smithy.api#range" => {"min" => 1}})
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ComparisonOperator', name: 'ComparisonOperator')
    ConcurrentModification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ConcurrentModification', name: 'ConcurrentModification', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictingDomainExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ConflictingDomainExists', name: 'ConflictingDomainExists', traits: {"smithy.api#error" => "client"})
    ConflictingTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ConflictingTypes', name: 'ConflictingTypes', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Coordinates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#Coordinates', name: 'Coordinates')
    CreateCidrCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateCidrCollectionRequest', name: 'CreateCidrCollectionRequest')
    CreateCidrCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateCidrCollectionResponse', name: 'CreateCidrCollectionResponse')
    CreateHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateHealthCheckRequest', name: 'CreateHealthCheckRequest')
    CreateHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateHealthCheckResponse', name: 'CreateHealthCheckResponse')
    CreateHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateHostedZoneRequest', name: 'CreateHostedZoneRequest')
    CreateHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateHostedZoneResponse', name: 'CreateHostedZoneResponse')
    CreateKeySigningKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateKeySigningKeyRequest', name: 'CreateKeySigningKeyRequest')
    CreateKeySigningKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateKeySigningKeyResponse', name: 'CreateKeySigningKeyResponse')
    CreateQueryLoggingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateQueryLoggingConfigRequest', name: 'CreateQueryLoggingConfigRequest')
    CreateQueryLoggingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateQueryLoggingConfigResponse', name: 'CreateQueryLoggingConfigResponse')
    CreateReusableDelegationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateReusableDelegationSetRequest', name: 'CreateReusableDelegationSetRequest')
    CreateReusableDelegationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateReusableDelegationSetResponse', name: 'CreateReusableDelegationSetResponse')
    CreateTrafficPolicyInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyInstanceRequest', name: 'CreateTrafficPolicyInstanceRequest')
    CreateTrafficPolicyInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyInstanceResponse', name: 'CreateTrafficPolicyInstanceResponse')
    CreateTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyRequest', name: 'CreateTrafficPolicyRequest')
    CreateTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyResponse', name: 'CreateTrafficPolicyResponse')
    CreateTrafficPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyVersionRequest', name: 'CreateTrafficPolicyVersionRequest')
    CreateTrafficPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateTrafficPolicyVersionResponse', name: 'CreateTrafficPolicyVersionResponse')
    CreateVPCAssociationAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateVPCAssociationAuthorizationRequest', name: 'CreateVPCAssociationAuthorizationRequest')
    CreateVPCAssociationAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#CreateVPCAssociationAuthorizationResponse', name: 'CreateVPCAssociationAuthorizationResponse')
    DNSName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#DNSName', name: 'DNSName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DNSRCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#DNSRCode', name: 'DNSRCode')
    DNSSECNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DNSSECNotFound', name: 'DNSSECNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DNSSECStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DNSSECStatus', name: 'DNSSECStatus')
    DeactivateKeySigningKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeactivateKeySigningKeyRequest', name: 'DeactivateKeySigningKeyRequest')
    DeactivateKeySigningKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeactivateKeySigningKeyResponse', name: 'DeactivateKeySigningKeyResponse')
    DelegationSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSet', name: 'DelegationSet')
    DelegationSetAlreadyCreated = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSetAlreadyCreated', name: 'DelegationSetAlreadyCreated', traits: {"smithy.api#error" => "client"})
    DelegationSetAlreadyReusable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSetAlreadyReusable', name: 'DelegationSetAlreadyReusable', traits: {"smithy.api#error" => "client"})
    DelegationSetInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSetInUse', name: 'DelegationSetInUse', traits: {"smithy.api#error" => "client"})
    DelegationSetNameServers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#DelegationSetNameServers', name: 'DelegationSetNameServers', traits: {"smithy.api#length" => {"min" => 1}})
    DelegationSetNotAvailable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSetNotAvailable', name: 'DelegationSetNotAvailable', traits: {"smithy.api#error" => "client"})
    DelegationSetNotReusable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DelegationSetNotReusable', name: 'DelegationSetNotReusable', traits: {"smithy.api#error" => "client"})
    DelegationSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#DelegationSets', name: 'DelegationSets')
    DeleteCidrCollectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteCidrCollectionRequest', name: 'DeleteCidrCollectionRequest')
    DeleteCidrCollectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteCidrCollectionResponse', name: 'DeleteCidrCollectionResponse')
    DeleteHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteHealthCheckRequest', name: 'DeleteHealthCheckRequest')
    DeleteHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteHealthCheckResponse', name: 'DeleteHealthCheckResponse')
    DeleteHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteHostedZoneRequest', name: 'DeleteHostedZoneRequest')
    DeleteHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteHostedZoneResponse', name: 'DeleteHostedZoneResponse')
    DeleteKeySigningKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteKeySigningKeyRequest', name: 'DeleteKeySigningKeyRequest')
    DeleteKeySigningKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteKeySigningKeyResponse', name: 'DeleteKeySigningKeyResponse')
    DeleteQueryLoggingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteQueryLoggingConfigRequest', name: 'DeleteQueryLoggingConfigRequest')
    DeleteQueryLoggingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteQueryLoggingConfigResponse', name: 'DeleteQueryLoggingConfigResponse')
    DeleteReusableDelegationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteReusableDelegationSetRequest', name: 'DeleteReusableDelegationSetRequest')
    DeleteReusableDelegationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteReusableDelegationSetResponse', name: 'DeleteReusableDelegationSetResponse')
    DeleteTrafficPolicyInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteTrafficPolicyInstanceRequest', name: 'DeleteTrafficPolicyInstanceRequest')
    DeleteTrafficPolicyInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteTrafficPolicyInstanceResponse', name: 'DeleteTrafficPolicyInstanceResponse')
    DeleteTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteTrafficPolicyRequest', name: 'DeleteTrafficPolicyRequest')
    DeleteTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteTrafficPolicyResponse', name: 'DeleteTrafficPolicyResponse')
    DeleteVPCAssociationAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteVPCAssociationAuthorizationRequest', name: 'DeleteVPCAssociationAuthorizationRequest')
    DeleteVPCAssociationAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DeleteVPCAssociationAuthorizationResponse', name: 'DeleteVPCAssociationAuthorizationResponse')
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#Dimension', name: 'Dimension')
    DimensionField = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#DimensionField', name: 'DimensionField', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#DimensionList', name: 'DimensionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    DisableHostedZoneDNSSECRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DisableHostedZoneDNSSECRequest', name: 'DisableHostedZoneDNSSECRequest')
    DisableHostedZoneDNSSECResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DisableHostedZoneDNSSECResponse', name: 'DisableHostedZoneDNSSECResponse')
    Disabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#Disabled', name: 'Disabled')
    DisassociateVPCComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#DisassociateVPCComment', name: 'DisassociateVPCComment')
    DisassociateVPCFromHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DisassociateVPCFromHostedZoneRequest', name: 'DisassociateVPCFromHostedZoneRequest')
    DisassociateVPCFromHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#DisassociateVPCFromHostedZoneResponse', name: 'DisassociateVPCFromHostedZoneResponse')
    EnableHostedZoneDNSSECRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#EnableHostedZoneDNSSECRequest', name: 'EnableHostedZoneDNSSECRequest')
    EnableHostedZoneDNSSECResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#EnableHostedZoneDNSSECResponse', name: 'EnableHostedZoneDNSSECResponse')
    EnableSNI = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#EnableSNI', name: 'EnableSNI')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ErrorMessage', name: 'ErrorMessage')
    ErrorMessages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ErrorMessages', name: 'ErrorMessages')
    EvaluationPeriods = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#EvaluationPeriods', name: 'EvaluationPeriods', traits: {"smithy.api#range" => {"min" => 1}})
    FailureThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#FailureThreshold', name: 'FailureThreshold', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    FullyQualifiedDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#FullyQualifiedDomainName', name: 'FullyQualifiedDomainName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    GeoLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GeoLocation', name: 'GeoLocation')
    GeoLocationContinentCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationContinentCode', name: 'GeoLocationContinentCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    GeoLocationContinentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationContinentName', name: 'GeoLocationContinentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GeoLocationCountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationCountryCode', name: 'GeoLocationCountryCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    GeoLocationCountryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationCountryName', name: 'GeoLocationCountryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GeoLocationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GeoLocationDetails', name: 'GeoLocationDetails')
    GeoLocationDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#GeoLocationDetailsList', name: 'GeoLocationDetailsList')
    GeoLocationSubdivisionCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationSubdivisionCode', name: 'GeoLocationSubdivisionCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GeoLocationSubdivisionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#GeoLocationSubdivisionName', name: 'GeoLocationSubdivisionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GeoProximityLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GeoProximityLocation', name: 'GeoProximityLocation')
    GetAccountLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetAccountLimitRequest', name: 'GetAccountLimitRequest')
    GetAccountLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetAccountLimitResponse', name: 'GetAccountLimitResponse')
    GetChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetChangeRequest', name: 'GetChangeRequest')
    GetChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetChangeResponse', name: 'GetChangeResponse')
    GetCheckerIpRangesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetCheckerIpRangesRequest', name: 'GetCheckerIpRangesRequest')
    GetCheckerIpRangesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetCheckerIpRangesResponse', name: 'GetCheckerIpRangesResponse')
    GetDNSSECRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetDNSSECRequest', name: 'GetDNSSECRequest')
    GetDNSSECResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetDNSSECResponse', name: 'GetDNSSECResponse')
    GetGeoLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetGeoLocationRequest', name: 'GetGeoLocationRequest')
    GetGeoLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetGeoLocationResponse', name: 'GetGeoLocationResponse')
    GetHealthCheckCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckCountRequest', name: 'GetHealthCheckCountRequest')
    GetHealthCheckCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckCountResponse', name: 'GetHealthCheckCountResponse')
    GetHealthCheckLastFailureReasonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckLastFailureReasonRequest', name: 'GetHealthCheckLastFailureReasonRequest')
    GetHealthCheckLastFailureReasonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckLastFailureReasonResponse', name: 'GetHealthCheckLastFailureReasonResponse')
    GetHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckRequest', name: 'GetHealthCheckRequest')
    GetHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckResponse', name: 'GetHealthCheckResponse')
    GetHealthCheckStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckStatusRequest', name: 'GetHealthCheckStatusRequest')
    GetHealthCheckStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHealthCheckStatusResponse', name: 'GetHealthCheckStatusResponse')
    GetHostedZoneCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneCountRequest', name: 'GetHostedZoneCountRequest')
    GetHostedZoneCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneCountResponse', name: 'GetHostedZoneCountResponse')
    GetHostedZoneLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneLimitRequest', name: 'GetHostedZoneLimitRequest')
    GetHostedZoneLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneLimitResponse', name: 'GetHostedZoneLimitResponse')
    GetHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneRequest', name: 'GetHostedZoneRequest')
    GetHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetHostedZoneResponse', name: 'GetHostedZoneResponse')
    GetQueryLoggingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetQueryLoggingConfigRequest', name: 'GetQueryLoggingConfigRequest')
    GetQueryLoggingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetQueryLoggingConfigResponse', name: 'GetQueryLoggingConfigResponse')
    GetReusableDelegationSetLimitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetReusableDelegationSetLimitRequest', name: 'GetReusableDelegationSetLimitRequest')
    GetReusableDelegationSetLimitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetReusableDelegationSetLimitResponse', name: 'GetReusableDelegationSetLimitResponse')
    GetReusableDelegationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetReusableDelegationSetRequest', name: 'GetReusableDelegationSetRequest')
    GetReusableDelegationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetReusableDelegationSetResponse', name: 'GetReusableDelegationSetResponse')
    GetTrafficPolicyInstanceCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyInstanceCountRequest', name: 'GetTrafficPolicyInstanceCountRequest')
    GetTrafficPolicyInstanceCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyInstanceCountResponse', name: 'GetTrafficPolicyInstanceCountResponse')
    GetTrafficPolicyInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyInstanceRequest', name: 'GetTrafficPolicyInstanceRequest')
    GetTrafficPolicyInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyInstanceResponse', name: 'GetTrafficPolicyInstanceResponse')
    GetTrafficPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyRequest', name: 'GetTrafficPolicyRequest')
    GetTrafficPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#GetTrafficPolicyResponse', name: 'GetTrafficPolicyResponse')
    HealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheck', name: 'HealthCheck')
    HealthCheckAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheckAlreadyExists', name: 'HealthCheckAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HealthCheckConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheckConfig', name: 'HealthCheckConfig')
    HealthCheckCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#HealthCheckCount', name: 'HealthCheckCount')
    HealthCheckId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#HealthCheckId', name: 'HealthCheckId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    HealthCheckInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheckInUse', name: 'HealthCheckInUse', traits: {"smithy.api#deprecated" => {}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HealthCheckNonce = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#HealthCheckNonce', name: 'HealthCheckNonce', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    HealthCheckObservation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheckObservation', name: 'HealthCheckObservation')
    HealthCheckObservations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#HealthCheckObservations', name: 'HealthCheckObservations')
    HealthCheckRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#HealthCheckRegion', name: 'HealthCheckRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    HealthCheckRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#HealthCheckRegionList', name: 'HealthCheckRegionList', traits: {"smithy.api#length" => {"min" => 3, "max" => 64}})
    HealthCheckType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#HealthCheckType', name: 'HealthCheckType')
    HealthCheckVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#HealthCheckVersion', name: 'HealthCheckVersion', traits: {"smithy.api#range" => {"min" => 1}})
    HealthCheckVersionMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HealthCheckVersionMismatch', name: 'HealthCheckVersionMismatch', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HealthChecks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#HealthChecks', name: 'HealthChecks')
    HealthThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#HealthThreshold', name: 'HealthThreshold', traits: {"smithy.api#range" => {"min" => 0, "max" => 256}})
    HostedZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZone', name: 'HostedZone')
    HostedZoneAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneAlreadyExists', name: 'HostedZoneAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    HostedZoneConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneConfig', name: 'HostedZoneConfig')
    HostedZoneCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#HostedZoneCount', name: 'HostedZoneCount')
    HostedZoneLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneLimit', name: 'HostedZoneLimit')
    HostedZoneLimitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#HostedZoneLimitType', name: 'HostedZoneLimitType')
    HostedZoneNotEmpty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneNotEmpty', name: 'HostedZoneNotEmpty', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HostedZoneNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneNotFound', name: 'HostedZoneNotFound', traits: {"smithy.api#error" => "client"})
    HostedZoneNotPrivate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneNotPrivate', name: 'HostedZoneNotPrivate', traits: {"smithy.api#error" => "client"})
    HostedZoneOwner = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneOwner', name: 'HostedZoneOwner')
    HostedZoneOwningService = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#HostedZoneOwningService', name: 'HostedZoneOwningService', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    HostedZonePartiallyDelegated = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZonePartiallyDelegated', name: 'HostedZonePartiallyDelegated', traits: {"smithy.api#error" => "client"})
    HostedZoneRRSetCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#HostedZoneRRSetCount', name: 'HostedZoneRRSetCount')
    HostedZoneSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#HostedZoneSummaries', name: 'HostedZoneSummaries')
    HostedZoneSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#HostedZoneSummary', name: 'HostedZoneSummary')
    HostedZoneType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#HostedZoneType', name: 'HostedZoneType')
    HostedZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#HostedZones', name: 'HostedZones')
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#IPAddress', name: 'IPAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 45}, "smithy.api#pattern" => "^(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)$"})
    IPAddressCidr = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#IPAddressCidr', name: 'IPAddressCidr')
    IncompatibleVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#IncompatibleVersion', name: 'IncompatibleVersion', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientCloudWatchLogsResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InsufficientCloudWatchLogsResourcePolicy', name: 'InsufficientCloudWatchLogsResourcePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDataHealthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#InsufficientDataHealthStatus', name: 'InsufficientDataHealthStatus')
    InvalidArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidArgument', name: 'InvalidArgument', traits: {"smithy.api#error" => "client"})
    InvalidChangeBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidChangeBatch', name: 'InvalidChangeBatch', traits: {"smithy.api#error" => "client"})
    InvalidDomainName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidDomainName', name: 'InvalidDomainName', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidInput', name: 'InvalidInput', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKMSArn = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidKMSArn', name: 'InvalidKMSArn', traits: {"smithy.api#error" => "client"})
    InvalidKeySigningKeyName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidKeySigningKeyName', name: 'InvalidKeySigningKeyName', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKeySigningKeyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidKeySigningKeyStatus', name: 'InvalidKeySigningKeyStatus', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPaginationToken = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidPaginationToken', name: 'InvalidPaginationToken', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSigningStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidSigningStatus', name: 'InvalidSigningStatus', traits: {"smithy.api#error" => "client"})
    InvalidTrafficPolicyDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidTrafficPolicyDocument', name: 'InvalidTrafficPolicyDocument', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#InvalidVPCId', name: 'InvalidVPCId', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Inverted = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#Inverted', name: 'Inverted')
    IsPrivateZone = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#IsPrivateZone', name: 'IsPrivateZone', traits: {"smithy.api#default" => false})
    KeySigningKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#KeySigningKey', name: 'KeySigningKey')
    KeySigningKeyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#KeySigningKeyAlreadyExists', name: 'KeySigningKeyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    KeySigningKeyInParentDSRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#KeySigningKeyInParentDSRecord', name: 'KeySigningKeyInParentDSRecord', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeySigningKeyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#KeySigningKeyInUse', name: 'KeySigningKeyInUse', traits: {"smithy.api#error" => "client"})
    KeySigningKeyWithActiveStatusNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#KeySigningKeyWithActiveStatusNotFound', name: 'KeySigningKeyWithActiveStatusNotFound', traits: {"smithy.api#error" => "client"})
    KeySigningKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#KeySigningKeys', name: 'KeySigningKeys')
    LastVPCAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#LastVPCAssociation', name: 'LastVPCAssociation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Latitude = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Latitude', name: 'Latitude', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#pattern" => "^[-+]?[0-9]{1,2}(\\.[0-9]{0,2})?$"})
    LimitValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#LimitValue', name: 'LimitValue', traits: {"smithy.api#range" => {"min" => 1}})
    LimitsExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#LimitsExceeded', name: 'LimitsExceeded', traits: {"smithy.api#error" => "client"})
    LinkedService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#LinkedService', name: 'LinkedService')
    ListCidrBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrBlocksRequest', name: 'ListCidrBlocksRequest')
    ListCidrBlocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrBlocksResponse', name: 'ListCidrBlocksResponse')
    ListCidrCollectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrCollectionsRequest', name: 'ListCidrCollectionsRequest')
    ListCidrCollectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrCollectionsResponse', name: 'ListCidrCollectionsResponse')
    ListCidrLocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrLocationsRequest', name: 'ListCidrLocationsRequest')
    ListCidrLocationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListCidrLocationsResponse', name: 'ListCidrLocationsResponse')
    ListGeoLocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListGeoLocationsRequest', name: 'ListGeoLocationsRequest')
    ListGeoLocationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListGeoLocationsResponse', name: 'ListGeoLocationsResponse')
    ListHealthChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHealthChecksRequest', name: 'ListHealthChecksRequest')
    ListHealthChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHealthChecksResponse', name: 'ListHealthChecksResponse')
    ListHostedZonesByNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesByNameRequest', name: 'ListHostedZonesByNameRequest')
    ListHostedZonesByNameResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesByNameResponse', name: 'ListHostedZonesByNameResponse')
    ListHostedZonesByVPCRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesByVPCRequest', name: 'ListHostedZonesByVPCRequest')
    ListHostedZonesByVPCResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesByVPCResponse', name: 'ListHostedZonesByVPCResponse')
    ListHostedZonesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesRequest', name: 'ListHostedZonesRequest')
    ListHostedZonesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListHostedZonesResponse', name: 'ListHostedZonesResponse')
    ListQueryLoggingConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListQueryLoggingConfigsRequest', name: 'ListQueryLoggingConfigsRequest')
    ListQueryLoggingConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListQueryLoggingConfigsResponse', name: 'ListQueryLoggingConfigsResponse')
    ListResourceRecordSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListResourceRecordSetsRequest', name: 'ListResourceRecordSetsRequest')
    ListResourceRecordSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListResourceRecordSetsResponse', name: 'ListResourceRecordSetsResponse')
    ListReusableDelegationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListReusableDelegationSetsRequest', name: 'ListReusableDelegationSetsRequest')
    ListReusableDelegationSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListReusableDelegationSetsResponse', name: 'ListReusableDelegationSetsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTagsForResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTagsForResourcesRequest', name: 'ListTagsForResourcesRequest')
    ListTagsForResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTagsForResourcesResponse', name: 'ListTagsForResourcesResponse')
    ListTrafficPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPoliciesRequest', name: 'ListTrafficPoliciesRequest')
    ListTrafficPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPoliciesResponse', name: 'ListTrafficPoliciesResponse')
    ListTrafficPolicyInstancesByHostedZoneRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesByHostedZoneRequest', name: 'ListTrafficPolicyInstancesByHostedZoneRequest')
    ListTrafficPolicyInstancesByHostedZoneResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesByHostedZoneResponse', name: 'ListTrafficPolicyInstancesByHostedZoneResponse')
    ListTrafficPolicyInstancesByPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesByPolicyRequest', name: 'ListTrafficPolicyInstancesByPolicyRequest')
    ListTrafficPolicyInstancesByPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesByPolicyResponse', name: 'ListTrafficPolicyInstancesByPolicyResponse')
    ListTrafficPolicyInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesRequest', name: 'ListTrafficPolicyInstancesRequest')
    ListTrafficPolicyInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyInstancesResponse', name: 'ListTrafficPolicyInstancesResponse')
    ListTrafficPolicyVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyVersionsRequest', name: 'ListTrafficPolicyVersionsRequest')
    ListTrafficPolicyVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListTrafficPolicyVersionsResponse', name: 'ListTrafficPolicyVersionsResponse')
    ListVPCAssociationAuthorizationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListVPCAssociationAuthorizationsRequest', name: 'ListVPCAssociationAuthorizationsRequest')
    ListVPCAssociationAuthorizationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ListVPCAssociationAuthorizationsResponse', name: 'ListVPCAssociationAuthorizationsResponse')
    LocalZoneGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#LocalZoneGroup', name: 'LocalZoneGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    LocationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#LocationSummaries', name: 'LocationSummaries')
    LocationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#LocationSummary', name: 'LocationSummary')
    Longitude = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Longitude', name: 'Longitude', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#pattern" => "^[-+]?[0-9]{1,3}(\\.[0-9]{0,2})?$"})
    MeasureLatency = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#MeasureLatency', name: 'MeasureLatency')
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Nameserver = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Nameserver', name: 'Nameserver', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NoSuchChange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchChange', name: 'NoSuchChange', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchCidrCollectionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchCidrCollectionException', name: 'NoSuchCidrCollectionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchCidrLocationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchCidrLocationException', name: 'NoSuchCidrLocationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchCloudWatchLogsLogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchCloudWatchLogsLogGroup', name: 'NoSuchCloudWatchLogsLogGroup', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchDelegationSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchDelegationSet', name: 'NoSuchDelegationSet', traits: {"smithy.api#error" => "client"})
    NoSuchGeoLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchGeoLocation', name: 'NoSuchGeoLocation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchHealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchHealthCheck', name: 'NoSuchHealthCheck', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchHostedZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchHostedZone', name: 'NoSuchHostedZone', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchKeySigningKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchKeySigningKey', name: 'NoSuchKeySigningKey', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchQueryLoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchQueryLoggingConfig', name: 'NoSuchQueryLoggingConfig', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchTrafficPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchTrafficPolicy', name: 'NoSuchTrafficPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchTrafficPolicyInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NoSuchTrafficPolicyInstance', name: 'NoSuchTrafficPolicyInstance', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Nonce = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Nonce', name: 'Nonce', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    NotAuthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#NotAuthorizedException', name: 'NotAuthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    PageMarker = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#PageMarker', name: 'PageMarker', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    PageTruncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#PageTruncated', name: 'PageTruncated', traits: {"smithy.api#default" => false})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Period = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#Period', name: 'Period', traits: {"smithy.api#range" => {"min" => 60}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PriorRequestNotComplete = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#PriorRequestNotComplete', name: 'PriorRequestNotComplete', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PublicZoneVPCAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#PublicZoneVPCAssociation', name: 'PublicZoneVPCAssociation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryLoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#QueryLoggingConfig', name: 'QueryLoggingConfig')
    QueryLoggingConfigAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#QueryLoggingConfigAlreadyExists', name: 'QueryLoggingConfigAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    QueryLoggingConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#QueryLoggingConfigId', name: 'QueryLoggingConfigId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    QueryLoggingConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#QueryLoggingConfigs', name: 'QueryLoggingConfigs')
    RData = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#RData', name: 'RData', traits: {"smithy.api#length" => {"min" => 0, "max" => 4000}})
    RRType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#RRType', name: 'RRType')
    RecordData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#RecordData', name: 'RecordData')
    RecordDataEntry = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#RecordDataEntry', name: 'RecordDataEntry', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    RequestInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#RequestInterval', name: 'RequestInterval', traits: {"smithy.api#range" => {"min" => 10, "max" => 30}})
    ResettableElementName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ResettableElementName', name: 'ResettableElementName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResettableElementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ResettableElementNameList', name: 'ResettableElementNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    ResourcePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ResourcePath', name: 'ResourcePath', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ResourceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ResourceRecord', name: 'ResourceRecord')
    ResourceRecordSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ResourceRecordSet', name: 'ResourceRecordSet')
    ResourceRecordSetFailover = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ResourceRecordSetFailover', name: 'ResourceRecordSetFailover')
    ResourceRecordSetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ResourceRecordSetIdentifier', name: 'ResourceRecordSetIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceRecordSetMultiValueAnswer = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53#ResourceRecordSetMultiValueAnswer', name: 'ResourceRecordSetMultiValueAnswer')
    ResourceRecordSetRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ResourceRecordSetRegion', name: 'ResourceRecordSetRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceRecordSetWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#ResourceRecordSetWeight', name: 'ResourceRecordSetWeight', traits: {"smithy.api#range" => {"min" => 0, "max" => 255}})
    ResourceRecordSets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ResourceRecordSets', name: 'ResourceRecordSets')
    ResourceRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ResourceRecords', name: 'ResourceRecords', traits: {"smithy.api#length" => {"min" => 1}})
    ResourceTagSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ResourceTagSet', name: 'ResourceTagSet')
    ResourceTagSetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#ResourceTagSetList', name: 'ResourceTagSetList')
    ResourceURI = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ResourceURI', name: 'ResourceURI', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ReusableDelegationSetLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ReusableDelegationSetLimit', name: 'ReusableDelegationSetLimit')
    ReusableDelegationSetLimitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#ReusableDelegationSetLimitType', name: 'ReusableDelegationSetLimitType')
    RoutingControlArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#RoutingControlArn', name: 'RoutingControlArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SearchString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SearchString', name: 'SearchString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ServeSignature = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ServeSignature', name: 'ServeSignature', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#ServicePrincipal', name: 'ServicePrincipal', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SigningKeyInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#SigningKeyInteger', name: 'SigningKeyInteger', traits: {"smithy.api#default" => 0})
    SigningKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SigningKeyName', name: 'SigningKeyName', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}})
    SigningKeyStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SigningKeyStatus', name: 'SigningKeyStatus', traits: {"smithy.api#length" => {"min" => 5, "max" => 150}})
    SigningKeyStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SigningKeyStatusMessage', name: 'SigningKeyStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    SigningKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SigningKeyString', name: 'SigningKeyString')
    SigningKeyTag = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#SigningKeyTag', name: 'SigningKeyTag', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65536}})
    Statistic = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#Statistic', name: 'Statistic')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#Status', name: 'Status')
    StatusReport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#StatusReport', name: 'StatusReport')
    SubnetMask = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#SubnetMask', name: 'SubnetMask', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    TTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#TTL', name: 'TTL', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TagResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TagResourceId', name: 'TagResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    TagResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TagResourceIdList', name: 'TagResourceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TagResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#TagResourceType', name: 'TagResourceType')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TestDNSAnswerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TestDNSAnswerRequest', name: 'TestDNSAnswerRequest')
    TestDNSAnswerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TestDNSAnswerResponse', name: 'TestDNSAnswerResponse')
    Threshold = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.route53#Threshold', name: 'Threshold')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.route53#TimeStamp', name: 'TimeStamp')
    TooManyHealthChecks = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyHealthChecks', name: 'TooManyHealthChecks', traits: {"smithy.api#error" => "client"})
    TooManyHostedZones = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyHostedZones', name: 'TooManyHostedZones', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyKeySigningKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyKeySigningKeys', name: 'TooManyKeySigningKeys', traits: {"smithy.api#error" => "client"})
    TooManyTrafficPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyTrafficPolicies', name: 'TooManyTrafficPolicies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrafficPolicyInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyTrafficPolicyInstances', name: 'TooManyTrafficPolicyInstances', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrafficPolicyVersionsForCurrentPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyTrafficPolicyVersionsForCurrentPolicy', name: 'TooManyTrafficPolicyVersionsForCurrentPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyVPCAssociationAuthorizations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TooManyVPCAssociationAuthorizations', name: 'TooManyVPCAssociationAuthorizations', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrafficPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TrafficPolicies', name: 'TrafficPolicies')
    TrafficPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicy', name: 'TrafficPolicy')
    TrafficPolicyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicyAlreadyExists', name: 'TrafficPolicyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    TrafficPolicyComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyComment', name: 'TrafficPolicyComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    TrafficPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyDocument', name: 'TrafficPolicyDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}})
    TrafficPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyId', name: 'TrafficPolicyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    TrafficPolicyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicyInUse', name: 'TrafficPolicyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrafficPolicyInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstance', name: 'TrafficPolicyInstance')
    TrafficPolicyInstanceAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstanceAlreadyExists', name: 'TrafficPolicyInstanceAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    TrafficPolicyInstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstanceCount', name: 'TrafficPolicyInstanceCount')
    TrafficPolicyInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstanceId', name: 'TrafficPolicyInstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    TrafficPolicyInstanceState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstanceState', name: 'TrafficPolicyInstanceState')
    TrafficPolicyInstances = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TrafficPolicyInstances', name: 'TrafficPolicyInstances')
    TrafficPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyName', name: 'TrafficPolicyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    TrafficPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#TrafficPolicySummaries', name: 'TrafficPolicySummaries')
    TrafficPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#TrafficPolicySummary', name: 'TrafficPolicySummary')
    TrafficPolicyVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#TrafficPolicyVersion', name: 'TrafficPolicyVersion', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    TrafficPolicyVersionMarker = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TrafficPolicyVersionMarker', name: 'TrafficPolicyVersionMarker', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    TransportProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#TransportProtocol', name: 'TransportProtocol')
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"})
    UpdateHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateHealthCheckRequest', name: 'UpdateHealthCheckRequest')
    UpdateHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateHealthCheckResponse', name: 'UpdateHealthCheckResponse')
    UpdateHostedZoneCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateHostedZoneCommentRequest', name: 'UpdateHostedZoneCommentRequest')
    UpdateHostedZoneCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateHostedZoneCommentResponse', name: 'UpdateHostedZoneCommentResponse')
    UpdateTrafficPolicyCommentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateTrafficPolicyCommentRequest', name: 'UpdateTrafficPolicyCommentRequest')
    UpdateTrafficPolicyCommentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateTrafficPolicyCommentResponse', name: 'UpdateTrafficPolicyCommentResponse')
    UpdateTrafficPolicyInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateTrafficPolicyInstanceRequest', name: 'UpdateTrafficPolicyInstanceRequest')
    UpdateTrafficPolicyInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#UpdateTrafficPolicyInstanceResponse', name: 'UpdateTrafficPolicyInstanceResponse')
    UsageCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53#UsageCount', name: 'UsageCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    VPC = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#VPC', name: 'VPC')
    VPCAssociationAuthorizationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#VPCAssociationAuthorizationNotFound', name: 'VPCAssociationAuthorizationNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    VPCAssociationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53#VPCAssociationNotFound', name: 'VPCAssociationNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    VPCId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53#VPCId', name: 'VPCId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    VPCRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53#VPCRegion', name: 'VPCRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VPCs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53#VPCs', name: 'VPCs', traits: {"smithy.api#length" => {"min" => 1}})

    AccountLimit.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    AccountLimit.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    AccountLimit.type = Types::AccountLimit
    AccountLimitType.add_member(:max_health_checks_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_HEALTH_CHECKS_BY_OWNER', traits: {"smithy.api#enumValue" => "MAX_HEALTH_CHECKS_BY_OWNER"}))
    AccountLimitType.add_member(:max_hosted_zones_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_HOSTED_ZONES_BY_OWNER', traits: {"smithy.api#enumValue" => "MAX_HOSTED_ZONES_BY_OWNER"}))
    AccountLimitType.add_member(:max_traffic_policy_instances_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER', traits: {"smithy.api#enumValue" => "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"}))
    AccountLimitType.add_member(:max_reusable_delegation_sets_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_REUSABLE_DELEGATION_SETS_BY_OWNER', traits: {"smithy.api#enumValue" => "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"}))
    AccountLimitType.add_member(:max_traffic_policies_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_TRAFFIC_POLICIES_BY_OWNER', traits: {"smithy.api#enumValue" => "MAX_TRAFFIC_POLICIES_BY_OWNER"}))
    ActivateKeySigningKeyRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateKeySigningKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateKeySigningKeyRequest.type = Types::ActivateKeySigningKeyRequest
    ActivateKeySigningKeyResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    ActivateKeySigningKeyResponse.type = Types::ActivateKeySigningKeyResponse
    AlarmIdentifier.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchRegion, location_name: 'Region', traits: {"smithy.api#required" => {}}))
    AlarmIdentifier.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    AlarmIdentifier.type = Types::AlarmIdentifier
    AliasTarget.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    AliasTarget.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'DNSName', traits: {"smithy.api#required" => {}}))
    AliasTarget.add_member(:evaluate_target_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasHealthEnabled, location_name: 'EvaluateTargetHealth', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AliasTarget.type = Types::AliasTarget
    AssociateVPCWithHostedZoneRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateVPCWithHostedZoneRequest.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC', traits: {"smithy.api#required" => {}}))
    AssociateVPCWithHostedZoneRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVPCComment, location_name: 'Comment'))
    AssociateVPCWithHostedZoneRequest.type = Types::AssociateVPCWithHostedZoneRequest
    AssociateVPCWithHostedZoneResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    AssociateVPCWithHostedZoneResponse.type = Types::AssociateVPCWithHostedZoneResponse
    Change.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeAction, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    Change.add_member(:resource_record_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSet, location_name: 'ResourceRecordSet', traits: {"smithy.api#required" => {}}))
    Change.type = Types::Change
    ChangeAction.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "CREATE"}))
    ChangeAction.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ChangeAction.add_member(:upsert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPSERT', traits: {"smithy.api#enumValue" => "UPSERT"}))
    ChangeBatch.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Comment'))
    ChangeBatch.add_member(:changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Changes, location_name: 'Changes', traits: {"smithy.api#required" => {}}))
    ChangeBatch.type = Types::ChangeBatch
    ChangeCidrCollectionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChangeCidrCollectionRequest.add_member(:collection_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionVersion, location_name: 'CollectionVersion'))
    ChangeCidrCollectionRequest.add_member(:changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionChanges, location_name: 'Changes', traits: {"smithy.api#required" => {}}))
    ChangeCidrCollectionRequest.type = Types::ChangeCidrCollectionRequest
    ChangeCidrCollectionResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ChangeCidrCollectionResponse.type = Types::ChangeCidrCollectionResponse
    ChangeInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ChangeInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ChangeInfo.add_member(:submitted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'SubmittedAt', traits: {"smithy.api#required" => {}}))
    ChangeInfo.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Comment'))
    ChangeInfo.type = Types::ChangeInfo
    ChangeResourceRecordSetsRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChangeResourceRecordSetsRequest.add_member(:change_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeBatch, location_name: 'ChangeBatch', traits: {"smithy.api#required" => {}}))
    ChangeResourceRecordSetsRequest.type = Types::ChangeResourceRecordSetsRequest
    ChangeResourceRecordSetsResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    ChangeResourceRecordSetsResponse.type = Types::ChangeResourceRecordSetsResponse
    ChangeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeStatus.add_member(:insync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSYNC', traits: {"smithy.api#enumValue" => "INSYNC"}))
    ChangeTagsForResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChangeTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceId, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChangeTagsForResourceRequest.add_member(:add_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'AddTags'))
    ChangeTagsForResourceRequest.add_member(:remove_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'RemoveTagKeys'))
    ChangeTagsForResourceRequest.type = Types::ChangeTagsForResourceRequest
    ChangeTagsForResourceResponse.type = Types::ChangeTagsForResourceResponse
    Changes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Change, traits: {"smithy.api#xmlName" => "Change"})
    CheckerIpRanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressCidr)
    ChildHealthCheckList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, traits: {"smithy.api#xmlName" => "ChildHealthCheck"})
    CidrBlockInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CidrBlockInUseException.type = Types::CidrBlockInUseException
    CidrBlockSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlockSummary)
    CidrBlockSummary.add_member(:cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'CidrBlock'))
    CidrBlockSummary.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrLocationNameDefaultNotAllowed, location_name: 'LocationName'))
    CidrBlockSummary.type = Types::CidrBlockSummary
    CidrCollection.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'Arn'))
    CidrCollection.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    CidrCollection.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'Name'))
    CidrCollection.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionVersion, location_name: 'Version'))
    CidrCollection.type = Types::CidrCollection
    CidrCollectionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CidrCollectionAlreadyExistsException.type = Types::CidrCollectionAlreadyExistsException
    CidrCollectionChange.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrLocationNameDefaultNotAllowed, location_name: 'LocationName', traits: {"smithy.api#required" => {}}))
    CidrCollectionChange.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionChangeAction, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    CidrCollectionChange.add_member(:cidr_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrList, location_name: 'CidrList', traits: {"smithy.api#required" => {}}))
    CidrCollectionChange.type = Types::CidrCollectionChange
    CidrCollectionChangeAction.add_member(:put, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    CidrCollectionChangeAction.add_member(:delete_if_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IF_EXISTS', traits: {"smithy.api#enumValue" => "DELETE_IF_EXISTS"}))
    CidrCollectionChanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionChange)
    CidrCollectionInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CidrCollectionInUseException.type = Types::CidrCollectionInUseException
    CidrCollectionVersionMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CidrCollectionVersionMismatchException.type = Types::CidrCollectionVersionMismatchException
    CidrList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, traits: {"smithy.api#xmlName" => "Cidr"})
    CidrRoutingConfig.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'CollectionId', traits: {"smithy.api#required" => {}}))
    CidrRoutingConfig.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrLocationNameDefaultAllowed, location_name: 'LocationName', traits: {"smithy.api#required" => {}}))
    CidrRoutingConfig.type = Types::CidrRoutingConfig
    CloudWatchAlarmConfiguration.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPeriods, location_name: 'EvaluationPeriods', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Threshold, location_name: 'Threshold', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Period, location_name: 'Period', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'Namespace', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: 'Statistic', traits: {"smithy.api#required" => {}}))
    CloudWatchAlarmConfiguration.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionList, location_name: 'Dimensions'))
    CloudWatchAlarmConfiguration.type = Types::CloudWatchAlarmConfiguration
    CloudWatchRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    CloudWatchRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    CloudWatchRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_1', traits: {"smithy.api#enumValue" => "us-west-1"}))
    CloudWatchRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    CloudWatchRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_central_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    CloudWatchRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    CloudWatchRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_2', traits: {"smithy.api#enumValue" => "eu-central-2"}))
    CloudWatchRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    CloudWatchRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    CloudWatchRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_3', traits: {"smithy.api#enumValue" => "eu-west-3"}))
    CloudWatchRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_1', traits: {"smithy.api#enumValue" => "ap-east-1"}))
    CloudWatchRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_south_1', traits: {"smithy.api#enumValue" => "me-south-1"}))
    CloudWatchRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_central_1', traits: {"smithy.api#enumValue" => "me-central-1"}))
    CloudWatchRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_1', traits: {"smithy.api#enumValue" => "ap-south-1"}))
    CloudWatchRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_2', traits: {"smithy.api#enumValue" => "ap-south-2"}))
    CloudWatchRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    CloudWatchRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    CloudWatchRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_3', traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    CloudWatchRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    CloudWatchRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    CloudWatchRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_3', traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    CloudWatchRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_north_1', traits: {"smithy.api#enumValue" => "eu-north-1"}))
    CloudWatchRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sa_east_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    CloudWatchRegion.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_northwest_1', traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    CloudWatchRegion.add_member(:cn_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_north_1', traits: {"smithy.api#enumValue" => "cn-north-1"}))
    CloudWatchRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'af_south_1', traits: {"smithy.api#enumValue" => "af-south-1"}))
    CloudWatchRegion.add_member(:eu_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_1', traits: {"smithy.api#enumValue" => "eu-south-1"}))
    CloudWatchRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_2', traits: {"smithy.api#enumValue" => "eu-south-2"}))
    CloudWatchRegion.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_west_1', traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    CloudWatchRegion.add_member(:us_gov_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_east_1', traits: {"smithy.api#enumValue" => "us-gov-east-1"}))
    CloudWatchRegion.add_member(:us_iso_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_iso_east_1', traits: {"smithy.api#enumValue" => "us-iso-east-1"}))
    CloudWatchRegion.add_member(:us_iso_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_iso_west_1', traits: {"smithy.api#enumValue" => "us-iso-west-1"}))
    CloudWatchRegion.add_member(:us_isob_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isob_east_1', traits: {"smithy.api#enumValue" => "us-isob-east-1"}))
    CloudWatchRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_4', traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    CloudWatchRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'il_central_1', traits: {"smithy.api#enumValue" => "il-central-1"}))
    CloudWatchRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_west_1', traits: {"smithy.api#enumValue" => "ca-west-1"}))
    CloudWatchRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_5', traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    CloudWatchRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mx_central_1', traits: {"smithy.api#enumValue" => "mx-central-1"}))
    CloudWatchRegion.add_member(:us_isof_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isof_south_1', traits: {"smithy.api#enumValue" => "us-isof-south-1"}))
    CloudWatchRegion.add_member(:us_isof_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isof_east_1', traits: {"smithy.api#enumValue" => "us-isof-east-1"}))
    CloudWatchRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_7', traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    CloudWatchRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_2', traits: {"smithy.api#enumValue" => "ap-east-2"}))
    CloudWatchRegion.add_member(:eu_isoe_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_isoe_west_1', traits: {"smithy.api#enumValue" => "eu-isoe-west-1"}))
    CollectionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionSummary)
    CollectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'Arn'))
    CollectionSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    CollectionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'Name'))
    CollectionSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionVersion, location_name: 'Version'))
    CollectionSummary.type = Types::CollectionSummary
    ComparisonOperator.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThanOrEqualToThreshold', traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperator.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThanThreshold', traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperator.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThanThreshold', traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperator.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThanOrEqualToThreshold', traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    ConcurrentModification.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModification.type = Types::ConcurrentModification
    ConflictingDomainExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictingDomainExists.type = Types::ConflictingDomainExists
    ConflictingTypes.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictingTypes.type = Types::ConflictingTypes
    Coordinates.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Latitude, location_name: 'Latitude', traits: {"smithy.api#required" => {}}))
    Coordinates.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Longitude, location_name: 'Longitude', traits: {"smithy.api#required" => {}}))
    Coordinates.type = Types::Coordinates
    CreateCidrCollectionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateCidrCollectionRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrNonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    CreateCidrCollectionRequest.type = Types::CreateCidrCollectionRequest
    CreateCidrCollectionResponse.add_member(:collection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollection, location_name: 'Collection'))
    CreateCidrCollectionResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location"}))
    CreateCidrCollectionResponse.type = Types::CreateCidrCollectionResponse
    CreateHealthCheckRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckNonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    CreateHealthCheckRequest.add_member(:health_check_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: 'HealthCheckConfig', traits: {"smithy.api#required" => {}}))
    CreateHealthCheckRequest.type = Types::CreateHealthCheckRequest
    CreateHealthCheckResponse.add_member(:health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheck, location_name: 'HealthCheck', traits: {"smithy.api#required" => {}}))
    CreateHealthCheckResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateHealthCheckResponse.type = Types::CreateHealthCheckResponse
    CreateHostedZoneRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateHostedZoneRequest.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC'))
    CreateHostedZoneRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    CreateHostedZoneRequest.add_member(:hosted_zone_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneConfig, location_name: 'HostedZoneConfig'))
    CreateHostedZoneRequest.add_member(:delegation_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DelegationSetId'))
    CreateHostedZoneRequest.type = Types::CreateHostedZoneRequest
    CreateHostedZoneResponse.add_member(:hosted_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZone, location_name: 'HostedZone', traits: {"smithy.api#required" => {}}))
    CreateHostedZoneResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    CreateHostedZoneResponse.add_member(:delegation_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSet, location_name: 'DelegationSet', traits: {"smithy.api#required" => {}}))
    CreateHostedZoneResponse.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC'))
    CreateHostedZoneResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateHostedZoneResponse.type = Types::CreateHostedZoneResponse
    CreateKeySigningKeyRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyRequest.add_member(:key_management_service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'KeyManagementServiceArn', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyRequest.type = Types::CreateKeySigningKeyRequest
    CreateKeySigningKeyResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyResponse.add_member(:key_signing_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKey, location_name: 'KeySigningKey', traits: {"smithy.api#required" => {}}))
    CreateKeySigningKeyResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateKeySigningKeyResponse.type = Types::CreateKeySigningKeyResponse
    CreateQueryLoggingConfigRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    CreateQueryLoggingConfigRequest.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#required" => {}}))
    CreateQueryLoggingConfigRequest.type = Types::CreateQueryLoggingConfigRequest
    CreateQueryLoggingConfigResponse.add_member(:query_logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfig, location_name: 'QueryLoggingConfig', traits: {"smithy.api#required" => {}}))
    CreateQueryLoggingConfigResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateQueryLoggingConfigResponse.type = Types::CreateQueryLoggingConfigResponse
    CreateReusableDelegationSetRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    CreateReusableDelegationSetRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId'))
    CreateReusableDelegationSetRequest.type = Types::CreateReusableDelegationSetRequest
    CreateReusableDelegationSetResponse.add_member(:delegation_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSet, location_name: 'DelegationSet', traits: {"smithy.api#required" => {}}))
    CreateReusableDelegationSetResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateReusableDelegationSetResponse.type = Types::CreateReusableDelegationSetResponse
    CreateTrafficPolicyInstanceRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceRequest.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'TTL', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceRequest.add_member(:traffic_policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'TrafficPolicyVersion', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceRequest.type = Types::CreateTrafficPolicyInstanceRequest
    CreateTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstance, location_name: 'TrafficPolicyInstance', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateTrafficPolicyInstanceResponse.type = Types::CreateTrafficPolicyInstanceResponse
    CreateTrafficPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyDocument, location_name: 'Document', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: 'Comment'))
    CreateTrafficPolicyRequest.type = Types::CreateTrafficPolicyRequest
    CreateTrafficPolicyResponse.add_member(:traffic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy, location_name: 'TrafficPolicy', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateTrafficPolicyResponse.type = Types::CreateTrafficPolicyResponse
    CreateTrafficPolicyVersionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTrafficPolicyVersionRequest.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyDocument, location_name: 'Document', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyVersionRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: 'Comment'))
    CreateTrafficPolicyVersionRequest.type = Types::CreateTrafficPolicyVersionRequest
    CreateTrafficPolicyVersionResponse.add_member(:traffic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy, location_name: 'TrafficPolicy', traits: {"smithy.api#required" => {}}))
    CreateTrafficPolicyVersionResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceURI, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location", "smithy.api#required" => {}}))
    CreateTrafficPolicyVersionResponse.type = Types::CreateTrafficPolicyVersionResponse
    CreateVPCAssociationAuthorizationRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVPCAssociationAuthorizationRequest.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC', traits: {"smithy.api#required" => {}}))
    CreateVPCAssociationAuthorizationRequest.type = Types::CreateVPCAssociationAuthorizationRequest
    CreateVPCAssociationAuthorizationResponse.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    CreateVPCAssociationAuthorizationResponse.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC', traits: {"smithy.api#required" => {}}))
    CreateVPCAssociationAuthorizationResponse.type = Types::CreateVPCAssociationAuthorizationResponse
    DNSSECNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DNSSECNotFound.type = Types::DNSSECNotFound
    DNSSECStatus.add_member(:serve_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServeSignature, location_name: 'ServeSignature'))
    DNSSECStatus.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyStatusMessage, location_name: 'StatusMessage'))
    DNSSECStatus.type = Types::DNSSECStatus
    DeactivateKeySigningKeyRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateKeySigningKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeactivateKeySigningKeyRequest.type = Types::DeactivateKeySigningKeyRequest
    DeactivateKeySigningKeyResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    DeactivateKeySigningKeyResponse.type = Types::DeactivateKeySigningKeyResponse
    DelegationSet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id'))
    DelegationSet.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'CallerReference'))
    DelegationSet.add_member(:name_servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNameServers, location_name: 'NameServers', traits: {"smithy.api#required" => {}}))
    DelegationSet.type = Types::DelegationSet
    DelegationSetAlreadyCreated.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DelegationSetAlreadyCreated.type = Types::DelegationSetAlreadyCreated
    DelegationSetAlreadyReusable.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DelegationSetAlreadyReusable.type = Types::DelegationSetAlreadyReusable
    DelegationSetInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DelegationSetInUse.type = Types::DelegationSetInUse
    DelegationSetNameServers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, traits: {"smithy.api#xmlName" => "NameServer"})
    DelegationSetNotAvailable.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DelegationSetNotAvailable.type = Types::DelegationSetNotAvailable
    DelegationSetNotReusable.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DelegationSetNotReusable.type = Types::DelegationSetNotReusable
    DelegationSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSet, traits: {"smithy.api#xmlName" => "DelegationSet"})
    DeleteCidrCollectionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCidrCollectionRequest.type = Types::DeleteCidrCollectionRequest
    DeleteCidrCollectionResponse.type = Types::DeleteCidrCollectionResponse
    DeleteHealthCheckRequest.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHealthCheckRequest.type = Types::DeleteHealthCheckRequest
    DeleteHealthCheckResponse.type = Types::DeleteHealthCheckResponse
    DeleteHostedZoneRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedZoneRequest.type = Types::DeleteHostedZoneRequest
    DeleteHostedZoneResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    DeleteHostedZoneResponse.type = Types::DeleteHostedZoneResponse
    DeleteKeySigningKeyRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeySigningKeyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeySigningKeyRequest.type = Types::DeleteKeySigningKeyRequest
    DeleteKeySigningKeyResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    DeleteKeySigningKeyResponse.type = Types::DeleteKeySigningKeyResponse
    DeleteQueryLoggingConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueryLoggingConfigRequest.type = Types::DeleteQueryLoggingConfigRequest
    DeleteQueryLoggingConfigResponse.type = Types::DeleteQueryLoggingConfigResponse
    DeleteReusableDelegationSetRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReusableDelegationSetRequest.type = Types::DeleteReusableDelegationSetRequest
    DeleteReusableDelegationSetResponse.type = Types::DeleteReusableDelegationSetResponse
    DeleteTrafficPolicyInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrafficPolicyInstanceRequest.type = Types::DeleteTrafficPolicyInstanceRequest
    DeleteTrafficPolicyInstanceResponse.type = Types::DeleteTrafficPolicyInstanceResponse
    DeleteTrafficPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrafficPolicyRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'Version', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrafficPolicyRequest.type = Types::DeleteTrafficPolicyRequest
    DeleteTrafficPolicyResponse.type = Types::DeleteTrafficPolicyResponse
    DeleteVPCAssociationAuthorizationRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVPCAssociationAuthorizationRequest.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC', traits: {"smithy.api#required" => {}}))
    DeleteVPCAssociationAuthorizationRequest.type = Types::DeleteVPCAssociationAuthorizationRequest
    DeleteVPCAssociationAuthorizationResponse.type = Types::DeleteVPCAssociationAuthorizationResponse
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionField, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionField, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    DimensionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, traits: {"smithy.api#xmlName" => "Dimension"})
    DisableHostedZoneDNSSECRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisableHostedZoneDNSSECRequest.type = Types::DisableHostedZoneDNSSECRequest
    DisableHostedZoneDNSSECResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    DisableHostedZoneDNSSECResponse.type = Types::DisableHostedZoneDNSSECResponse
    DisassociateVPCFromHostedZoneRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateVPCFromHostedZoneRequest.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, location_name: 'VPC', traits: {"smithy.api#required" => {}}))
    DisassociateVPCFromHostedZoneRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVPCComment, location_name: 'Comment'))
    DisassociateVPCFromHostedZoneRequest.type = Types::DisassociateVPCFromHostedZoneRequest
    DisassociateVPCFromHostedZoneResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    DisassociateVPCFromHostedZoneResponse.type = Types::DisassociateVPCFromHostedZoneResponse
    EnableHostedZoneDNSSECRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EnableHostedZoneDNSSECRequest.type = Types::EnableHostedZoneDNSSECRequest
    EnableHostedZoneDNSSECResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    EnableHostedZoneDNSSECResponse.type = Types::EnableHostedZoneDNSSECResponse
    ErrorMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, traits: {"smithy.api#xmlName" => "Message"})
    GeoLocation.add_member(:continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: 'ContinentCode'))
    GeoLocation.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: 'CountryCode'))
    GeoLocation.add_member(:subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: 'SubdivisionCode'))
    GeoLocation.type = Types::GeoLocation
    GeoLocationDetails.add_member(:continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: 'ContinentCode'))
    GeoLocationDetails.add_member(:continent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentName, location_name: 'ContinentName'))
    GeoLocationDetails.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: 'CountryCode'))
    GeoLocationDetails.add_member(:country_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryName, location_name: 'CountryName'))
    GeoLocationDetails.add_member(:subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: 'SubdivisionCode'))
    GeoLocationDetails.add_member(:subdivision_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionName, location_name: 'SubdivisionName'))
    GeoLocationDetails.type = Types::GeoLocationDetails
    GeoLocationDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationDetails, traits: {"smithy.api#xmlName" => "GeoLocationDetails"})
    GeoProximityLocation.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegion, location_name: 'AWSRegion'))
    GeoProximityLocation.add_member(:local_zone_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalZoneGroup, location_name: 'LocalZoneGroup'))
    GeoProximityLocation.add_member(:coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Coordinates, location_name: 'Coordinates'))
    GeoProximityLocation.add_member(:bias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bias, location_name: 'Bias'))
    GeoProximityLocation.type = Types::GeoProximityLocation
    GetAccountLimitRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitType, location_name: 'Type', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccountLimitRequest.type = Types::GetAccountLimitRequest
    GetAccountLimitResponse.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimit, location_name: 'Limit', traits: {"smithy.api#required" => {}}))
    GetAccountLimitResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetAccountLimitResponse.type = Types::GetAccountLimitResponse
    GetChangeRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChangeRequest.type = Types::GetChangeRequest
    GetChangeResponse.add_member(:change_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeInfo, location_name: 'ChangeInfo', traits: {"smithy.api#required" => {}}))
    GetChangeResponse.type = Types::GetChangeResponse
    GetCheckerIpRangesRequest.type = Types::GetCheckerIpRangesRequest
    GetCheckerIpRangesResponse.add_member(:checker_ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckerIpRanges, location_name: 'CheckerIpRanges', traits: {"smithy.api#required" => {}}))
    GetCheckerIpRangesResponse.type = Types::GetCheckerIpRangesResponse
    GetDNSSECRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDNSSECRequest.type = Types::GetDNSSECRequest
    GetDNSSECResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSSECStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetDNSSECResponse.add_member(:key_signing_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeys, location_name: 'KeySigningKeys', traits: {"smithy.api#required" => {}}))
    GetDNSSECResponse.type = Types::GetDNSSECResponse
    GetGeoLocationRequest.add_member(:continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: 'ContinentCode', traits: {"smithy.api#httpQuery" => "continentcode"}))
    GetGeoLocationRequest.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: 'CountryCode', traits: {"smithy.api#httpQuery" => "countrycode"}))
    GetGeoLocationRequest.add_member(:subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: 'SubdivisionCode', traits: {"smithy.api#httpQuery" => "subdivisioncode"}))
    GetGeoLocationRequest.type = Types::GetGeoLocationRequest
    GetGeoLocationResponse.add_member(:geo_location_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationDetails, location_name: 'GeoLocationDetails', traits: {"smithy.api#required" => {}}))
    GetGeoLocationResponse.type = Types::GetGeoLocationResponse
    GetHealthCheckCountRequest.type = Types::GetHealthCheckCountRequest
    GetHealthCheckCountResponse.add_member(:health_check_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckCount, location_name: 'HealthCheckCount', traits: {"smithy.api#required" => {}}))
    GetHealthCheckCountResponse.type = Types::GetHealthCheckCountResponse
    GetHealthCheckLastFailureReasonRequest.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHealthCheckLastFailureReasonRequest.type = Types::GetHealthCheckLastFailureReasonRequest
    GetHealthCheckLastFailureReasonResponse.add_member(:health_check_observations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckObservations, location_name: 'HealthCheckObservations', traits: {"smithy.api#required" => {}}))
    GetHealthCheckLastFailureReasonResponse.type = Types::GetHealthCheckLastFailureReasonResponse
    GetHealthCheckRequest.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHealthCheckRequest.type = Types::GetHealthCheckRequest
    GetHealthCheckResponse.add_member(:health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheck, location_name: 'HealthCheck', traits: {"smithy.api#required" => {}}))
    GetHealthCheckResponse.type = Types::GetHealthCheckResponse
    GetHealthCheckStatusRequest.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHealthCheckStatusRequest.type = Types::GetHealthCheckStatusRequest
    GetHealthCheckStatusResponse.add_member(:health_check_observations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckObservations, location_name: 'HealthCheckObservations', traits: {"smithy.api#required" => {}}))
    GetHealthCheckStatusResponse.type = Types::GetHealthCheckStatusResponse
    GetHostedZoneCountRequest.type = Types::GetHostedZoneCountRequest
    GetHostedZoneCountResponse.add_member(:hosted_zone_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneCount, location_name: 'HostedZoneCount', traits: {"smithy.api#required" => {}}))
    GetHostedZoneCountResponse.type = Types::GetHostedZoneCountResponse
    GetHostedZoneLimitRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneLimitType, location_name: 'Type', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedZoneLimitRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedZoneLimitRequest.type = Types::GetHostedZoneLimitRequest
    GetHostedZoneLimitResponse.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneLimit, location_name: 'Limit', traits: {"smithy.api#required" => {}}))
    GetHostedZoneLimitResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetHostedZoneLimitResponse.type = Types::GetHostedZoneLimitResponse
    GetHostedZoneRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedZoneRequest.type = Types::GetHostedZoneRequest
    GetHostedZoneResponse.add_member(:hosted_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZone, location_name: 'HostedZone', traits: {"smithy.api#required" => {}}))
    GetHostedZoneResponse.add_member(:delegation_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSet, location_name: 'DelegationSet'))
    GetHostedZoneResponse.add_member(:vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCs, location_name: 'VPCs'))
    GetHostedZoneResponse.type = Types::GetHostedZoneResponse
    GetQueryLoggingConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryLoggingConfigRequest.type = Types::GetQueryLoggingConfigRequest
    GetQueryLoggingConfigResponse.add_member(:query_logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfig, location_name: 'QueryLoggingConfig', traits: {"smithy.api#required" => {}}))
    GetQueryLoggingConfigResponse.type = Types::GetQueryLoggingConfigResponse
    GetReusableDelegationSetLimitRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReusableDelegationSetLimitType, location_name: 'Type', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReusableDelegationSetLimitRequest.add_member(:delegation_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DelegationSetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReusableDelegationSetLimitRequest.type = Types::GetReusableDelegationSetLimitRequest
    GetReusableDelegationSetLimitResponse.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReusableDelegationSetLimit, location_name: 'Limit', traits: {"smithy.api#required" => {}}))
    GetReusableDelegationSetLimitResponse.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageCount, location_name: 'Count', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetReusableDelegationSetLimitResponse.type = Types::GetReusableDelegationSetLimitResponse
    GetReusableDelegationSetRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReusableDelegationSetRequest.type = Types::GetReusableDelegationSetRequest
    GetReusableDelegationSetResponse.add_member(:delegation_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSet, location_name: 'DelegationSet', traits: {"smithy.api#required" => {}}))
    GetReusableDelegationSetResponse.type = Types::GetReusableDelegationSetResponse
    GetTrafficPolicyInstanceCountRequest.type = Types::GetTrafficPolicyInstanceCountRequest
    GetTrafficPolicyInstanceCountResponse.add_member(:traffic_policy_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceCount, location_name: 'TrafficPolicyInstanceCount', traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyInstanceCountResponse.type = Types::GetTrafficPolicyInstanceCountResponse
    GetTrafficPolicyInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrafficPolicyInstanceRequest.type = Types::GetTrafficPolicyInstanceRequest
    GetTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstance, location_name: 'TrafficPolicyInstance', traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyInstanceResponse.type = Types::GetTrafficPolicyInstanceResponse
    GetTrafficPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrafficPolicyRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'Version', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrafficPolicyRequest.type = Types::GetTrafficPolicyRequest
    GetTrafficPolicyResponse.add_member(:traffic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy, location_name: 'TrafficPolicy', traits: {"smithy.api#required" => {}}))
    GetTrafficPolicyResponse.type = Types::GetTrafficPolicyResponse
    HealthCheck.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckNonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:linked_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedService, location_name: 'LinkedService'))
    HealthCheck.add_member(:health_check_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: 'HealthCheckConfig', traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:health_check_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckVersion, location_name: 'HealthCheckVersion', traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:cloud_watch_alarm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchAlarmConfiguration, location_name: 'CloudWatchAlarmConfiguration'))
    HealthCheck.type = Types::HealthCheck
    HealthCheckAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HealthCheckAlreadyExists.type = Types::HealthCheckAlreadyExists
    HealthCheckConfig.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'IPAddress'))
    HealthCheckConfig.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port'))
    HealthCheckConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    HealthCheckConfig.add_member(:resource_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePath, location_name: 'ResourcePath'))
    HealthCheckConfig.add_member(:fully_qualified_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedDomainName, location_name: 'FullyQualifiedDomainName'))
    HealthCheckConfig.add_member(:search_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString'))
    HealthCheckConfig.add_member(:request_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInterval, location_name: 'RequestInterval'))
    HealthCheckConfig.add_member(:failure_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureThreshold, location_name: 'FailureThreshold'))
    HealthCheckConfig.add_member(:measure_latency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MeasureLatency, location_name: 'MeasureLatency'))
    HealthCheckConfig.add_member(:inverted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Inverted, location_name: 'Inverted'))
    HealthCheckConfig.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Disabled, location_name: 'Disabled'))
    HealthCheckConfig.add_member(:health_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthThreshold, location_name: 'HealthThreshold'))
    HealthCheckConfig.add_member(:child_health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildHealthCheckList, location_name: 'ChildHealthChecks'))
    HealthCheckConfig.add_member(:enable_sni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSNI, location_name: 'EnableSNI'))
    HealthCheckConfig.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckRegionList, location_name: 'Regions'))
    HealthCheckConfig.add_member(:alarm_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmIdentifier, location_name: 'AlarmIdentifier'))
    HealthCheckConfig.add_member(:insufficient_data_health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDataHealthStatus, location_name: 'InsufficientDataHealthStatus'))
    HealthCheckConfig.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlArn, location_name: 'RoutingControlArn'))
    HealthCheckConfig.type = Types::HealthCheckConfig
    HealthCheckInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HealthCheckInUse.type = Types::HealthCheckInUse
    HealthCheckObservation.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckRegion, location_name: 'Region'))
    HealthCheckObservation.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'IPAddress'))
    HealthCheckObservation.add_member(:status_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReport, location_name: 'StatusReport'))
    HealthCheckObservation.type = Types::HealthCheckObservation
    HealthCheckObservations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckObservation, traits: {"smithy.api#xmlName" => "HealthCheckObservation"})
    HealthCheckRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    HealthCheckRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_1', traits: {"smithy.api#enumValue" => "us-west-1"}))
    HealthCheckRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    HealthCheckRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    HealthCheckRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    HealthCheckRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    HealthCheckRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    HealthCheckRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sa_east_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    HealthCheckRegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckRegion, traits: {"smithy.api#xmlName" => "Region"})
    HealthCheckType.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    HealthCheckType.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    HealthCheckType.add_member(:http_str_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP_STR_MATCH', traits: {"smithy.api#enumValue" => "HTTP_STR_MATCH"}))
    HealthCheckType.add_member(:https_str_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS_STR_MATCH', traits: {"smithy.api#enumValue" => "HTTPS_STR_MATCH"}))
    HealthCheckType.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    HealthCheckType.add_member(:calculated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALCULATED', traits: {"smithy.api#enumValue" => "CALCULATED"}))
    HealthCheckType.add_member(:cloudwatch_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_METRIC', traits: {"smithy.api#enumValue" => "CLOUDWATCH_METRIC"}))
    HealthCheckType.add_member(:recovery_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOVERY_CONTROL', traits: {"smithy.api#enumValue" => "RECOVERY_CONTROL"}))
    HealthCheckVersionMismatch.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HealthCheckVersionMismatch.type = Types::HealthCheckVersionMismatch
    HealthChecks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheck, traits: {"smithy.api#xmlName" => "HealthCheck"})
    HostedZone.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    HostedZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    HostedZone.add_member(:caller_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'CallerReference', traits: {"smithy.api#required" => {}}))
    HostedZone.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneConfig, location_name: 'Config'))
    HostedZone.add_member(:resource_record_set_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneRRSetCount, location_name: 'ResourceRecordSetCount'))
    HostedZone.add_member(:linked_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedService, location_name: 'LinkedService'))
    HostedZone.type = Types::HostedZone
    HostedZoneAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HostedZoneAlreadyExists.type = Types::HostedZoneAlreadyExists
    HostedZoneConfig.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Comment'))
    HostedZoneConfig.add_member(:private_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsPrivateZone, location_name: 'PrivateZone', traits: {"smithy.api#default" => false}))
    HostedZoneConfig.type = Types::HostedZoneConfig
    HostedZoneLimit.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneLimitType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    HostedZoneLimit.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    HostedZoneLimit.type = Types::HostedZoneLimit
    HostedZoneLimitType.add_member(:max_rrsets_by_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_RRSETS_BY_ZONE', traits: {"smithy.api#enumValue" => "MAX_RRSETS_BY_ZONE"}))
    HostedZoneLimitType.add_member(:max_vpcs_associated_by_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_VPCS_ASSOCIATED_BY_ZONE', traits: {"smithy.api#enumValue" => "MAX_VPCS_ASSOCIATED_BY_ZONE"}))
    HostedZoneNotEmpty.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HostedZoneNotEmpty.type = Types::HostedZoneNotEmpty
    HostedZoneNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HostedZoneNotFound.type = Types::HostedZoneNotFound
    HostedZoneNotPrivate.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HostedZoneNotPrivate.type = Types::HostedZoneNotPrivate
    HostedZoneOwner.add_member(:owning_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountID, location_name: 'OwningAccount'))
    HostedZoneOwner.add_member(:owning_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneOwningService, location_name: 'OwningService'))
    HostedZoneOwner.type = Types::HostedZoneOwner
    HostedZonePartiallyDelegated.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    HostedZonePartiallyDelegated.type = Types::HostedZonePartiallyDelegated
    HostedZoneSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneSummary, traits: {"smithy.api#xmlName" => "HostedZoneSummary"})
    HostedZoneSummary.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    HostedZoneSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    HostedZoneSummary.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneOwner, location_name: 'Owner', traits: {"smithy.api#required" => {}}))
    HostedZoneSummary.type = Types::HostedZoneSummary
    HostedZoneType.add_member(:private_hosted_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE_HOSTED_ZONE', traits: {"smithy.api#enumValue" => "PrivateHostedZone"}))
    HostedZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZone, traits: {"smithy.api#xmlName" => "HostedZone"})
    IncompatibleVersion.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    IncompatibleVersion.type = Types::IncompatibleVersion
    InsufficientCloudWatchLogsResourcePolicy.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InsufficientCloudWatchLogsResourcePolicy.type = Types::InsufficientCloudWatchLogsResourcePolicy
    InsufficientDataHealthStatus.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Healthy', traits: {"smithy.api#enumValue" => "Healthy"}))
    InsufficientDataHealthStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unhealthy', traits: {"smithy.api#enumValue" => "Unhealthy"}))
    InsufficientDataHealthStatus.add_member(:last_known_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastKnownStatus', traits: {"smithy.api#enumValue" => "LastKnownStatus"}))
    InvalidArgument.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidArgument.type = Types::InvalidArgument
    InvalidChangeBatch.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessages, location_name: 'messages'))
    InvalidChangeBatch.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidChangeBatch.type = Types::InvalidChangeBatch
    InvalidDomainName.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidDomainName.type = Types::InvalidDomainName
    InvalidInput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidInput.type = Types::InvalidInput
    InvalidKMSArn.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidKMSArn.type = Types::InvalidKMSArn
    InvalidKeySigningKeyName.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidKeySigningKeyName.type = Types::InvalidKeySigningKeyName
    InvalidKeySigningKeyStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidKeySigningKeyStatus.type = Types::InvalidKeySigningKeyStatus
    InvalidPaginationToken.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPaginationToken.type = Types::InvalidPaginationToken
    InvalidSigningStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidSigningStatus.type = Types::InvalidSigningStatus
    InvalidTrafficPolicyDocument.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidTrafficPolicyDocument.type = Types::InvalidTrafficPolicyDocument
    InvalidVPCId.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidVPCId.type = Types::InvalidVPCId
    KeySigningKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyName, location_name: 'Name'))
    KeySigningKey.add_member(:kms_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'KmsArn'))
    KeySigningKey.add_member(:flag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyInteger, location_name: 'Flag', traits: {"smithy.api#default" => 0}))
    KeySigningKey.add_member(:signing_algorithm_mnemonic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'SigningAlgorithmMnemonic'))
    KeySigningKey.add_member(:signing_algorithm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyInteger, location_name: 'SigningAlgorithmType', traits: {"smithy.api#default" => 0}))
    KeySigningKey.add_member(:digest_algorithm_mnemonic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'DigestAlgorithmMnemonic'))
    KeySigningKey.add_member(:digest_algorithm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyInteger, location_name: 'DigestAlgorithmType', traits: {"smithy.api#default" => 0}))
    KeySigningKey.add_member(:key_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyTag, location_name: 'KeyTag', traits: {"smithy.api#default" => 0}))
    KeySigningKey.add_member(:digest_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'DigestValue'))
    KeySigningKey.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'PublicKey'))
    KeySigningKey.add_member(:ds_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'DSRecord'))
    KeySigningKey.add_member(:dnskey_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyString, location_name: 'DNSKEYRecord'))
    KeySigningKey.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyStatus, location_name: 'Status'))
    KeySigningKey.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningKeyStatusMessage, location_name: 'StatusMessage'))
    KeySigningKey.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedDate'))
    KeySigningKey.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastModifiedDate'))
    KeySigningKey.type = Types::KeySigningKey
    KeySigningKeyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KeySigningKeyAlreadyExists.type = Types::KeySigningKeyAlreadyExists
    KeySigningKeyInParentDSRecord.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KeySigningKeyInParentDSRecord.type = Types::KeySigningKeyInParentDSRecord
    KeySigningKeyInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KeySigningKeyInUse.type = Types::KeySigningKeyInUse
    KeySigningKeyWithActiveStatusNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    KeySigningKeyWithActiveStatusNotFound.type = Types::KeySigningKeyWithActiveStatusNotFound
    KeySigningKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKey)
    LastVPCAssociation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LastVPCAssociation.type = Types::LastVPCAssociation
    LimitsExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitsExceeded.type = Types::LimitsExceeded
    LinkedService.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'ServicePrincipal'))
    LinkedService.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    LinkedService.type = Types::LinkedService
    ListCidrBlocksRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'CollectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCidrBlocksRequest.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrLocationNameDefaultNotAllowed, location_name: 'LocationName', traits: {"smithy.api#httpQuery" => "location"}))
    ListCidrBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListCidrBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxresults"}))
    ListCidrBlocksRequest.type = Types::ListCidrBlocksRequest
    ListCidrBlocksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListCidrBlocksResponse.add_member(:cidr_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlockSummaries, location_name: 'CidrBlocks'))
    ListCidrBlocksResponse.type = Types::ListCidrBlocksResponse
    ListCidrCollectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListCidrCollectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxresults"}))
    ListCidrCollectionsRequest.type = Types::ListCidrCollectionsRequest
    ListCidrCollectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListCidrCollectionsResponse.add_member(:cidr_collections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionSummaries, location_name: 'CidrCollections'))
    ListCidrCollectionsResponse.type = Types::ListCidrCollectionsResponse
    ListCidrLocationsRequest.add_member(:collection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'CollectionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCidrLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListCidrLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxresults"}))
    ListCidrLocationsRequest.type = Types::ListCidrLocationsRequest
    ListCidrLocationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListCidrLocationsResponse.add_member(:cidr_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationSummaries, location_name: 'CidrLocations'))
    ListCidrLocationsResponse.type = Types::ListCidrLocationsResponse
    ListGeoLocationsRequest.add_member(:start_continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: 'StartContinentCode', traits: {"smithy.api#httpQuery" => "startcontinentcode"}))
    ListGeoLocationsRequest.add_member(:start_country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: 'StartCountryCode', traits: {"smithy.api#httpQuery" => "startcountrycode"}))
    ListGeoLocationsRequest.add_member(:start_subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: 'StartSubdivisionCode', traits: {"smithy.api#httpQuery" => "startsubdivisioncode"}))
    ListGeoLocationsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListGeoLocationsRequest.type = Types::ListGeoLocationsRequest
    ListGeoLocationsResponse.add_member(:geo_location_details_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationDetailsList, location_name: 'GeoLocationDetailsList', traits: {"smithy.api#required" => {}}))
    ListGeoLocationsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListGeoLocationsResponse.add_member(:next_continent_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationContinentCode, location_name: 'NextContinentCode'))
    ListGeoLocationsResponse.add_member(:next_country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationCountryCode, location_name: 'NextCountryCode'))
    ListGeoLocationsResponse.add_member(:next_subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocationSubdivisionCode, location_name: 'NextSubdivisionCode'))
    ListGeoLocationsResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListGeoLocationsResponse.type = Types::ListGeoLocationsResponse
    ListHealthChecksRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    ListHealthChecksRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListHealthChecksRequest.type = Types::ListHealthChecksRequest
    ListHealthChecksResponse.add_member(:health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthChecks, location_name: 'HealthChecks', traits: {"smithy.api#required" => {}}))
    ListHealthChecksResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#required" => {}}))
    ListHealthChecksResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListHealthChecksResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'NextMarker'))
    ListHealthChecksResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListHealthChecksResponse.type = Types::ListHealthChecksResponse
    ListHostedZonesByNameRequest.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'DNSName', traits: {"smithy.api#httpQuery" => "dnsname"}))
    ListHostedZonesByNameRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpQuery" => "hostedzoneid"}))
    ListHostedZonesByNameRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListHostedZonesByNameRequest.type = Types::ListHostedZonesByNameRequest
    ListHostedZonesByNameResponse.add_member(:hosted_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZones, location_name: 'HostedZones', traits: {"smithy.api#required" => {}}))
    ListHostedZonesByNameResponse.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'DNSName'))
    ListHostedZonesByNameResponse.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId'))
    ListHostedZonesByNameResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListHostedZonesByNameResponse.add_member(:next_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'NextDNSName'))
    ListHostedZonesByNameResponse.add_member(:next_hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'NextHostedZoneId'))
    ListHostedZonesByNameResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListHostedZonesByNameResponse.type = Types::ListHostedZonesByNameResponse
    ListHostedZonesByVPCRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCId, location_name: 'VPCId', traits: {"smithy.api#httpQuery" => "vpcid", "smithy.api#required" => {}}))
    ListHostedZonesByVPCRequest.add_member(:vpc_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCRegion, location_name: 'VPCRegion', traits: {"smithy.api#httpQuery" => "vpcregion", "smithy.api#required" => {}}))
    ListHostedZonesByVPCRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListHostedZonesByVPCRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListHostedZonesByVPCRequest.type = Types::ListHostedZonesByVPCRequest
    ListHostedZonesByVPCResponse.add_member(:hosted_zone_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneSummaries, location_name: 'HostedZoneSummaries', traits: {"smithy.api#required" => {}}))
    ListHostedZonesByVPCResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListHostedZonesByVPCResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHostedZonesByVPCResponse.type = Types::ListHostedZonesByVPCResponse
    ListHostedZonesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    ListHostedZonesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListHostedZonesRequest.add_member(:delegation_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DelegationSetId', traits: {"smithy.api#httpQuery" => "delegationsetid"}))
    ListHostedZonesRequest.add_member(:hosted_zone_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneType, location_name: 'HostedZoneType', traits: {"smithy.api#httpQuery" => "hostedzonetype"}))
    ListHostedZonesRequest.type = Types::ListHostedZonesRequest
    ListHostedZonesResponse.add_member(:hosted_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZones, location_name: 'HostedZones', traits: {"smithy.api#required" => {}}))
    ListHostedZonesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#required" => {}}))
    ListHostedZonesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListHostedZonesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'NextMarker'))
    ListHostedZonesResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListHostedZonesResponse.type = Types::ListHostedZonesResponse
    ListQueryLoggingConfigsRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpQuery" => "hostedzoneid"}))
    ListQueryLoggingConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListQueryLoggingConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxresults"}))
    ListQueryLoggingConfigsRequest.type = Types::ListQueryLoggingConfigsRequest
    ListQueryLoggingConfigsResponse.add_member(:query_logging_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigs, location_name: 'QueryLoggingConfigs', traits: {"smithy.api#required" => {}}))
    ListQueryLoggingConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQueryLoggingConfigsResponse.type = Types::ListQueryLoggingConfigsResponse
    ListResourceRecordSetsRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResourceRecordSetsRequest.add_member(:start_record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'StartRecordName', traits: {"smithy.api#httpQuery" => "name"}))
    ListResourceRecordSetsRequest.add_member(:start_record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'StartRecordType', traits: {"smithy.api#httpQuery" => "type"}))
    ListResourceRecordSetsRequest.add_member(:start_record_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location_name: 'StartRecordIdentifier', traits: {"smithy.api#httpQuery" => "identifier"}))
    ListResourceRecordSetsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListResourceRecordSetsRequest.type = Types::ListResourceRecordSetsRequest
    ListResourceRecordSetsResponse.add_member(:resource_record_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSets, location_name: 'ResourceRecordSets', traits: {"smithy.api#required" => {}}))
    ListResourceRecordSetsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListResourceRecordSetsResponse.add_member(:next_record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'NextRecordName'))
    ListResourceRecordSetsResponse.add_member(:next_record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'NextRecordType'))
    ListResourceRecordSetsResponse.add_member(:next_record_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location_name: 'NextRecordIdentifier'))
    ListResourceRecordSetsResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListResourceRecordSetsResponse.type = Types::ListResourceRecordSetsResponse
    ListReusableDelegationSetsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "marker"}))
    ListReusableDelegationSetsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListReusableDelegationSetsRequest.type = Types::ListReusableDelegationSetsRequest
    ListReusableDelegationSetsResponse.add_member(:delegation_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSets, location_name: 'DelegationSets', traits: {"smithy.api#required" => {}}))
    ListReusableDelegationSetsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'Marker', traits: {"smithy.api#required" => {}}))
    ListReusableDelegationSetsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListReusableDelegationSetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageMarker, location_name: 'NextMarker'))
    ListReusableDelegationSetsResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListReusableDelegationSetsResponse.type = Types::ListReusableDelegationSetsResponse
    ListTagsForResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceId, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tag_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagSet, location_name: 'ResourceTagSet', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTagsForResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceType, location_name: 'ResourceType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourcesRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceIdList, location_name: 'ResourceIds', traits: {"smithy.api#required" => {}}))
    ListTagsForResourcesRequest.type = Types::ListTagsForResourcesRequest
    ListTagsForResourcesResponse.add_member(:resource_tag_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagSetList, location_name: 'ResourceTagSets', traits: {"smithy.api#required" => {}}))
    ListTagsForResourcesResponse.type = Types::ListTagsForResourcesResponse
    ListTrafficPoliciesRequest.add_member(:traffic_policy_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyIdMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyid"}))
    ListTrafficPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListTrafficPoliciesRequest.type = Types::ListTrafficPoliciesRequest
    ListTrafficPoliciesResponse.add_member(:traffic_policy_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicySummaries, location_name: 'TrafficPolicySummaries', traits: {"smithy.api#required" => {}}))
    ListTrafficPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListTrafficPoliciesResponse.add_member(:traffic_policy_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyIdMarker', traits: {"smithy.api#required" => {}}))
    ListTrafficPoliciesResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListTrafficPoliciesResponse.type = Types::ListTrafficPoliciesResponse
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancename"}))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancetype"}))
    ListTrafficPolicyInstancesByHostedZoneRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListTrafficPolicyInstancesByHostedZoneRequest.type = Types::ListTrafficPolicyInstancesByHostedZoneRequest
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstances, location_name: 'TrafficPolicyInstances', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker'))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker'))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByHostedZoneResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByHostedZoneResponse.type = Types::ListTrafficPolicyInstancesByHostedZoneResponse
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'TrafficPolicyVersion', traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:hosted_zone_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneIdMarker', traits: {"smithy.api#httpQuery" => "hostedzoneid"}))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancename"}))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancetype"}))
    ListTrafficPolicyInstancesByPolicyRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListTrafficPolicyInstancesByPolicyRequest.type = Types::ListTrafficPolicyInstancesByPolicyRequest
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstances, location_name: 'TrafficPolicyInstances', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:hosted_zone_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneIdMarker'))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker'))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker'))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByPolicyResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesByPolicyResponse.type = Types::ListTrafficPolicyInstancesByPolicyResponse
    ListTrafficPolicyInstancesRequest.add_member(:hosted_zone_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneIdMarker', traits: {"smithy.api#httpQuery" => "hostedzoneid"}))
    ListTrafficPolicyInstancesRequest.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancename"}))
    ListTrafficPolicyInstancesRequest.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyinstancetype"}))
    ListTrafficPolicyInstancesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListTrafficPolicyInstancesRequest.type = Types::ListTrafficPolicyInstancesRequest
    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstances, location_name: 'TrafficPolicyInstances', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesResponse.add_member(:hosted_zone_id_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneIdMarker'))
    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instance_name_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'TrafficPolicyInstanceNameMarker'))
    ListTrafficPolicyInstancesResponse.add_member(:traffic_policy_instance_type_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyInstanceTypeMarker'))
    ListTrafficPolicyInstancesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListTrafficPolicyInstancesResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyInstancesResponse.type = Types::ListTrafficPolicyInstancesResponse
    ListTrafficPolicyVersionsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrafficPolicyVersionsRequest.add_member(:traffic_policy_version_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersionMarker, location_name: 'TrafficPolicyVersionMarker', traits: {"smithy.api#httpQuery" => "trafficpolicyversion"}))
    ListTrafficPolicyVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "maxitems"}))
    ListTrafficPolicyVersionsRequest.type = Types::ListTrafficPolicyVersionsRequest
    ListTrafficPolicyVersionsResponse.add_member(:traffic_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicies, location_name: 'TrafficPolicies', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyVersionsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageTruncated, location_name: 'IsTruncated', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ListTrafficPolicyVersionsResponse.add_member(:traffic_policy_version_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersionMarker, location_name: 'TrafficPolicyVersionMarker', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyVersionsResponse.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxItems', traits: {"smithy.api#required" => {}}))
    ListTrafficPolicyVersionsResponse.type = Types::ListTrafficPolicyVersionsResponse
    ListVPCAssociationAuthorizationsRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVPCAssociationAuthorizationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nexttoken"}))
    ListVPCAssociationAuthorizationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxresults"}))
    ListVPCAssociationAuthorizationsRequest.type = Types::ListVPCAssociationAuthorizationsRequest
    ListVPCAssociationAuthorizationsResponse.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    ListVPCAssociationAuthorizationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListVPCAssociationAuthorizationsResponse.add_member(:vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCs, location_name: 'VPCs', traits: {"smithy.api#required" => {}}))
    ListVPCAssociationAuthorizationsResponse.type = Types::ListVPCAssociationAuthorizationsResponse
    LocationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationSummary)
    LocationSummary.add_member(:location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrLocationNameDefaultAllowed, location_name: 'LocationName'))
    LocationSummary.type = Types::LocationSummary
    NoSuchChange.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchChange.type = Types::NoSuchChange
    NoSuchCidrCollectionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoSuchCidrCollectionException.type = Types::NoSuchCidrCollectionException
    NoSuchCidrLocationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoSuchCidrLocationException.type = Types::NoSuchCidrLocationException
    NoSuchCloudWatchLogsLogGroup.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchCloudWatchLogsLogGroup.type = Types::NoSuchCloudWatchLogsLogGroup
    NoSuchDelegationSet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchDelegationSet.type = Types::NoSuchDelegationSet
    NoSuchGeoLocation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchGeoLocation.type = Types::NoSuchGeoLocation
    NoSuchHealthCheck.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchHealthCheck.type = Types::NoSuchHealthCheck
    NoSuchHostedZone.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchHostedZone.type = Types::NoSuchHostedZone
    NoSuchKeySigningKey.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchKeySigningKey.type = Types::NoSuchKeySigningKey
    NoSuchQueryLoggingConfig.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchQueryLoggingConfig.type = Types::NoSuchQueryLoggingConfig
    NoSuchTrafficPolicy.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchTrafficPolicy.type = Types::NoSuchTrafficPolicy
    NoSuchTrafficPolicyInstance.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoSuchTrafficPolicyInstance.type = Types::NoSuchTrafficPolicyInstance
    NotAuthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NotAuthorizedException.type = Types::NotAuthorizedException
    PriorRequestNotComplete.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    PriorRequestNotComplete.type = Types::PriorRequestNotComplete
    PublicZoneVPCAssociation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    PublicZoneVPCAssociation.type = Types::PublicZoneVPCAssociation
    QueryLoggingConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfig.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfig.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#required" => {}}))
    QueryLoggingConfig.type = Types::QueryLoggingConfig
    QueryLoggingConfigAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    QueryLoggingConfigAlreadyExists.type = Types::QueryLoggingConfigAlreadyExists
    QueryLoggingConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfig, traits: {"smithy.api#xmlName" => "QueryLoggingConfig"})
    RRType.add_member(:soa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOA', traits: {"smithy.api#enumValue" => "SOA"}))
    RRType.add_member(:a, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'A', traits: {"smithy.api#enumValue" => "A"}))
    RRType.add_member(:txt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TXT', traits: {"smithy.api#enumValue" => "TXT"}))
    RRType.add_member(:ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NS', traits: {"smithy.api#enumValue" => "NS"}))
    RRType.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CNAME', traits: {"smithy.api#enumValue" => "CNAME"}))
    RRType.add_member(:mx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MX', traits: {"smithy.api#enumValue" => "MX"}))
    RRType.add_member(:naptr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAPTR', traits: {"smithy.api#enumValue" => "NAPTR"}))
    RRType.add_member(:ptr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PTR', traits: {"smithy.api#enumValue" => "PTR"}))
    RRType.add_member(:srv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SRV', traits: {"smithy.api#enumValue" => "SRV"}))
    RRType.add_member(:spf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPF', traits: {"smithy.api#enumValue" => "SPF"}))
    RRType.add_member(:aaaa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AAAA', traits: {"smithy.api#enumValue" => "AAAA"}))
    RRType.add_member(:caa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAA', traits: {"smithy.api#enumValue" => "CAA"}))
    RRType.add_member(:ds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DS', traits: {"smithy.api#enumValue" => "DS"}))
    RRType.add_member(:tlsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSA', traits: {"smithy.api#enumValue" => "TLSA"}))
    RRType.add_member(:sshfp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSHFP', traits: {"smithy.api#enumValue" => "SSHFP"}))
    RRType.add_member(:svcb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SVCB', traits: {"smithy.api#enumValue" => "SVCB"}))
    RRType.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    RecordData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordDataEntry, traits: {"smithy.api#xmlName" => "RecordDataEntry"})
    ResettableElementName.add_member(:fully_qualified_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FullyQualifiedDomainName', traits: {"smithy.api#enumValue" => "FullyQualifiedDomainName"}))
    ResettableElementName.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Regions', traits: {"smithy.api#enumValue" => "Regions"}))
    ResettableElementName.add_member(:resource_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourcePath', traits: {"smithy.api#enumValue" => "ResourcePath"}))
    ResettableElementName.add_member(:child_health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChildHealthChecks', traits: {"smithy.api#enumValue" => "ChildHealthChecks"}))
    ResettableElementNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResettableElementName, traits: {"smithy.api#xmlName" => "ResettableElementName"})
    ResourceRecord.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RData, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ResourceRecord.type = Types::ResourceRecord
    ResourceRecordSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ResourceRecordSet.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ResourceRecordSet.add_member(:set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetIdentifier, location_name: 'SetIdentifier'))
    ResourceRecordSet.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetWeight, location_name: 'Weight'))
    ResourceRecordSet.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetRegion, location_name: 'Region'))
    ResourceRecordSet.add_member(:geo_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoLocation, location_name: 'GeoLocation'))
    ResourceRecordSet.add_member(:failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetFailover, location_name: 'Failover'))
    ResourceRecordSet.add_member(:multi_value_answer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSetMultiValueAnswer, location_name: 'MultiValueAnswer'))
    ResourceRecordSet.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'TTL'))
    ResourceRecordSet.add_member(:resource_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecords, location_name: 'ResourceRecords'))
    ResourceRecordSet.add_member(:alias_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasTarget, location_name: 'AliasTarget'))
    ResourceRecordSet.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId'))
    ResourceRecordSet.add_member(:traffic_policy_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: 'TrafficPolicyInstanceId'))
    ResourceRecordSet.add_member(:cidr_routing_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrRoutingConfig, location_name: 'CidrRoutingConfig'))
    ResourceRecordSet.add_member(:geo_proximity_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoProximityLocation, location_name: 'GeoProximityLocation'))
    ResourceRecordSet.type = Types::ResourceRecordSet
    ResourceRecordSetFailover.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    ResourceRecordSetFailover.add_member(:secondary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDARY', traits: {"smithy.api#enumValue" => "SECONDARY"}))
    ResourceRecordSetRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    ResourceRecordSetRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    ResourceRecordSetRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_1', traits: {"smithy.api#enumValue" => "us-west-1"}))
    ResourceRecordSetRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    ResourceRecordSetRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_central_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    ResourceRecordSetRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    ResourceRecordSetRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    ResourceRecordSetRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_3', traits: {"smithy.api#enumValue" => "eu-west-3"}))
    ResourceRecordSetRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    ResourceRecordSetRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_2', traits: {"smithy.api#enumValue" => "eu-central-2"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_3', traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    ResourceRecordSetRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    ResourceRecordSetRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    ResourceRecordSetRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_3', traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    ResourceRecordSetRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_north_1', traits: {"smithy.api#enumValue" => "eu-north-1"}))
    ResourceRecordSetRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sa_east_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    ResourceRecordSetRegion.add_member(:cn_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_north_1', traits: {"smithy.api#enumValue" => "cn-north-1"}))
    ResourceRecordSetRegion.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_northwest_1', traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    ResourceRecordSetRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_1', traits: {"smithy.api#enumValue" => "ap-east-1"}))
    ResourceRecordSetRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_south_1', traits: {"smithy.api#enumValue" => "me-south-1"}))
    ResourceRecordSetRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_central_1', traits: {"smithy.api#enumValue" => "me-central-1"}))
    ResourceRecordSetRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_1', traits: {"smithy.api#enumValue" => "ap-south-1"}))
    ResourceRecordSetRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_2', traits: {"smithy.api#enumValue" => "ap-south-2"}))
    ResourceRecordSetRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'af_south_1', traits: {"smithy.api#enumValue" => "af-south-1"}))
    ResourceRecordSetRegion.add_member(:eu_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_1', traits: {"smithy.api#enumValue" => "eu-south-1"}))
    ResourceRecordSetRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_2', traits: {"smithy.api#enumValue" => "eu-south-2"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_4', traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    ResourceRecordSetRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'il_central_1', traits: {"smithy.api#enumValue" => "il-central-1"}))
    ResourceRecordSetRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_west_1', traits: {"smithy.api#enumValue" => "ca-west-1"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_5', traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    ResourceRecordSetRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mx_central_1', traits: {"smithy.api#enumValue" => "mx-central-1"}))
    ResourceRecordSetRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_7', traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    ResourceRecordSetRegion.add_member(:us_gov_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_east_1', traits: {"smithy.api#enumValue" => "us-gov-east-1"}))
    ResourceRecordSetRegion.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_west_1', traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    ResourceRecordSetRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_2', traits: {"smithy.api#enumValue" => "ap-east-2"}))
    ResourceRecordSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecordSet, traits: {"smithy.api#xmlName" => "ResourceRecordSet"})
    ResourceRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecord, traits: {"smithy.api#xmlName" => "ResourceRecord"})
    ResourceTagSet.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceType, location_name: 'ResourceType'))
    ResourceTagSet.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceId, location_name: 'ResourceId'))
    ResourceTagSet.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ResourceTagSet.type = Types::ResourceTagSet
    ResourceTagSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagSet, traits: {"smithy.api#xmlName" => "ResourceTagSet"})
    ReusableDelegationSetLimit.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReusableDelegationSetLimitType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ReusableDelegationSetLimit.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ReusableDelegationSetLimit.type = Types::ReusableDelegationSetLimit
    ReusableDelegationSetLimitType.add_member(:max_zones_by_reusable_delegation_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_ZONES_BY_REUSABLE_DELEGATION_SET', traits: {"smithy.api#enumValue" => "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Average', traits: {"smithy.api#enumValue" => "Average"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sum', traits: {"smithy.api#enumValue" => "Sum"}))
    Statistic.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SampleCount', traits: {"smithy.api#enumValue" => "SampleCount"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Maximum', traits: {"smithy.api#enumValue" => "Maximum"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Minimum', traits: {"smithy.api#enumValue" => "Minimum"}))
    StatusReport.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    StatusReport.add_member(:checked_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CheckedTime'))
    StatusReport.type = Types::StatusReport
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, traits: {"smithy.api#xmlName" => "Key"})
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagResourceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceId, traits: {"smithy.api#xmlName" => "ResourceId"})
    TagResourceType.add_member(:healthcheck, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'healthcheck', traits: {"smithy.api#enumValue" => "healthcheck"}))
    TagResourceType.add_member(:hostedzone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hostedzone', traits: {"smithy.api#enumValue" => "hostedzone"}))
    TestDNSAnswerRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#httpQuery" => "hostedzoneid", "smithy.api#required" => {}}))
    TestDNSAnswerRequest.add_member(:record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'RecordName', traits: {"smithy.api#httpQuery" => "recordname", "smithy.api#required" => {}}))
    TestDNSAnswerRequest.add_member(:record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'RecordType', traits: {"smithy.api#httpQuery" => "recordtype", "smithy.api#required" => {}}))
    TestDNSAnswerRequest.add_member(:resolver_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'ResolverIP', traits: {"smithy.api#httpQuery" => "resolverip"}))
    TestDNSAnswerRequest.add_member(:edns0_client_subnet_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'EDNS0ClientSubnetIP', traits: {"smithy.api#httpQuery" => "edns0clientsubnetip"}))
    TestDNSAnswerRequest.add_member(:edns0_client_subnet_mask, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMask, location_name: 'EDNS0ClientSubnetMask', traits: {"smithy.api#httpQuery" => "edns0clientsubnetmask"}))
    TestDNSAnswerRequest.type = Types::TestDNSAnswerRequest
    TestDNSAnswerResponse.add_member(:nameserver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nameserver, location_name: 'Nameserver', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.add_member(:record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'RecordName', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.add_member(:record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'RecordType', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.add_member(:record_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordData, location_name: 'RecordData', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.add_member(:response_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSRCode, location_name: 'ResponseCode', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransportProtocol, location_name: 'Protocol', traits: {"smithy.api#required" => {}}))
    TestDNSAnswerResponse.type = Types::TestDNSAnswerResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyHealthChecks.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyHealthChecks.type = Types::TooManyHealthChecks
    TooManyHostedZones.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyHostedZones.type = Types::TooManyHostedZones
    TooManyKeySigningKeys.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyKeySigningKeys.type = Types::TooManyKeySigningKeys
    TooManyTrafficPolicies.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTrafficPolicies.type = Types::TooManyTrafficPolicies
    TooManyTrafficPolicyInstances.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTrafficPolicyInstances.type = Types::TooManyTrafficPolicyInstances
    TooManyTrafficPolicyVersionsForCurrentPolicy.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyTrafficPolicyVersionsForCurrentPolicy.type = Types::TooManyTrafficPolicyVersionsForCurrentPolicy
    TooManyVPCAssociationAuthorizations.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyVPCAssociationAuthorizations.type = Types::TooManyVPCAssociationAuthorizations
    TrafficPolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy, traits: {"smithy.api#xmlName" => "TrafficPolicy"})
    TrafficPolicy.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'Version', traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyDocument, location_name: 'Document', traits: {"smithy.api#required" => {}}))
    TrafficPolicy.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: 'Comment'))
    TrafficPolicy.type = Types::TrafficPolicy
    TrafficPolicyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TrafficPolicyAlreadyExists.type = Types::TrafficPolicyAlreadyExists
    TrafficPolicyInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TrafficPolicyInUse.type = Types::TrafficPolicyInUse
    TrafficPolicyInstance.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostedZoneId', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'TTL', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceState, location_name: 'State', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:traffic_policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'TrafficPolicyVersion', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.add_member(:traffic_policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'TrafficPolicyType', traits: {"smithy.api#required" => {}}))
    TrafficPolicyInstance.type = Types::TrafficPolicyInstance
    TrafficPolicyInstanceAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TrafficPolicyInstanceAlreadyExists.type = Types::TrafficPolicyInstanceAlreadyExists
    TrafficPolicyInstances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstance, traits: {"smithy.api#xmlName" => "TrafficPolicyInstance"})
    TrafficPolicySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicySummary, traits: {"smithy.api#xmlName" => "TrafficPolicySummary"})
    TrafficPolicySummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    TrafficPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    TrafficPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RRType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    TrafficPolicySummary.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'LatestVersion', traits: {"smithy.api#required" => {}}))
    TrafficPolicySummary.add_member(:traffic_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'TrafficPolicyCount', traits: {"smithy.api#required" => {}}))
    TrafficPolicySummary.type = Types::TrafficPolicySummary
    UpdateHealthCheckRequest.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId, location_name: 'HealthCheckId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateHealthCheckRequest.add_member(:health_check_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckVersion, location_name: 'HealthCheckVersion'))
    UpdateHealthCheckRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'IPAddress'))
    UpdateHealthCheckRequest.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port'))
    UpdateHealthCheckRequest.add_member(:resource_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePath, location_name: 'ResourcePath'))
    UpdateHealthCheckRequest.add_member(:fully_qualified_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedDomainName, location_name: 'FullyQualifiedDomainName'))
    UpdateHealthCheckRequest.add_member(:search_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString'))
    UpdateHealthCheckRequest.add_member(:failure_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureThreshold, location_name: 'FailureThreshold'))
    UpdateHealthCheckRequest.add_member(:inverted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Inverted, location_name: 'Inverted'))
    UpdateHealthCheckRequest.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Disabled, location_name: 'Disabled'))
    UpdateHealthCheckRequest.add_member(:health_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthThreshold, location_name: 'HealthThreshold'))
    UpdateHealthCheckRequest.add_member(:child_health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChildHealthCheckList, location_name: 'ChildHealthChecks'))
    UpdateHealthCheckRequest.add_member(:enable_sni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSNI, location_name: 'EnableSNI'))
    UpdateHealthCheckRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckRegionList, location_name: 'Regions'))
    UpdateHealthCheckRequest.add_member(:alarm_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmIdentifier, location_name: 'AlarmIdentifier'))
    UpdateHealthCheckRequest.add_member(:insufficient_data_health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDataHealthStatus, location_name: 'InsufficientDataHealthStatus'))
    UpdateHealthCheckRequest.add_member(:reset_elements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResettableElementNameList, location_name: 'ResetElements'))
    UpdateHealthCheckRequest.type = Types::UpdateHealthCheckRequest
    UpdateHealthCheckResponse.add_member(:health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheck, location_name: 'HealthCheck', traits: {"smithy.api#required" => {}}))
    UpdateHealthCheckResponse.type = Types::UpdateHealthCheckResponse
    UpdateHostedZoneCommentRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateHostedZoneCommentRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Comment'))
    UpdateHostedZoneCommentRequest.type = Types::UpdateHostedZoneCommentRequest
    UpdateHostedZoneCommentResponse.add_member(:hosted_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZone, location_name: 'HostedZone', traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneCommentResponse.type = Types::UpdateHostedZoneCommentResponse
    UpdateTrafficPolicyCommentRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrafficPolicyCommentRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'Version', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrafficPolicyCommentRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyComment, location_name: 'Comment', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyCommentRequest.type = Types::UpdateTrafficPolicyCommentRequest
    UpdateTrafficPolicyCommentResponse.add_member(:traffic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicy, location_name: 'TrafficPolicy', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyCommentResponse.type = Types::UpdateTrafficPolicyCommentResponse
    UpdateTrafficPolicyInstanceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceId, location_name: 'Id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrafficPolicyInstanceRequest.add_member(:ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'TTL', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyInstanceRequest.add_member(:traffic_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyId, location_name: 'TrafficPolicyId', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyInstanceRequest.add_member(:traffic_policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyVersion, location_name: 'TrafficPolicyVersion', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyInstanceRequest.type = Types::UpdateTrafficPolicyInstanceRequest
    UpdateTrafficPolicyInstanceResponse.add_member(:traffic_policy_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstance, location_name: 'TrafficPolicyInstance', traits: {"smithy.api#required" => {}}))
    UpdateTrafficPolicyInstanceResponse.type = Types::UpdateTrafficPolicyInstanceResponse
    VPC.add_member(:vpc_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCRegion, location_name: 'VPCRegion'))
    VPC.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCId, location_name: 'VPCId'))
    VPC.type = Types::VPC
    VPCAssociationAuthorizationNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    VPCAssociationAuthorizationNotFound.type = Types::VPCAssociationAuthorizationNotFound
    VPCAssociationNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    VPCAssociationNotFound.type = Types::VPCAssociationNotFound
    VPCRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    VPCRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_east_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    VPCRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_1', traits: {"smithy.api#enumValue" => "us-west-1"}))
    VPCRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_west_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    VPCRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    VPCRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    VPCRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_west_3', traits: {"smithy.api#enumValue" => "eu-west-3"}))
    VPCRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    VPCRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_central_2', traits: {"smithy.api#enumValue" => "eu-central-2"}))
    VPCRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_1', traits: {"smithy.api#enumValue" => "ap-east-1"}))
    VPCRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_south_1', traits: {"smithy.api#enumValue" => "me-south-1"}))
    VPCRegion.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_west_1', traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    VPCRegion.add_member(:us_gov_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_gov_east_1', traits: {"smithy.api#enumValue" => "us-gov-east-1"}))
    VPCRegion.add_member(:us_iso_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_iso_east_1', traits: {"smithy.api#enumValue" => "us-iso-east-1"}))
    VPCRegion.add_member(:us_iso_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_iso_west_1', traits: {"smithy.api#enumValue" => "us-iso-west-1"}))
    VPCRegion.add_member(:us_isob_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isob_east_1', traits: {"smithy.api#enumValue" => "us-isob-east-1"}))
    VPCRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'me_central_1', traits: {"smithy.api#enumValue" => "me-central-1"}))
    VPCRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    VPCRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    VPCRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_3', traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    VPCRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_1', traits: {"smithy.api#enumValue" => "ap-south-1"}))
    VPCRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_south_2', traits: {"smithy.api#enumValue" => "ap-south-2"}))
    VPCRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    VPCRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    VPCRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_northeast_3', traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    VPCRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_north_1', traits: {"smithy.api#enumValue" => "eu-north-1"}))
    VPCRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sa_east_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    VPCRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_central_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    VPCRegion.add_member(:cn_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_north_1', traits: {"smithy.api#enumValue" => "cn-north-1"}))
    VPCRegion.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cn_northwest_1', traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    VPCRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'af_south_1', traits: {"smithy.api#enumValue" => "af-south-1"}))
    VPCRegion.add_member(:eu_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_1', traits: {"smithy.api#enumValue" => "eu-south-1"}))
    VPCRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_south_2', traits: {"smithy.api#enumValue" => "eu-south-2"}))
    VPCRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_4', traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    VPCRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'il_central_1', traits: {"smithy.api#enumValue" => "il-central-1"}))
    VPCRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca_west_1', traits: {"smithy.api#enumValue" => "ca-west-1"}))
    VPCRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_5', traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    VPCRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mx_central_1', traits: {"smithy.api#enumValue" => "mx-central-1"}))
    VPCRegion.add_member(:us_isof_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isof_south_1', traits: {"smithy.api#enumValue" => "us-isof-south-1"}))
    VPCRegion.add_member(:us_isof_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'us_isof_east_1', traits: {"smithy.api#enumValue" => "us-isof-east-1"}))
    VPCRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_southeast_7', traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    VPCRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ap_east_2', traits: {"smithy.api#enumValue" => "ap-east-2"}))
    VPCRegion.add_member(:eu_isoe_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu_isoe_west_1', traits: {"smithy.api#enumValue" => "eu-isoe-west-1"}))
    VPCs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPC, traits: {"smithy.api#xmlName" => "VPC"})

    AWSDnsV20130401 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53#AWSDnsV20130401"
      service.name = "AWSDnsV20130401"
      service.version = "2013-04-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Route 53", "arnNamespace" => "route53", "cloudFormationName" => "Route53", "cloudTrailEventSource" => "route53.amazonaws.com", "docId" => "route53-2013-04-01", "endpointPrefix" => "route53"}, "aws.auth#sigv4" => {"name" => "route53"}, "aws.protocols#restXml" => {}, "smithy.api#title" => "Amazon Route 53", "smithy.api#xmlNamespace" => {"uri" => "https://route53.amazonaws.com/doc/2013-04-01/"}}
      service.add_operation(:activate_key_signing_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ActivateKeySigningKey"
        operation.name = "ActivateKeySigningKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateKeySigningKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateKeySigningKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSArn)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSigningStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchKeySigningKey)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/activate", "code" => 200}}
      end)
      service.add_operation(:associate_vpc_with_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#AssociateVPCWithHostedZone"
        operation.name = "AssociateVPCWithHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVPCWithHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVPCWithHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingDomainExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAuthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicZoneVPCAssociation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/associatevpc", "code" => 200}}
      end)
      service.add_operation(:change_cidr_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ChangeCidrCollection"
        operation.name = "ChangeCidrCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeCidrCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeCidrCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlockInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionVersionMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCidrCollectionException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/cidrcollection/{Id}", "code" => 200}}
      end)
      service.add_operation(:change_resource_record_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ChangeResourceRecordSets"
        operation.name = "ChangeResourceRecordSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeResourceRecordSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeResourceRecordSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidChangeBatch)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/rrset", "code" => 200}}
      end)
      service.add_operation(:change_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ChangeTagsForResource"
        operation.name = "ChangeTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/tags/{ResourceType}/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:create_cidr_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateCidrCollection"
        operation.name = "CreateCidrCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCidrCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCidrCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceeded)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/cidrcollection", "code" => 201}}
      end)
      service.add_operation(:create_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateHealthCheck"
        operation.name = "CreateHealthCheck"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHealthCheckRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHealthCheckResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHealthChecks)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/healthcheck", "code" => 201}}
      end)
      service.add_operation(:create_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateHostedZone"
        operation.name = "CreateHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingDomainExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotAvailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHostedZones)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone", "code" => 201}}
      end)
      service.add_operation(:create_key_signing_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateKeySigningKey"
        operation.name = "CreateKeySigningKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeySigningKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeySigningKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSArn)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSigningStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeyAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeySigningKeys)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/keysigningkey", "code" => 201}}
      end)
      service.add_operation(:create_query_logging_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateQueryLoggingConfig"
        operation.name = "CreateQueryLoggingConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCloudWatchLogsResourcePolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCloudWatchLogsLogGroup)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLoggingConfigAlreadyExists)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/queryloggingconfig", "code" => 201}}
      end)
      service.add_operation(:create_reusable_delegation_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateReusableDelegationSet"
        operation.name = "CreateReusableDelegationSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReusableDelegationSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReusableDelegationSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetAlreadyCreated)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetAlreadyReusable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotAvailable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceeded)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/delegationset", "code" => 201}}
      end)
      service.add_operation(:create_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateTrafficPolicy"
        operation.name = "CreateTrafficPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficPolicyDocument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrafficPolicies)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyAlreadyExists)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/trafficpolicy", "code" => 201}}
      end)
      service.add_operation(:create_traffic_policy_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateTrafficPolicyInstance"
        operation.name = "CreateTrafficPolicyInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrafficPolicyInstances)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInstanceAlreadyExists)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/trafficpolicyinstance", "code" => 201}}
      end)
      service.add_operation(:create_traffic_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateTrafficPolicyVersion"
        operation.name = "CreateTrafficPolicyVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrafficPolicyVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficPolicyDocument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrafficPolicyVersionsForCurrentPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/trafficpolicy/{Id}", "code" => 201}}
      end)
      service.add_operation(:create_vpc_association_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#CreateVPCAssociationAuthorization"
        operation.name = "CreateVPCAssociationAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCAssociationAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVPCAssociationAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyVPCAssociationAuthorizations)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation", "code" => 200}}
      end)
      service.add_operation(:deactivate_key_signing_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeactivateKeySigningKey"
        operation.name = "DeactivateKeySigningKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateKeySigningKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateKeySigningKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSigningStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeyInParentDSRecord)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeyInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchKeySigningKey)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/deactivate", "code" => 200}}
      end)
      service.add_operation(:delete_cidr_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteCidrCollection"
        operation.name = "DeleteCidrCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCidrCollectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCidrCollectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrCollectionInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCidrCollectionException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/cidrcollection/{Id}", "code" => 200}}
      end)
      service.add_operation(:delete_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteHealthCheck"
        operation.name = "DeleteHealthCheck"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHealthCheckRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHealthCheckResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/healthcheck/{HealthCheckId}", "code" => 200}}
      end)
      service.add_operation(:delete_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteHostedZone"
        operation.name = "DeleteHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneNotEmpty)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/hostedzone/{Id}", "code" => 200}}
      end)
      service.add_operation(:delete_key_signing_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteKeySigningKey"
        operation.name = "DeleteKeySigningKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeySigningKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeySigningKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSArn)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSigningStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchKeySigningKey)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_query_logging_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteQueryLoggingConfig"
        operation.name = "DeleteQueryLoggingConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchQueryLoggingConfig)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/queryloggingconfig/{Id}", "code" => 200}}
      end)
      service.add_operation(:delete_reusable_delegation_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteReusableDelegationSet"
        operation.name = "DeleteReusableDelegationSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReusableDelegationSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReusableDelegationSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/delegationset/{Id}", "code" => 200}}
      end)
      service.add_operation(:delete_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteTrafficPolicy"
        operation.name = "DeleteTrafficPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPolicyInUse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/trafficpolicy/{Id}/{Version}", "code" => 200}}
      end)
      service.add_operation(:delete_traffic_policy_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteTrafficPolicyInstance"
        operation.name = "DeleteTrafficPolicyInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrafficPolicyInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2013-04-01/trafficpolicyinstance/{Id}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_association_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DeleteVPCAssociationAuthorization"
        operation.name = "DeleteVPCAssociationAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCAssociationAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVPCAssociationAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCAssociationAuthorizationNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/deauthorizevpcassociation", "code" => 200}}
      end)
      service.add_operation(:disable_hosted_zone_dnssec, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DisableHostedZoneDNSSEC"
        operation.name = "DisableHostedZoneDNSSEC"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableHostedZoneDNSSECRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableHostedZoneDNSSECResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSSECNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSArn)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeyInParentDSRecord)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/disable-dnssec", "code" => 200}}
      end)
      service.add_operation(:disassociate_vpc_from_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#DisassociateVPCFromHostedZone"
        operation.name = "DisassociateVPCFromHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVPCFromHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVPCFromHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCId)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastVPCAssociation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: VPCAssociationNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/disassociatevpc", "code" => 200}}
      end)
      service.add_operation(:enable_hosted_zone_dnssec, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#EnableHostedZoneDNSSEC"
        operation.name = "EnableHostedZoneDNSSEC"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableHostedZoneDNSSECRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableHostedZoneDNSSECResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSSECNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZonePartiallyDelegated)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeySigningKeyStatus)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSArn)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySigningKeyWithActiveStatusNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/enable-dnssec", "code" => 200}}
      end)
      service.add_operation(:get_account_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetAccountLimit"
        operation.name = "GetAccountLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLimitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLimitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/accountlimit/{Type}", "code" => 200}}
      end)
      service.add_operation(:get_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetChange"
        operation.name = "GetChange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChangeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchChange)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/change/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_checker_ip_ranges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetCheckerIpRanges"
        operation.name = "GetCheckerIpRanges"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCheckerIpRangesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCheckerIpRangesResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/checkeripranges", "code" => 200}}
      end)
      service.add_operation(:get_dnssec, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetDNSSEC"
        operation.name = "GetDNSSEC"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDNSSECRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDNSSECResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/dnssec", "code" => 200}}
      end)
      service.add_operation(:get_geo_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetGeoLocation"
        operation.name = "GetGeoLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeoLocationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchGeoLocation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/geolocation", "code" => 200}}
      end)
      service.add_operation(:get_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHealthCheck"
        operation.name = "GetHealthCheck"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersion)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/healthcheck/{HealthCheckId}", "code" => 200}}
      end)
      service.add_operation(:get_health_check_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHealthCheckCount"
        operation.name = "GetHealthCheckCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckCountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckCountResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/healthcheckcount", "code" => 200}}
      end)
      service.add_operation(:get_health_check_last_failure_reason, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHealthCheckLastFailureReason"
        operation.name = "GetHealthCheckLastFailureReason"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckLastFailureReasonRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckLastFailureReasonResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", "code" => 200}}
      end)
      service.add_operation(:get_health_check_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHealthCheckStatus"
        operation.name = "GetHealthCheckStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthCheckStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/healthcheck/{HealthCheckId}/status", "code" => 200}}
      end)
      service.add_operation(:get_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHostedZone"
        operation.name = "GetHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzone/{Id}", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "GetHostedZoneFailure", "params" => {"Id" => "fake-zone"}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_hosted_zone_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHostedZoneCount"
        operation.name = "GetHostedZoneCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneCountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneCountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzonecount", "code" => 200}}
      end)
      service.add_operation(:get_hosted_zone_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetHostedZoneLimit"
        operation.name = "GetHostedZoneLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneLimitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedZoneLimitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneNotPrivate)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzonelimit/{HostedZoneId}/{Type}", "code" => 200}}
      end)
      service.add_operation(:get_query_logging_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetQueryLoggingConfig"
        operation.name = "GetQueryLoggingConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryLoggingConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryLoggingConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchQueryLoggingConfig)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/queryloggingconfig/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_reusable_delegation_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetReusableDelegationSet"
        operation.name = "GetReusableDelegationSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReusableDelegationSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReusableDelegationSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/delegationset/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_reusable_delegation_set_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetReusableDelegationSetLimit"
        operation.name = "GetReusableDelegationSetLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReusableDelegationSetLimitRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReusableDelegationSetLimitResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/reusabledelegationsetlimit/{DelegationSetId}/{Type}", "code" => 200}}
      end)
      service.add_operation(:get_traffic_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetTrafficPolicy"
        operation.name = "GetTrafficPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicy/{Id}/{Version}", "code" => 200}}
      end)
      service.add_operation(:get_traffic_policy_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetTrafficPolicyInstance"
        operation.name = "GetTrafficPolicyInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicyinstance/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_traffic_policy_instance_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#GetTrafficPolicyInstanceCount"
        operation.name = "GetTrafficPolicyInstanceCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceCountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrafficPolicyInstanceCountResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicyinstancecount", "code" => 200}}
      end)
      service.add_operation(:list_cidr_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListCidrBlocks"
        operation.name = "ListCidrBlocks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrBlocksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrBlocksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCidrCollectionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCidrLocationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/cidrcollection/{CollectionId}/cidrblocks", "code" => 200}}
        operation[:paginator] = Paginators::ListCidrBlocks.new
      end)
      service.add_operation(:list_cidr_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListCidrCollections"
        operation.name = "ListCidrCollections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrCollectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrCollectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/cidrcollection", "code" => 200}}
        operation[:paginator] = Paginators::ListCidrCollections.new
      end)
      service.add_operation(:list_cidr_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListCidrLocations"
        operation.name = "ListCidrLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrLocationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCidrLocationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCidrCollectionException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/cidrcollection/{CollectionId}", "code" => 200}}
        operation[:paginator] = Paginators::ListCidrLocations.new
      end)
      service.add_operation(:list_geo_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListGeoLocations"
        operation.name = "ListGeoLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoLocationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGeoLocationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/geolocations", "code" => 200}}
      end)
      service.add_operation(:list_health_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListHealthChecks"
        operation.name = "ListHealthChecks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHealthChecksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHealthChecksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleVersion)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/healthcheck", "code" => 200}}
        operation[:paginator] = Paginators::ListHealthChecks.new
      end)
      service.add_operation(:list_hosted_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListHostedZones"
        operation.name = "ListHostedZones"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationSetNotReusable)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDelegationSet)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzone", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "ListHostedZonesSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListHostedZones.new
      end)
      service.add_operation(:list_hosted_zones_by_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListHostedZonesByName"
        operation.name = "ListHostedZonesByName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesByNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesByNameResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainName)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzonesbyname", "code" => 200}}
      end)
      service.add_operation(:list_hosted_zones_by_vpc, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListHostedZonesByVPC"
        operation.name = "ListHostedZonesByVPC"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesByVPCRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedZonesByVPCResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzonesbyvpc", "code" => 200}}
      end)
      service.add_operation(:list_query_logging_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListQueryLoggingConfigs"
        operation.name = "ListQueryLoggingConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryLoggingConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryLoggingConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/queryloggingconfig", "code" => 200}}
        operation[:paginator] = Paginators::ListQueryLoggingConfigs.new
      end)
      service.add_operation(:list_resource_record_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListResourceRecordSets"
        operation.name = "ListResourceRecordSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceRecordSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceRecordSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/rrset", "code" => 200}}
      end)
      service.add_operation(:list_reusable_delegation_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListReusableDelegationSets"
        operation.name = "ListReusableDelegationSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReusableDelegationSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReusableDelegationSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/delegationset", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/tags/{ResourceType}/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTagsForResources"
        operation.name = "ListTagsForResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/tags/{ResourceType}", "code" => 200}}
      end)
      service.add_operation(:list_traffic_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTrafficPolicies"
        operation.name = "ListTrafficPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicies", "code" => 200}}
      end)
      service.add_operation(:list_traffic_policy_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTrafficPolicyInstances"
        operation.name = "ListTrafficPolicyInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicyinstances", "code" => 200}}
      end)
      service.add_operation(:list_traffic_policy_instances_by_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTrafficPolicyInstancesByHostedZone"
        operation.name = "ListTrafficPolicyInstancesByHostedZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByHostedZoneRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByHostedZoneResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicyinstances/hostedzone", "code" => 200}}
      end)
      service.add_operation(:list_traffic_policy_instances_by_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTrafficPolicyInstancesByPolicy"
        operation.name = "ListTrafficPolicyInstancesByPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyInstancesByPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicyinstances/trafficpolicy", "code" => 200}}
      end)
      service.add_operation(:list_traffic_policy_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListTrafficPolicyVersions"
        operation.name = "ListTrafficPolicyVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrafficPolicyVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/trafficpolicies/{Id}/versions", "code" => 200}}
      end)
      service.add_operation(:list_vpc_association_authorizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#ListVPCAssociationAuthorizations"
        operation.name = "ListVPCAssociationAuthorizations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCAssociationAuthorizationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVPCAssociationAuthorizationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationToken)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation", "code" => 200}}
      end)
      service.add_operation(:test_dns_answer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#TestDNSAnswer"
        operation.name = "TestDNSAnswer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestDNSAnswerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestDNSAnswerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2013-04-01/testdnsanswer", "code" => 200}}
      end)
      service.add_operation(:update_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#UpdateHealthCheck"
        operation.name = "UpdateHealthCheck"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHealthCheckRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHealthCheckResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckVersionMismatch)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHealthCheck)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/healthcheck/{HealthCheckId}", "code" => 200}}
      end)
      service.add_operation(:update_hosted_zone_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#UpdateHostedZoneComment"
        operation.name = "UpdateHostedZoneComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostedZoneCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostedZoneCommentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchHostedZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/hostedzone/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_traffic_policy_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#UpdateTrafficPolicyComment"
        operation.name = "UpdateTrafficPolicyComment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyCommentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyCommentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModification)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/trafficpolicy/{Id}/{Version}", "code" => 200}}
      end)
      service.add_operation(:update_traffic_policy_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53#UpdateTrafficPolicyInstance"
        operation.name = "UpdateTrafficPolicyInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrafficPolicyInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingTypes)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicy)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchTrafficPolicyInstance)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorRequestNotComplete)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2013-04-01/trafficpolicyinstance/{Id}", "code" => 200}}
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
