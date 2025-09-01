# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ADAssessmentLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ADAssessmentLimitExceededException', name: 'ADAssessmentLimitExceededException', traits: {"smithy.api#error" => "client"})
    AcceptSharedDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AcceptSharedDirectoryRequest', name: 'AcceptSharedDirectoryRequest')
    AcceptSharedDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AcceptSharedDirectoryResult', name: 'AcceptSharedDirectoryResult')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccessUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AccessUrl', name: 'AccessUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AddIpRoutesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddIpRoutesRequest', name: 'AddIpRoutesRequest')
    AddIpRoutesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddIpRoutesResult', name: 'AddIpRoutesResult')
    AddRegionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddRegionRequest', name: 'AddRegionRequest')
    AddRegionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddRegionResult', name: 'AddRegionResult')
    AddTagsToResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddTagsToResourceRequest', name: 'AddTagsToResourceRequest')
    AddTagsToResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AddTagsToResourceResult', name: 'AddTagsToResourceResult')
    AddedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#AddedDateTime', name: 'AddedDateTime')
    AdditionalRegions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#AdditionalRegions', name: 'AdditionalRegions')
    AliasName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AliasName', name: 'AliasName', traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^(?!D-|d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*$"})
    Assessment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Assessment', name: 'Assessment')
    AssessmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AssessmentConfiguration', name: 'AssessmentConfiguration')
    AssessmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentId', name: 'AssessmentId', traits: {"smithy.api#pattern" => "^da-[0-9a-f]{18}$"})
    AssessmentInstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentInstanceId', name: 'AssessmentInstanceId', traits: {"smithy.api#pattern" => "^(i-[0-9a-f]{8}|i-[0-9a-f]{17}|mi-[0-9a-f]{8}|mi-[0-9a-f]{17})$"})
    AssessmentInstanceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#AssessmentInstanceIds', name: 'AssessmentInstanceIds', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    AssessmentLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#AssessmentLimit', name: 'AssessmentLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    AssessmentReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AssessmentReport', name: 'AssessmentReport')
    AssessmentReportType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentReportType', name: 'AssessmentReportType')
    AssessmentReports = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#AssessmentReports', name: 'AssessmentReports')
    AssessmentStartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#AssessmentStartTime', name: 'AssessmentStartTime')
    AssessmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentStatus', name: 'AssessmentStatus')
    AssessmentStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentStatusCode', name: 'AssessmentStatusCode')
    AssessmentStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentStatusReason', name: 'AssessmentStatusReason')
    AssessmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AssessmentSummary', name: 'AssessmentSummary')
    AssessmentValidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidation', name: 'AssessmentValidation')
    AssessmentValidationCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationCategory', name: 'AssessmentValidationCategory')
    AssessmentValidationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationName', name: 'AssessmentValidationName')
    AssessmentValidationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationStatus', name: 'AssessmentValidationStatus')
    AssessmentValidationStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationStatusCode', name: 'AssessmentValidationStatusCode')
    AssessmentValidationStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationStatusReason', name: 'AssessmentValidationStatusReason')
    AssessmentValidationTimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidationTimeStamp', name: 'AssessmentValidationTimeStamp')
    AssessmentValidations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#AssessmentValidations', name: 'AssessmentValidations')
    AssessmentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AssessmentVersion', name: 'AssessmentVersion')
    Assessments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Assessments', name: 'Assessments')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Attribute', name: 'Attribute')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1}})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AttributeValue', name: 'AttributeValue')
    Attributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Attributes', name: 'Attributes')
    AuthenticationFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#AuthenticationFailedException', name: 'AuthenticationFailedException', traits: {"smithy.api#error" => "client"})
    AvailabilityZone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZones = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#AvailabilityZones', name: 'AvailabilityZones')
    CancelSchemaExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CancelSchemaExtensionRequest', name: 'CancelSchemaExtensionRequest')
    CancelSchemaExtensionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CancelSchemaExtensionResult', name: 'CancelSchemaExtensionResult')
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Certificate', name: 'Certificate')
    CertificateAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CertificateAlreadyExistsException', name: 'CertificateAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    CertificateCN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CertificateCN', name: 'CertificateCN')
    CertificateData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CertificateData', name: 'CertificateData', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    CertificateDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CertificateDoesNotExistException', name: 'CertificateDoesNotExistException', traits: {"smithy.api#error" => "client"})
    CertificateExpiryDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#CertificateExpiryDateTime', name: 'CertificateExpiryDateTime')
    CertificateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CertificateId', name: 'CertificateId', traits: {"smithy.api#pattern" => "^c-[0-9a-f]{10}$"})
    CertificateInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CertificateInUseException', name: 'CertificateInUseException', traits: {"smithy.api#error" => "client"})
    CertificateInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CertificateInfo', name: 'CertificateInfo')
    CertificateLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CertificateLimitExceededException', name: 'CertificateLimitExceededException', traits: {"smithy.api#error" => "client"})
    CertificateRegisteredDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#CertificateRegisteredDateTime', name: 'CertificateRegisteredDateTime')
    CertificateState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#CertificateState', name: 'CertificateState')
    CertificateStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CertificateStateReason', name: 'CertificateStateReason')
    CertificateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#CertificateType', name: 'CertificateType')
    CertificatesInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#CertificatesInfo', name: 'CertificatesInfo')
    CidrIp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CidrIp', name: 'CidrIp', traits: {"smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$"})
    CidrIps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#CidrIps', name: 'CidrIps')
    ClientAuthenticationSettingInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ClientAuthenticationSettingInfo', name: 'ClientAuthenticationSettingInfo')
    ClientAuthenticationSettingsInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#ClientAuthenticationSettingsInfo', name: 'ClientAuthenticationSettingsInfo')
    ClientAuthenticationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#ClientAuthenticationStatus', name: 'ClientAuthenticationStatus')
    ClientAuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#ClientAuthenticationType', name: 'ClientAuthenticationType')
    ClientCertAuthSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ClientCertAuthSettings', name: 'ClientCertAuthSettings')
    ClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ClientException', name: 'ClientException', traits: {"smithy.api#error" => "client"})
    CloudOnlyDirectoriesLimitReached = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#CloudOnlyDirectoriesLimitReached', name: 'CloudOnlyDirectoriesLimitReached', traits: {"smithy.api#default" => false})
    Computer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Computer', name: 'Computer')
    ComputerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#ComputerName', name: 'ComputerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    ComputerPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#ComputerPassword', name: 'ComputerPassword', traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    ConditionalForwarder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ConditionalForwarder', name: 'ConditionalForwarder')
    ConditionalForwarders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#ConditionalForwarders', name: 'ConditionalForwarders')
    ConnectDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ConnectDirectoryRequest', name: 'ConnectDirectoryRequest')
    ConnectDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ConnectDirectoryResult', name: 'ConnectDirectoryResult')
    ConnectPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#ConnectPassword', name: 'ConnectPassword', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    ConnectedDirectoriesLimitReached = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#ConnectedDirectoriesLimitReached', name: 'ConnectedDirectoriesLimitReached', traits: {"smithy.api#default" => false})
    CreateAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateAliasRequest', name: 'CreateAliasRequest')
    CreateAliasResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateAliasResult', name: 'CreateAliasResult')
    CreateComputerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateComputerRequest', name: 'CreateComputerRequest')
    CreateComputerResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateComputerResult', name: 'CreateComputerResult')
    CreateConditionalForwarderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateConditionalForwarderRequest', name: 'CreateConditionalForwarderRequest')
    CreateConditionalForwarderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateConditionalForwarderResult', name: 'CreateConditionalForwarderResult')
    CreateDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateDirectoryRequest', name: 'CreateDirectoryRequest')
    CreateDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateDirectoryResult', name: 'CreateDirectoryResult')
    CreateHybridADRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateHybridADRequest', name: 'CreateHybridADRequest')
    CreateHybridADResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateHybridADResult', name: 'CreateHybridADResult')
    CreateLogSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateLogSubscriptionRequest', name: 'CreateLogSubscriptionRequest')
    CreateLogSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateLogSubscriptionResult', name: 'CreateLogSubscriptionResult')
    CreateMicrosoftADRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateMicrosoftADRequest', name: 'CreateMicrosoftADRequest')
    CreateMicrosoftADResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateMicrosoftADResult', name: 'CreateMicrosoftADResult')
    CreateSnapshotBeforeSchemaExtension = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#CreateSnapshotBeforeSchemaExtension', name: 'CreateSnapshotBeforeSchemaExtension', traits: {"smithy.api#default" => false})
    CreateSnapshotBeforeUpdate = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#CreateSnapshotBeforeUpdate', name: 'CreateSnapshotBeforeUpdate', traits: {"smithy.api#default" => false})
    CreateSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateSnapshotRequest', name: 'CreateSnapshotRequest')
    CreateSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateSnapshotResult', name: 'CreateSnapshotResult')
    CreateTrustRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateTrustRequest', name: 'CreateTrustRequest')
    CreateTrustResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#CreateTrustResult', name: 'CreateTrustResult')
    CreatedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#CreatedDateTime', name: 'CreatedDateTime')
    CustomerDnsIps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#CustomerDnsIps', name: 'CustomerDnsIps', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    CustomerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CustomerId', name: 'CustomerId', traits: {"smithy.api#pattern" => "^(\\d{12})$"})
    CustomerUserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#CustomerUserName', name: 'CustomerUserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!.*\\\\|.*\"|.*\\/|.*\\[|.*\\]|.*:|.*;|.*\\||.*=|.*,|.*\\+|.*\\*|.*\\?|.*<|.*>|.*@).*$"})
    DataAccessStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DataAccessStatus', name: 'DataAccessStatus')
    DeleteADAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteADAssessmentRequest', name: 'DeleteADAssessmentRequest')
    DeleteADAssessmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteADAssessmentResult', name: 'DeleteADAssessmentResult')
    DeleteAssociatedConditionalForwarder = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#DeleteAssociatedConditionalForwarder', name: 'DeleteAssociatedConditionalForwarder', traits: {"smithy.api#default" => false})
    DeleteConditionalForwarderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteConditionalForwarderRequest', name: 'DeleteConditionalForwarderRequest')
    DeleteConditionalForwarderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteConditionalForwarderResult', name: 'DeleteConditionalForwarderResult')
    DeleteDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteDirectoryRequest', name: 'DeleteDirectoryRequest')
    DeleteDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteDirectoryResult', name: 'DeleteDirectoryResult')
    DeleteLogSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteLogSubscriptionRequest', name: 'DeleteLogSubscriptionRequest')
    DeleteLogSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteLogSubscriptionResult', name: 'DeleteLogSubscriptionResult')
    DeleteSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteSnapshotRequest', name: 'DeleteSnapshotRequest')
    DeleteSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteSnapshotResult', name: 'DeleteSnapshotResult')
    DeleteTrustRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteTrustRequest', name: 'DeleteTrustRequest')
    DeleteTrustResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeleteTrustResult', name: 'DeleteTrustResult')
    DeregisterCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeregisterCertificateRequest', name: 'DeregisterCertificateRequest')
    DeregisterCertificateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeregisterCertificateResult', name: 'DeregisterCertificateResult')
    DeregisterEventTopicRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeregisterEventTopicRequest', name: 'DeregisterEventTopicRequest')
    DeregisterEventTopicResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DeregisterEventTopicResult', name: 'DeregisterEventTopicResult')
    DescribeADAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeADAssessmentRequest', name: 'DescribeADAssessmentRequest')
    DescribeADAssessmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeADAssessmentResult', name: 'DescribeADAssessmentResult')
    DescribeCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeCertificateRequest', name: 'DescribeCertificateRequest')
    DescribeCertificateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeCertificateResult', name: 'DescribeCertificateResult')
    DescribeClientAuthenticationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeClientAuthenticationSettingsRequest', name: 'DescribeClientAuthenticationSettingsRequest')
    DescribeClientAuthenticationSettingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeClientAuthenticationSettingsResult', name: 'DescribeClientAuthenticationSettingsResult')
    DescribeConditionalForwardersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeConditionalForwardersRequest', name: 'DescribeConditionalForwardersRequest')
    DescribeConditionalForwardersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeConditionalForwardersResult', name: 'DescribeConditionalForwardersResult')
    DescribeDirectoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDirectoriesRequest', name: 'DescribeDirectoriesRequest')
    DescribeDirectoriesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDirectoriesResult', name: 'DescribeDirectoriesResult')
    DescribeDirectoryDataAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDirectoryDataAccessRequest', name: 'DescribeDirectoryDataAccessRequest')
    DescribeDirectoryDataAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDirectoryDataAccessResult', name: 'DescribeDirectoryDataAccessResult')
    DescribeDomainControllersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDomainControllersRequest', name: 'DescribeDomainControllersRequest')
    DescribeDomainControllersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeDomainControllersResult', name: 'DescribeDomainControllersResult')
    DescribeEventTopicsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeEventTopicsRequest', name: 'DescribeEventTopicsRequest')
    DescribeEventTopicsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeEventTopicsResult', name: 'DescribeEventTopicsResult')
    DescribeHybridADUpdateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeHybridADUpdateRequest', name: 'DescribeHybridADUpdateRequest')
    DescribeHybridADUpdateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeHybridADUpdateResult', name: 'DescribeHybridADUpdateResult')
    DescribeLDAPSSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeLDAPSSettingsRequest', name: 'DescribeLDAPSSettingsRequest')
    DescribeLDAPSSettingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeLDAPSSettingsResult', name: 'DescribeLDAPSSettingsResult')
    DescribeRegionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeRegionsRequest', name: 'DescribeRegionsRequest')
    DescribeRegionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeRegionsResult', name: 'DescribeRegionsResult')
    DescribeSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSettingsRequest', name: 'DescribeSettingsRequest')
    DescribeSettingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSettingsResult', name: 'DescribeSettingsResult')
    DescribeSharedDirectoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSharedDirectoriesRequest', name: 'DescribeSharedDirectoriesRequest')
    DescribeSharedDirectoriesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSharedDirectoriesResult', name: 'DescribeSharedDirectoriesResult')
    DescribeSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSnapshotsRequest', name: 'DescribeSnapshotsRequest')
    DescribeSnapshotsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeSnapshotsResult', name: 'DescribeSnapshotsResult')
    DescribeTrustsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeTrustsRequest', name: 'DescribeTrustsRequest')
    DescribeTrustsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeTrustsResult', name: 'DescribeTrustsResult')
    DescribeUpdateDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeUpdateDirectoryRequest', name: 'DescribeUpdateDirectoryRequest')
    DescribeUpdateDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DescribeUpdateDirectoryResult', name: 'DescribeUpdateDirectoryResult')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DesiredNumberOfDomainControllers = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#DesiredNumberOfDomainControllers', name: 'DesiredNumberOfDomainControllers', traits: {"smithy.api#range" => {"min" => 2}})
    DirectoryAlreadyInRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryAlreadyInRegionException', name: 'DirectoryAlreadyInRegionException', traits: {"smithy.api#error" => "client"})
    DirectoryAlreadySharedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryAlreadySharedException', name: 'DirectoryAlreadySharedException', traits: {"smithy.api#error" => "client"})
    DirectoryConfigurationSettingAllowedValues = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingAllowedValues', name: 'DirectoryConfigurationSettingAllowedValues')
    DirectoryConfigurationSettingDataType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingDataType', name: 'DirectoryConfigurationSettingDataType')
    DirectoryConfigurationSettingLastRequestedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingLastRequestedDateTime', name: 'DirectoryConfigurationSettingLastRequestedDateTime')
    DirectoryConfigurationSettingLastUpdatedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingLastUpdatedDateTime', name: 'DirectoryConfigurationSettingLastUpdatedDateTime')
    DirectoryConfigurationSettingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingName', name: 'DirectoryConfigurationSettingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-/. _]*$"})
    DirectoryConfigurationSettingRequestDetailedStatus = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingRequestDetailedStatus', name: 'DirectoryConfigurationSettingRequestDetailedStatus')
    DirectoryConfigurationSettingRequestStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingRequestStatusMessage', name: 'DirectoryConfigurationSettingRequestStatusMessage')
    DirectoryConfigurationSettingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingType', name: 'DirectoryConfigurationSettingType')
    DirectoryConfigurationSettingValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationSettingValue', name: 'DirectoryConfigurationSettingValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_]*$"})
    DirectoryConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DirectoryConfigurationStatus', name: 'DirectoryConfigurationStatus')
    DirectoryConnectSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryConnectSettings', name: 'DirectoryConnectSettings')
    DirectoryConnectSettingsDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryConnectSettingsDescription', name: 'DirectoryConnectSettingsDescription')
    DirectoryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryDescription', name: 'DirectoryDescription')
    DirectoryDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#DirectoryDescriptions', name: 'DirectoryDescriptions')
    DirectoryDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryDoesNotExistException', name: 'DirectoryDoesNotExistException', traits: {"smithy.api#error" => "client"})
    DirectoryEdition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DirectoryEdition', name: 'DirectoryEdition')
    DirectoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#DirectoryIds', name: 'DirectoryIds')
    DirectoryInDesiredStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryInDesiredStateException', name: 'DirectoryInDesiredStateException', traits: {"smithy.api#error" => "client"})
    DirectoryLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryLimitExceededException', name: 'DirectoryLimitExceededException', traits: {"smithy.api#error" => "client"})
    DirectoryLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryLimits', name: 'DirectoryLimits')
    DirectoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryName', name: 'DirectoryName', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"})
    DirectoryNotSharedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryNotSharedException', name: 'DirectoryNotSharedException', traits: {"smithy.api#error" => "client"})
    DirectoryShortName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DirectoryShortName', name: 'DirectoryShortName', traits: {"smithy.api#pattern" => "^[^\\\\/:*?\"<>|.]+[^\\\\/:*?\"<>|]*$"})
    DirectorySize = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DirectorySize', name: 'DirectorySize')
    DirectoryStage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DirectoryStage', name: 'DirectoryStage')
    DirectoryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DirectoryType', name: 'DirectoryType')
    DirectoryUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryUnavailableException', name: 'DirectoryUnavailableException', traits: {"smithy.api#error" => "client"})
    DirectoryVpcSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryVpcSettings', name: 'DirectoryVpcSettings')
    DirectoryVpcSettingsDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DirectoryVpcSettingsDescription', name: 'DirectoryVpcSettingsDescription')
    DisableClientAuthenticationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableClientAuthenticationRequest', name: 'DisableClientAuthenticationRequest')
    DisableClientAuthenticationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableClientAuthenticationResult', name: 'DisableClientAuthenticationResult')
    DisableDirectoryDataAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableDirectoryDataAccessRequest', name: 'DisableDirectoryDataAccessRequest')
    DisableDirectoryDataAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableDirectoryDataAccessResult', name: 'DisableDirectoryDataAccessResult')
    DisableLDAPSRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableLDAPSRequest', name: 'DisableLDAPSRequest')
    DisableLDAPSResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableLDAPSResult', name: 'DisableLDAPSResult')
    DisableRadiusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableRadiusRequest', name: 'DisableRadiusRequest')
    DisableRadiusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableRadiusResult', name: 'DisableRadiusResult')
    DisableSsoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableSsoRequest', name: 'DisableSsoRequest')
    DisableSsoResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DisableSsoResult', name: 'DisableSsoResult')
    DnsIpAddrs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#DnsIpAddrs', name: 'DnsIpAddrs')
    DomainController = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DomainController', name: 'DomainController')
    DomainControllerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DomainControllerId', name: 'DomainControllerId', traits: {"smithy.api#pattern" => "^dc-[0-9a-f]{10}$"})
    DomainControllerIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#DomainControllerIds', name: 'DomainControllerIds')
    DomainControllerLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#DomainControllerLimitExceededException', name: 'DomainControllerLimitExceededException', traits: {"smithy.api#error" => "client"})
    DomainControllerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#DomainControllerStatus', name: 'DomainControllerStatus')
    DomainControllerStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#DomainControllerStatusReason', name: 'DomainControllerStatusReason')
    DomainControllers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#DomainControllers', name: 'DomainControllers')
    EnableClientAuthenticationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableClientAuthenticationRequest', name: 'EnableClientAuthenticationRequest')
    EnableClientAuthenticationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableClientAuthenticationResult', name: 'EnableClientAuthenticationResult')
    EnableDirectoryDataAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableDirectoryDataAccessRequest', name: 'EnableDirectoryDataAccessRequest')
    EnableDirectoryDataAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableDirectoryDataAccessResult', name: 'EnableDirectoryDataAccessResult')
    EnableLDAPSRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableLDAPSRequest', name: 'EnableLDAPSRequest')
    EnableLDAPSResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableLDAPSResult', name: 'EnableLDAPSResult')
    EnableRadiusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableRadiusRequest', name: 'EnableRadiusRequest')
    EnableRadiusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableRadiusResult', name: 'EnableRadiusResult')
    EnableSsoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableSsoRequest', name: 'EnableSsoRequest')
    EnableSsoResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EnableSsoResult', name: 'EnableSsoResult')
    EndDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#EndDateTime', name: 'EndDateTime')
    EntityAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EntityAlreadyExistsException', name: 'EntityAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    EntityDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EntityDoesNotExistException', name: 'EntityDoesNotExistException', traits: {"smithy.api#error" => "client"})
    EventTopic = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#EventTopic', name: 'EventTopic')
    EventTopics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#EventTopics', name: 'EventTopics')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#ExceptionMessage', name: 'ExceptionMessage')
    GetDirectoryLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#GetDirectoryLimitsRequest', name: 'GetDirectoryLimitsRequest')
    GetDirectoryLimitsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#GetDirectoryLimitsResult', name: 'GetDirectoryLimitsResult')
    GetSnapshotLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#GetSnapshotLimitsRequest', name: 'GetSnapshotLimitsRequest')
    GetSnapshotLimitsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#GetSnapshotLimitsResult', name: 'GetSnapshotLimitsResult')
    HybridAdministratorAccountUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridAdministratorAccountUpdate', name: 'HybridAdministratorAccountUpdate')
    HybridCustomerInstancesSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridCustomerInstancesSettings', name: 'HybridCustomerInstancesSettings')
    HybridSettingsDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridSettingsDescription', name: 'HybridSettingsDescription')
    HybridUpdateActivities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridUpdateActivities', name: 'HybridUpdateActivities')
    HybridUpdateInfoEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#HybridUpdateInfoEntries', name: 'HybridUpdateInfoEntries')
    HybridUpdateInfoEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridUpdateInfoEntry', name: 'HybridUpdateInfoEntry')
    HybridUpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#HybridUpdateType', name: 'HybridUpdateType')
    HybridUpdateValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#HybridUpdateValue', name: 'HybridUpdateValue')
    IncompatibleSettingsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#IncompatibleSettingsException', name: 'IncompatibleSettingsException', traits: {"smithy.api#error" => "client"})
    InitiatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#InitiatedBy', name: 'InitiatedBy')
    InsufficientPermissionsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InsufficientPermissionsException', name: 'InsufficientPermissionsException', traits: {"smithy.api#error" => "client"})
    InvalidCertificateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidCertificateException', name: 'InvalidCertificateException', traits: {"smithy.api#error" => "client"})
    InvalidClientAuthStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidClientAuthStatusException', name: 'InvalidClientAuthStatusException', traits: {"smithy.api#error" => "client"})
    InvalidLDAPSStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidLDAPSStatusException', name: 'InvalidLDAPSStatusException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidPasswordException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidPasswordException', name: 'InvalidPasswordException', traits: {"smithy.api#error" => "client"})
    InvalidTargetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#InvalidTargetException', name: 'InvalidTargetException', traits: {"smithy.api#error" => "client"})
    IpAddr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#IpAddr', name: 'IpAddr', traits: {"smithy.api#pattern" => "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"})
    IpAddrs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#IpAddrs', name: 'IpAddrs')
    IpRoute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#IpRoute', name: 'IpRoute')
    IpRouteInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#IpRouteInfo', name: 'IpRouteInfo')
    IpRouteLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#IpRouteLimitExceededException', name: 'IpRouteLimitExceededException', traits: {"smithy.api#error" => "client"})
    IpRouteStatusMsg = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#IpRouteStatusMsg', name: 'IpRouteStatusMsg')
    IpRouteStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#IpRouteStatusReason', name: 'IpRouteStatusReason')
    IpRoutes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#IpRoutes', name: 'IpRoutes')
    IpRoutesInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#IpRoutesInfo', name: 'IpRoutesInfo')
    LDAPSSettingInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#LDAPSSettingInfo', name: 'LDAPSSettingInfo')
    LDAPSSettingsInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#LDAPSSettingsInfo', name: 'LDAPSSettingsInfo')
    LDAPSStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#LDAPSStatus', name: 'LDAPSStatus')
    LDAPSStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#LDAPSStatusReason', name: 'LDAPSStatusReason')
    LDAPSType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#LDAPSType', name: 'LDAPSType')
    LastUpdateDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#LastUpdateDateTime', name: 'LastUpdateDateTime')
    LastUpdatedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#LastUpdatedDateTime', name: 'LastUpdatedDateTime')
    LaunchTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#LaunchTime', name: 'LaunchTime')
    LdifContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#LdifContent', name: 'LdifContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 500000}})
    Limit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#Limit', name: 'Limit', traits: {"smithy.api#range" => {"min" => 0}})
    ListADAssessmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListADAssessmentsRequest', name: 'ListADAssessmentsRequest')
    ListADAssessmentsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListADAssessmentsResult', name: 'ListADAssessmentsResult')
    ListCertificatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListCertificatesRequest', name: 'ListCertificatesRequest')
    ListCertificatesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListCertificatesResult', name: 'ListCertificatesResult')
    ListIpRoutesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListIpRoutesRequest', name: 'ListIpRoutesRequest')
    ListIpRoutesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListIpRoutesResult', name: 'ListIpRoutesResult')
    ListLogSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListLogSubscriptionsRequest', name: 'ListLogSubscriptionsRequest')
    ListLogSubscriptionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListLogSubscriptionsResult', name: 'ListLogSubscriptionsResult')
    ListSchemaExtensionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListSchemaExtensionsRequest', name: 'ListSchemaExtensionsRequest')
    ListSchemaExtensionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListSchemaExtensionsResult', name: 'ListSchemaExtensionsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    LogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[-._/#A-Za-z0-9]+$"})
    LogSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#LogSubscription', name: 'LogSubscription')
    LogSubscriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#LogSubscriptions', name: 'LogSubscriptions')
    ManualSnapshotsLimitReached = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#ManualSnapshotsLimitReached', name: 'ManualSnapshotsLimitReached', traits: {"smithy.api#default" => false})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#NextToken', name: 'NextToken')
    NoAvailableCertificateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#NoAvailableCertificateException', name: 'NoAvailableCertificateException', traits: {"smithy.api#error" => "client"})
    Notes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#Notes', name: 'Notes', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    OCSPUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#OCSPUrl', name: 'OCSPUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https?|ftp|file|ldaps?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;()]*[-a-zA-Z0-9+&@#/%=~_|()]$"})
    OSUpdateSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#OSUpdateSettings', name: 'OSUpdateSettings')
    OSVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#OSVersion', name: 'OSVersion')
    OrganizationalUnitDN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#OrganizationalUnitDN', name: 'OrganizationalUnitDN', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    OrganizationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#OrganizationsException', name: 'OrganizationsException', traits: {"smithy.api#error" => "client"})
    OwnerDirectoryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#OwnerDirectoryDescription', name: 'OwnerDirectoryDescription')
    PageLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#PageLimit', name: 'PageLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#Password', name: 'Password', traits: {"smithy.api#pattern" => "^(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^", "smithy.api#sensitive" => {}})
    PortNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#PortNumber', name: 'PortNumber', traits: {"smithy.api#range" => {"min" => 1025, "max" => 65535}})
    RadiusAuthenticationProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#RadiusAuthenticationProtocol', name: 'RadiusAuthenticationProtocol')
    RadiusDisplayLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#RadiusDisplayLabel', name: 'RadiusDisplayLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RadiusRetries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#RadiusRetries', name: 'RadiusRetries', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    RadiusSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RadiusSettings', name: 'RadiusSettings')
    RadiusSharedSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#RadiusSharedSecret', name: 'RadiusSharedSecret', traits: {"smithy.api#length" => {"min" => 8, "max" => 512}, "smithy.api#pattern" => "^(\\p{LD}|\\p{Punct}| )+$", "smithy.api#sensitive" => {}})
    RadiusStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#RadiusStatus', name: 'RadiusStatus')
    RadiusTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservice#RadiusTimeout', name: 'RadiusTimeout', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    RegionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegionDescription', name: 'RegionDescription')
    RegionLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegionLimitExceededException', name: 'RegionLimitExceededException', traits: {"smithy.api#error" => "client"})
    RegionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#RegionName', name: 'RegionName', traits: {"smithy.api#length" => {"min" => 8, "max" => 32}})
    RegionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#RegionType', name: 'RegionType')
    RegionsDescription = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#RegionsDescription', name: 'RegionsDescription')
    RegionsInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegionsInfo', name: 'RegionsInfo')
    RegisterCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegisterCertificateRequest', name: 'RegisterCertificateRequest')
    RegisterCertificateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegisterCertificateResult', name: 'RegisterCertificateResult')
    RegisterEventTopicRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegisterEventTopicRequest', name: 'RegisterEventTopicRequest')
    RegisterEventTopicResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RegisterEventTopicResult', name: 'RegisterEventTopicResult')
    RejectSharedDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RejectSharedDirectoryRequest', name: 'RejectSharedDirectoryRequest')
    RejectSharedDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RejectSharedDirectoryResult', name: 'RejectSharedDirectoryResult')
    RemoteDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#RemoteDomainName', name: 'RemoteDomainName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"})
    RemoteDomainNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#RemoteDomainNames', name: 'RemoteDomainNames')
    RemoveIpRoutesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveIpRoutesRequest', name: 'RemoveIpRoutesRequest')
    RemoveIpRoutesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveIpRoutesResult', name: 'RemoveIpRoutesResult')
    RemoveRegionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveRegionRequest', name: 'RemoveRegionRequest')
    RemoveRegionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveRegionResult', name: 'RemoveRegionResult')
    RemoveTagsFromResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveTagsFromResourceRequest', name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RemoveTagsFromResourceResult', name: 'RemoveTagsFromResourceResult')
    ReplicationScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#ReplicationScope', name: 'ReplicationScope')
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#RequestId', name: 'RequestId', traits: {"smithy.api#pattern" => "^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$"})
    ResetUserPasswordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ResetUserPasswordRequest', name: 'ResetUserPasswordRequest')
    ResetUserPasswordResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ResetUserPasswordResult', name: 'ResetUserPasswordResult')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#ResourceId', name: 'ResourceId', traits: {"smithy.api#pattern" => "^[d]-[0-9a-f]{10}$"})
    RestoreFromSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RestoreFromSnapshotRequest', name: 'RestoreFromSnapshotRequest')
    RestoreFromSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#RestoreFromSnapshotResult', name: 'RestoreFromSnapshotResult')
    SID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SID', name: 'SID', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    SchemaExtensionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SchemaExtensionId', name: 'SchemaExtensionId', traits: {"smithy.api#pattern" => "^e-[0-9a-f]{10}$"})
    SchemaExtensionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#SchemaExtensionInfo', name: 'SchemaExtensionInfo')
    SchemaExtensionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#SchemaExtensionStatus', name: 'SchemaExtensionStatus')
    SchemaExtensionStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SchemaExtensionStatusReason', name: 'SchemaExtensionStatusReason')
    SchemaExtensionsInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SchemaExtensionsInfo', name: 'SchemaExtensionsInfo')
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SecretArn', name: 'SecretArn', traits: {"smithy.api#pattern" => "^arn:aws:secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+-[a-zA-Z0-9]{6}$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SelectiveAuth = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#SelectiveAuth', name: 'SelectiveAuth')
    Server = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#Server', name: 'Server', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Servers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Servers', name: 'Servers')
    ServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server"})
    Setting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Setting', name: 'Setting')
    SettingEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SettingEntries', name: 'SettingEntries')
    SettingEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#SettingEntry', name: 'SettingEntry')
    Settings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Settings', name: 'Settings')
    ShareDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ShareDirectoryRequest', name: 'ShareDirectoryRequest')
    ShareDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ShareDirectoryResult', name: 'ShareDirectoryResult')
    ShareLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ShareLimitExceededException', name: 'ShareLimitExceededException', traits: {"smithy.api#error" => "client"})
    ShareMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#ShareMethod', name: 'ShareMethod')
    ShareStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#ShareStatus', name: 'ShareStatus')
    ShareTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#ShareTarget', name: 'ShareTarget')
    SharedDirectories = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SharedDirectories', name: 'SharedDirectories')
    SharedDirectory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#SharedDirectory', name: 'SharedDirectory')
    Snapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Snapshot', name: 'Snapshot')
    SnapshotId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#pattern" => "^s-[0-9a-f]{10}$"})
    SnapshotIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SnapshotIds', name: 'SnapshotIds')
    SnapshotLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#SnapshotLimitExceededException', name: 'SnapshotLimitExceededException', traits: {"smithy.api#error" => "client"})
    SnapshotLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#SnapshotLimits', name: 'SnapshotLimits')
    SnapshotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SnapshotName', name: 'SnapshotName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    SnapshotStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#SnapshotStatus', name: 'SnapshotStatus')
    SnapshotType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#SnapshotType', name: 'SnapshotType')
    Snapshots = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Snapshots', name: 'Snapshots')
    SsoEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#SsoEnabled', name: 'SsoEnabled', traits: {"smithy.api#default" => false})
    StageReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#StageReason', name: 'StageReason')
    StartADAssessmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#StartADAssessmentRequest', name: 'StartADAssessmentRequest')
    StartADAssessmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#StartADAssessmentResult', name: 'StartADAssessmentResult')
    StartDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#StartDateTime', name: 'StartDateTime')
    StartSchemaExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#StartSchemaExtensionRequest', name: 'StartSchemaExtensionRequest')
    StartSchemaExtensionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#StartSchemaExtensionResult', name: 'StartSchemaExtensionResult')
    StartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#StartTime', name: 'StartTime')
    StateLastUpdatedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#StateLastUpdatedDateTime', name: 'StateLastUpdatedDateTime')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#SubnetIds', name: 'SubnetIds')
    SubscriptionCreatedDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.directoryservice#SubscriptionCreatedDateTime', name: 'SubscriptionCreatedDateTime')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#TagKeys', name: 'TagKeys')
    TagLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#TagLimitExceededException', name: 'TagLimitExceededException', traits: {"smithy.api#error" => "client"})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Tags', name: 'Tags')
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#TargetType', name: 'TargetType')
    TopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TopicArn', name: 'TopicArn')
    TopicName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TopicName', name: 'TopicName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    TopicNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#TopicNames', name: 'TopicNames')
    TopicStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#TopicStatus', name: 'TopicStatus')
    Trust = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#Trust', name: 'Trust')
    TrustDirection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#TrustDirection', name: 'TrustDirection')
    TrustId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TrustId', name: 'TrustId', traits: {"smithy.api#pattern" => "^t-[0-9a-f]{10}$"})
    TrustIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#TrustIds', name: 'TrustIds')
    TrustPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TrustPassword', name: 'TrustPassword', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(\\p{LD}|\\p{Punct}| )+$", "smithy.api#sensitive" => {}})
    TrustState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#TrustState', name: 'TrustState')
    TrustStateReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#TrustStateReason', name: 'TrustStateReason')
    TrustType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#TrustType', name: 'TrustType')
    Trusts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#Trusts', name: 'Trusts')
    UnshareDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UnshareDirectoryRequest', name: 'UnshareDirectoryRequest')
    UnshareDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UnshareDirectoryResult', name: 'UnshareDirectoryResult')
    UnshareTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UnshareTarget', name: 'UnshareTarget')
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client"})
    UnsupportedSettingsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UnsupportedSettingsException', name: 'UnsupportedSettingsException', traits: {"smithy.api#error" => "client"})
    UpdateActivities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservice#UpdateActivities', name: 'UpdateActivities')
    UpdateConditionalForwarderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateConditionalForwarderRequest', name: 'UpdateConditionalForwarderRequest')
    UpdateConditionalForwarderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateConditionalForwarderResult', name: 'UpdateConditionalForwarderResult')
    UpdateDirectorySetupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateDirectorySetupRequest', name: 'UpdateDirectorySetupRequest')
    UpdateDirectorySetupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateDirectorySetupResult', name: 'UpdateDirectorySetupResult')
    UpdateHybridADRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateHybridADRequest', name: 'UpdateHybridADRequest')
    UpdateHybridADResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateHybridADResult', name: 'UpdateHybridADResult')
    UpdateInfoEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateInfoEntry', name: 'UpdateInfoEntry')
    UpdateNumberOfDomainControllersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateNumberOfDomainControllersRequest', name: 'UpdateNumberOfDomainControllersRequest')
    UpdateNumberOfDomainControllersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateNumberOfDomainControllersResult', name: 'UpdateNumberOfDomainControllersResult')
    UpdateRadiusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateRadiusRequest', name: 'UpdateRadiusRequest')
    UpdateRadiusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateRadiusResult', name: 'UpdateRadiusResult')
    UpdateSecurityGroupForDirectoryControllers = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#UpdateSecurityGroupForDirectoryControllers', name: 'UpdateSecurityGroupForDirectoryControllers', traits: {"smithy.api#default" => false})
    UpdateSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateSettingsRequest', name: 'UpdateSettingsRequest')
    UpdateSettingsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateSettingsResult', name: 'UpdateSettingsResult')
    UpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#UpdateStatus', name: 'UpdateStatus')
    UpdateStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#UpdateStatusReason', name: 'UpdateStatusReason')
    UpdateTrustRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateTrustRequest', name: 'UpdateTrustRequest')
    UpdateTrustResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateTrustResult', name: 'UpdateTrustResult')
    UpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservice#UpdateType', name: 'UpdateType')
    UpdateValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UpdateValue', name: 'UpdateValue')
    UseSameUsername = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservice#UseSameUsername', name: 'UseSameUsername', traits: {"smithy.api#default" => false})
    UserDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#UserDoesNotExistException', name: 'UserDoesNotExistException', traits: {"smithy.api#error" => "client"})
    UserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    UserPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#UserPassword', name: 'UserPassword', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#sensitive" => {}})
    VerifyTrustRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#VerifyTrustRequest', name: 'VerifyTrustRequest')
    VerifyTrustResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservice#VerifyTrustResult', name: 'VerifyTrustResult')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservice#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"})

    ADAssessmentLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ADAssessmentLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    ADAssessmentLimitExceededException.type = Types::ADAssessmentLimitExceededException
    AcceptSharedDirectoryRequest.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the shared directory in the directory consumer account. This identifier is\n      different for each directory owner account. </p>", "smithy.api#required" => {}}))
    AcceptSharedDirectoryRequest.type = Types::AcceptSharedDirectoryRequest
    AcceptSharedDirectoryResult.add_member(:shared_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedDirectory, location_name: 'SharedDirectory', traits: {"smithy.api#documentation" => "<p>The shared directory in the directory consumer account.</p>"}))
    AcceptSharedDirectoryResult.type = Types::AcceptSharedDirectoryResult
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddIpRoutesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory to which to add the address block.</p>", "smithy.api#required" => {}}))
    AddIpRoutesRequest.add_member(:ip_routes, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRoutes, location_name: 'IpRoutes', traits: {"smithy.api#documentation" => "<p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP\n         address block of the DNS server used for your self-managed domain.</p>", "smithy.api#required" => {}}))
    AddIpRoutesRequest.add_member(:update_security_group_for_directory_controllers, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityGroupForDirectoryControllers, location_name: 'UpdateSecurityGroupForDirectoryControllers', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, updates the inbound and outbound rules of the security group that has\n         the description: \"Amazon Web Services created security group for <i>directory ID</i>\n         directory controllers.\" Following are the new rules: </p>\n         <p>Inbound:</p>\n         <ul>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:\n               Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:\n               Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: LDAP, Protocol: TCP, Range: 389, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n            <li>\n               <p>Type: All ICMP, Protocol: All, Range: N/A, Source: Managed Microsoft AD VPC IPv4 CIDR</p>\n            </li>\n         </ul>\n         <p></p>\n         <p>Outbound:</p>\n         <ul>\n            <li>\n               <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p>\n            </li>\n         </ul>\n         <p>These security rules impact an internal network interface that is not exposed\n         publicly.</p>"}))
    AddIpRoutesRequest.type = Types::AddIpRoutesRequest
    AddIpRoutesResult.type = Types::AddIpRoutesResult
    AddRegionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory to which you want to add Region replication.</p>", "smithy.api#required" => {}}))
    AddRegionRequest.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#documentation" => "<p>The name of the Region where you want to add domain controllers for replication. For\n      example, <code>us-east-1</code>.</p>", "smithy.api#required" => {}}))
    AddRegionRequest.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: 'VPCSettings', traits: {"smithy.api#required" => {}}))
    AddRegionRequest.type = Types::AddRegionRequest
    AddRegionResult.type = Types::AddRegionResult
    AddTagsToResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) for the directory to which to add the tag.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the directory.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceRequest.type = Types::AddTagsToResourceRequest
    AddTagsToResourceResult.type = Types::AddTagsToResourceResult
    AdditionalRegions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName)
    Assessment.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the directory assessment.</p>"}))
    Assessment.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory associated with this assessment.</p>"}))
    Assessment.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the Active Directory domain being\n            assessed.</p>"}))
    Assessment.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the assessment was initiated.</p>"}))
    Assessment.add_member(:last_update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateDateTime, location_name: 'LastUpdateDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the assessment status was last updated.</p>"}))
    Assessment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the assessment. Valid values include <code>SUCCESS</code>,\n                <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>"}))
    Assessment.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>A detailed status code providing additional information about the assessment\n            state.</p>"}))
    Assessment.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>A human-readable description of the current assessment status, including any error\n            details or progress information.</p>"}))
    Assessment.add_member(:customer_dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerDnsIps, location_name: 'CustomerDnsIps', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers or domain controllers in your self-managed AD\n            environment.</p>"}))
    Assessment.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>Contains Amazon VPC information for the <code>StartADAssessment</code> operation. </p>"}))
    Assessment.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet identifiers in the Amazon VPC in which the hybrid directory is\n            created.</p>"}))
    Assessment.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The security groups identifiers attached to the network interfaces.</p>"}))
    Assessment.add_member(:self_managed_instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceIds, location_name: 'SelfManagedInstanceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the self-managed AD instances used to perform the\n            assessment.</p>"}))
    Assessment.add_member(:report_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportType, location_name: 'ReportType', traits: {"smithy.api#documentation" => "<p>The type of assessment report generated. Valid values are <code>CUSTOMER</code> and\n                <code>SYSTEM</code>.</p>"}))
    Assessment.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the assessment framework used to evaluate your self-managed AD\n            environment.</p>"}))
    Assessment.type = Types::Assessment
    AssessmentConfiguration.add_member(:customer_dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerDnsIps, location_name: 'CustomerDnsIps', traits: {"smithy.api#documentation" => "<p>A list of IP addresses for the DNS servers or domain controllers in your self-managed\n            AD that are tested during the assessment.</p>", "smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the self-managed AD domain to assess.</p>", "smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: 'VpcSettings', traits: {"smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceIds, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the self-managed instances with SSM that are used to perform\n            connectivity and validation tests.</p>", "smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>By default, the service attaches a security group to allow network access to the\n            self-managed nodes in your Amazon VPC. You can optionally supply your own security group that\n            allows network traffic to and from your self-managed domain controllers outside of your\n            Amazon VPC. </p>"}))
    AssessmentConfiguration.type = Types::AssessmentConfiguration
    AssessmentInstanceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceId)
    AssessmentReport.add_member(:domain_controller_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddr, location_name: 'DomainControllerIp', traits: {"smithy.api#documentation" => "<p>The IP address of the domain controller that was tested during the assessment.</p>"}))
    AssessmentReport.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidations, location_name: 'Validations', traits: {"smithy.api#documentation" => "<p>A list of validation results for different test categories performed against this\n            domain controller.</p>"}))
    AssessmentReport.type = Types::AssessmentReport
    AssessmentReports.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReport)
    AssessmentSummary.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the directory assessment.</p>"}))
    AssessmentSummary.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory associated with this assessment.</p>"}))
    AssessmentSummary.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the Active Directory domain being\n            assessed.</p>"}))
    AssessmentSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the assessment was initiated.</p>"}))
    AssessmentSummary.add_member(:last_update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateDateTime, location_name: 'LastUpdateDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the assessment status was last updated.</p>"}))
    AssessmentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the assessment. Valid values include <code>SUCCESS</code>,\n                <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>"}))
    AssessmentSummary.add_member(:customer_dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerDnsIps, location_name: 'CustomerDnsIps', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers or domain controllers in your self-managed AD\n            environment.</p>"}))
    AssessmentSummary.add_member(:report_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReportType, location_name: 'ReportType', traits: {"smithy.api#documentation" => "<p>The type of assessment report generated. Valid values include <code>CUSTOMER</code>\n            and <code>SYSTEM</code>.</p>"}))
    AssessmentSummary.type = Types::AssessmentSummary
    AssessmentValidation.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The category of the validation test.</p>"}))
    AssessmentValidation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the specific validation test performed within the category.</p>"}))
    AssessmentValidation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The result status of the validation test. Valid values include <code>SUCCESS</code>,\n                <code>FAILED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>"}))
    AssessmentValidation.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>A detailed status code providing additional information about the validation\n            result.</p>"}))
    AssessmentValidation.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>A human-readable description of the validation result, including any error details or\n            recommendations.</p>"}))
    AssessmentValidation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationTimeStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the validation test was started.</p>"}))
    AssessmentValidation.add_member(:last_update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidationTimeStamp, location_name: 'LastUpdateDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the validation test was completed or last updated.</p>"}))
    AssessmentValidation.type = Types::AssessmentValidation
    AssessmentValidations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentValidation)
    Assessments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentSummary)
    Attribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>"}))
    Attribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>"}))
    Attribute.type = Types::Attribute
    Attributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AuthenticationFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The textual message for the exception.</p>"}))
    AuthenticationFailedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier of the request that caused the exception.</p>"}))
    AuthenticationFailedException.type = Types::AuthenticationFailedException
    AvailabilityZones.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    CancelSchemaExtensionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory whose schema extension will be canceled.</p>", "smithy.api#required" => {}}))
    CancelSchemaExtensionRequest.add_member(:schema_extension_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionId, location_name: 'SchemaExtensionId', traits: {"smithy.api#documentation" => "<p>The identifier of the schema extension that will be canceled.</p>", "smithy.api#required" => {}}))
    CancelSchemaExtensionRequest.type = Types::CancelSchemaExtensionRequest
    CancelSchemaExtensionResult.type = Types::CancelSchemaExtensionResult
    Certificate.add_member(:certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the certificate.</p>"}))
    Certificate.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the certificate.</p>"}))
    Certificate.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>Describes a state change for the certificate.</p>"}))
    Certificate.add_member(:common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateCN, location_name: 'CommonName', traits: {"smithy.api#documentation" => "<p>The common name for the certificate.</p>"}))
    Certificate.add_member(:registered_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateRegisteredDateTime, location_name: 'RegisteredDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the certificate was registered.</p>"}))
    Certificate.add_member(:expiry_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateExpiryDateTime, location_name: 'ExpiryDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the certificate will expire.</p>"}))
    Certificate.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The function that the registered certificate performs. Valid values include\n        <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is\n        <code>ClientLDAPS</code>.</p>"}))
    Certificate.add_member(:client_cert_auth_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCertAuthSettings, location_name: 'ClientCertAuthSettings', traits: {"smithy.api#documentation" => "<p>A <code>ClientCertAuthSettings</code> object that contains client certificate\n      authentication settings.</p>"}))
    Certificate.type = Types::Certificate
    CertificateAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CertificateAlreadyExistsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    CertificateAlreadyExistsException.type = Types::CertificateAlreadyExistsException
    CertificateDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CertificateDoesNotExistException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    CertificateDoesNotExistException.type = Types::CertificateDoesNotExistException
    CertificateInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CertificateInUseException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    CertificateInUseException.type = Types::CertificateInUseException
    CertificateInfo.add_member(:certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the certificate.</p>"}))
    CertificateInfo.add_member(:common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateCN, location_name: 'CommonName', traits: {"smithy.api#documentation" => "<p>The common name for the certificate.</p>"}))
    CertificateInfo.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the certificate.</p>"}))
    CertificateInfo.add_member(:expiry_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateExpiryDateTime, location_name: 'ExpiryDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the certificate will expire.</p>"}))
    CertificateInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The function that the registered certificate performs. Valid values include\n        <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is\n        <code>ClientLDAPS</code>.</p>"}))
    CertificateInfo.type = Types::CertificateInfo
    CertificateLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    CertificateLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    CertificateLimitExceededException.type = Types::CertificateLimitExceededException
    CertificateState.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "Registering"}))
    CertificateState.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "Registered"}))
    CertificateState.add_member(:register_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTER_FAILED', traits: {"smithy.api#enumValue" => "RegisterFailed"}))
    CertificateState.add_member(:deregistering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERING', traits: {"smithy.api#enumValue" => "Deregistering"}))
    CertificateState.add_member(:deregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERED', traits: {"smithy.api#enumValue" => "Deregistered"}))
    CertificateState.add_member(:deregister_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTER_FAILED', traits: {"smithy.api#enumValue" => "DeregisterFailed"}))
    CertificateType.add_member(:client_cert_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_CERT_AUTH', traits: {"smithy.api#enumValue" => "ClientCertAuth"}))
    CertificateType.add_member(:client_ldaps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_LDAPS', traits: {"smithy.api#enumValue" => "ClientLDAPS"}))
    CertificatesInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateInfo)
    CidrIps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CidrIp)
    ClientAuthenticationSettingInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of client authentication for the specified directory. If no type is specified, a\n      list of all client authentication types that are supported for the directory is retrieved.\n    </p>"}))
    ClientAuthenticationSettingInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Whether the client authentication type is enabled or disabled for the specified\n      directory.</p>"}))
    ClientAuthenticationSettingInfo.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the status of the client authentication type was last\n      updated.</p>"}))
    ClientAuthenticationSettingInfo.type = Types::ClientAuthenticationSettingInfo
    ClientAuthenticationSettingsInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationSettingInfo)
    ClientAuthenticationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    ClientAuthenticationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    ClientAuthenticationType.add_member(:smart_card, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD', traits: {"smithy.api#enumValue" => "SmartCard"}))
    ClientAuthenticationType.add_member(:smart_card_or_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD_OR_PASSWORD', traits: {"smithy.api#enumValue" => "SmartCardOrPassword"}))
    ClientCertAuthSettings.add_member(:ocsp_url, Smithy::Schema::Shapes::ShapeRef.new(shape: OCSPUrl, location_name: 'OCSPUrl', traits: {"smithy.api#documentation" => "<p>Specifies the URL of the default OCSP server used to check for revocation status. A\n      secondary value to any OCSP address found in the AIA extension of the user certificate.</p>"}))
    ClientCertAuthSettings.type = Types::ClientCertAuthSettings
    ClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ClientException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    ClientException.type = Types::ClientException
    Computer.add_member(:computer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'ComputerId', traits: {"smithy.api#documentation" => "<p>The identifier of the computer.</p>"}))
    Computer.add_member(:computer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputerName, location_name: 'ComputerName', traits: {"smithy.api#documentation" => "<p>The computer name.</p>"}))
    Computer.add_member(:computer_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'ComputerAttributes', traits: {"smithy.api#documentation" => "<p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the\n            computer account.</p>"}))
    Computer.type = Types::Computer
    ConditionalForwarder.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the remote domains pointed to by the\n      conditional forwarder.</p>"}))
    ConditionalForwarder.add_member(:dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'DnsIpAddrs', traits: {"smithy.api#documentation" => "<p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the\n      IP address of the DNS server that your conditional forwarder points to.</p>"}))
    ConditionalForwarder.add_member(:replication_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationScope, location_name: 'ReplicationScope', traits: {"smithy.api#documentation" => "<p>The replication scope of the conditional forwarder. The only allowed value is\n        <code>Domain</code>, which will replicate the conditional forwarder to all of the domain\n      controllers for your Amazon Web Services directory.</p>"}))
    ConditionalForwarder.type = Types::ConditionalForwarder
    ConditionalForwarders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalForwarder)
    ConnectDirectoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The fully qualified name of your self-managed directory, such as\n        <code>corp.example.com</code>.</p>", "smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:short_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: 'ShortName', traits: {"smithy.api#documentation" => "<p>The NetBIOS name of your self-managed directory, such as <code>CORP</code>.</p>"}))
    ConnectDirectoryRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password for your self-managed user account.</p>", "smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the directory.</p>"}))
    ConnectDirectoryRequest.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectorySize, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The size of the directory.</p>", "smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:connect_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConnectSettings, location_name: 'ConnectSettings', traits: {"smithy.api#documentation" => "<p>A <a>DirectoryConnectSettings</a> object that contains additional information\n      for the operation.</p>", "smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to AD Connector.</p>"}))
    ConnectDirectoryRequest.type = Types::ConnectDirectoryRequest
    ConnectDirectoryResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the new directory.</p>"}))
    ConnectDirectoryResult.type = Types::ConnectDirectoryResult
    CreateAliasRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to create the alias.</p>", "smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The requested alias.</p>\n         <p>The alias must be unique amongst all aliases in Amazon Web Services. This operation throws an\n            <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>", "smithy.api#required" => {}}))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateAliasResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    CreateAliasResult.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias for the directory.</p>"}))
    CreateAliasResult.type = Types::CreateAliasResult
    CreateComputerRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory in which to create the computer account.</p>", "smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:computer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputerName, location_name: 'ComputerName', traits: {"smithy.api#documentation" => "<p>The name of the computer account.</p>", "smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputerPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>", "smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:organizational_unit_distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDN, location_name: 'OrganizationalUnitDistinguishedName', traits: {"smithy.api#documentation" => "<p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>"}))
    CreateComputerRequest.add_member(:computer_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'ComputerAttributes', traits: {"smithy.api#documentation" => "<p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the\n            computer account.</p>"}))
    CreateComputerRequest.type = Types::CreateComputerRequest
    CreateComputerResult.add_member(:computer, Smithy::Schema::Shapes::ShapeRef.new(shape: Computer, location_name: 'Computer', traits: {"smithy.api#documentation" => "<p>A <a>Computer</a> object that represents the computer account.</p>"}))
    CreateComputerResult.type = Types::CreateComputerResult
    CreateConditionalForwarderRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory ID of the Amazon Web Services directory for which you are creating the conditional\n      forwarder.</p>", "smithy.api#required" => {}}))
    CreateConditionalForwarderRequest.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up\n      a trust relationship.</p>", "smithy.api#required" => {}}))
    CreateConditionalForwarderRequest.add_member(:dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'DnsIpAddrs', traits: {"smithy.api#documentation" => "<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>", "smithy.api#required" => {}}))
    CreateConditionalForwarderRequest.type = Types::CreateConditionalForwarderRequest
    CreateConditionalForwarderResult.type = Types::CreateConditionalForwarderResult
    CreateDirectoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>", "smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:short_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: 'ShortName', traits: {"smithy.api#documentation" => "<p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>"}))
    CreateDirectoryRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password for the directory administrator. The directory creation process creates a\n      directory administrator account with the user name <code>Administrator</code> and this\n      password.</p>\n         <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>\n         <p>The regex pattern for this string is made up of the following conditions:</p>\n         <ul>\n            <li>\n               <p>Length (?=^.{8,64}$) – Must be between 8 and 64 characters</p>\n            </li>\n         </ul>\n         <p>AND any 3 of the following password complexity rules required by Active Directory:</p>\n         <ul>\n            <li>\n               <p>Numbers and upper case and lowercase (?=.*\\d)(?=.*[A-Z])(?=.*[a-z])</p>\n            </li>\n            <li>\n               <p>Numbers and special characters and lower case\n          (?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])</p>\n            </li>\n            <li>\n               <p>Special characters and upper case and lower case\n          (?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])</p>\n            </li>\n            <li>\n               <p>Numbers and upper case and special characters\n          (?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s])</p>\n            </li>\n         </ul>\n         <p>For additional information about how Active Directory passwords are enforced, see <a href=\"https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements\">Password must meet complexity requirements</a> on the Microsoft website.</p>", "smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the directory.</p>"}))
    CreateDirectoryRequest.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectorySize, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The size of the directory.</p>", "smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: 'VpcSettings', traits: {"smithy.api#documentation" => "<p>A <a>DirectoryVpcSettings</a> object that contains additional information for\n      the operation.</p>"}))
    CreateDirectoryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the Simple AD directory.</p>"}))
    CreateDirectoryRequest.type = Types::CreateDirectoryRequest
    CreateDirectoryResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory that was created.</p>"}))
    CreateDirectoryResult.type = Types::CreateDirectoryResult
    CreateHybridADRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the\n            credentials for the service account used to join hybrid domain controllers to your\n            self-managed AD domain. This secret is used once and not stored.</p>\n         <p>The secret must contain key-value pairs with keys matching\n                <code>customerAdAdminDomainUsername</code> and\n                <code>customerAdAdminDomainPassword</code>. For example:\n                <code>{\"customerAdAdminDomainUsername\":\"carlos_salazar\",\"customerAdAdminDomainPassword\":\"ExamplePassword123!\"}</code>.</p>", "smithy.api#required" => {}}))
    CreateHybridADRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the successful directory assessment that validates your\n            self-managed AD environment. You must have a successful directory assessment before you\n            create a hybrid directory.</p>", "smithy.api#required" => {}}))
    CreateHybridADRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the directory. Each tag consists of a key and value pair.\n            You can specify multiple tags as a list.</p>"}))
    CreateHybridADRequest.type = Types::CreateHybridADRequest
    CreateHybridADResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the newly created hybrid directory.</p>"}))
    CreateHybridADResult.type = Types::CreateHybridADResult
    CreateLogSubscriptionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory to which you want to subscribe and receive real-time logs to\n      your specified CloudWatch log group.</p>", "smithy.api#required" => {}}))
    CreateLogSubscriptionRequest.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch log group where the real-time domain controller logs are\n      forwarded.</p>", "smithy.api#required" => {}}))
    CreateLogSubscriptionRequest.type = Types::CreateLogSubscriptionRequest
    CreateLogSubscriptionResult.type = Types::CreateLogSubscriptionResult
    CreateMicrosoftADRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name for the Managed Microsoft AD directory, such as\n        <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need\n      to be publicly resolvable.</p>", "smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:short_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: 'ShortName', traits: {"smithy.api#documentation" => "<p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a\n      NetBIOS name, it will default to the first part of your directory DNS. For example,\n        <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>"}))
    CreateMicrosoftADRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password for the default administrative user named <code>Admin</code>.</p>\n         <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>", "smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the directory. This label will appear on the Amazon Web Services console\n        <code>Directory Details</code> page after the directory is created.</p>"}))
    CreateMicrosoftADRequest.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: 'VpcSettings', traits: {"smithy.api#documentation" => "<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>", "smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:edition, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryEdition, location_name: 'Edition', traits: {"smithy.api#documentation" => "<p>Managed Microsoft AD is available in two editions: <code>Standard</code> and\n        <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>"}))
    CreateMicrosoftADRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the Managed Microsoft AD directory.</p>"}))
    CreateMicrosoftADRequest.type = Types::CreateMicrosoftADRequest
    CreateMicrosoftADResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory that was created.</p>"}))
    CreateMicrosoftADResult.type = Types::CreateMicrosoftADResult
    CreateSnapshotRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory of which to take a snapshot.</p>", "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The descriptive name to apply to the snapshot.</p>"}))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResult.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot that was created.</p>"}))
    CreateSnapshotResult.type = Types::CreateSnapshotResult
    CreateTrustRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID of the Managed Microsoft AD directory for which to establish the trust\n      relationship.</p>", "smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the\n      trust relationship.</p>", "smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_password, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustPassword, location_name: 'TrustPassword', traits: {"smithy.api#documentation" => "<p>The trust password. The trust password must be the same password that was used when creating the trust\n      relationship on the external domain.</p>", "smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustDirection, location_name: 'TrustDirection', traits: {"smithy.api#documentation" => "<p>The direction of the trust relationship.</p>", "smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustType, location_name: 'TrustType', traits: {"smithy.api#documentation" => "<p>The trust relationship type. <code>Forest</code> is the default.</p>"}))
    CreateTrustRequest.add_member(:conditional_forwarder_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'ConditionalForwarderIpAddrs', traits: {"smithy.api#documentation" => "<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>"}))
    CreateTrustRequest.add_member(:selective_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectiveAuth, location_name: 'SelectiveAuth', traits: {"smithy.api#documentation" => "<p>Optional parameter to enable selective authentication for the trust.</p>"}))
    CreateTrustRequest.type = Types::CreateTrustRequest
    CreateTrustResult.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the trust relationship that was created.</p>"}))
    CreateTrustResult.type = Types::CreateTrustResult
    CustomerDnsIps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddr)
    DataAccessStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    DataAccessStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "Disabling"}))
    DataAccessStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    DataAccessStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "Enabling"}))
    DataAccessStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    DeleteADAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the directory assessment to delete.</p>", "smithy.api#required" => {}}))
    DeleteADAssessmentRequest.type = Types::DeleteADAssessmentRequest
    DeleteADAssessmentResult.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the deleted directory assessment.</p>"}))
    DeleteADAssessmentResult.type = Types::DeleteADAssessmentResult
    DeleteConditionalForwarderRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory ID for which you are deleting the conditional forwarder.</p>", "smithy.api#required" => {}}))
    DeleteConditionalForwarderRequest.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting\n      the conditional forwarder.</p>", "smithy.api#required" => {}}))
    DeleteConditionalForwarderRequest.type = Types::DeleteConditionalForwarderRequest
    DeleteConditionalForwarderResult.type = Types::DeleteConditionalForwarderResult
    DeleteDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory to delete.</p>", "smithy.api#required" => {}}))
    DeleteDirectoryRequest.type = Types::DeleteDirectoryRequest
    DeleteDirectoryResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>"}))
    DeleteDirectoryResult.type = Types::DeleteDirectoryResult
    DeleteLogSubscriptionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory whose log subscription you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteLogSubscriptionRequest.type = Types::DeleteLogSubscriptionRequest
    DeleteLogSubscriptionResult.type = Types::DeleteLogSubscriptionResult
    DeleteSnapshotRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory snapshot to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResult.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory snapshot that was deleted.</p>"}))
    DeleteSnapshotResult.type = Types::DeleteSnapshotResult
    DeleteTrustRequest.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>The Trust ID of the trust relationship to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteTrustRequest.add_member(:delete_associated_conditional_forwarder, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssociatedConditionalForwarder, location_name: 'DeleteAssociatedConditionalForwarder', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>"}))
    DeleteTrustRequest.type = Types::DeleteTrustRequest
    DeleteTrustResult.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>The Trust ID of the trust relationship that was deleted.</p>"}))
    DeleteTrustResult.type = Types::DeleteTrustResult
    DeregisterCertificateRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DeregisterCertificateRequest.add_member(:certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the certificate.</p>", "smithy.api#required" => {}}))
    DeregisterCertificateRequest.type = Types::DeregisterCertificateRequest
    DeregisterCertificateResult.type = Types::DeregisterCertificateResult
    DeregisterEventTopicRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID to remove as a publisher. This directory will no longer send messages\n      to the specified Amazon SNS topic.</p>", "smithy.api#required" => {}}))
    DeregisterEventTopicRequest.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon SNS topic from which to remove the directory as a\n      publisher.</p>", "smithy.api#required" => {}}))
    DeregisterEventTopicRequest.type = Types::DeregisterEventTopicRequest
    DeregisterEventTopicResult.type = Types::DeregisterEventTopicResult
    DescribeADAssessmentRequest.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory assessment to describe.</p>", "smithy.api#required" => {}}))
    DescribeADAssessmentRequest.type = Types::DescribeADAssessmentRequest
    DescribeADAssessmentResult.add_member(:assessment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessment, location_name: 'Assessment', traits: {"smithy.api#documentation" => "<p>Detailed information about the self-managed instance settings (IDs and DNS\n            IPs).</p>"}))
    DescribeADAssessmentResult.add_member(:assessment_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentReports, location_name: 'AssessmentReports', traits: {"smithy.api#documentation" => "<p>A list of assessment reports containing validation results for each domain controller\n            and test category. Each report includes specific validation details and outcomes.</p>"}))
    DescribeADAssessmentResult.type = Types::DescribeADAssessmentResult
    DescribeCertificateRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DescribeCertificateRequest.add_member(:certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the certificate.</p>", "smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResult.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>Information about the certificate, including registered date time, certificate state, the\n      reason for the state, expiration date time, and certificate common name.</p>"}))
    DescribeCertificateResult.type = Types::DescribeCertificateResult
    DescribeClientAuthenticationSettingsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to retrieve information.</p>", "smithy.api#required" => {}}))
    DescribeClientAuthenticationSettingsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of client authentication for which to retrieve information. If no type is\n      specified, a list of all client authentication types that are supported for the specified\n      directory is retrieved.</p>"}))
    DescribeClientAuthenticationSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <i>DescribeClientAuthenticationSettingsResult.NextToken</i> value from a\n      previous call to <a>DescribeClientAuthenticationSettings</a>. Pass null if this is\n      the first call.</p>"}))
    DescribeClientAuthenticationSettingsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return. If this value is zero, the maximum number of items\n      is specified by the limitations of the operation. </p>"}))
    DescribeClientAuthenticationSettingsRequest.type = Types::DescribeClientAuthenticationSettingsRequest
    DescribeClientAuthenticationSettingsResult.add_member(:client_authentication_settings_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationSettingsInfo, location_name: 'ClientAuthenticationSettingsInfo', traits: {"smithy.api#documentation" => "<p>Information about the type of client authentication for the specified directory. The\n      following information is retrieved: The date and time when the status of the client\n      authentication type was last updated, whether the client authentication type is enabled or\n      disabled, and the type of client authentication.</p>"}))
    DescribeClientAuthenticationSettingsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used to retrieve the client authentication settings if the number of\n      setting types exceeds page limit and there is another page.</p>"}))
    DescribeClientAuthenticationSettingsResult.type = Types::DescribeClientAuthenticationSettingsResult
    DescribeConditionalForwardersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory ID for which to get the list of associated conditional\n      forwarders.</p>", "smithy.api#required" => {}}))
    DescribeConditionalForwardersRequest.add_member(:remote_domain_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainNames, location_name: 'RemoteDomainNames', traits: {"smithy.api#documentation" => "<p>The fully qualified domain names (FQDN) of the remote domains for which to get the list\n      of associated conditional forwarders. If this member is null, all conditional forwarders are\n      returned.</p>"}))
    DescribeConditionalForwardersRequest.type = Types::DescribeConditionalForwardersRequest
    DescribeConditionalForwardersResult.add_member(:conditional_forwarders, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalForwarders, location_name: 'ConditionalForwarders', traits: {"smithy.api#documentation" => "<p>The list of conditional forwarders that have been created.</p>"}))
    DescribeConditionalForwardersResult.type = Types::DescribeConditionalForwardersResult
    DescribeDirectoriesRequest.add_member(:directory_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryIds, location_name: 'DirectoryIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers of the directories for which to obtain the information. If this\n      member is null, all directories that belong to the current account are returned.</p>\n         <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>"}))
    DescribeDirectoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>"}))
    DescribeDirectoriesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return. If this value is zero, the maximum number of items\n      is specified by the limitations of the operation.</p>"}))
    DescribeDirectoriesRequest.type = Types::DescribeDirectoriesRequest
    DescribeDirectoriesResult.add_member(:directory_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDescriptions, location_name: 'DirectoryDescriptions', traits: {"smithy.api#documentation" => "<p>The list of available <a>DirectoryDescription</a> objects that were retrieved.</p>\n         <p>It is possible that this list contains less than the number of items specified in the\n        <code>Limit</code> member of the request. This occurs if there are less than the requested\n      number of items left to retrieve, or if the limitations of the operation have been\n      exceeded.</p>"}))
    DescribeDirectoriesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the <code>NextToken</code>\n      parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next\n      set of items.</p>"}))
    DescribeDirectoriesResult.type = Types::DescribeDirectoriesResult
    DescribeDirectoryDataAccessRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>", "smithy.api#required" => {}}))
    DescribeDirectoryDataAccessRequest.type = Types::DescribeDirectoryDataAccessRequest
    DescribeDirectoryDataAccessResult.add_member(:data_access_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessStatus, location_name: 'DataAccessStatus', traits: {"smithy.api#documentation" => "<p>The current status of data access through the Directory Service Data API.</p>"}))
    DescribeDirectoryDataAccessResult.type = Types::DescribeDirectoryDataAccessResult
    DescribeDomainControllersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory for which to retrieve the domain controller\n      information.</p>", "smithy.api#required" => {}}))
    DescribeDomainControllersRequest.add_member(:domain_controller_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerIds, location_name: 'DomainControllerIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers for the domain controllers whose information will be\n      provided.</p>"}))
    DescribeDomainControllersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call\n      to <a>DescribeDomainControllers</a>. Pass null if this is the first call.\n    </p>"}))
    DescribeDomainControllersRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeDomainControllersRequest.type = Types::DescribeDomainControllersRequest
    DescribeDomainControllersResult.add_member(:domain_controllers, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllers, location_name: 'DomainControllers', traits: {"smithy.api#documentation" => "<p>List of the <a>DomainController</a> objects that were retrieved.</p>"}))
    DescribeDomainControllersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the <code>NextToken</code>\n      parameter in a subsequent call to <a>DescribeDomainControllers</a> retrieve the\n      next set of items.</p>"}))
    DescribeDomainControllersResult.type = Types::DescribeDomainControllersResult
    DescribeEventTopicsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID for which to get the list of associated Amazon SNS topics. If this member\n      is null, associations for all Directory IDs are returned.</p>"}))
    DescribeEventTopicsRequest.add_member(:topic_names, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicNames, location_name: 'TopicNames', traits: {"smithy.api#documentation" => "<p>A list of Amazon SNS topic names for which to obtain the information. If this member is\n      null, all associations for the specified Directory ID are returned.</p>\n         <p>An empty list results in an <code>InvalidParameterException</code> being\n      thrown.</p>"}))
    DescribeEventTopicsRequest.type = Types::DescribeEventTopicsRequest
    DescribeEventTopicsResult.add_member(:event_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTopics, location_name: 'EventTopics', traits: {"smithy.api#documentation" => "<p>A list of Amazon SNS topic names that receive status messages from the specified Directory\n      ID.</p>"}))
    DescribeEventTopicsResult.type = Types::DescribeEventTopicsResult
    DescribeHybridADUpdateRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the hybrid directory for which to retrieve update\n            information.</p>", "smithy.api#required" => {}}))
    DescribeHybridADUpdateRequest.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p>The type of update activities to retrieve. Valid values include\n                <code>SelfManagedInstances</code> and\n            <code>HybridAdministratorAccount</code>.</p>"}))
    DescribeHybridADUpdateRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request to <a>DescribeHybridADUpdate</a>. Pass null if this is the first request.</p>"}))
    DescribeHybridADUpdateRequest.type = Types::DescribeHybridADUpdateRequest
    DescribeHybridADUpdateResult.add_member(:update_activities, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateActivities, location_name: 'UpdateActivities', traits: {"smithy.api#documentation" => "<p>Information about update activities for the hybrid directory, organized by update\n            type.</p>"}))
    DescribeHybridADUpdateResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the\n                <code>NextToken</code> parameter in a subsequent request to retrieve the next set of\n            items.</p>"}))
    DescribeHybridADUpdateResult.type = Types::DescribeHybridADUpdateResult
    DescribeLDAPSSettingsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DescribeLDAPSSettingsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is\n      supported.</p>"}))
    DescribeLDAPSSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The type of next token used for pagination.</p>"}))
    DescribeLDAPSSettingsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies the number of items that should be displayed on one page.</p>"}))
    DescribeLDAPSSettingsRequest.type = Types::DescribeLDAPSSettingsRequest
    DescribeLDAPSSettingsResult.add_member(:ldaps_settings_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSSettingsInfo, location_name: 'LDAPSSettingsInfo', traits: {"smithy.api#documentation" => "<p>Information about LDAP security for the specified directory, including status of\n      enablement, state last updated date time, and the reason for the state.</p>"}))
    DescribeLDAPSSettingsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used to retrieve the LDAPS settings if the number of setting types exceeds\n      page limit and there is another page.</p>"}))
    DescribeLDAPSSettingsResult.type = Types::DescribeLDAPSSettingsResult
    DescribeRegionsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DescribeRegionsRequest.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#documentation" => "<p>The name of the Region. For example, <code>us-east-1</code>.</p>"}))
    DescribeRegionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>DescribeRegionsResult.NextToken</code> value from a previous call to <a>DescribeRegions</a>. Pass null if this is the first call.</p>"}))
    DescribeRegionsRequest.type = Types::DescribeRegionsRequest
    DescribeRegionsResult.add_member(:regions_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsDescription, location_name: 'RegionsDescription', traits: {"smithy.api#documentation" => "<p>List of Region information related to the directory for each replicated Region.</p>"}))
    DescribeRegionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the <code>NextToken</code>\n      parameter in a subsequent call to <a>DescribeRegions</a> to retrieve the next set\n      of items.</p>"}))
    DescribeRegionsResult.type = Types::DescribeRegionsResult
    DescribeSettingsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to retrieve information.</p>", "smithy.api#required" => {}}))
    DescribeSettingsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the directory settings for which to retrieve information.</p>"}))
    DescribeSettingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>DescribeSettingsResult.NextToken</code> value from a previous call to <a>DescribeSettings</a>. Pass null if this is the first call.</p>"}))
    DescribeSettingsRequest.type = Types::DescribeSettingsRequest
    DescribeSettingsResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    DescribeSettingsResult.add_member(:setting_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingEntries, location_name: 'SettingEntries', traits: {"smithy.api#documentation" => "<p>The list of <a>SettingEntry</a> objects that were retrieved.</p>\n         <p>It is possible that this list contains less than the number of items specified in the\n        <code>Limit</code> member of the request. This occurs if there are less than the requested\n      number of items left to retrieve, or if the limitations of the operation have been\n      exceeded.</p>"}))
    DescribeSettingsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, token that indicates that more results are available. Pass this value for the\n        <code>NextToken</code> parameter in a subsequent call to <code>DescribeSettings</code> to\n      retrieve the next set of items. </p>"}))
    DescribeSettingsResult.type = Types::DescribeSettingsResult
    DescribeSharedDirectoriesRequest.add_member(:owner_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'OwnerDirectoryId', traits: {"smithy.api#documentation" => "<p>Returns the identifier of the directory in the directory owner account. </p>", "smithy.api#required" => {}}))
    DescribeSharedDirectoriesRequest.add_member(:shared_directory_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryIds, location_name: 'SharedDirectoryIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers of all shared directories in your account. </p>"}))
    DescribeSharedDirectoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to\n        <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>"}))
    DescribeSharedDirectoriesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The number of shared directories to return in the response object.</p>"}))
    DescribeSharedDirectoriesRequest.type = Types::DescribeSharedDirectoriesRequest
    DescribeSharedDirectoriesResult.add_member(:shared_directories, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedDirectories, location_name: 'SharedDirectories', traits: {"smithy.api#documentation" => "<p>A list of all shared directories in your account.</p>"}))
    DescribeSharedDirectoriesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, token that indicates that more results are available. Pass this value for the\n        <code>NextToken</code> parameter in a subsequent call to <a>DescribeSharedDirectories</a> to retrieve the next set of items.</p>"}))
    DescribeSharedDirectoriesResult.type = Types::DescribeSharedDirectoriesResult
    DescribeSnapshotsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to retrieve snapshot information.</p>"}))
    DescribeSnapshotsRequest.add_member(:snapshot_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIds, location_name: 'SnapshotIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers of the snapshots to obtain the information for. If this member is\n         null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i>\n         members.</p>"}))
    DescribeSnapshotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to\n            <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>"}))
    DescribeSnapshotsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of objects to return.</p>"}))
    DescribeSnapshotsRequest.type = Types::DescribeSnapshotsRequest
    DescribeSnapshotsResult.add_member(:snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshots, location_name: 'Snapshots', traits: {"smithy.api#documentation" => "<p>The list of <a>Snapshot</a> objects that were retrieved.</p>\n         <p>It is possible that this list contains less than the number of items specified in the\n            <i>Limit</i> member of the request. This occurs if there are less than the requested\n         number of items left to retrieve, or if the limitations of the operation have been\n         exceeded.</p>"}))
    DescribeSnapshotsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of\n         a subsequent call to <a>DescribeSnapshots</a>.</p>"}))
    DescribeSnapshotsResult.type = Types::DescribeSnapshotsResult
    DescribeTrustsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID of the Amazon Web Services directory that is a part of the requested trust\n      relationship.</p>"}))
    DescribeTrustsRequest.add_member(:trust_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustIds, location_name: 'TrustIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers of the trust relationships for which to obtain the information. If\n      this member is null, all trust relationships that belong to the current account are\n      returned.</p>\n         <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>"}))
    DescribeTrustsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to\n        <a>DescribeTrusts</a>. Pass null if this is the first call.</p>"}))
    DescribeTrustsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of objects to return.</p>"}))
    DescribeTrustsRequest.type = Types::DescribeTrustsRequest
    DescribeTrustsResult.add_member(:trusts, Smithy::Schema::Shapes::ShapeRef.new(shape: Trusts, location_name: 'Trusts', traits: {"smithy.api#documentation" => "<p>The list of Trust objects that were retrieved.</p>\n         <p>It is possible that this list contains less than the number of items specified in the\n        <i>Limit</i> member of the request. This occurs if there are less than the\n      requested number of items left to retrieve, or if the limitations of the operation have been\n      exceeded.</p>"}))
    DescribeTrustsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the\n        <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>"}))
    DescribeTrustsResult.type = Types::DescribeTrustsResult
    DescribeUpdateDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The unique identifier of the directory. </p>", "smithy.api#required" => {}}))
    DescribeUpdateDirectoryRequest.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p> The type of updates you want to describe for the directory. </p>", "smithy.api#required" => {}}))
    DescribeUpdateDirectoryRequest.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#documentation" => "<p> The name of the Region. </p>"}))
    DescribeUpdateDirectoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> The <code>DescribeUpdateDirectoryResult</code>. NextToken value from a previous call to\n        <a>DescribeUpdateDirectory</a>. Pass null if this is the first call. </p>"}))
    DescribeUpdateDirectoryRequest.type = Types::DescribeUpdateDirectoryRequest
    DescribeUpdateDirectoryResult.add_member(:update_activities, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActivities, location_name: 'UpdateActivities', traits: {"smithy.api#documentation" => "<p> The list of update activities on a directory for the requested update type. </p>"}))
    DescribeUpdateDirectoryResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> If not null, more results are available. Pass this value for the <code>NextToken</code>\n      parameter. </p>"}))
    DescribeUpdateDirectoryResult.type = Types::DescribeUpdateDirectoryResult
    DirectoryAlreadyInRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryAlreadyInRegionException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryAlreadyInRegionException.type = Types::DirectoryAlreadyInRegionException
    DirectoryAlreadySharedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryAlreadySharedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryAlreadySharedException.type = Types::DirectoryAlreadySharedException
    DirectoryConfigurationSettingRequestDetailedStatus.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName)
    DirectoryConfigurationSettingRequestDetailedStatus.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationStatus)
    DirectoryConfigurationStatus.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "Requested"}))
    DirectoryConfigurationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "Updating"}))
    DirectoryConfigurationStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "Updated"}))
    DirectoryConfigurationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    DirectoryConfigurationStatus.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "Default"}))
    DirectoryConnectSettings.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC in which the AD Connector is created.</p>", "smithy.api#required" => {}}))
    DirectoryConnectSettings.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>", "smithy.api#required" => {}}))
    DirectoryConnectSettings.add_member(:customer_dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'CustomerDnsIps', traits: {"smithy.api#documentation" => "<p>A list of one or more IP addresses of DNS servers or domain controllers in your\n      self-managed directory.</p>", "smithy.api#required" => {}}))
    DirectoryConnectSettings.add_member(:customer_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'CustomerUserName', traits: {"smithy.api#documentation" => "<p>The user name of an account in your self-managed directory that is used to connect to the\n      directory. This account must have the following permissions:</p>\n         <ul>\n            <li>\n               <p>Read users and groups</p>\n            </li>\n            <li>\n               <p>Create computer objects</p>\n            </li>\n            <li>\n               <p>Join computers to the domain</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DirectoryConnectSettings.type = Types::DirectoryConnectSettings
    DirectoryConnectSettingsDescription.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC that the AD Connector is in.</p>"}))
    DirectoryConnectSettingsDescription.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet identifiers in the VPC that the AD Connector is in.</p>"}))
    DirectoryConnectSettingsDescription.add_member(:customer_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'CustomerUserName', traits: {"smithy.api#documentation" => "<p>The user name of the service account in your self-managed directory.</p>"}))
    DirectoryConnectSettingsDescription.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>The security group identifier for the AD Connector directory.</p>"}))
    DirectoryConnectSettingsDescription.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>A list of the Availability Zones that the directory is in.</p>"}))
    DirectoryConnectSettingsDescription.add_member(:connect_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddrs, location_name: 'ConnectIps', traits: {"smithy.api#documentation" => "<p>The IP addresses of the AD Connector servers.</p>"}))
    DirectoryConnectSettingsDescription.type = Types::DirectoryConnectSettingsDescription
    DirectoryDescription.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>"}))
    DirectoryDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the directory.</p>"}))
    DirectoryDescription.add_member(:short_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryShortName, location_name: 'ShortName', traits: {"smithy.api#documentation" => "<p>The short name of the directory.</p>"}))
    DirectoryDescription.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectorySize, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The directory size.</p>"}))
    DirectoryDescription.add_member(:edition, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryEdition, location_name: 'Edition', traits: {"smithy.api#documentation" => "<p>The edition associated with this directory.</p>"}))
    DirectoryDescription.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias for the directory. If no alias has been created for the directory, the alias is\n      the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>"}))
    DirectoryDescription.add_member(:access_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessUrl, location_name: 'AccessUrl', traits: {"smithy.api#documentation" => "<p>The access URL for the directory, such as\n        <code>http://<alias>.awsapps.com</code>. If no alias has been created for the\n      directory, <code><alias></code> is the directory identifier, such as\n        <code>d-XXXXXXXXXX</code>.</p>"}))
    DirectoryDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the directory.</p>"}))
    DirectoryDescription.add_member(:dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'DnsIpAddrs', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD\n      directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers.\n      For an AD Connector directory, these are the IP addresses of the DNS servers or domain\n      controllers in your self-managed directory to which the AD Connector is connected.</p>"}))
    DirectoryDescription.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The current stage of the directory.</p>"}))
    DirectoryDescription.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>Current directory status of the shared Managed Microsoft AD directory.</p>"}))
    DirectoryDescription.add_member(:share_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareMethod, location_name: 'ShareMethod', traits: {"smithy.api#documentation" => "<p>The method used when sharing a directory to determine whether the directory should be\n      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account\n      by sending a shared directory request (<code>HANDSHAKE</code>).</p>"}))
    DirectoryDescription.add_member(:share_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'ShareNotes', traits: {"smithy.api#documentation" => "<p>A directory share request that is sent by the directory owner to the directory consumer.\n      The request includes a typed message to help the directory consumer administrator determine\n      whether to approve or reject the share invitation.</p>"}))
    DirectoryDescription.add_member(:launch_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTime, location_name: 'LaunchTime', traits: {"smithy.api#documentation" => "<p>Specifies when the directory was created.</p>"}))
    DirectoryDescription.add_member(:stage_last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'StageLastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the stage was last updated.</p>"}))
    DirectoryDescription.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The directory type.</p>"}))
    DirectoryDescription.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettingsDescription, location_name: 'VpcSettings', traits: {"smithy.api#documentation" => "<p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional\n      information about a directory. This member is only present if the directory is a Simple AD\n      or Managed Microsoft AD directory.</p>"}))
    DirectoryDescription.add_member(:connect_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConnectSettingsDescription, location_name: 'ConnectSettings', traits: {"smithy.api#documentation" => "<p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional\n      information about an AD Connector directory. This member is only present if the directory is\n      an AD Connector directory.</p>"}))
    DirectoryDescription.add_member(:radius_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusSettings, location_name: 'RadiusSettings', traits: {"smithy.api#documentation" => "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS\n      server configured for this directory.</p>"}))
    DirectoryDescription.add_member(:radius_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusStatus, location_name: 'RadiusStatus', traits: {"smithy.api#documentation" => "<p>The status of the RADIUS MFA server connection.</p>"}))
    DirectoryDescription.add_member(:stage_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StageReason, location_name: 'StageReason', traits: {"smithy.api#documentation" => "<p>Additional information about the directory stage.</p>"}))
    DirectoryDescription.add_member(:sso_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: SsoEnabled, location_name: 'SsoEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if single sign-on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>"}))
    DirectoryDescription.add_member(:desired_number_of_domain_controllers, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredNumberOfDomainControllers, location_name: 'DesiredNumberOfDomainControllers', traits: {"smithy.api#documentation" => "<p>The desired number of domain controllers in the directory if the directory is Microsoft\n      AD.</p>"}))
    DirectoryDescription.add_member(:owner_directory_description, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerDirectoryDescription, location_name: 'OwnerDirectoryDescription', traits: {"smithy.api#documentation" => "<p>Describes the Managed Microsoft AD directory in the directory owner account.</p>"}))
    DirectoryDescription.add_member(:regions_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionsInfo, location_name: 'RegionsInfo', traits: {"smithy.api#documentation" => "<p>Lists the Regions where the directory has replicated.</p>"}))
    DirectoryDescription.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: OSVersion, location_name: 'OsVersion', traits: {"smithy.api#documentation" => "<p>The operating system (OS) version of the directory.</p>"}))
    DirectoryDescription.add_member(:hybrid_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridSettingsDescription, location_name: 'HybridSettings', traits: {"smithy.api#documentation" => "<p>Contains information about the hybrid directory configuration for the directory,\n            including Amazon Web Services System Manager managed node identifiers and DNS IPs.</p>"}))
    DirectoryDescription.type = Types::DirectoryDescription
    DirectoryDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDescription)
    DirectoryDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryDoesNotExistException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryDoesNotExistException.type = Types::DirectoryDoesNotExistException
    DirectoryEdition.add_member(:enterprise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTERPRISE', traits: {"smithy.api#enumValue" => "Enterprise"}))
    DirectoryEdition.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "Standard"}))
    DirectoryIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId)
    DirectoryInDesiredStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryInDesiredStateException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryInDesiredStateException.type = Types::DirectoryInDesiredStateException
    DirectoryLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryLimitExceededException.type = Types::DirectoryLimitExceededException
    DirectoryLimits.add_member(:cloud_only_directories_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'CloudOnlyDirectoriesLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of cloud directories allowed in the Region.</p>"}))
    DirectoryLimits.add_member(:cloud_only_directories_current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'CloudOnlyDirectoriesCurrentCount', traits: {"smithy.api#documentation" => "<p>The current number of cloud directories in the Region.</p>"}))
    DirectoryLimits.add_member(:cloud_only_directories_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudOnlyDirectoriesLimitReached, location_name: 'CloudOnlyDirectoriesLimitReached', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the cloud directory limit has been reached.</p>"}))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'CloudOnlyMicrosoftADLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of Managed Microsoft AD directories allowed in the region.</p>"}))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'CloudOnlyMicrosoftADCurrentCount', traits: {"smithy.api#documentation" => "<p>The current number of Managed Microsoft AD directories in the region.</p>"}))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudOnlyDirectoriesLimitReached, location_name: 'CloudOnlyMicrosoftADLimitReached', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the Managed Microsoft AD directory limit has been reached.</p>"}))
    DirectoryLimits.add_member(:connected_directories_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'ConnectedDirectoriesLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of connected directories allowed in the Region.</p>"}))
    DirectoryLimits.add_member(:connected_directories_current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'ConnectedDirectoriesCurrentCount', traits: {"smithy.api#documentation" => "<p>The current number of connected directories in the Region.</p>"}))
    DirectoryLimits.add_member(:connected_directories_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectedDirectoriesLimitReached, location_name: 'ConnectedDirectoriesLimitReached', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the connected directory limit has been reached.</p>"}))
    DirectoryLimits.type = Types::DirectoryLimits
    DirectoryNotSharedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryNotSharedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryNotSharedException.type = Types::DirectoryNotSharedException
    DirectorySize.add_member(:small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "Small"}))
    DirectorySize.add_member(:large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "Large"}))
    DirectoryStage.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "Requested"}))
    DirectoryStage.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    DirectoryStage.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "Created"}))
    DirectoryStage.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    DirectoryStage.add_member(:inoperable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INOPERABLE', traits: {"smithy.api#enumValue" => "Inoperable"}))
    DirectoryStage.add_member(:impaired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPAIRED', traits: {"smithy.api#enumValue" => "Impaired"}))
    DirectoryStage.add_member(:restoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "Restoring"}))
    DirectoryStage.add_member(:restorefailed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTOREFAILED', traits: {"smithy.api#enumValue" => "RestoreFailed"}))
    DirectoryStage.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    DirectoryStage.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    DirectoryStage.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    DirectoryStage.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "Updating"}))
    DirectoryType.add_member(:simple_ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIMPLE_AD', traits: {"smithy.api#enumValue" => "SimpleAD"}))
    DirectoryType.add_member(:ad_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AD_CONNECTOR', traits: {"smithy.api#enumValue" => "ADConnector"}))
    DirectoryType.add_member(:microsoft_ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_AD', traits: {"smithy.api#enumValue" => "MicrosoftAD"}))
    DirectoryType.add_member(:shared_microsoft_ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED_MICROSOFT_AD', traits: {"smithy.api#enumValue" => "SharedMicrosoftAD"}))
    DirectoryUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryUnavailableException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DirectoryUnavailableException.type = Types::DirectoryUnavailableException
    DirectoryVpcSettings.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC in which to create the directory.</p>", "smithy.api#required" => {}}))
    DirectoryVpcSettings.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the subnets for the directory servers. The two subnets must be in\n      different Availability Zones. Directory Service creates a directory server and a DNS server in each of\n      these subnets.</p>", "smithy.api#required" => {}}))
    DirectoryVpcSettings.type = Types::DirectoryVpcSettings
    DirectoryVpcSettingsDescription.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC that the directory is in.</p>"}))
    DirectoryVpcSettingsDescription.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the subnets for the directory servers.</p>"}))
    DirectoryVpcSettingsDescription.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>The domain controller security group identifier for the directory.</p>"}))
    DirectoryVpcSettingsDescription.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The list of Availability Zones that the directory is in.</p>"}))
    DirectoryVpcSettingsDescription.type = Types::DirectoryVpcSettingsDescription
    DisableClientAuthenticationRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory </p>", "smithy.api#required" => {}}))
    DisableClientAuthenticationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of client authentication to disable. Currently the only parameter\n        <code>\"SmartCard\"</code> is supported.</p>", "smithy.api#required" => {}}))
    DisableClientAuthenticationRequest.type = Types::DisableClientAuthenticationRequest
    DisableClientAuthenticationResult.type = Types::DisableClientAuthenticationResult
    DisableDirectoryDataAccessRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>", "smithy.api#required" => {}}))
    DisableDirectoryDataAccessRequest.type = Types::DisableDirectoryDataAccessRequest
    DisableDirectoryDataAccessResult.type = Types::DisableDirectoryDataAccessResult
    DisableLDAPSRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DisableLDAPSRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is\n      supported.</p>", "smithy.api#required" => {}}))
    DisableLDAPSRequest.type = Types::DisableLDAPSRequest
    DisableLDAPSResult.type = Types::DisableLDAPSResult
    DisableRadiusRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to disable MFA.</p>", "smithy.api#required" => {}}))
    DisableRadiusRequest.type = Types::DisableRadiusRequest
    DisableRadiusResult.type = Types::DisableRadiusResult
    DisableSsoRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to disable single-sign on.</p>", "smithy.api#required" => {}}))
    DisableSsoRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The username of an alternate account to use to disable single-sign on. This is only used\n      for AD Connector directories. This account must have privileges to remove a service\n      principal name.</p>\n         <p>If the AD Connector service account does not have privileges to remove a service\n      principal name, you can specify an alternate account with the <i>UserName</i>\n      and <i>Password</i> parameters. These credentials are only used to disable\n      single sign-on and are not stored by the service. The AD Connector service account is not\n      changed.</p>"}))
    DisableSsoRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password of an alternate account to use to disable single-sign on. This is only used\n      for AD Connector directories. For more information, see the <i>UserName</i>\n      parameter.</p>"}))
    DisableSsoRequest.type = Types::DisableSsoRequest
    DisableSsoResult.type = Types::DisableSsoResult
    DnsIpAddrs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddr)
    DomainController.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory where the domain controller resides.</p>"}))
    DomainController.add_member(:domain_controller_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerId, location_name: 'DomainControllerId', traits: {"smithy.api#documentation" => "<p>Identifies a specific domain controller in the directory.</p>"}))
    DomainController.add_member(:dns_ip_addr, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddr, location_name: 'DnsIpAddr', traits: {"smithy.api#documentation" => "<p>The IP address of the domain controller.</p>"}))
    DomainController.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC that contains the domain controller.</p>"}))
    DomainController.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>Identifier of the subnet in the VPC that contains the domain controller.</p>"}))
    DomainController.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone where the domain controller is located.</p>"}))
    DomainController.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the domain controller.</p>"}))
    DomainController.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>A description of the domain controller state.</p>"}))
    DomainController.add_member(:launch_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTime, location_name: 'LaunchTime', traits: {"smithy.api#documentation" => "<p>Specifies when the domain controller was created.</p>"}))
    DomainController.add_member(:status_last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'StatusLastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the status was last updated.</p>"}))
    DomainController.type = Types::DomainController
    DomainControllerIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerId)
    DomainControllerLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DomainControllerLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DomainControllerLimitExceededException.type = Types::DomainControllerLimitExceededException
    DomainControllerStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    DomainControllerStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    DomainControllerStatus.add_member(:impaired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPAIRED', traits: {"smithy.api#enumValue" => "Impaired"}))
    DomainControllerStatus.add_member(:restoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "Restoring"}))
    DomainControllerStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    DomainControllerStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    DomainControllerStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    DomainControllerStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "Updating"}))
    DomainControllers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainController)
    EnableClientAuthenticationRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the specified directory. </p>", "smithy.api#required" => {}}))
    EnableClientAuthenticationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of client authentication to enable. Currently only the value\n        <code>SmartCard</code> is supported. Smart card authentication in AD Connector requires\n      that you enable Kerberos Constrained Delegation for the Service User to the LDAP service in\n      your self-managed AD. </p>", "smithy.api#required" => {}}))
    EnableClientAuthenticationRequest.type = Types::EnableClientAuthenticationRequest
    EnableClientAuthenticationResult.type = Types::EnableClientAuthenticationResult
    EnableDirectoryDataAccessRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>", "smithy.api#required" => {}}))
    EnableDirectoryDataAccessRequest.type = Types::EnableDirectoryDataAccessRequest
    EnableDirectoryDataAccessResult.type = Types::EnableDirectoryDataAccessResult
    EnableLDAPSRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    EnableLDAPSRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is\n      supported.</p>", "smithy.api#required" => {}}))
    EnableLDAPSRequest.type = Types::EnableLDAPSRequest
    EnableLDAPSResult.type = Types::EnableLDAPSResult
    EnableRadiusRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to enable MFA.</p>", "smithy.api#required" => {}}))
    EnableRadiusRequest.add_member(:radius_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusSettings, location_name: 'RadiusSettings', traits: {"smithy.api#documentation" => "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS\n         server.</p>", "smithy.api#required" => {}}))
    EnableRadiusRequest.type = Types::EnableRadiusRequest
    EnableRadiusResult.type = Types::EnableRadiusResult
    EnableSsoRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to enable single-sign on.</p>", "smithy.api#required" => {}}))
    EnableSsoRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The username of an alternate account to use to enable single-sign on. This is only used\n      for AD Connector directories. This account must have privileges to add a service principal\n      name.</p>\n         <p>If the AD Connector service account does not have privileges to add a service principal\n      name, you can specify an alternate account with the <i>UserName</i> and\n        <i>Password</i> parameters. These credentials are only used to enable single\n      sign-on and are not stored by the service. The AD Connector service account is not\n      changed.</p>"}))
    EnableSsoRequest.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password of an alternate account to use to enable single-sign on. This is only used\n      for AD Connector directories. For more information, see the <i>UserName</i>\n      parameter.</p>"}))
    EnableSsoRequest.type = Types::EnableSsoRequest
    EnableSsoResult.type = Types::EnableSsoResult
    EntityAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    EntityAlreadyExistsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    EntityAlreadyExistsException.type = Types::EntityAlreadyExistsException
    EntityDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    EntityDoesNotExistException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    EntityDoesNotExistException.type = Types::EntityDoesNotExistException
    EventTopic.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID of an Directory Service directory that will publish status messages to an Amazon SNS\n      topic.</p>"}))
    EventTopic.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon SNS topic the receives status messages from the directory.</p>"}))
    EventTopic.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicArn, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN (Amazon Resource Name).</p>"}))
    EventTopic.add_member(:created_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedDateTime, location_name: 'CreatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of when you associated your directory with the Amazon SNS topic.</p>"}))
    EventTopic.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The topic registration status.</p>"}))
    EventTopic.type = Types::EventTopic
    EventTopics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTopic)
    GetDirectoryLimitsRequest.type = Types::GetDirectoryLimitsRequest
    GetDirectoryLimitsResult.add_member(:directory_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryLimits, location_name: 'DirectoryLimits', traits: {"smithy.api#documentation" => "<p>A <a>DirectoryLimits</a> object that contains the directory limits for the\n      current Region.</p>"}))
    GetDirectoryLimitsResult.type = Types::GetDirectoryLimitsResult
    GetSnapshotLimitsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Contains the identifier of the directory to obtain the limits for.</p>", "smithy.api#required" => {}}))
    GetSnapshotLimitsRequest.type = Types::GetSnapshotLimitsRequest
    GetSnapshotLimitsResult.add_member(:snapshot_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotLimits, location_name: 'SnapshotLimits', traits: {"smithy.api#documentation" => "<p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified\n         directory.</p>"}))
    GetSnapshotLimitsResult.type = Types::GetSnapshotLimitsResult
    HybridAdministratorAccountUpdate.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the\n            credentials for the AD administrator user, and enables hybrid domain controllers to\n            join the managed AD domain. For example:</p>\n         <p>\n            <code>\n                {\"customerAdAdminDomainUsername\":\"carlos_salazar\",\"customerAdAdminDomainPassword\":\"ExamplePassword123!\"}.\n            </code>\n         </p>", "smithy.api#required" => {}}))
    HybridAdministratorAccountUpdate.type = Types::HybridAdministratorAccountUpdate
    HybridCustomerInstancesSettings.add_member(:customer_dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerDnsIps, location_name: 'CustomerDnsIps', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers or domain controllers in your self-managed AD\n            environment.</p>", "smithy.api#required" => {}}))
    HybridCustomerInstancesSettings.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceIds, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the self-managed instances with SSM used in hybrid\n            directory.</p>", "smithy.api#required" => {}}))
    HybridCustomerInstancesSettings.type = Types::HybridCustomerInstancesSettings
    HybridSettingsDescription.add_member(:self_managed_dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddrs, location_name: 'SelfManagedDnsIpAddrs', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers in your self-managed AD environment.</p>"}))
    HybridSettingsDescription.add_member(:self_managed_instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceIds, location_name: 'SelfManagedInstanceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the self-managed instances with SSM used for hybrid directory\n            operations.</p>"}))
    HybridSettingsDescription.type = Types::HybridSettingsDescription
    HybridUpdateActivities.add_member(:self_managed_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateInfoEntries, location_name: 'SelfManagedInstances', traits: {"smithy.api#documentation" => "<p>A list of update activities related to the self-managed instances with SSM in the\n            self-managed instances with SSM hybrid directory configuration.</p>"}))
    HybridUpdateActivities.add_member(:hybrid_administrator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateInfoEntries, location_name: 'HybridAdministratorAccount', traits: {"smithy.api#documentation" => "<p>A list of update activities related to hybrid directory administrator account\n            changes.</p>"}))
    HybridUpdateActivities.type = Types::HybridUpdateActivities
    HybridUpdateInfoEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateInfoEntry)
    HybridUpdateInfoEntry.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the update activity. Valid values include <code>UPDATED</code>,\n                <code>UPDATING</code>, and <code>UPDATE_FAILED</code>.</p>"}))
    HybridUpdateInfoEntry.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>A human-readable description of the update status, including any error details or\n            progress information.</p>"}))
    HybridUpdateInfoEntry.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy', traits: {"smithy.api#documentation" => "<p>Specifies if the update was initiated by the customer or Amazon Web Services.</p>"}))
    HybridUpdateInfoEntry.add_member(:new_value, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateValue, location_name: 'NewValue', traits: {"smithy.api#documentation" => "<p>The new configuration values being applied in this update.</p>"}))
    HybridUpdateInfoEntry.add_member(:previous_value, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridUpdateValue, location_name: 'PreviousValue', traits: {"smithy.api#documentation" => "<p>The previous configuration values before this update was applied.</p>"}))
    HybridUpdateInfoEntry.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartDateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the update activity was initiated.</p>"}))
    HybridUpdateInfoEntry.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the update activity status was last updated.</p>"}))
    HybridUpdateInfoEntry.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the assessment performed to validate this update\n            configuration.</p>"}))
    HybridUpdateInfoEntry.type = Types::HybridUpdateInfoEntry
    HybridUpdateType.add_member(:self_managed_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF_MANAGED_INSTANCES', traits: {"smithy.api#enumValue" => "SelfManagedInstances"}))
    HybridUpdateType.add_member(:hybrid_administrator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYBRID_ADMINISTRATOR_ACCOUNT', traits: {"smithy.api#enumValue" => "HybridAdministratorAccount"}))
    HybridUpdateValue.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentInstanceIds, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the self-managed instances with SSM in the hybrid directory\n            configuration.</p>"}))
    HybridUpdateValue.add_member(:dns_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerDnsIps, location_name: 'DnsIps', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers or domain controllers in the hybrid directory\n            configuration.</p>"}))
    HybridUpdateValue.type = Types::HybridUpdateValue
    IncompatibleSettingsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    IncompatibleSettingsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    IncompatibleSettingsException.type = Types::IncompatibleSettingsException
    InsufficientPermissionsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InsufficientPermissionsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InsufficientPermissionsException.type = Types::InsufficientPermissionsException
    InvalidCertificateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidCertificateException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidCertificateException.type = Types::InvalidCertificateException
    InvalidClientAuthStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidClientAuthStatusException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidClientAuthStatusException.type = Types::InvalidClientAuthStatusException
    InvalidLDAPSStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidLDAPSStatusException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidLDAPSStatusException.type = Types::InvalidLDAPSStatusException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidNextTokenException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidParameterException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPasswordException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidPasswordException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidPasswordException.type = Types::InvalidPasswordException
    InvalidTargetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidTargetException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    InvalidTargetException.type = Types::InvalidTargetException
    IpAddrs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddr)
    IpRoute.add_member(:cidr_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrIp, location_name: 'CidrIp', traits: {"smithy.api#documentation" => "<p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the\n         address block of the DNS server used for your self-managed domain. For a single IP address\n         use a CIDR address block with /32. For example 10.0.0.0/32.</p>"}))
    IpRoute.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the address block.</p>"}))
    IpRoute.type = Types::IpRoute
    IpRouteInfo.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory associated with the IP addresses.</p>"}))
    IpRouteInfo.add_member(:cidr_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrIp, location_name: 'CidrIp', traits: {"smithy.api#documentation" => "<p>IP address block in the <a>IpRoute</a>.</p>"}))
    IpRouteInfo.add_member(:ip_route_status_msg, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRouteStatusMsg, location_name: 'IpRouteStatusMsg', traits: {"smithy.api#documentation" => "<p>The status of the IP address block.</p>"}))
    IpRouteInfo.add_member(:added_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AddedDateTime, location_name: 'AddedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the address block was added to the directory.</p>"}))
    IpRouteInfo.add_member(:ip_route_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRouteStatusReason, location_name: 'IpRouteStatusReason', traits: {"smithy.api#documentation" => "<p>The reason for the IpRouteStatusMsg.</p>"}))
    IpRouteInfo.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the <a>IpRouteInfo</a>.</p>"}))
    IpRouteInfo.type = Types::IpRouteInfo
    IpRouteLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    IpRouteLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    IpRouteLimitExceededException.type = Types::IpRouteLimitExceededException
    IpRouteStatusMsg.add_member(:adding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDING', traits: {"smithy.api#enumValue" => "Adding"}))
    IpRouteStatusMsg.add_member(:added, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDED', traits: {"smithy.api#enumValue" => "Added"}))
    IpRouteStatusMsg.add_member(:removing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVING', traits: {"smithy.api#enumValue" => "Removing"}))
    IpRouteStatusMsg.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "Removed"}))
    IpRouteStatusMsg.add_member(:add_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD_FAILED', traits: {"smithy.api#enumValue" => "AddFailed"}))
    IpRouteStatusMsg.add_member(:remove_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE_FAILED', traits: {"smithy.api#enumValue" => "RemoveFailed"}))
    IpRoutes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpRoute)
    IpRoutesInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpRouteInfo)
    LDAPSSettingInfo.add_member(:ldaps_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSStatus, location_name: 'LDAPSStatus', traits: {"smithy.api#documentation" => "<p>The state of the LDAPS settings.</p>"}))
    LDAPSSettingInfo.add_member(:ldaps_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSStatusReason, location_name: 'LDAPSStatusReason', traits: {"smithy.api#documentation" => "<p>Describes a state change for LDAPS.</p>"}))
    LDAPSSettingInfo.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the LDAPS settings were last updated.</p>"}))
    LDAPSSettingInfo.type = Types::LDAPSSettingInfo
    LDAPSSettingsInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LDAPSSettingInfo)
    LDAPSStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "Enabling"}))
    LDAPSStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    LDAPSStatus.add_member(:enable_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_FAILED', traits: {"smithy.api#enumValue" => "EnableFailed"}))
    LDAPSStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    LDAPSType.add_member(:client, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT', traits: {"smithy.api#enumValue" => "Client"}))
    ListADAssessmentsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to list assessments. If not specified, all\n            assessments in your account are returned.</p>"}))
    ListADAssessmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token from a previous request to <a>ListADAssessments</a>.\n            Pass null if this is the first request.</p>"}))
    ListADAssessmentsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of assessment summaries to return.</p>"}))
    ListADAssessmentsRequest.type = Types::ListADAssessmentsRequest
    ListADAssessmentsResult.add_member(:assessments, Smithy::Schema::Shapes::ShapeRef.new(shape: Assessments, location_name: 'Assessments', traits: {"smithy.api#documentation" => "<p>A list of assessment summaries containing basic information about each directory\n            assessment.</p>"}))
    ListADAssessmentsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the\n                <code>NextToken</code> parameter in a subsequent request to retrieve the next set of\n            items.</p>"}))
    ListADAssessmentsResult.type = Types::ListADAssessmentsResult
    ListCertificatesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    ListCertificatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token for requesting another page of certificates if the <code>NextToken</code> response\n      element indicates that more certificates are available. Use the value of the returned\n        <code>NextToken</code> element in your request until the token comes back as\n        <code>null</code>. Pass <code>null</code> if this is the first call.</p>"}))
    ListCertificatesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The number of items that should show up on one page</p>"}))
    ListCertificatesRequest.type = Types::ListCertificatesRequest
    ListCertificatesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Indicates whether another page of certificates is available when the number of available\n      certificates exceeds the page limit.</p>"}))
    ListCertificatesResult.add_member(:certificates_info, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatesInfo, location_name: 'CertificatesInfo', traits: {"smithy.api#documentation" => "<p>A list of certificates with basic details including certificate ID, certificate common\n      name, certificate state.</p>"}))
    ListCertificatesResult.type = Types::ListCertificatesResult
    ListIpRoutesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory for which you want to retrieve the IP\n         addresses.</p>", "smithy.api#required" => {}}))
    ListIpRoutesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>"}))
    ListIpRoutesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Maximum number of items to return. If this value is zero, the maximum number of items\n         is specified by the limitations of the operation.</p>"}))
    ListIpRoutesRequest.type = Types::ListIpRoutesRequest
    ListIpRoutesResult.add_member(:ip_routes_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRoutesInfo, location_name: 'IpRoutesInfo', traits: {"smithy.api#documentation" => "<p>A list of <a>IpRoute</a>s.</p>"}))
    ListIpRoutesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the\n            <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>"}))
    ListIpRoutesResult.type = Types::ListIpRoutesResult
    ListLogSubscriptionsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>If a <i>DirectoryID</i> is provided, lists only the log subscription\n      associated with that directory. If no <i>DirectoryId</i> is provided, lists all\n      log subscriptions associated with your Amazon Web Services account. If there are no log subscriptions for\n      the Amazon Web Services account or the directory, an empty list will be returned.</p>"}))
    ListLogSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return.</p>"}))
    ListLogSubscriptionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items returned.</p>"}))
    ListLogSubscriptionsRequest.type = Types::ListLogSubscriptionsRequest
    ListLogSubscriptionsResult.add_member(:log_subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscriptions, location_name: 'LogSubscriptions', traits: {"smithy.api#documentation" => "<p>A list of active <a>LogSubscription</a> objects for calling the\n      Amazon Web Services account.</p>"}))
    ListLogSubscriptionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return.</p>"}))
    ListLogSubscriptionsResult.type = Types::ListLogSubscriptionsResult
    ListSchemaExtensionsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory from which to retrieve the schema extension\n      information.</p>", "smithy.api#required" => {}}))
    ListSchemaExtensionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to\n        <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>"}))
    ListSchemaExtensionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    ListSchemaExtensionsRequest.type = Types::ListSchemaExtensionsRequest
    ListSchemaExtensionsResult.add_member(:schema_extensions_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionsInfo, location_name: 'SchemaExtensionsInfo', traits: {"smithy.api#documentation" => "<p>Information about the schema extensions applied to the directory.</p>"}))
    ListSchemaExtensionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value for the <code>NextToken</code>\n      parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set\n      of items.</p>"}))
    ListSchemaExtensionsResult.type = Types::ListSchemaExtensionsResult
    ListTagsForResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory for which you want to retrieve tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListTagsForResourceRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags returned by the ListTagsForResource operation.</p>"}))
    ListTagsForResourceResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    LogSubscription.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory that you want to associate with the log\n      subscription.</p>"}))
    LogSubscription.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>The name of the log group.</p>"}))
    LogSubscription.add_member(:subscription_created_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCreatedDateTime, location_name: 'SubscriptionCreatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the log subscription was created.</p>"}))
    LogSubscription.type = Types::LogSubscription
    LogSubscriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogSubscription)
    NoAvailableCertificateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NoAvailableCertificateException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    NoAvailableCertificateException.type = Types::NoAvailableCertificateException
    OSUpdateSettings.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: OSVersion, location_name: 'OSVersion', traits: {"smithy.api#documentation" => "<p> OS version that the directory needs to be updated to. </p>"}))
    OSUpdateSettings.type = Types::OSUpdateSettings
    OSVersion.add_member(:version_2012, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION_2012', traits: {"smithy.api#enumValue" => "SERVER_2012"}))
    OSVersion.add_member(:version_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION_2019', traits: {"smithy.api#enumValue" => "SERVER_2019"}))
    OrganizationsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    OrganizationsException.type = Types::OrganizationsException
    OwnerDirectoryDescription.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the Managed Microsoft AD directory in the directory owner account.</p>"}))
    OwnerDirectoryDescription.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory owner account.</p>"}))
    OwnerDirectoryDescription.add_member(:dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'DnsIpAddrs', traits: {"smithy.api#documentation" => "<p>IP address of the directory’s domain controllers.</p>"}))
    OwnerDirectoryDescription.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettingsDescription, location_name: 'VpcSettings', traits: {"smithy.api#documentation" => "<p>Information about the VPC settings for the directory.</p>"}))
    OwnerDirectoryDescription.add_member(:radius_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusSettings, location_name: 'RadiusSettings', traits: {"smithy.api#documentation" => "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS\n      server.</p>"}))
    OwnerDirectoryDescription.add_member(:radius_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusStatus, location_name: 'RadiusStatus', traits: {"smithy.api#documentation" => "<p>Information about the status of the RADIUS server.</p>"}))
    OwnerDirectoryDescription.type = Types::OwnerDirectoryDescription
    RadiusAuthenticationProtocol.add_member(:pap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAP', traits: {"smithy.api#enumValue" => "PAP"}))
    RadiusAuthenticationProtocol.add_member(:chap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAP', traits: {"smithy.api#enumValue" => "CHAP"}))
    RadiusAuthenticationProtocol.add_member(:mschapv1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MSCHAPV1', traits: {"smithy.api#enumValue" => "MS-CHAPv1"}))
    RadiusAuthenticationProtocol.add_member(:mschapv2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MSCHAPV2', traits: {"smithy.api#enumValue" => "MS-CHAPv2"}))
    RadiusSettings.add_member(:radius_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: Servers, location_name: 'RadiusServers', traits: {"smithy.api#documentation" => "<p>An array of strings that contains the fully qualified domain name (FQDN) or IP\n         addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server\n         load balancer.</p>"}))
    RadiusSettings.add_member(:radius_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'RadiusPort', traits: {"smithy.api#documentation" => "<p>The port that your RADIUS server is using for communications. Your self-managed\n         network must allow inbound traffic over this port from the Directory Service servers.</p>"}))
    RadiusSettings.add_member(:radius_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusTimeout, location_name: 'RadiusTimeout', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>"}))
    RadiusSettings.add_member(:radius_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusRetries, location_name: 'RadiusRetries', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of times that communication with the RADIUS server is retried after the initial attempt.</p>"}))
    RadiusSettings.add_member(:shared_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusSharedSecret, location_name: 'SharedSecret', traits: {"smithy.api#documentation" => "<p>Required for enabling RADIUS on the directory.</p>"}))
    RadiusSettings.add_member(:authentication_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusAuthenticationProtocol, location_name: 'AuthenticationProtocol', traits: {"smithy.api#documentation" => "<p>The protocol specified for your RADIUS endpoints.</p>"}))
    RadiusSettings.add_member(:display_label, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusDisplayLabel, location_name: 'DisplayLabel', traits: {"smithy.api#documentation" => "<p>Not currently used.</p>"}))
    RadiusSettings.add_member(:use_same_username, Smithy::Schema::Shapes::ShapeRef.new(shape: UseSameUsername, location_name: 'UseSameUsername', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Not currently used.</p>"}))
    RadiusSettings.type = Types::RadiusSettings
    RadiusStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    RadiusStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "Completed"}))
    RadiusStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    RegionDescription.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    RegionDescription.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#documentation" => "<p>The name of the Region. For example, <code>us-east-1</code>.</p>"}))
    RegionDescription.add_member(:region_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionType, location_name: 'RegionType', traits: {"smithy.api#documentation" => "<p>Specifies whether the Region is the primary Region or an additional Region.</p>"}))
    RegionDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryStage, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the replication process for the specified Region.</p>"}))
    RegionDescription.add_member(:vpc_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryVpcSettings, location_name: 'VpcSettings'))
    RegionDescription.add_member(:desired_number_of_domain_controllers, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredNumberOfDomainControllers, location_name: 'DesiredNumberOfDomainControllers', traits: {"smithy.api#documentation" => "<p>The desired number of domain controllers in the specified Region for the specified\n      directory.</p>"}))
    RegionDescription.add_member(:launch_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTime, location_name: 'LaunchTime', traits: {"smithy.api#documentation" => "<p>Specifies when the Region replication began.</p>"}))
    RegionDescription.add_member(:status_last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StateLastUpdatedDateTime, location_name: 'StatusLastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Region status was last updated.</p>"}))
    RegionDescription.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Region description was last updated.</p>"}))
    RegionDescription.type = Types::RegionDescription
    RegionLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RegionLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    RegionLimitExceededException.type = Types::RegionLimitExceededException
    RegionType.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "Primary"}))
    RegionType.add_member(:additional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL', traits: {"smithy.api#enumValue" => "Additional"}))
    RegionsDescription.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionDescription)
    RegionsInfo.add_member(:primary_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'PrimaryRegion', traits: {"smithy.api#documentation" => "<p>The Region where the Managed Microsoft AD directory was originally created.</p>"}))
    RegionsInfo.add_member(:additional_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalRegions, location_name: 'AdditionalRegions', traits: {"smithy.api#documentation" => "<p>Lists the Regions where the directory has been replicated, excluding the primary\n      Region.</p>"}))
    RegionsInfo.type = Types::RegionsInfo
    RegisterCertificateRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    RegisterCertificateRequest.add_member(:certificate_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateData, location_name: 'CertificateData', traits: {"smithy.api#documentation" => "<p>The certificate PEM string that needs to be registered.</p>", "smithy.api#required" => {}}))
    RegisterCertificateRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The function that the registered certificate performs. Valid values include\n        <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is\n        <code>ClientLDAPS</code>.</p>"}))
    RegisterCertificateRequest.add_member(:client_cert_auth_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCertAuthSettings, location_name: 'ClientCertAuthSettings', traits: {"smithy.api#documentation" => "<p>A <code>ClientCertAuthSettings</code> object that contains client certificate\n      authentication settings.</p>"}))
    RegisterCertificateRequest.type = Types::RegisterCertificateRequest
    RegisterCertificateResult.add_member(:certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#documentation" => "<p>The identifier of the certificate.</p>"}))
    RegisterCertificateResult.type = Types::RegisterCertificateResult
    RegisterEventTopicRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID that will publish status messages to the Amazon SNS topic.</p>", "smithy.api#required" => {}}))
    RegisterEventTopicRequest.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic name to which the directory will publish status messages. This Amazon SNS\n      topic must be in the same region as the specified Directory ID.</p>", "smithy.api#required" => {}}))
    RegisterEventTopicRequest.type = Types::RegisterEventTopicRequest
    RegisterEventTopicResult.type = Types::RegisterEventTopicResult
    RejectSharedDirectoryRequest.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the shared directory in the directory consumer account. This identifier is\n      different for each directory owner account.</p>", "smithy.api#required" => {}}))
    RejectSharedDirectoryRequest.type = Types::RejectSharedDirectoryRequest
    RejectSharedDirectoryResult.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the shared directory in the directory consumer account.</p>"}))
    RejectSharedDirectoryResult.type = Types::RejectSharedDirectoryResult
    RemoteDomainNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName)
    RemoveIpRoutesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory from which you want to remove the IP\n         addresses.</p>", "smithy.api#required" => {}}))
    RemoveIpRoutesRequest.add_member(:cidr_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrIps, location_name: 'CidrIps', traits: {"smithy.api#documentation" => "<p>IP address blocks that you want to remove.</p>", "smithy.api#required" => {}}))
    RemoveIpRoutesRequest.type = Types::RemoveIpRoutesRequest
    RemoveIpRoutesResult.type = Types::RemoveIpRoutesResult
    RemoveRegionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which you want to remove Region replication.</p>", "smithy.api#required" => {}}))
    RemoveRegionRequest.type = Types::RemoveRegionRequest
    RemoveRegionResult.type = Types::RemoveRegionResult
    RemoveTagsFromResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory from which to remove the tag.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag key (name) of the tag to be removed.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.type = Types::RemoveTagsFromResourceRequest
    RemoveTagsFromResourceResult.type = Types::RemoveTagsFromResourceResult
    ReplicationScope.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Domain', traits: {"smithy.api#enumValue" => "Domain"}))
    ResetUserPasswordRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the Managed Microsoft AD or Simple AD directory in which the user resides.</p>", "smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerUserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user name of the user whose password will be reset.</p>", "smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:new_password, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPassword, location_name: 'NewPassword', traits: {"smithy.api#documentation" => "<p>The new password that will be reset.</p>", "smithy.api#required" => {}}))
    ResetUserPasswordRequest.type = Types::ResetUserPasswordRequest
    ResetUserPasswordResult.type = Types::ResetUserPasswordResult
    RestoreFromSnapshotRequest.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot to restore from.</p>", "smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.type = Types::RestoreFromSnapshotRequest
    RestoreFromSnapshotResult.type = Types::RestoreFromSnapshotResult
    SchemaExtensionInfo.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory to which the schema extension is applied.</p>"}))
    SchemaExtensionInfo.add_member(:schema_extension_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionId, location_name: 'SchemaExtensionId', traits: {"smithy.api#documentation" => "<p>The identifier of the schema extension.</p>"}))
    SchemaExtensionInfo.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the schema extension.</p>"}))
    SchemaExtensionInfo.add_member(:schema_extension_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionStatus, location_name: 'SchemaExtensionStatus', traits: {"smithy.api#documentation" => "<p>The current status of the schema extension.</p>"}))
    SchemaExtensionInfo.add_member(:schema_extension_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionStatusReason, location_name: 'SchemaExtensionStatusReason', traits: {"smithy.api#documentation" => "<p>The reason for the <code>SchemaExtensionStatus</code>.</p>"}))
    SchemaExtensionInfo.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartDateTime, location_name: 'StartDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the schema extension started being applied to the\n      directory.</p>"}))
    SchemaExtensionInfo.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndDateTime, location_name: 'EndDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the schema extension was completed.</p>"}))
    SchemaExtensionInfo.type = Types::SchemaExtensionInfo
    SchemaExtensionStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "Initializing"}))
    SchemaExtensionStatus.add_member(:creating_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING_SNAPSHOT', traits: {"smithy.api#enumValue" => "CreatingSnapshot"}))
    SchemaExtensionStatus.add_member(:updating_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING_SCHEMA', traits: {"smithy.api#enumValue" => "UpdatingSchema"}))
    SchemaExtensionStatus.add_member(:replicating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATING', traits: {"smithy.api#enumValue" => "Replicating"}))
    SchemaExtensionStatus.add_member(:cancel_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CancelInProgress"}))
    SchemaExtensionStatus.add_member(:rollback_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "RollbackInProgress"}))
    SchemaExtensionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    SchemaExtensionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    SchemaExtensionStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "Completed"}))
    SchemaExtensionsInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionInfo)
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SelectiveAuth.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    SelectiveAuth.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    Servers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Server)
    ServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    ServiceException.type = Types::ServiceException
    Setting.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the directory setting. For example:</p>\n         <p>\n            <code>TLS_1_0</code>\n         </p>", "smithy.api#required" => {}}))
    Setting.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the directory setting for which to retrieve information. For example, for\n        <code>TLS_1_0</code>, the valid values are: <code>Enable</code> and\n      <code>Disable</code>.</p>", "smithy.api#required" => {}}))
    Setting.type = Types::Setting
    SettingEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SettingEntry)
    SettingEntry.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type, or category, of a directory setting. Similar settings have the same type. For\n      example, <code>Protocol</code>, <code>Cipher</code>, or <code>Certificate-Based\n        Authentication</code>.</p>"}))
    SettingEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the directory setting. For example:</p>\n         <p>\n            <code>TLS_1_0</code>\n         </p>"}))
    SettingEntry.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingAllowedValues, location_name: 'AllowedValues', traits: {"smithy.api#documentation" => "<p>The valid range of values for the directory setting. These values depend on the\n        <code>DataType</code> of your directory.</p>"}))
    SettingEntry.add_member(:applied_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingValue, location_name: 'AppliedValue', traits: {"smithy.api#documentation" => "<p>The value of the directory setting that is applied to the directory.</p>"}))
    SettingEntry.add_member(:requested_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingValue, location_name: 'RequestedValue', traits: {"smithy.api#documentation" => "<p>The value that was last requested for the directory setting.</p>"}))
    SettingEntry.add_member(:request_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationStatus, location_name: 'RequestStatus', traits: {"smithy.api#documentation" => "<p>The overall status of the request to update the directory setting request. If the\n      directory setting is deployed in more than one region, and the request fails in any region,\n      the overall status is <code>Failed</code>.</p>"}))
    SettingEntry.add_member(:request_detailed_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingRequestDetailedStatus, location_name: 'RequestDetailedStatus', traits: {"smithy.api#documentation" => "<p>Details about the status of the request to update the directory setting. If the directory\n      setting is deployed in more than one region, status is returned for the request in each region\n      where the setting is deployed.</p>"}))
    SettingEntry.add_member(:request_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingRequestStatusMessage, location_name: 'RequestStatusMessage', traits: {"smithy.api#documentation" => "<p>The last status message for the directory status request.</p>"}))
    SettingEntry.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingLastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the directory setting was last updated.</p>"}))
    SettingEntry.add_member(:last_requested_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingLastRequestedDateTime, location_name: 'LastRequestedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the request to update a directory setting was last\n      submitted.</p>"}))
    SettingEntry.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigurationSettingDataType, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>The data type of a directory setting. This is used to define the\n        <code>AllowedValues</code> of a setting. For example a data type can be\n      <code>Boolean</code>, <code>DurationInSeconds</code>, or <code>Enum</code>.</p>"}))
    SettingEntry.type = Types::SettingEntry
    Settings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Setting)
    ShareDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the Managed Microsoft AD directory that you want to share with other\n      Amazon Web Services accounts.</p>", "smithy.api#required" => {}}))
    ShareDirectoryRequest.add_member(:share_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'ShareNotes', traits: {"smithy.api#documentation" => "<p>A directory share request that is sent by the directory owner to the directory consumer.\n      The request includes a typed message to help the directory consumer administrator determine\n      whether to approve or reject the share invitation.</p>"}))
    ShareDirectoryRequest.add_member(:share_target, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareTarget, location_name: 'ShareTarget', traits: {"smithy.api#documentation" => "<p>Identifier for the directory consumer account with whom the directory is to be\n      shared.</p>", "smithy.api#required" => {}}))
    ShareDirectoryRequest.add_member(:share_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareMethod, location_name: 'ShareMethod', traits: {"smithy.api#documentation" => "<p>The method used when sharing a directory to determine whether the directory should be\n      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account\n      by sending a directory sharing request (<code>HANDSHAKE</code>).</p>", "smithy.api#required" => {}}))
    ShareDirectoryRequest.type = Types::ShareDirectoryRequest
    ShareDirectoryResult.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory that is stored in the directory consumer account that is\n      shared from the specified directory (<code>DirectoryId</code>).</p>"}))
    ShareDirectoryResult.type = Types::ShareDirectoryResult
    ShareLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ShareLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    ShareLimitExceededException.type = Types::ShareLimitExceededException
    ShareMethod.add_member(:organizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATIONS', traits: {"smithy.api#enumValue" => "ORGANIZATIONS"}))
    ShareMethod.add_member(:handshake, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDSHAKE', traits: {"smithy.api#enumValue" => "HANDSHAKE"}))
    ShareStatus.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "Shared"}))
    ShareStatus.add_member(:pending_acceptance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE', traits: {"smithy.api#enumValue" => "PendingAcceptance"}))
    ShareStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "Rejected"}))
    ShareStatus.add_member(:rejecting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "Rejecting"}))
    ShareStatus.add_member(:reject_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT_FAILED', traits: {"smithy.api#enumValue" => "RejectFailed"}))
    ShareStatus.add_member(:sharing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARING', traits: {"smithy.api#enumValue" => "Sharing"}))
    ShareStatus.add_member(:share_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARE_FAILED', traits: {"smithy.api#enumValue" => "ShareFailed"}))
    ShareStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    ShareStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    ShareTarget.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Identifier of the directory consumer account.</p>", "smithy.api#required" => {}}))
    ShareTarget.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of identifier to be used in the <code>Id</code> field.</p>", "smithy.api#required" => {}}))
    ShareTarget.type = Types::ShareTarget
    SharedDirectories.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SharedDirectory)
    SharedDirectory.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory owner account, which contains the directory that has been\n      shared to the consumer account.</p>"}))
    SharedDirectory.add_member(:owner_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'OwnerDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory in the directory owner account. </p>"}))
    SharedDirectory.add_member(:share_method, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareMethod, location_name: 'ShareMethod', traits: {"smithy.api#documentation" => "<p>The method used when sharing a directory to determine whether the directory should be\n      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account\n      by sending a shared directory request (<code>HANDSHAKE</code>).</p>"}))
    SharedDirectory.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'SharedAccountId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory consumer account that has access to the shared directory\n        (<code>OwnerDirectoryId</code>) in the directory owner account.</p>"}))
    SharedDirectory.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the shared directory in the directory consumer account. This identifier is\n      different for each directory owner account.</p>"}))
    SharedDirectory.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>Current directory status of the shared Managed Microsoft AD directory.</p>"}))
    SharedDirectory.add_member(:share_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: Notes, location_name: 'ShareNotes', traits: {"smithy.api#documentation" => "<p>A directory share request that is sent by the directory owner to the directory consumer.\n      The request includes a typed message to help the directory consumer administrator determine\n      whether to approve or reject the share invitation.</p>"}))
    SharedDirectory.add_member(:created_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedDateTime, location_name: 'CreatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the shared directory was created.</p>"}))
    SharedDirectory.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the shared directory was last updated.</p>"}))
    SharedDirectory.type = Types::SharedDirectory
    Snapshot.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>"}))
    Snapshot.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The snapshot identifier.</p>"}))
    Snapshot.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The snapshot type.</p>"}))
    Snapshot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The descriptive name of the snapshot.</p>"}))
    Snapshot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The snapshot status.</p>"}))
    Snapshot.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time that the snapshot was taken.</p>"}))
    Snapshot.type = Types::Snapshot
    SnapshotIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId)
    SnapshotLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    SnapshotLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    SnapshotLimitExceededException.type = Types::SnapshotLimitExceededException
    SnapshotLimits.add_member(:manual_snapshots_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'ManualSnapshotsLimit', traits: {"smithy.api#documentation" => "<p>The maximum number of manual snapshots allowed.</p>"}))
    SnapshotLimits.add_member(:manual_snapshots_current_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'ManualSnapshotsCurrentCount', traits: {"smithy.api#documentation" => "<p>The current number of manual snapshots of the directory.</p>"}))
    SnapshotLimits.add_member(:manual_snapshots_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: ManualSnapshotsLimitReached, location_name: 'ManualSnapshotsLimitReached', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the manual snapshot limit has been reached.</p>"}))
    SnapshotLimits.type = Types::SnapshotLimits
    SnapshotStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    SnapshotStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "Completed"}))
    SnapshotStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    SnapshotType.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "Auto"}))
    SnapshotType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "Manual"}))
    Snapshots.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot)
    StartADAssessmentRequest.add_member(:assessment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentConfiguration, location_name: 'AssessmentConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration parameters for the directory assessment, including DNS server\n            information, domain name, Amazon VPC subnet, and Amazon Web Services System Manager managed node\n            details.</p>"}))
    StartADAssessmentRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to perform the assessment. This should be an\n            existing directory. If the assessment is not for an existing directory, this parameter\n            should be omitted.</p>"}))
    StartADAssessmentRequest.type = Types::StartADAssessmentRequest
    StartADAssessmentResult.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the newly started directory assessment. Use this identifier\n            to monitor assessment progress and retrieve results.</p>"}))
    StartADAssessmentResult.type = Types::StartADAssessmentResult
    StartSchemaExtensionRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which the schema extension will be applied\n      to.</p>", "smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:create_snapshot_before_schema_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotBeforeSchemaExtension, location_name: 'CreateSnapshotBeforeSchemaExtension', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, creates a snapshot of the directory before applying the schema\n      extension.</p>", "smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:ldif_content, Smithy::Schema::Shapes::ShapeRef.new(shape: LdifContent, location_name: 'LdifContent', traits: {"smithy.api#documentation" => "<p>The LDIF file represented as a string. To construct the LdifContent string, precede\n      each line as it would be formatted in an ldif file with \\n. See the example request below for\n      more details. The file size can be no larger than 1MB.</p>", "smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the schema extension.</p>", "smithy.api#required" => {}}))
    StartSchemaExtensionRequest.type = Types::StartSchemaExtensionRequest
    StartSchemaExtensionResult.add_member(:schema_extension_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaExtensionId, location_name: 'SchemaExtensionId', traits: {"smithy.api#documentation" => "<p>The identifier of the schema extension that will be applied.</p>"}))
    StartSchemaExtensionResult.type = Types::StartSchemaExtensionResult
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Required name of the tag. The string value can be Unicode characters and cannot be\n      prefixed with \"aws:\". The string can contain only the set of Unicode letters, digits,\n      white-space, '_', '.', '/', '=', '+', '-', ':', '@'(Java regex:\n      \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The optional value of the tag. The string value can be Unicode characters. The string\n      can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-', ':', '@'\n      (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TagLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    TagLimitExceededException.type = Types::TagLimitExceededException
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TopicNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName)
    TopicStatus.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "Registered"}))
    TopicStatus.add_member(:topic_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOPIC_NOT_FOUND', traits: {"smithy.api#enumValue" => "Topic not found"}))
    TopicStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    TopicStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    Trust.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Directory ID of the Amazon Web Services directory involved in the trust relationship.</p>"}))
    Trust.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>The unique ID of the trust relationship.</p>"}))
    Trust.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust\n      relationship.</p>"}))
    Trust.add_member(:trust_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustType, location_name: 'TrustType', traits: {"smithy.api#documentation" => "<p>The trust relationship type. <code>Forest</code> is the default.</p>"}))
    Trust.add_member(:trust_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustDirection, location_name: 'TrustDirection', traits: {"smithy.api#documentation" => "<p>The trust relationship direction.</p>"}))
    Trust.add_member(:trust_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustState, location_name: 'TrustState', traits: {"smithy.api#documentation" => "<p>The trust relationship state.</p>"}))
    Trust.add_member(:created_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedDateTime, location_name: 'CreatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the trust relationship was created.</p>"}))
    Trust.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the trust relationship was last updated.</p>"}))
    Trust.add_member(:state_last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StateLastUpdatedDateTime, location_name: 'StateLastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the TrustState was last updated.</p>"}))
    Trust.add_member(:trust_state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustStateReason, location_name: 'TrustStateReason', traits: {"smithy.api#documentation" => "<p>The reason for the TrustState.</p>"}))
    Trust.add_member(:selective_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectiveAuth, location_name: 'SelectiveAuth', traits: {"smithy.api#documentation" => "<p>Current state of selective authentication for the trust.</p>"}))
    Trust.type = Types::Trust
    TrustDirection.add_member(:one_way_outgoing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_WAY_OUTGOING', traits: {"smithy.api#enumValue" => "One-Way: Outgoing"}))
    TrustDirection.add_member(:one_way_incoming, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_WAY_INCOMING', traits: {"smithy.api#enumValue" => "One-Way: Incoming"}))
    TrustDirection.add_member(:two_way, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TWO_WAY', traits: {"smithy.api#enumValue" => "Two-Way"}))
    TrustIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId)
    TrustState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "Creating"}))
    TrustState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "Created"}))
    TrustState.add_member(:verifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFYING', traits: {"smithy.api#enumValue" => "Verifying"}))
    TrustState.add_member(:verify_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFY_FAILED', traits: {"smithy.api#enumValue" => "VerifyFailed"}))
    TrustState.add_member(:verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED', traits: {"smithy.api#enumValue" => "Verified"}))
    TrustState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "Updating"}))
    TrustState.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    TrustState.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "Updated"}))
    TrustState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "Deleting"}))
    TrustState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    TrustState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    TrustType.add_member(:forest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOREST', traits: {"smithy.api#enumValue" => "Forest"}))
    TrustType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "External"}))
    Trusts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Trust)
    UnshareDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Managed Microsoft AD directory that you want to stop sharing.</p>", "smithy.api#required" => {}}))
    UnshareDirectoryRequest.add_member(:unshare_target, Smithy::Schema::Shapes::ShapeRef.new(shape: UnshareTarget, location_name: 'UnshareTarget', traits: {"smithy.api#documentation" => "<p>Identifier for the directory consumer account with whom the directory has to be\n      unshared.</p>", "smithy.api#required" => {}}))
    UnshareDirectoryRequest.type = Types::UnshareDirectoryRequest
    UnshareDirectoryResult.add_member(:shared_directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'SharedDirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory stored in the directory consumer account that is to be\n      unshared from the specified directory (<code>DirectoryId</code>).</p>"}))
    UnshareDirectoryResult.type = Types::UnshareDirectoryResult
    UnshareTarget.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Identifier of the directory consumer account.</p>", "smithy.api#required" => {}}))
    UnshareTarget.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of identifier to be used in the <i>Id</i> field.</p>", "smithy.api#required" => {}}))
    UnshareTarget.type = Types::UnshareTarget
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnsupportedOperationException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedSettingsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnsupportedSettingsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    UnsupportedSettingsException.type = Types::UnsupportedSettingsException
    UpdateActivities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInfoEntry)
    UpdateConditionalForwarderRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory ID of the Amazon Web Services directory for which to update the conditional\n      forwarder.</p>", "smithy.api#required" => {}}))
    UpdateConditionalForwarderRequest.add_member(:remote_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteDomainName, location_name: 'RemoteDomainName', traits: {"smithy.api#documentation" => "<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up\n      a trust relationship.</p>", "smithy.api#required" => {}}))
    UpdateConditionalForwarderRequest.add_member(:dns_ip_addrs, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddrs, location_name: 'DnsIpAddrs', traits: {"smithy.api#documentation" => "<p>The updated IP addresses of the remote DNS server associated with the conditional\n      forwarder.</p>", "smithy.api#required" => {}}))
    UpdateConditionalForwarderRequest.type = Types::UpdateConditionalForwarderRequest
    UpdateConditionalForwarderResult.type = Types::UpdateConditionalForwarderResult
    UpdateDirectorySetupRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier of the directory on which you want to perform the update. </p>", "smithy.api#required" => {}}))
    UpdateDirectorySetupRequest.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p> The type of update that needs to be performed on the directory. For example, OS. </p>", "smithy.api#required" => {}}))
    UpdateDirectorySetupRequest.add_member(:os_update_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: OSUpdateSettings, location_name: 'OSUpdateSettings', traits: {"smithy.api#documentation" => "<p> The settings for the OS update that needs to be performed on the directory. </p>"}))
    UpdateDirectorySetupRequest.add_member(:create_snapshot_before_update, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotBeforeUpdate, location_name: 'CreateSnapshotBeforeUpdate', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p> The boolean that specifies if a snapshot for the directory needs to be taken before\n      updating the directory. </p>"}))
    UpdateDirectorySetupRequest.type = Types::UpdateDirectorySetupRequest
    UpdateDirectorySetupResult.type = Types::UpdateDirectorySetupResult
    UpdateHybridADRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the hybrid directory to update.</p>", "smithy.api#required" => {}}))
    UpdateHybridADRequest.add_member(:hybrid_administrator_account_update, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridAdministratorAccountUpdate, location_name: 'HybridAdministratorAccountUpdate', traits: {"smithy.api#documentation" => "<p>We create a hybrid directory administrator account when we create a hybrid directory.\n            Use <code>HybridAdministratorAccountUpdate</code> to recover the hybrid directory\n            administrator account if you have deleted it.</p>\n         <p>To recover your hybrid directory administrator account, we need temporary access to a\n            user in your self-managed AD with administrator permissions in the form of a secret from\n            Amazon Web Services Secrets Manager. We use these credentials once during recovery and don't store them.</p>\n         <p>If your hybrid directory administrator account exists, then you don’t need to use\n                <code>HybridAdministratorAccountUpdate</code>, even if you have updated your\n            self-managed AD administrator user.</p>"}))
    UpdateHybridADRequest.add_member(:self_managed_instances_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: HybridCustomerInstancesSettings, location_name: 'SelfManagedInstancesSettings', traits: {"smithy.api#documentation" => "<p>Updates to the self-managed AD configuration, including DNS server IP addresses and\n            Amazon Web Services System Manager managed node identifiers.</p>"}))
    UpdateHybridADRequest.type = Types::UpdateHybridADRequest
    UpdateHybridADResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the updated hybrid directory.</p>"}))
    UpdateHybridADResult.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentId, location_name: 'AssessmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the assessment performed to validate the update configuration. This\n            assessment ensures the updated settings are compatible with your environment.</p>"}))
    UpdateHybridADResult.type = Types::UpdateHybridADResult
    UpdateInfoEntry.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'Region', traits: {"smithy.api#documentation" => "<p> The name of the Region. </p>"}))
    UpdateInfoEntry.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of the update performed on the directory. </p>"}))
    UpdateInfoEntry.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p> The reason for the current status of the update type activity. </p>"}))
    UpdateInfoEntry.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'InitiatedBy', traits: {"smithy.api#documentation" => "<p> This specifies if the update was initiated by the customer or by the service team.\n    </p>"}))
    UpdateInfoEntry.add_member(:new_value, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateValue, location_name: 'NewValue', traits: {"smithy.api#documentation" => "<p> The new value of the target setting. </p>"}))
    UpdateInfoEntry.add_member(:previous_value, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateValue, location_name: 'PreviousValue', traits: {"smithy.api#documentation" => "<p> The old value of the target setting. </p>"}))
    UpdateInfoEntry.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartDateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p> The start time of the <code>UpdateDirectorySetup</code> for the particular type. </p>"}))
    UpdateInfoEntry.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedDateTime, location_name: 'LastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p> The last updated date and time of a particular directory setting. </p>"}))
    UpdateInfoEntry.type = Types::UpdateInfoEntry
    UpdateNumberOfDomainControllersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier of the directory to which the domain controllers will be added or\n      removed.</p>", "smithy.api#required" => {}}))
    UpdateNumberOfDomainControllersRequest.add_member(:desired_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredNumberOfDomainControllers, location_name: 'DesiredNumber', traits: {"smithy.api#documentation" => "<p>The number of domain controllers desired in the directory.</p>", "smithy.api#required" => {}}))
    UpdateNumberOfDomainControllersRequest.type = Types::UpdateNumberOfDomainControllersRequest
    UpdateNumberOfDomainControllersResult.type = Types::UpdateNumberOfDomainControllersResult
    UpdateRadiusRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to update the RADIUS server\n         information.</p>", "smithy.api#required" => {}}))
    UpdateRadiusRequest.add_member(:radius_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RadiusSettings, location_name: 'RadiusSettings', traits: {"smithy.api#documentation" => "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS\n         server.</p>", "smithy.api#required" => {}}))
    UpdateRadiusRequest.type = Types::UpdateRadiusRequest
    UpdateRadiusResult.type = Types::UpdateRadiusResult
    UpdateSettingsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for which to update settings.</p>", "smithy.api#required" => {}}))
    UpdateSettingsRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>The list of <a>Setting</a> objects.</p>", "smithy.api#required" => {}}))
    UpdateSettingsRequest.type = Types::UpdateSettingsRequest
    UpdateSettingsResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    UpdateSettingsResult.type = Types::UpdateSettingsResult
    UpdateStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "Updated"}))
    UpdateStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "Updating"}))
    UpdateStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    UpdateTrustRequest.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>Identifier of the trust relationship.</p>", "smithy.api#required" => {}}))
    UpdateTrustRequest.add_member(:selective_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectiveAuth, location_name: 'SelectiveAuth', traits: {"smithy.api#documentation" => "<p>Updates selective authentication for the trust.</p>"}))
    UpdateTrustRequest.type = Types::UpdateTrustRequest
    UpdateTrustResult.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    UpdateTrustResult.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>Identifier of the trust relationship.</p>"}))
    UpdateTrustResult.type = Types::UpdateTrustResult
    UpdateType.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS', traits: {"smithy.api#enumValue" => "OS"}))
    UpdateValue.add_member(:os_update_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: OSUpdateSettings, location_name: 'OSUpdateSettings', traits: {"smithy.api#documentation" => "<p> The OS update related settings. </p>"}))
    UpdateValue.type = Types::UpdateValue
    UserDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UserDoesNotExistException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    UserDoesNotExistException.type = Types::UserDoesNotExistException
    VerifyTrustRequest.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>The unique Trust ID of the trust relationship to verify.</p>", "smithy.api#required" => {}}))
    VerifyTrustRequest.type = Types::VerifyTrustRequest
    VerifyTrustResult.add_member(:trust_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustId, location_name: 'TrustId', traits: {"smithy.api#documentation" => "<p>The unique Trust ID of the trust relationship that was verified.</p>"}))
    VerifyTrustResult.type = Types::VerifyTrustResult

    DirectoryService20150416 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.directoryservice#DirectoryService_20150416"
      service.name = "DirectoryService20150416"
      service.version = "2015-04-16"
      service.traits = {"aws.api#service" => {"sdkId" => "Directory Service", "arnNamespace" => "ds", "cloudFormationName" => "DirectoryService", "cloudTrailEventSource" => "ds.amazonaws.com", "docId" => "ds-2015-04-16", "endpointPrefix" => "ds"}, "aws.auth#sigv4" => {"name" => "ds"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Directory Service", "smithy.api#xmlNamespace" => {"uri" => "http://directoryservice.amazonaws.com/doc/2015-04-16/"}}
      service.add_operation(:accept_shared_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AcceptSharedDirectory"
        operation.name = "AcceptSharedDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptSharedDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptSharedDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryAlreadySharedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:add_ip_routes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddIpRoutes"
        operation.name = "AddIpRoutes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddIpRoutesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddIpRoutesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IpRouteLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:add_region, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddRegion"
        operation.name = "AddRegion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddRegionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddRegionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryAlreadyInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RegionLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_schema_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CancelSchemaExtension"
        operation.name = "CancelSchemaExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSchemaExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSchemaExtensionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:connect_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ConnectDirectory"
        operation.name = "ConnectDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:create_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:create_computer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateComputer"
        operation.name = "CreateComputer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputerResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_conditional_forwarder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateConditionalForwarder"
        operation.name = "CreateConditionalForwarder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConditionalForwarderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConditionalForwarderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateDirectory"
        operation.name = "CreateDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:create_hybrid_ad, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateHybridAD"
        operation.name = "CreateHybridAD"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHybridADRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHybridADResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ADAssessmentLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateLogSubscription"
        operation.name = "CreateLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLogSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_microsoft_ad, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateMicrosoftAD"
        operation.name = "CreateMicrosoftAD"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMicrosoftADRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMicrosoftADResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_trust, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateTrust"
        operation.name = "CreateTrust"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_ad_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteADAssessment"
        operation.name = "DeleteADAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteADAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteADAssessmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_conditional_forwarder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteConditionalForwarder"
        operation.name = "DeleteConditionalForwarder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConditionalForwarderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConditionalForwarderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteDirectory"
        operation.name = "DeleteDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:delete_log_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteLogSubscription"
        operation.name = "DeleteLogSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLogSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:delete_trust, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteTrust"
        operation.name = "DeleteTrust"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeregisterCertificate"
        operation.name = "DeregisterCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterCertificateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_event_topic, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeregisterEventTopic"
        operation.name = "DeregisterEventTopic"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterEventTopicRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterEventTopicResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_ad_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeADAssessment"
        operation.name = "DescribeADAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeADAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeADAssessmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_client_authentication_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeClientAuthenticationSettings"
        operation.name = "DescribeClientAuthenticationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientAuthenticationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientAuthenticationSettingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClientAuthenticationSettings.new
      end)
      service.add_operation(:describe_conditional_forwarders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeConditionalForwarders"
        operation.name = "DescribeConditionalForwarders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConditionalForwardersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConditionalForwardersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_directories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDirectories"
        operation.name = "DescribeDirectories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoriesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDirectoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDirectories.new
      end)
      service.add_operation(:describe_directory_data_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDirectoryDataAccess"
        operation.name = "DescribeDirectoryDataAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoryDataAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoryDataAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_domain_controllers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDomainControllers"
        operation.name = "DescribeDomainControllers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainControllersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainControllersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDomainControllers.new
      end)
      service.add_operation(:describe_event_topics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeEventTopics"
        operation.name = "DescribeEventTopics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTopicsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventTopicsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_hybrid_ad_update, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeHybridADUpdate"
        operation.name = "DescribeHybridADUpdate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHybridADUpdateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHybridADUpdateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_ldaps_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeLDAPSSettings"
        operation.name = "DescribeLDAPSSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLDAPSSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLDAPSSettingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLDAPSSettings.new
      end)
      service.add_operation(:describe_regions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeRegions"
        operation.name = "DescribeRegions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegions.new
      end)
      service.add_operation(:describe_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSettings"
        operation.name = "DescribeSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSettingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_shared_directories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSharedDirectories"
        operation.name = "DescribeSharedDirectories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSharedDirectoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSharedDirectoriesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSharedDirectories.new
      end)
      service.add_operation(:describe_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_trusts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeTrusts"
        operation.name = "DescribeTrusts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrusts.new
      end)
      service.add_operation(:describe_update_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeUpdateDirectory"
        operation.name = "DescribeUpdateDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUpdateDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUpdateDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUpdateDirectory.new
      end)
      service.add_operation(:disable_client_authentication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableClientAuthentication"
        operation.name = "DisableClientAuthentication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableClientAuthenticationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableClientAuthenticationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientAuthStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disable_directory_data_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableDirectoryDataAccess"
        operation.name = "DisableDirectoryDataAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDirectoryDataAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDirectoryDataAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryInDesiredStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disable_ldaps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableLDAPS"
        operation.name = "DisableLDAPS"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLDAPSRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLDAPSResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLDAPSStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disable_radius, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableRadius"
        operation.name = "DisableRadius"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableRadiusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableRadiusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:disable_sso, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableSso"
        operation.name = "DisableSso"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSsoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSsoResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:enable_client_authentication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableClientAuthentication"
        operation.name = "EnableClientAuthentication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableClientAuthenticationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableClientAuthenticationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientAuthStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableCertificateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:enable_directory_data_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableDirectoryDataAccess"
        operation.name = "EnableDirectoryDataAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDirectoryDataAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDirectoryDataAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryInDesiredStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:enable_ldaps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableLDAPS"
        operation.name = "EnableLDAPS"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLDAPSRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLDAPSResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLDAPSStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableCertificateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:enable_radius, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableRadius"
        operation.name = "EnableRadius"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableRadiusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableRadiusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:enable_sso, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableSso"
        operation.name = "EnableSso"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSsoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSsoResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:get_directory_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#GetDirectoryLimits"
        operation.name = "GetDirectoryLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryLimitsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:get_snapshot_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#GetSnapshotLimits"
        operation.name = "GetSnapshotLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSnapshotLimitsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:list_ad_assessments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListADAssessments"
        operation.name = "ListADAssessments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListADAssessmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListADAssessmentsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListADAssessments.new
      end)
      service.add_operation(:list_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_ip_routes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListIpRoutes"
        operation.name = "ListIpRoutes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIpRoutesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIpRoutesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListIpRoutes.new
      end)
      service.add_operation(:list_log_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListLogSubscriptions"
        operation.name = "ListLogSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogSubscriptionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogSubscriptions.new
      end)
      service.add_operation(:list_schema_extensions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListSchemaExtensions"
        operation.name = "ListSchemaExtensions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemaExtensionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchemaExtensionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSchemaExtensions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:register_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RegisterCertificate"
        operation.name = "RegisterCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterCertificateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCertificateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:register_event_topic, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RegisterEventTopic"
        operation.name = "RegisterEventTopic"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEventTopicRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEventTopicResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:reject_shared_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RejectSharedDirectory"
        operation.name = "RejectSharedDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectSharedDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectSharedDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryAlreadySharedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:remove_ip_routes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveIpRoutes"
        operation.name = "RemoveIpRoutes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveIpRoutesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveIpRoutesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:remove_region, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveRegion"
        operation.name = "RemoveRegion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveRegionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveRegionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:reset_user_password, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ResetUserPassword"
        operation.name = "ResetUserPassword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetUserPasswordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetUserPasswordResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserDoesNotExistException)
        operation.traits = {}
      end)
      service.add_operation(:restore_from_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RestoreFromSnapshot"
        operation.name = "RestoreFromSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:share_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ShareDirectory"
        operation.name = "ShareDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryAlreadySharedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ShareLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_ad_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#StartADAssessment"
        operation.name = "StartADAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartADAssessmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartADAssessmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ADAssessmentLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_schema_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#StartSchemaExtension"
        operation.name = "StartSchemaExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSchemaExtensionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:unshare_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UnshareDirectory"
        operation.name = "UnshareDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnshareDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UnshareDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNotSharedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:update_conditional_forwarder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateConditionalForwarder"
        operation.name = "UpdateConditionalForwarder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConditionalForwarderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConditionalForwarderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_directory_setup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateDirectorySetup"
        operation.name = "UpdateDirectorySetup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectorySetupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectorySetupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryInDesiredStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_hybrid_ad, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateHybridAD"
        operation.name = "UpdateHybridAD"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHybridADRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHybridADResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ADAssessmentLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_number_of_domain_controllers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateNumberOfDomainControllers"
        operation.name = "UpdateNumberOfDomainControllers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNumberOfDomainControllersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNumberOfDomainControllersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DomainControllerLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_radius, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateRadius"
        operation.name = "UpdateRadius"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRadiusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRadiusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:update_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateSettings"
        operation.name = "UpdateSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettingsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleSettingsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedSettingsException)
        operation.traits = {}
      end)
      service.add_operation(:update_trust, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateTrust"
        operation.name = "UpdateTrust"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.traits = {}
      end)
      service.add_operation(:verify_trust, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#VerifyTrust"
        operation.name = "VerifyTrust"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyTrustRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyTrustResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
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
