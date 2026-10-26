# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ADAssessmentLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ADAssessmentLimitExceededException", name: "ADAssessmentLimitExceededException", traits: {"smithy.api#error" => "client"})
    AcceptSharedDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AcceptSharedDirectoryRequest", name: "AcceptSharedDirectoryRequest")
    AcceptSharedDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AcceptSharedDirectoryResult", name: "AcceptSharedDirectoryResult")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AccessUrl", name: "AccessUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AddIpRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddIpRoutesRequest", name: "AddIpRoutesRequest")
    AddIpRoutesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddIpRoutesResult", name: "AddIpRoutesResult")
    AddRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddRegionRequest", name: "AddRegionRequest")
    AddRegionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddRegionResult", name: "AddRegionResult")
    AddTagsToResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddTagsToResourceRequest", name: "AddTagsToResourceRequest")
    AddTagsToResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AddTagsToResourceResult", name: "AddTagsToResourceResult")
    AddedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#AddedDateTime", name: "AddedDateTime")
    AdditionalRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#AdditionalRegions", name: "AdditionalRegions")
    AliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AliasName", name: "AliasName", traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^(?!D-|d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*$"})
    Assessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Assessment", name: "Assessment")
    AssessmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AssessmentConfiguration", name: "AssessmentConfiguration")
    AssessmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentId", name: "AssessmentId", traits: {"smithy.api#pattern" => "^da-[0-9a-f]{18}$"})
    AssessmentInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentInstanceId", name: "AssessmentInstanceId", traits: {"smithy.api#pattern" => "^(i-[0-9a-f]{8}|i-[0-9a-f]{17}|mi-[0-9a-f]{8}|mi-[0-9a-f]{17})$"})
    AssessmentInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#AssessmentInstanceIds", name: "AssessmentInstanceIds", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    AssessmentLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#AssessmentLimit", name: "AssessmentLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    AssessmentReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AssessmentReport", name: "AssessmentReport")
    AssessmentReportType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentReportType", name: "AssessmentReportType")
    AssessmentReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#AssessmentReports", name: "AssessmentReports")
    AssessmentStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#AssessmentStartTime", name: "AssessmentStartTime")
    AssessmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentStatus", name: "AssessmentStatus")
    AssessmentStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentStatusCode", name: "AssessmentStatusCode")
    AssessmentStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentStatusReason", name: "AssessmentStatusReason")
    AssessmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AssessmentSummary", name: "AssessmentSummary")
    AssessmentValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AssessmentValidation", name: "AssessmentValidation")
    AssessmentValidationCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationCategory", name: "AssessmentValidationCategory")
    AssessmentValidationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationName", name: "AssessmentValidationName")
    AssessmentValidationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationStatus", name: "AssessmentValidationStatus")
    AssessmentValidationStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationStatusCode", name: "AssessmentValidationStatusCode")
    AssessmentValidationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationStatusReason", name: "AssessmentValidationStatusReason")
    AssessmentValidationTimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#AssessmentValidationTimeStamp", name: "AssessmentValidationTimeStamp")
    AssessmentValidations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#AssessmentValidations", name: "AssessmentValidations")
    AssessmentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AssessmentVersion", name: "AssessmentVersion")
    Assessments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Assessments", name: "Assessments")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Attribute", name: "Attribute")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AttributeValue", name: "AttributeValue")
    Attributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Attributes", name: "Attributes")
    AuthenticationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#AuthenticationFailedException", name: "AuthenticationFailedException", traits: {"smithy.api#error" => "client"})
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#AvailabilityZones", name: "AvailabilityZones")
    CaEnrollmentPolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#CaEnrollmentPolicyStatus", name: "CaEnrollmentPolicyStatus")
    CaEnrollmentPolicyStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CaEnrollmentPolicyStatusReason", name: "CaEnrollmentPolicyStatusReason")
    CancelSchemaExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CancelSchemaExtensionRequest", name: "CancelSchemaExtensionRequest")
    CancelSchemaExtensionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CancelSchemaExtensionResult", name: "CancelSchemaExtensionResult")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Certificate", name: "Certificate")
    CertificateAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CertificateAlreadyExistsException", name: "CertificateAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    CertificateCN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CertificateCN", name: "CertificateCN")
    CertificateData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CertificateData", name: "CertificateData", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    CertificateDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CertificateDoesNotExistException", name: "CertificateDoesNotExistException", traits: {"smithy.api#error" => "client"})
    CertificateExpiryDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#CertificateExpiryDateTime", name: "CertificateExpiryDateTime")
    CertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CertificateId", name: "CertificateId", traits: {"smithy.api#pattern" => "^c-[0-9a-f]{10}$"})
    CertificateInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CertificateInUseException", name: "CertificateInUseException", traits: {"smithy.api#error" => "client"})
    CertificateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CertificateInfo", name: "CertificateInfo")
    CertificateLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CertificateLimitExceededException", name: "CertificateLimitExceededException", traits: {"smithy.api#error" => "client"})
    CertificateRegisteredDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#CertificateRegisteredDateTime", name: "CertificateRegisteredDateTime")
    CertificateState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#CertificateState", name: "CertificateState")
    CertificateStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CertificateStateReason", name: "CertificateStateReason")
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#CertificateType", name: "CertificateType")
    CertificatesInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#CertificatesInfo", name: "CertificatesInfo")
    CidrIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CidrIp", name: "CidrIp", traits: {"smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$"})
    CidrIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#CidrIps", name: "CidrIps")
    CidrIpv6 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CidrIpv6", name: "CidrIpv6", traits: {"smithy.api#pattern" => "^((([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4})|(([0-9a-fA-F]{1,4}:){1,7}:)|(([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4})|(([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2})|(([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3})|(([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4})|(([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5})|([0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6}))|(:((:[0-9a-fA-F]{1,4}){1,7}|:)))\\/(12[0-8]|1[01][0-9]|[1-9]?[0-9])$"})
    CidrIpv6s = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#CidrIpv6s", name: "CidrIpv6s")
    ClientAuthenticationSettingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ClientAuthenticationSettingInfo", name: "ClientAuthenticationSettingInfo")
    ClientAuthenticationSettingsInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#ClientAuthenticationSettingsInfo", name: "ClientAuthenticationSettingsInfo")
    ClientAuthenticationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#ClientAuthenticationStatus", name: "ClientAuthenticationStatus")
    ClientAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#ClientAuthenticationType", name: "ClientAuthenticationType")
    ClientCertAuthSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ClientCertAuthSettings", name: "ClientCertAuthSettings")
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client"})
    CloudOnlyDirectoriesLimitReached = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#CloudOnlyDirectoriesLimitReached", name: "CloudOnlyDirectoriesLimitReached", traits: {"smithy.api#default" => false})
    Computer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Computer", name: "Computer")
    ComputerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#ComputerName", name: "ComputerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    ComputerPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#ComputerPassword", name: "ComputerPassword", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    ConditionalForwarder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ConditionalForwarder", name: "ConditionalForwarder")
    ConditionalForwarders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#ConditionalForwarders", name: "ConditionalForwarders")
    ConnectDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ConnectDirectoryRequest", name: "ConnectDirectoryRequest")
    ConnectDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ConnectDirectoryResult", name: "ConnectDirectoryResult")
    ConnectPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#ConnectPassword", name: "ConnectPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    ConnectedDirectoriesLimitReached = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#ConnectedDirectoriesLimitReached", name: "ConnectedDirectoriesLimitReached", traits: {"smithy.api#default" => false})
    CreateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateAliasRequest", name: "CreateAliasRequest")
    CreateAliasResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateAliasResult", name: "CreateAliasResult")
    CreateComputerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateComputerRequest", name: "CreateComputerRequest")
    CreateComputerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateComputerResult", name: "CreateComputerResult")
    CreateConditionalForwarderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateConditionalForwarderRequest", name: "CreateConditionalForwarderRequest")
    CreateConditionalForwarderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateConditionalForwarderResult", name: "CreateConditionalForwarderResult")
    CreateDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateDirectoryRequest", name: "CreateDirectoryRequest")
    CreateDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateDirectoryResult", name: "CreateDirectoryResult")
    CreateHybridADRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateHybridADRequest", name: "CreateHybridADRequest")
    CreateHybridADResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateHybridADResult", name: "CreateHybridADResult")
    CreateLogSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateLogSubscriptionRequest", name: "CreateLogSubscriptionRequest")
    CreateLogSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateLogSubscriptionResult", name: "CreateLogSubscriptionResult")
    CreateMicrosoftADRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateMicrosoftADRequest", name: "CreateMicrosoftADRequest")
    CreateMicrosoftADResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateMicrosoftADResult", name: "CreateMicrosoftADResult")
    CreateSnapshotBeforeSchemaExtension = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#CreateSnapshotBeforeSchemaExtension", name: "CreateSnapshotBeforeSchemaExtension", traits: {"smithy.api#default" => false})
    CreateSnapshotBeforeUpdate = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#CreateSnapshotBeforeUpdate", name: "CreateSnapshotBeforeUpdate", traits: {"smithy.api#default" => false})
    CreateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateSnapshotRequest", name: "CreateSnapshotRequest")
    CreateSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateSnapshotResult", name: "CreateSnapshotResult")
    CreateTrustRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateTrustRequest", name: "CreateTrustRequest")
    CreateTrustResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#CreateTrustResult", name: "CreateTrustResult")
    CreatedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#CreatedDateTime", name: "CreatedDateTime")
    CustomerDnsIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#CustomerDnsIps", name: "CustomerDnsIps", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    CustomerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CustomerId", name: "CustomerId", traits: {"smithy.api#pattern" => "^(\\d{12})$"})
    CustomerUserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#CustomerUserName", name: "CustomerUserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!.*\\\\|.*\"|.*\\/|.*\\[|.*\\]|.*:|.*;|.*\\||.*=|.*,|.*\\+|.*\\*|.*\\?|.*<|.*>|.*@).*$"})
    DataAccessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DataAccessStatus", name: "DataAccessStatus")
    DeleteADAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteADAssessmentRequest", name: "DeleteADAssessmentRequest")
    DeleteADAssessmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteADAssessmentResult", name: "DeleteADAssessmentResult")
    DeleteAssociatedConditionalForwarder = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#DeleteAssociatedConditionalForwarder", name: "DeleteAssociatedConditionalForwarder", traits: {"smithy.api#default" => false})
    DeleteConditionalForwarderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteConditionalForwarderRequest", name: "DeleteConditionalForwarderRequest")
    DeleteConditionalForwarderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteConditionalForwarderResult", name: "DeleteConditionalForwarderResult")
    DeleteDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteDirectoryRequest", name: "DeleteDirectoryRequest")
    DeleteDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteDirectoryResult", name: "DeleteDirectoryResult")
    DeleteLogSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteLogSubscriptionRequest", name: "DeleteLogSubscriptionRequest")
    DeleteLogSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteLogSubscriptionResult", name: "DeleteLogSubscriptionResult")
    DeleteSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteSnapshotRequest", name: "DeleteSnapshotRequest")
    DeleteSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteSnapshotResult", name: "DeleteSnapshotResult")
    DeleteTrustRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteTrustRequest", name: "DeleteTrustRequest")
    DeleteTrustResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeleteTrustResult", name: "DeleteTrustResult")
    DeregisterCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeregisterCertificateRequest", name: "DeregisterCertificateRequest")
    DeregisterCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeregisterCertificateResult", name: "DeregisterCertificateResult")
    DeregisterEventTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeregisterEventTopicRequest", name: "DeregisterEventTopicRequest")
    DeregisterEventTopicResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DeregisterEventTopicResult", name: "DeregisterEventTopicResult")
    DescribeADAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeADAssessmentRequest", name: "DescribeADAssessmentRequest")
    DescribeADAssessmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeADAssessmentResult", name: "DescribeADAssessmentResult")
    DescribeCAEnrollmentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeCAEnrollmentPolicyRequest", name: "DescribeCAEnrollmentPolicyRequest")
    DescribeCAEnrollmentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeCAEnrollmentPolicyResult", name: "DescribeCAEnrollmentPolicyResult")
    DescribeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeCertificateRequest", name: "DescribeCertificateRequest")
    DescribeCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeCertificateResult", name: "DescribeCertificateResult")
    DescribeClientAuthenticationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeClientAuthenticationSettingsRequest", name: "DescribeClientAuthenticationSettingsRequest")
    DescribeClientAuthenticationSettingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeClientAuthenticationSettingsResult", name: "DescribeClientAuthenticationSettingsResult")
    DescribeConditionalForwardersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeConditionalForwardersRequest", name: "DescribeConditionalForwardersRequest")
    DescribeConditionalForwardersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeConditionalForwardersResult", name: "DescribeConditionalForwardersResult")
    DescribeDirectoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDirectoriesRequest", name: "DescribeDirectoriesRequest")
    DescribeDirectoriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDirectoriesResult", name: "DescribeDirectoriesResult")
    DescribeDirectoryDataAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDirectoryDataAccessRequest", name: "DescribeDirectoryDataAccessRequest")
    DescribeDirectoryDataAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDirectoryDataAccessResult", name: "DescribeDirectoryDataAccessResult")
    DescribeDomainControllersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDomainControllersRequest", name: "DescribeDomainControllersRequest")
    DescribeDomainControllersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeDomainControllersResult", name: "DescribeDomainControllersResult")
    DescribeEventTopicsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeEventTopicsRequest", name: "DescribeEventTopicsRequest")
    DescribeEventTopicsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeEventTopicsResult", name: "DescribeEventTopicsResult")
    DescribeHybridADUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeHybridADUpdateRequest", name: "DescribeHybridADUpdateRequest")
    DescribeHybridADUpdateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeHybridADUpdateResult", name: "DescribeHybridADUpdateResult")
    DescribeLDAPSSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeLDAPSSettingsRequest", name: "DescribeLDAPSSettingsRequest")
    DescribeLDAPSSettingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeLDAPSSettingsResult", name: "DescribeLDAPSSettingsResult")
    DescribeRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeRegionsRequest", name: "DescribeRegionsRequest")
    DescribeRegionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeRegionsResult", name: "DescribeRegionsResult")
    DescribeSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSettingsRequest", name: "DescribeSettingsRequest")
    DescribeSettingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSettingsResult", name: "DescribeSettingsResult")
    DescribeSharedDirectoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSharedDirectoriesRequest", name: "DescribeSharedDirectoriesRequest")
    DescribeSharedDirectoriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSharedDirectoriesResult", name: "DescribeSharedDirectoriesResult")
    DescribeSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSnapshotsRequest", name: "DescribeSnapshotsRequest")
    DescribeSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeSnapshotsResult", name: "DescribeSnapshotsResult")
    DescribeTrustsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeTrustsRequest", name: "DescribeTrustsRequest")
    DescribeTrustsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeTrustsResult", name: "DescribeTrustsResult")
    DescribeUpdateDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeUpdateDirectoryRequest", name: "DescribeUpdateDirectoryRequest")
    DescribeUpdateDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DescribeUpdateDirectoryResult", name: "DescribeUpdateDirectoryResult")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    DesiredNumberOfDomainControllers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#DesiredNumberOfDomainControllers", name: "DesiredNumberOfDomainControllers", traits: {"smithy.api#range" => {"min" => 2}})
    DirectoryAlreadyInRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryAlreadyInRegionException", name: "DirectoryAlreadyInRegionException", traits: {"smithy.api#error" => "client"})
    DirectoryAlreadySharedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryAlreadySharedException", name: "DirectoryAlreadySharedException", traits: {"smithy.api#error" => "client"})
    DirectoryConfigurationSettingAllowedValues = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingAllowedValues", name: "DirectoryConfigurationSettingAllowedValues")
    DirectoryConfigurationSettingDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingDataType", name: "DirectoryConfigurationSettingDataType")
    DirectoryConfigurationSettingLastRequestedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingLastRequestedDateTime", name: "DirectoryConfigurationSettingLastRequestedDateTime")
    DirectoryConfigurationSettingLastUpdatedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingLastUpdatedDateTime", name: "DirectoryConfigurationSettingLastUpdatedDateTime")
    DirectoryConfigurationSettingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingName", name: "DirectoryConfigurationSettingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-/. _]*$"})
    DirectoryConfigurationSettingRequestDetailedStatus = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingRequestDetailedStatus", name: "DirectoryConfigurationSettingRequestDetailedStatus")
    DirectoryConfigurationSettingRequestStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingRequestStatusMessage", name: "DirectoryConfigurationSettingRequestStatusMessage")
    DirectoryConfigurationSettingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingType", name: "DirectoryConfigurationSettingType")
    DirectoryConfigurationSettingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationSettingValue", name: "DirectoryConfigurationSettingValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_]*$"})
    DirectoryConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DirectoryConfigurationStatus", name: "DirectoryConfigurationStatus")
    DirectoryConnectSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryConnectSettings", name: "DirectoryConnectSettings")
    DirectoryConnectSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryConnectSettingsDescription", name: "DirectoryConnectSettingsDescription")
    DirectoryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryDescription", name: "DirectoryDescription")
    DirectoryDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DirectoryDescriptions", name: "DirectoryDescriptions")
    DirectoryDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryDoesNotExistException", name: "DirectoryDoesNotExistException", traits: {"smithy.api#error" => "client"})
    DirectoryEdition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DirectoryEdition", name: "DirectoryEdition")
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryId", name: "DirectoryId", traits: {"smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DirectoryIds", name: "DirectoryIds")
    DirectoryInDesiredStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryInDesiredStateException", name: "DirectoryInDesiredStateException", traits: {"smithy.api#error" => "client"})
    DirectoryLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryLimitExceededException", name: "DirectoryLimitExceededException", traits: {"smithy.api#error" => "client"})
    DirectoryLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryLimits", name: "DirectoryLimits")
    DirectoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryName", name: "DirectoryName", traits: {"smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"})
    DirectoryNotSharedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryNotSharedException", name: "DirectoryNotSharedException", traits: {"smithy.api#error" => "client"})
    DirectoryShortName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DirectoryShortName", name: "DirectoryShortName", traits: {"smithy.api#pattern" => "^[^\\\\/:*?\"<>|.]+[^\\\\/:*?\"<>|]*$"})
    DirectorySize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DirectorySize", name: "DirectorySize")
    DirectorySizeUpdateSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectorySizeUpdateSettings", name: "DirectorySizeUpdateSettings")
    DirectoryStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DirectoryStage", name: "DirectoryStage")
    DirectoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DirectoryType", name: "DirectoryType")
    DirectoryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryUnavailableException", name: "DirectoryUnavailableException", traits: {"smithy.api#error" => "client"})
    DirectoryVpcSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryVpcSettings", name: "DirectoryVpcSettings")
    DirectoryVpcSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DirectoryVpcSettingsDescription", name: "DirectoryVpcSettingsDescription")
    DisableAlreadyInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableAlreadyInProgressException", name: "DisableAlreadyInProgressException", traits: {"smithy.api#error" => "client"})
    DisableCAEnrollmentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableCAEnrollmentPolicyRequest", name: "DisableCAEnrollmentPolicyRequest")
    DisableCAEnrollmentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableCAEnrollmentPolicyResult", name: "DisableCAEnrollmentPolicyResult")
    DisableClientAuthenticationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableClientAuthenticationRequest", name: "DisableClientAuthenticationRequest")
    DisableClientAuthenticationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableClientAuthenticationResult", name: "DisableClientAuthenticationResult")
    DisableDirectoryDataAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableDirectoryDataAccessRequest", name: "DisableDirectoryDataAccessRequest")
    DisableDirectoryDataAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableDirectoryDataAccessResult", name: "DisableDirectoryDataAccessResult")
    DisableLDAPSRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableLDAPSRequest", name: "DisableLDAPSRequest")
    DisableLDAPSResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableLDAPSResult", name: "DisableLDAPSResult")
    DisableRadiusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableRadiusRequest", name: "DisableRadiusRequest")
    DisableRadiusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableRadiusResult", name: "DisableRadiusResult")
    DisableSsoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableSsoRequest", name: "DisableSsoRequest")
    DisableSsoResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DisableSsoResult", name: "DisableSsoResult")
    DnsIpAddrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DnsIpAddrs", name: "DnsIpAddrs")
    DnsIpv6Addrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DnsIpv6Addrs", name: "DnsIpv6Addrs")
    DomainController = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DomainController", name: "DomainController")
    DomainControllerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DomainControllerId", name: "DomainControllerId", traits: {"smithy.api#pattern" => "^dc-[0-9a-f]{10}$"})
    DomainControllerIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DomainControllerIds", name: "DomainControllerIds")
    DomainControllerLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#DomainControllerLimitExceededException", name: "DomainControllerLimitExceededException", traits: {"smithy.api#error" => "client"})
    DomainControllerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#DomainControllerStatus", name: "DomainControllerStatus")
    DomainControllerStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#DomainControllerStatusReason", name: "DomainControllerStatusReason")
    DomainControllers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#DomainControllers", name: "DomainControllers")
    EnableAlreadyInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableAlreadyInProgressException", name: "EnableAlreadyInProgressException", traits: {"smithy.api#error" => "client"})
    EnableCAEnrollmentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableCAEnrollmentPolicyRequest", name: "EnableCAEnrollmentPolicyRequest")
    EnableCAEnrollmentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableCAEnrollmentPolicyResult", name: "EnableCAEnrollmentPolicyResult")
    EnableClientAuthenticationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableClientAuthenticationRequest", name: "EnableClientAuthenticationRequest")
    EnableClientAuthenticationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableClientAuthenticationResult", name: "EnableClientAuthenticationResult")
    EnableDirectoryDataAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableDirectoryDataAccessRequest", name: "EnableDirectoryDataAccessRequest")
    EnableDirectoryDataAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableDirectoryDataAccessResult", name: "EnableDirectoryDataAccessResult")
    EnableLDAPSRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableLDAPSRequest", name: "EnableLDAPSRequest")
    EnableLDAPSResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableLDAPSResult", name: "EnableLDAPSResult")
    EnableRadiusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableRadiusRequest", name: "EnableRadiusRequest")
    EnableRadiusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableRadiusResult", name: "EnableRadiusResult")
    EnableSsoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableSsoRequest", name: "EnableSsoRequest")
    EnableSsoResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EnableSsoResult", name: "EnableSsoResult")
    EndDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#EndDateTime", name: "EndDateTime")
    EntityAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EntityAlreadyExistsException", name: "EntityAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    EntityDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EntityDoesNotExistException", name: "EntityDoesNotExistException", traits: {"smithy.api#error" => "client"})
    EventTopic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#EventTopic", name: "EventTopic")
    EventTopics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#EventTopics", name: "EventTopics")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#ExceptionMessage", name: "ExceptionMessage")
    GetDirectoryLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#GetDirectoryLimitsRequest", name: "GetDirectoryLimitsRequest")
    GetDirectoryLimitsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#GetDirectoryLimitsResult", name: "GetDirectoryLimitsResult")
    GetSnapshotLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#GetSnapshotLimitsRequest", name: "GetSnapshotLimitsRequest")
    GetSnapshotLimitsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#GetSnapshotLimitsResult", name: "GetSnapshotLimitsResult")
    HybridAdministratorAccountUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridAdministratorAccountUpdate", name: "HybridAdministratorAccountUpdate")
    HybridCustomerInstancesSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridCustomerInstancesSettings", name: "HybridCustomerInstancesSettings")
    HybridSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridSettingsDescription", name: "HybridSettingsDescription")
    HybridUpdateActivities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridUpdateActivities", name: "HybridUpdateActivities")
    HybridUpdateInfoEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#HybridUpdateInfoEntries", name: "HybridUpdateInfoEntries")
    HybridUpdateInfoEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridUpdateInfoEntry", name: "HybridUpdateInfoEntry")
    HybridUpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#HybridUpdateType", name: "HybridUpdateType")
    HybridUpdateValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#HybridUpdateValue", name: "HybridUpdateValue")
    IncompatibleSettingsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#IncompatibleSettingsException", name: "IncompatibleSettingsException", traits: {"smithy.api#error" => "client"})
    InitiatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#InitiatedBy", name: "InitiatedBy")
    InsufficientPermissionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InsufficientPermissionsException", name: "InsufficientPermissionsException", traits: {"smithy.api#error" => "client"})
    InvalidCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidCertificateException", name: "InvalidCertificateException", traits: {"smithy.api#error" => "client"})
    InvalidClientAuthStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidClientAuthStatusException", name: "InvalidClientAuthStatusException", traits: {"smithy.api#error" => "client"})
    InvalidLDAPSStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidLDAPSStatusException", name: "InvalidLDAPSStatusException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidPasswordException", name: "InvalidPasswordException", traits: {"smithy.api#error" => "client"})
    InvalidTargetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#InvalidTargetException", name: "InvalidTargetException", traits: {"smithy.api#error" => "client"})
    IpAddr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#IpAddr", name: "IpAddr", traits: {"smithy.api#pattern" => "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"})
    IpAddrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#IpAddrs", name: "IpAddrs")
    IpRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#IpRoute", name: "IpRoute")
    IpRouteInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#IpRouteInfo", name: "IpRouteInfo")
    IpRouteLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#IpRouteLimitExceededException", name: "IpRouteLimitExceededException", traits: {"smithy.api#error" => "client"})
    IpRouteStatusMsg = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#IpRouteStatusMsg", name: "IpRouteStatusMsg")
    IpRouteStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#IpRouteStatusReason", name: "IpRouteStatusReason")
    IpRoutes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#IpRoutes", name: "IpRoutes")
    IpRoutesInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#IpRoutesInfo", name: "IpRoutesInfo")
    IpV6Addrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#IpV6Addrs", name: "IpV6Addrs")
    Ipv6Addr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#Ipv6Addr", name: "Ipv6Addr", traits: {"smithy.api#pattern" => "^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$"})
    LDAPSSettingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#LDAPSSettingInfo", name: "LDAPSSettingInfo")
    LDAPSSettingsInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#LDAPSSettingsInfo", name: "LDAPSSettingsInfo")
    LDAPSStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#LDAPSStatus", name: "LDAPSStatus")
    LDAPSStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#LDAPSStatusReason", name: "LDAPSStatusReason")
    LDAPSType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#LDAPSType", name: "LDAPSType")
    LastUpdateDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#LastUpdateDateTime", name: "LastUpdateDateTime")
    LastUpdatedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#LastUpdatedDateTime", name: "LastUpdatedDateTime")
    LaunchTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#LaunchTime", name: "LaunchTime")
    LdifContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#LdifContent", name: "LdifContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 500000}})
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#Limit", name: "Limit", traits: {"smithy.api#range" => {"min" => 0}})
    ListADAssessmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListADAssessmentsRequest", name: "ListADAssessmentsRequest")
    ListADAssessmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListADAssessmentsResult", name: "ListADAssessmentsResult")
    ListCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListCertificatesRequest", name: "ListCertificatesRequest")
    ListCertificatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListCertificatesResult", name: "ListCertificatesResult")
    ListIpRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListIpRoutesRequest", name: "ListIpRoutesRequest")
    ListIpRoutesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListIpRoutesResult", name: "ListIpRoutesResult")
    ListLogSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListLogSubscriptionsRequest", name: "ListLogSubscriptionsRequest")
    ListLogSubscriptionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListLogSubscriptionsResult", name: "ListLogSubscriptionsResult")
    ListSchemaExtensionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListSchemaExtensionsRequest", name: "ListSchemaExtensionsRequest")
    ListSchemaExtensionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListSchemaExtensionsResult", name: "ListSchemaExtensionsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[-._/#A-Za-z0-9]+$"})
    LogSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#LogSubscription", name: "LogSubscription")
    LogSubscriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#LogSubscriptions", name: "LogSubscriptions")
    ManualSnapshotsLimitReached = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#ManualSnapshotsLimitReached", name: "ManualSnapshotsLimitReached", traits: {"smithy.api#default" => false})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#NetworkType", name: "NetworkType")
    NetworkUpdateSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#NetworkUpdateSettings", name: "NetworkUpdateSettings")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#NextToken", name: "NextToken")
    NoAvailableCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#NoAvailableCertificateException", name: "NoAvailableCertificateException", traits: {"smithy.api#error" => "client"})
    Notes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#Notes", name: "Notes", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    OCSPUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#OCSPUrl", name: "OCSPUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(https?|ftp|file|ldaps?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;()]*[-a-zA-Z0-9+&@#/%=~_|()]$"})
    OSUpdateSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#OSUpdateSettings", name: "OSUpdateSettings")
    OSVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#OSVersion", name: "OSVersion")
    OrganizationalUnitDN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#OrganizationalUnitDN", name: "OrganizationalUnitDN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    OrganizationsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#OrganizationsException", name: "OrganizationsException", traits: {"smithy.api#error" => "client"})
    OwnerDirectoryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#OwnerDirectoryDescription", name: "OwnerDirectoryDescription")
    PageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#PageLimit", name: "PageLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#Password", name: "Password", traits: {"smithy.api#pattern" => "^(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^", "smithy.api#sensitive" => {}})
    PcaConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#PcaConnectorArn", name: "PcaConnectorArn", traits: {"smithy.api#pattern" => "^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1025, "max" => 65535}})
    RadiusAuthenticationProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#RadiusAuthenticationProtocol", name: "RadiusAuthenticationProtocol")
    RadiusDisplayLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#RadiusDisplayLabel", name: "RadiusDisplayLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RadiusRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#RadiusRetries", name: "RadiusRetries", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    RadiusSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RadiusSettings", name: "RadiusSettings")
    RadiusSharedSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#RadiusSharedSecret", name: "RadiusSharedSecret", traits: {"smithy.api#length" => {"min" => 8, "max" => 512}, "smithy.api#pattern" => "^(\\p{LD}|\\p{Punct}| )+$", "smithy.api#sensitive" => {}})
    RadiusStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#RadiusStatus", name: "RadiusStatus")
    RadiusTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservice#RadiusTimeout", name: "RadiusTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    RegionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegionDescription", name: "RegionDescription")
    RegionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegionLimitExceededException", name: "RegionLimitExceededException", traits: {"smithy.api#error" => "client"})
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 8, "max" => 32}})
    RegionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#RegionType", name: "RegionType")
    RegionsDescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#RegionsDescription", name: "RegionsDescription")
    RegionsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegionsInfo", name: "RegionsInfo")
    RegisterCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegisterCertificateRequest", name: "RegisterCertificateRequest")
    RegisterCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegisterCertificateResult", name: "RegisterCertificateResult")
    RegisterEventTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegisterEventTopicRequest", name: "RegisterEventTopicRequest")
    RegisterEventTopicResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RegisterEventTopicResult", name: "RegisterEventTopicResult")
    RejectSharedDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RejectSharedDirectoryRequest", name: "RejectSharedDirectoryRequest")
    RejectSharedDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RejectSharedDirectoryResult", name: "RejectSharedDirectoryResult")
    RemoteDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#RemoteDomainName", name: "RemoteDomainName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"})
    RemoteDomainNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#RemoteDomainNames", name: "RemoteDomainNames")
    RemoveIpRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveIpRoutesRequest", name: "RemoveIpRoutesRequest")
    RemoveIpRoutesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveIpRoutesResult", name: "RemoveIpRoutesResult")
    RemoveRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveRegionRequest", name: "RemoveRegionRequest")
    RemoveRegionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveRegionResult", name: "RemoveRegionResult")
    RemoveTagsFromResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveTagsFromResourceRequest", name: "RemoveTagsFromResourceRequest")
    RemoveTagsFromResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RemoveTagsFromResourceResult", name: "RemoveTagsFromResourceResult")
    ReplicationScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#ReplicationScope", name: "ReplicationScope")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#RequestId", name: "RequestId", traits: {"smithy.api#pattern" => "^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$"})
    ResetUserPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ResetUserPasswordRequest", name: "ResetUserPasswordRequest")
    ResetUserPasswordResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ResetUserPasswordResult", name: "ResetUserPasswordResult")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#ResourceId", name: "ResourceId", traits: {"smithy.api#pattern" => "^[d]-[0-9a-f]{10}$"})
    RestoreFromSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RestoreFromSnapshotRequest", name: "RestoreFromSnapshotRequest")
    RestoreFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#RestoreFromSnapshotResult", name: "RestoreFromSnapshotResult")
    SID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SID", name: "SID", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[&\\w+-.@]+$"})
    SchemaExtensionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SchemaExtensionId", name: "SchemaExtensionId", traits: {"smithy.api#pattern" => "^e-[0-9a-f]{10}$"})
    SchemaExtensionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#SchemaExtensionInfo", name: "SchemaExtensionInfo")
    SchemaExtensionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#SchemaExtensionStatus", name: "SchemaExtensionStatus")
    SchemaExtensionStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SchemaExtensionStatusReason", name: "SchemaExtensionStatusReason")
    SchemaExtensionsInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SchemaExtensionsInfo", name: "SchemaExtensionsInfo")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SecretArn", name: "SecretArn", traits: {"smithy.api#pattern" => "^arn:aws:secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+-[a-zA-Z0-9]{6}$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SelectiveAuth = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#SelectiveAuth", name: "SelectiveAuth")
    Server = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#Server", name: "Server", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Servers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Servers", name: "Servers")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server"})
    Setting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Setting", name: "Setting")
    SettingEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SettingEntries", name: "SettingEntries")
    SettingEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#SettingEntry", name: "SettingEntry")
    Settings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Settings", name: "Settings")
    ShareDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ShareDirectoryRequest", name: "ShareDirectoryRequest")
    ShareDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ShareDirectoryResult", name: "ShareDirectoryResult")
    ShareLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ShareLimitExceededException", name: "ShareLimitExceededException", traits: {"smithy.api#error" => "client"})
    ShareMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#ShareMethod", name: "ShareMethod")
    ShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#ShareStatus", name: "ShareStatus")
    ShareTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#ShareTarget", name: "ShareTarget")
    SharedDirectories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SharedDirectories", name: "SharedDirectories")
    SharedDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#SharedDirectory", name: "SharedDirectory")
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Snapshot", name: "Snapshot")
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SnapshotId", name: "SnapshotId", traits: {"smithy.api#pattern" => "^s-[0-9a-f]{10}$"})
    SnapshotIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SnapshotIds", name: "SnapshotIds")
    SnapshotLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#SnapshotLimitExceededException", name: "SnapshotLimitExceededException", traits: {"smithy.api#error" => "client"})
    SnapshotLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#SnapshotLimits", name: "SnapshotLimits")
    SnapshotName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SnapshotName", name: "SnapshotName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"})
    SnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#SnapshotStatus", name: "SnapshotStatus")
    SnapshotType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#SnapshotType", name: "SnapshotType")
    Snapshots = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Snapshots", name: "Snapshots")
    SsoEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#SsoEnabled", name: "SsoEnabled", traits: {"smithy.api#default" => false})
    StageReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#StageReason", name: "StageReason")
    StartADAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#StartADAssessmentRequest", name: "StartADAssessmentRequest")
    StartADAssessmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#StartADAssessmentResult", name: "StartADAssessmentResult")
    StartDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#StartDateTime", name: "StartDateTime")
    StartSchemaExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#StartSchemaExtensionRequest", name: "StartSchemaExtensionRequest")
    StartSchemaExtensionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#StartSchemaExtensionResult", name: "StartSchemaExtensionResult")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#StartTime", name: "StartTime")
    StateLastUpdatedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#StateLastUpdatedDateTime", name: "StateLastUpdatedDateTime")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#SubnetIds", name: "SubnetIds")
    SubscriptionCreatedDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.directoryservice#SubscriptionCreatedDateTime", name: "SubscriptionCreatedDateTime")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#TagKeys", name: "TagKeys")
    TagLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#TagLimitExceededException", name: "TagLimitExceededException", traits: {"smithy.api#error" => "client"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Tags", name: "Tags")
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#TargetType", name: "TargetType")
    TopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TopicArn", name: "TopicArn")
    TopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TopicName", name: "TopicName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    TopicNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#TopicNames", name: "TopicNames")
    TopicStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#TopicStatus", name: "TopicStatus")
    Trust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#Trust", name: "Trust")
    TrustDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#TrustDirection", name: "TrustDirection")
    TrustId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TrustId", name: "TrustId", traits: {"smithy.api#pattern" => "^t-[0-9a-f]{10}$"})
    TrustIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#TrustIds", name: "TrustIds")
    TrustPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TrustPassword", name: "TrustPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(\\p{LD}|\\p{Punct}| )+$", "smithy.api#sensitive" => {}})
    TrustState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#TrustState", name: "TrustState")
    TrustStateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#TrustStateReason", name: "TrustStateReason")
    TrustType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#TrustType", name: "TrustType")
    Trusts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#Trusts", name: "Trusts")
    UnshareDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UnshareDirectoryRequest", name: "UnshareDirectoryRequest")
    UnshareDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UnshareDirectoryResult", name: "UnshareDirectoryResult")
    UnshareTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UnshareTarget", name: "UnshareTarget")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client"})
    UnsupportedSettingsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UnsupportedSettingsException", name: "UnsupportedSettingsException", traits: {"smithy.api#error" => "client"})
    UpdateActivities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservice#UpdateActivities", name: "UpdateActivities")
    UpdateConditionalForwarderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateConditionalForwarderRequest", name: "UpdateConditionalForwarderRequest")
    UpdateConditionalForwarderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateConditionalForwarderResult", name: "UpdateConditionalForwarderResult")
    UpdateDirectorySetupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateDirectorySetupRequest", name: "UpdateDirectorySetupRequest")
    UpdateDirectorySetupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateDirectorySetupResult", name: "UpdateDirectorySetupResult")
    UpdateHybridADRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateHybridADRequest", name: "UpdateHybridADRequest")
    UpdateHybridADResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateHybridADResult", name: "UpdateHybridADResult")
    UpdateInfoEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateInfoEntry", name: "UpdateInfoEntry")
    UpdateNumberOfDomainControllersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateNumberOfDomainControllersRequest", name: "UpdateNumberOfDomainControllersRequest")
    UpdateNumberOfDomainControllersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateNumberOfDomainControllersResult", name: "UpdateNumberOfDomainControllersResult")
    UpdateRadiusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateRadiusRequest", name: "UpdateRadiusRequest")
    UpdateRadiusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateRadiusResult", name: "UpdateRadiusResult")
    UpdateSecurityGroupForDirectoryControllers = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#UpdateSecurityGroupForDirectoryControllers", name: "UpdateSecurityGroupForDirectoryControllers", traits: {"smithy.api#default" => false})
    UpdateSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateSettingsRequest", name: "UpdateSettingsRequest")
    UpdateSettingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateSettingsResult", name: "UpdateSettingsResult")
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#UpdateStatus", name: "UpdateStatus")
    UpdateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#UpdateStatusReason", name: "UpdateStatusReason")
    UpdateTrustRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateTrustRequest", name: "UpdateTrustRequest")
    UpdateTrustResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateTrustResult", name: "UpdateTrustResult")
    UpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservice#UpdateType", name: "UpdateType")
    UpdateValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UpdateValue", name: "UpdateValue")
    UseSameUsername = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservice#UseSameUsername", name: "UseSameUsername", traits: {"smithy.api#default" => false})
    UserDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#UserDoesNotExistException", name: "UserDoesNotExistException", traits: {"smithy.api#error" => "client"})
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    UserPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#UserPassword", name: "UserPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#sensitive" => {}})
    VerifyTrustRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#VerifyTrustRequest", name: "VerifyTrustRequest")
    VerifyTrustResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservice#VerifyTrustResult", name: "VerifyTrustResult")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservice#VpcId", name: "VpcId", traits: {"smithy.api#pattern" => "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"})

    ADAssessmentLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ADAssessmentLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ADAssessmentLimitExceededException.type = Types::ADAssessmentLimitExceededException
    AcceptSharedDirectoryRequest.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId", traits: {"smithy.api#required" => {}}))
    AcceptSharedDirectoryRequest.type = Types::AcceptSharedDirectoryRequest
    AcceptSharedDirectoryResult.add_member(:shared_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDirectory, name: "SharedDirectory"))
    AcceptSharedDirectoryResult.type = Types::AcceptSharedDirectoryResult
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddIpRoutesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    AddIpRoutesRequest.add_member(:ip_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRoutes, name: "IpRoutes", traits: {"smithy.api#required" => {}}))
    AddIpRoutesRequest.add_member(:update_security_group_for_directory_controllers, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSecurityGroupForDirectoryControllers, name: "UpdateSecurityGroupForDirectoryControllers", traits: {"smithy.api#default" => false}))
    AddIpRoutesRequest.type = Types::AddIpRoutesRequest
    AddIpRoutesResult.type = Types::AddIpRoutesResult
    AddRegionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    AddRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    AddRegionRequest.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettings, name: "VPCSettings", traits: {"smithy.api#required" => {}}))
    AddRegionRequest.type = Types::AddRegionRequest
    AddRegionResult.type = Types::AddRegionResult
    AddTagsToResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceRequest.type = Types::AddTagsToResourceRequest
    AddTagsToResourceResult.type = Types::AddTagsToResourceResult
    AdditionalRegions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "member"))
    Assessment.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    Assessment.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    Assessment.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DnsName"))
    Assessment.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStartTime, name: "StartTime"))
    Assessment.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateDateTime, name: "LastUpdateDateTime"))
    Assessment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "Status"))
    Assessment.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatusCode, name: "StatusCode"))
    Assessment.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatusReason, name: "StatusReason"))
    Assessment.add_member(:customer_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDnsIps, name: "CustomerDnsIps"))
    Assessment.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    Assessment.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    Assessment.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    Assessment.add_member(:self_managed_instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceIds, name: "SelfManagedInstanceIds"))
    Assessment.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReportType, name: "ReportType"))
    Assessment.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentVersion, name: "Version"))
    Assessment.type = Types::Assessment
    AssessmentConfiguration.add_member(:customer_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDnsIps, name: "CustomerDnsIps", traits: {"smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DnsName", traits: {"smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettings, name: "VpcSettings", traits: {"smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceIds, name: "InstanceIds", traits: {"smithy.api#required" => {}}))
    AssessmentConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    AssessmentConfiguration.type = Types::AssessmentConfiguration
    AssessmentInstanceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceId, name: "member"))
    AssessmentReport.add_member(:domain_controller_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "DomainControllerIp"))
    AssessmentReport.add_member(:validations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidations, name: "Validations"))
    AssessmentReport.type = Types::AssessmentReport
    AssessmentReports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReport, name: "member"))
    AssessmentSummary.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    AssessmentSummary.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    AssessmentSummary.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DnsName"))
    AssessmentSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStartTime, name: "StartTime"))
    AssessmentSummary.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateDateTime, name: "LastUpdateDateTime"))
    AssessmentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "Status"))
    AssessmentSummary.add_member(:customer_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDnsIps, name: "CustomerDnsIps"))
    AssessmentSummary.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReportType, name: "ReportType"))
    AssessmentSummary.type = Types::AssessmentSummary
    AssessmentValidation.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationCategory, name: "Category"))
    AssessmentValidation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationName, name: "Name"))
    AssessmentValidation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationStatus, name: "Status"))
    AssessmentValidation.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationStatusCode, name: "StatusCode"))
    AssessmentValidation.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationStatusReason, name: "StatusReason"))
    AssessmentValidation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationTimeStamp, name: "StartTime"))
    AssessmentValidation.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidationTimeStamp, name: "LastUpdateDateTime"))
    AssessmentValidation.type = Types::AssessmentValidation
    AssessmentValidations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentValidation, name: "member"))
    Assessments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSummary, name: "member"))
    Attribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "Name"))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "Value"))
    Attribute.type = Types::Attribute
    Attributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "member"))
    AuthenticationFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AuthenticationFailedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    AuthenticationFailedException.type = Types::AuthenticationFailedException
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member"))
    CaEnrollmentPolicyStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    CaEnrollmentPolicyStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    CaEnrollmentPolicyStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    CaEnrollmentPolicyStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "Disabling"}))
    CaEnrollmentPolicyStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    CaEnrollmentPolicyStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "Impaired"}))
    CancelSchemaExtensionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CancelSchemaExtensionRequest.add_member(:schema_extension_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionId, name: "SchemaExtensionId", traits: {"smithy.api#required" => {}}))
    CancelSchemaExtensionRequest.type = Types::CancelSchemaExtensionRequest
    CancelSchemaExtensionResult.type = Types::CancelSchemaExtensionResult
    Certificate.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateId, name: "CertificateId"))
    Certificate.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateState, name: "State"))
    Certificate.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStateReason, name: "StateReason"))
    Certificate.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateCN, name: "CommonName"))
    Certificate.add_member(:registered_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateRegisteredDateTime, name: "RegisteredDateTime"))
    Certificate.add_member(:expiry_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExpiryDateTime, name: "ExpiryDateTime"))
    Certificate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    Certificate.add_member(:client_cert_auth_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCertAuthSettings, name: "ClientCertAuthSettings"))
    Certificate.type = Types::Certificate
    CertificateAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CertificateAlreadyExistsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    CertificateAlreadyExistsException.type = Types::CertificateAlreadyExistsException
    CertificateDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CertificateDoesNotExistException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    CertificateDoesNotExistException.type = Types::CertificateDoesNotExistException
    CertificateInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CertificateInUseException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    CertificateInUseException.type = Types::CertificateInUseException
    CertificateInfo.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateId, name: "CertificateId"))
    CertificateInfo.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateCN, name: "CommonName"))
    CertificateInfo.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateState, name: "State"))
    CertificateInfo.add_member(:expiry_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExpiryDateTime, name: "ExpiryDateTime"))
    CertificateInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    CertificateInfo.type = Types::CertificateInfo
    CertificateLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CertificateLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    CertificateLimitExceededException.type = Types::CertificateLimitExceededException
    CertificateState.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "Registering"}))
    CertificateState.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "Registered"}))
    CertificateState.add_member(:register_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTER_FAILED", traits: {"smithy.api#enumValue" => "RegisterFailed"}))
    CertificateState.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "Deregistering"}))
    CertificateState.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "Deregistered"}))
    CertificateState.add_member(:deregister_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTER_FAILED", traits: {"smithy.api#enumValue" => "DeregisterFailed"}))
    CertificateType.add_member(:client_cert_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CERT_AUTH", traits: {"smithy.api#enumValue" => "ClientCertAuth"}))
    CertificateType.add_member(:client_ldaps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_LDAPS", traits: {"smithy.api#enumValue" => "ClientLDAPS"}))
    CertificatesInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateInfo, name: "member"))
    CidrIps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIp, name: "member"))
    CidrIpv6s.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIpv6, name: "member"))
    ClientAuthenticationSettingInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationType, name: "Type"))
    ClientAuthenticationSettingInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationStatus, name: "Status"))
    ClientAuthenticationSettingInfo.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    ClientAuthenticationSettingInfo.type = Types::ClientAuthenticationSettingInfo
    ClientAuthenticationSettingsInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationSettingInfo, name: "member"))
    ClientAuthenticationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    ClientAuthenticationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    ClientAuthenticationType.add_member(:smart_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_CARD", traits: {"smithy.api#enumValue" => "SmartCard"}))
    ClientAuthenticationType.add_member(:smart_card_or_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_CARD_OR_PASSWORD", traits: {"smithy.api#enumValue" => "SmartCardOrPassword"}))
    ClientCertAuthSettings.add_member(:ocsp_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OCSPUrl, name: "OCSPUrl"))
    ClientCertAuthSettings.type = Types::ClientCertAuthSettings
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ClientException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ClientException.type = Types::ClientException
    Computer.add_member(:computer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "ComputerId"))
    Computer.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, name: "ComputerName"))
    Computer.add_member(:computer_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "ComputerAttributes"))
    Computer.type = Types::Computer
    ConditionalForwarder.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName"))
    ConditionalForwarder.add_member(:dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "DnsIpAddrs"))
    ConditionalForwarder.add_member(:dns_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "DnsIpv6Addrs"))
    ConditionalForwarder.add_member(:replication_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationScope, name: "ReplicationScope"))
    ConditionalForwarder.type = Types::ConditionalForwarder
    ConditionalForwarders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalForwarder, name: "member"))
    ConnectDirectoryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name", traits: {"smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:short_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryShortName, name: "ShortName"))
    ConnectDirectoryRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPassword, name: "Password", traits: {"smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ConnectDirectoryRequest.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectorySize, name: "Size", traits: {"smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:connect_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConnectSettings, name: "ConnectSettings", traits: {"smithy.api#required" => {}}))
    ConnectDirectoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ConnectDirectoryRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    ConnectDirectoryRequest.type = Types::ConnectDirectoryRequest
    ConnectDirectoryResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ConnectDirectoryResult.type = Types::ConnectDirectoryResult
    CreateAliasRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "Alias", traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateAliasResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateAliasResult.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "Alias"))
    CreateAliasResult.type = Types::CreateAliasResult
    CreateComputerRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, name: "ComputerName", traits: {"smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerPassword, name: "Password", traits: {"smithy.api#required" => {}}))
    CreateComputerRequest.add_member(:organizational_unit_distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDN, name: "OrganizationalUnitDistinguishedName"))
    CreateComputerRequest.add_member(:computer_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "ComputerAttributes"))
    CreateComputerRequest.type = Types::CreateComputerRequest
    CreateComputerResult.add_member(:computer, ::Smithy::Schema::Shapes::MemberShape.new(target: Computer, name: "Computer"))
    CreateComputerResult.type = Types::CreateComputerResult
    CreateConditionalForwarderRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateConditionalForwarderRequest.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName", traits: {"smithy.api#required" => {}}))
    CreateConditionalForwarderRequest.add_member(:dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "DnsIpAddrs", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    CreateConditionalForwarderRequest.add_member(:dns_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "DnsIpv6Addrs"))
    CreateConditionalForwarderRequest.type = Types::CreateConditionalForwarderRequest
    CreateConditionalForwarderResult.type = Types::CreateConditionalForwarderResult
    CreateDirectoryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:short_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryShortName, name: "ShortName"))
    CreateDirectoryRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password", traits: {"smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDirectoryRequest.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectorySize, name: "Size", traits: {"smithy.api#required" => {}}))
    CreateDirectoryRequest.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettings, name: "VpcSettings"))
    CreateDirectoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDirectoryRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateDirectoryRequest.type = Types::CreateDirectoryRequest
    CreateDirectoryResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateDirectoryResult.type = Types::CreateDirectoryResult
    CreateHybridADRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    CreateHybridADRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId", traits: {"smithy.api#required" => {}}))
    CreateHybridADRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateHybridADRequest.type = Types::CreateHybridADRequest
    CreateHybridADResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateHybridADResult.type = Types::CreateHybridADResult
    CreateLogSubscriptionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateLogSubscriptionRequest.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroupName", traits: {"smithy.api#required" => {}}))
    CreateLogSubscriptionRequest.type = Types::CreateLogSubscriptionRequest
    CreateLogSubscriptionResult.type = Types::CreateLogSubscriptionResult
    CreateMicrosoftADRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:short_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryShortName, name: "ShortName"))
    CreateMicrosoftADRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password", traits: {"smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateMicrosoftADRequest.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettings, name: "VpcSettings", traits: {"smithy.api#required" => {}}))
    CreateMicrosoftADRequest.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryEdition, name: "Edition"))
    CreateMicrosoftADRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateMicrosoftADRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateMicrosoftADRequest.type = Types::CreateMicrosoftADRequest
    CreateMicrosoftADResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateMicrosoftADResult.type = Types::CreateMicrosoftADResult
    CreateSnapshotRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "Name"))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResult.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateSnapshotResult.type = Types::CreateSnapshotResult
    CreateTrustRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName", traits: {"smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_password, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustPassword, name: "TrustPassword", traits: {"smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustDirection, name: "TrustDirection", traits: {"smithy.api#required" => {}}))
    CreateTrustRequest.add_member(:trust_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustType, name: "TrustType"))
    CreateTrustRequest.add_member(:conditional_forwarder_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "ConditionalForwarderIpAddrs"))
    CreateTrustRequest.add_member(:conditional_forwarder_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "ConditionalForwarderIpv6Addrs"))
    CreateTrustRequest.add_member(:selective_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectiveAuth, name: "SelectiveAuth"))
    CreateTrustRequest.type = Types::CreateTrustRequest
    CreateTrustResult.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId"))
    CreateTrustResult.type = Types::CreateTrustResult
    CustomerDnsIps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "member"))
    DataAccessStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    DataAccessStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "Disabling"}))
    DataAccessStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    DataAccessStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "Enabling"}))
    DataAccessStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    DeleteADAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId", traits: {"smithy.api#required" => {}}))
    DeleteADAssessmentRequest.type = Types::DeleteADAssessmentRequest
    DeleteADAssessmentResult.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    DeleteADAssessmentResult.type = Types::DeleteADAssessmentResult
    DeleteConditionalForwarderRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeleteConditionalForwarderRequest.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName", traits: {"smithy.api#required" => {}}))
    DeleteConditionalForwarderRequest.type = Types::DeleteConditionalForwarderRequest
    DeleteConditionalForwarderResult.type = Types::DeleteConditionalForwarderResult
    DeleteDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeleteDirectoryRequest.type = Types::DeleteDirectoryRequest
    DeleteDirectoryResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DeleteDirectoryResult.type = Types::DeleteDirectoryResult
    DeleteLogSubscriptionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeleteLogSubscriptionRequest.type = Types::DeleteLogSubscriptionRequest
    DeleteLogSubscriptionResult.type = Types::DeleteLogSubscriptionResult
    DeleteSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResult.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    DeleteSnapshotResult.type = Types::DeleteSnapshotResult
    DeleteTrustRequest.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId", traits: {"smithy.api#required" => {}}))
    DeleteTrustRequest.add_member(:delete_associated_conditional_forwarder, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAssociatedConditionalForwarder, name: "DeleteAssociatedConditionalForwarder", traits: {"smithy.api#default" => false}))
    DeleteTrustRequest.type = Types::DeleteTrustRequest
    DeleteTrustResult.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId"))
    DeleteTrustResult.type = Types::DeleteTrustResult
    DeregisterCertificateRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeregisterCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateId, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    DeregisterCertificateRequest.type = Types::DeregisterCertificateRequest
    DeregisterCertificateResult.type = Types::DeregisterCertificateResult
    DeregisterEventTopicRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeregisterEventTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    DeregisterEventTopicRequest.type = Types::DeregisterEventTopicRequest
    DeregisterEventTopicResult.type = Types::DeregisterEventTopicResult
    DescribeADAssessmentRequest.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId", traits: {"smithy.api#required" => {}}))
    DescribeADAssessmentRequest.type = Types::DescribeADAssessmentRequest
    DescribeADAssessmentResult.add_member(:assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: Assessment, name: "Assessment"))
    DescribeADAssessmentResult.add_member(:assessment_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentReports, name: "AssessmentReports"))
    DescribeADAssessmentResult.type = Types::DescribeADAssessmentResult
    DescribeCAEnrollmentPolicyRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeCAEnrollmentPolicyRequest.type = Types::DescribeCAEnrollmentPolicyRequest
    DescribeCAEnrollmentPolicyResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeCAEnrollmentPolicyResult.add_member(:pca_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PcaConnectorArn, name: "PcaConnectorArn"))
    DescribeCAEnrollmentPolicyResult.add_member(:ca_enrollment_policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CaEnrollmentPolicyStatus, name: "CaEnrollmentPolicyStatus"))
    DescribeCAEnrollmentPolicyResult.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    DescribeCAEnrollmentPolicyResult.add_member(:ca_enrollment_policy_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CaEnrollmentPolicyStatusReason, name: "CaEnrollmentPolicyStatusReason"))
    DescribeCAEnrollmentPolicyResult.type = Types::DescribeCAEnrollmentPolicyResult
    DescribeCertificateRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateId, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResult.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "Certificate"))
    DescribeCertificateResult.type = Types::DescribeCertificateResult
    DescribeClientAuthenticationSettingsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeClientAuthenticationSettingsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationType, name: "Type"))
    DescribeClientAuthenticationSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeClientAuthenticationSettingsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeClientAuthenticationSettingsRequest.type = Types::DescribeClientAuthenticationSettingsRequest
    DescribeClientAuthenticationSettingsResult.add_member(:client_authentication_settings_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationSettingsInfo, name: "ClientAuthenticationSettingsInfo"))
    DescribeClientAuthenticationSettingsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeClientAuthenticationSettingsResult.type = Types::DescribeClientAuthenticationSettingsResult
    DescribeConditionalForwardersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeConditionalForwardersRequest.add_member(:remote_domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainNames, name: "RemoteDomainNames"))
    DescribeConditionalForwardersRequest.type = Types::DescribeConditionalForwardersRequest
    DescribeConditionalForwardersResult.add_member(:conditional_forwarders, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalForwarders, name: "ConditionalForwarders"))
    DescribeConditionalForwardersResult.type = Types::DescribeConditionalForwardersResult
    DescribeDirectoriesRequest.add_member(:directory_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryIds, name: "DirectoryIds"))
    DescribeDirectoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDirectoriesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    DescribeDirectoriesRequest.type = Types::DescribeDirectoriesRequest
    DescribeDirectoriesResult.add_member(:directory_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryDescriptions, name: "DirectoryDescriptions"))
    DescribeDirectoriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDirectoriesResult.type = Types::DescribeDirectoriesResult
    DescribeDirectoryDataAccessRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeDirectoryDataAccessRequest.type = Types::DescribeDirectoryDataAccessRequest
    DescribeDirectoryDataAccessResult.add_member(:data_access_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAccessStatus, name: "DataAccessStatus"))
    DescribeDirectoryDataAccessResult.type = Types::DescribeDirectoryDataAccessResult
    DescribeDomainControllersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeDomainControllersRequest.add_member(:domain_controller_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllerIds, name: "DomainControllerIds"))
    DescribeDomainControllersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDomainControllersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    DescribeDomainControllersRequest.type = Types::DescribeDomainControllersRequest
    DescribeDomainControllersResult.add_member(:domain_controllers, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllers, name: "DomainControllers"))
    DescribeDomainControllersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDomainControllersResult.type = Types::DescribeDomainControllersResult
    DescribeEventTopicsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeEventTopicsRequest.add_member(:topic_names, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicNames, name: "TopicNames"))
    DescribeEventTopicsRequest.type = Types::DescribeEventTopicsRequest
    DescribeEventTopicsResult.add_member(:event_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTopics, name: "EventTopics"))
    DescribeEventTopicsResult.type = Types::DescribeEventTopicsResult
    DescribeHybridADUpdateRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeHybridADUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateType, name: "UpdateType"))
    DescribeHybridADUpdateRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeHybridADUpdateRequest.type = Types::DescribeHybridADUpdateRequest
    DescribeHybridADUpdateResult.add_member(:update_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateActivities, name: "UpdateActivities"))
    DescribeHybridADUpdateResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeHybridADUpdateResult.type = Types::DescribeHybridADUpdateResult
    DescribeLDAPSSettingsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeLDAPSSettingsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSType, name: "Type"))
    DescribeLDAPSSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeLDAPSSettingsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    DescribeLDAPSSettingsRequest.type = Types::DescribeLDAPSSettingsRequest
    DescribeLDAPSSettingsResult.add_member(:ldaps_settings_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSSettingsInfo, name: "LDAPSSettingsInfo"))
    DescribeLDAPSSettingsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeLDAPSSettingsResult.type = Types::DescribeLDAPSSettingsResult
    DescribeRegionsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeRegionsRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    DescribeRegionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegionsRequest.type = Types::DescribeRegionsRequest
    DescribeRegionsResult.add_member(:regions_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionsDescription, name: "RegionsDescription"))
    DescribeRegionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegionsResult.type = Types::DescribeRegionsResult
    DescribeSettingsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeSettingsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationStatus, name: "Status"))
    DescribeSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSettingsRequest.type = Types::DescribeSettingsRequest
    DescribeSettingsResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeSettingsResult.add_member(:setting_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingEntries, name: "SettingEntries"))
    DescribeSettingsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSettingsResult.type = Types::DescribeSettingsResult
    DescribeSharedDirectoriesRequest.add_member(:owner_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "OwnerDirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeSharedDirectoriesRequest.add_member(:shared_directory_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryIds, name: "SharedDirectoryIds"))
    DescribeSharedDirectoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSharedDirectoriesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    DescribeSharedDirectoriesRequest.type = Types::DescribeSharedDirectoriesRequest
    DescribeSharedDirectoriesResult.add_member(:shared_directories, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDirectories, name: "SharedDirectories"))
    DescribeSharedDirectoriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSharedDirectoriesResult.type = Types::DescribeSharedDirectoriesResult
    DescribeSnapshotsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeSnapshotsRequest.add_member(:snapshot_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotIds, name: "SnapshotIds"))
    DescribeSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSnapshotsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    DescribeSnapshotsRequest.type = Types::DescribeSnapshotsRequest
    DescribeSnapshotsResult.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshots, name: "Snapshots"))
    DescribeSnapshotsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSnapshotsResult.type = Types::DescribeSnapshotsResult
    DescribeTrustsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeTrustsRequest.add_member(:trust_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustIds, name: "TrustIds"))
    DescribeTrustsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeTrustsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    DescribeTrustsRequest.type = Types::DescribeTrustsRequest
    DescribeTrustsResult.add_member(:trusts, ::Smithy::Schema::Shapes::MemberShape.new(target: Trusts, name: "Trusts"))
    DescribeTrustsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeTrustsResult.type = Types::DescribeTrustsResult
    DescribeUpdateDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DescribeUpdateDirectoryRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "UpdateType", traits: {"smithy.api#required" => {}}))
    DescribeUpdateDirectoryRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    DescribeUpdateDirectoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeUpdateDirectoryRequest.type = Types::DescribeUpdateDirectoryRequest
    DescribeUpdateDirectoryResult.add_member(:update_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActivities, name: "UpdateActivities"))
    DescribeUpdateDirectoryResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeUpdateDirectoryResult.type = Types::DescribeUpdateDirectoryResult
    DirectoryAlreadyInRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryAlreadyInRegionException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryAlreadyInRegionException.type = Types::DirectoryAlreadyInRegionException
    DirectoryAlreadySharedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryAlreadySharedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryAlreadySharedException.type = Types::DirectoryAlreadySharedException
    DirectoryConfigurationSettingRequestDetailedStatus.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "key"))
    DirectoryConfigurationSettingRequestDetailedStatus.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationStatus, name: "value"))
    DirectoryConfigurationStatus.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "Requested"}))
    DirectoryConfigurationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    DirectoryConfigurationStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "Updated"}))
    DirectoryConfigurationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    DirectoryConfigurationStatus.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "Default"}))
    DirectoryConnectSettings.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    DirectoryConnectSettings.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    DirectoryConnectSettings.add_member(:customer_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "CustomerDnsIps", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    DirectoryConnectSettings.add_member(:customer_dns_ips_v6, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "CustomerDnsIpsV6"))
    DirectoryConnectSettings.add_member(:customer_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "CustomerUserName", traits: {"smithy.api#required" => {}}))
    DirectoryConnectSettings.type = Types::DirectoryConnectSettings
    DirectoryConnectSettingsDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    DirectoryConnectSettingsDescription.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    DirectoryConnectSettingsDescription.add_member(:customer_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "CustomerUserName"))
    DirectoryConnectSettingsDescription.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "SecurityGroupId"))
    DirectoryConnectSettingsDescription.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DirectoryConnectSettingsDescription.add_member(:connect_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddrs, name: "ConnectIps"))
    DirectoryConnectSettingsDescription.add_member(:connect_ips_v6, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV6Addrs, name: "ConnectIpsV6"))
    DirectoryConnectSettingsDescription.type = Types::DirectoryConnectSettingsDescription
    DirectoryDescription.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DirectoryDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "Name"))
    DirectoryDescription.add_member(:short_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryShortName, name: "ShortName"))
    DirectoryDescription.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectorySize, name: "Size"))
    DirectoryDescription.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryEdition, name: "Edition"))
    DirectoryDescription.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "Alias"))
    DirectoryDescription.add_member(:access_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessUrl, name: "AccessUrl"))
    DirectoryDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DirectoryDescription.add_member(:dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "DnsIpAddrs"))
    DirectoryDescription.add_member(:dns_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "DnsIpv6Addrs"))
    DirectoryDescription.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryStage, name: "Stage"))
    DirectoryDescription.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    DirectoryDescription.add_member(:share_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareMethod, name: "ShareMethod"))
    DirectoryDescription.add_member(:share_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "ShareNotes"))
    DirectoryDescription.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTime, name: "LaunchTime"))
    DirectoryDescription.add_member(:stage_last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "StageLastUpdatedDateTime"))
    DirectoryDescription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryType, name: "Type"))
    DirectoryDescription.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettingsDescription, name: "VpcSettings"))
    DirectoryDescription.add_member(:connect_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConnectSettingsDescription, name: "ConnectSettings"))
    DirectoryDescription.add_member(:radius_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusSettings, name: "RadiusSettings"))
    DirectoryDescription.add_member(:radius_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusStatus, name: "RadiusStatus"))
    DirectoryDescription.add_member(:stage_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StageReason, name: "StageReason"))
    DirectoryDescription.add_member(:sso_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: SsoEnabled, name: "SsoEnabled", traits: {"smithy.api#default" => false}))
    DirectoryDescription.add_member(:desired_number_of_domain_controllers, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredNumberOfDomainControllers, name: "DesiredNumberOfDomainControllers"))
    DirectoryDescription.add_member(:owner_directory_description, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerDirectoryDescription, name: "OwnerDirectoryDescription"))
    DirectoryDescription.add_member(:regions_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionsInfo, name: "RegionsInfo"))
    DirectoryDescription.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OSVersion, name: "OsVersion"))
    DirectoryDescription.add_member(:hybrid_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridSettingsDescription, name: "HybridSettings"))
    DirectoryDescription.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    DirectoryDescription.type = Types::DirectoryDescription
    DirectoryDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryDescription, name: "member"))
    DirectoryDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryDoesNotExistException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryDoesNotExistException.type = Types::DirectoryDoesNotExistException
    DirectoryEdition.add_member(:enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE", traits: {"smithy.api#enumValue" => "Enterprise"}))
    DirectoryEdition.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    DirectoryEdition.add_member(:hybrid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYBRID", traits: {"smithy.api#enumValue" => "Hybrid"}))
    DirectoryIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "member"))
    DirectoryInDesiredStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryInDesiredStateException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryInDesiredStateException.type = Types::DirectoryInDesiredStateException
    DirectoryLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryLimitExceededException.type = Types::DirectoryLimitExceededException
    DirectoryLimits.add_member(:cloud_only_directories_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "CloudOnlyDirectoriesLimit"))
    DirectoryLimits.add_member(:cloud_only_directories_current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "CloudOnlyDirectoriesCurrentCount"))
    DirectoryLimits.add_member(:cloud_only_directories_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudOnlyDirectoriesLimitReached, name: "CloudOnlyDirectoriesLimitReached", traits: {"smithy.api#default" => false}))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "CloudOnlyMicrosoftADLimit"))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "CloudOnlyMicrosoftADCurrentCount"))
    DirectoryLimits.add_member(:cloud_only_microsoft_ad_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudOnlyDirectoriesLimitReached, name: "CloudOnlyMicrosoftADLimitReached", traits: {"smithy.api#default" => false}))
    DirectoryLimits.add_member(:connected_directories_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "ConnectedDirectoriesLimit"))
    DirectoryLimits.add_member(:connected_directories_current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "ConnectedDirectoriesCurrentCount"))
    DirectoryLimits.add_member(:connected_directories_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectedDirectoriesLimitReached, name: "ConnectedDirectoriesLimitReached", traits: {"smithy.api#default" => false}))
    DirectoryLimits.type = Types::DirectoryLimits
    DirectoryNotSharedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryNotSharedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryNotSharedException.type = Types::DirectoryNotSharedException
    DirectorySize.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "Small"}))
    DirectorySize.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "Large"}))
    DirectorySizeUpdateSettings.add_member(:directory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectorySize, name: "DirectorySize"))
    DirectorySizeUpdateSettings.type = Types::DirectorySizeUpdateSettings
    DirectoryStage.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "Requested"}))
    DirectoryStage.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    DirectoryStage.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "Created"}))
    DirectoryStage.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    DirectoryStage.add_member(:inoperable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INOPERABLE", traits: {"smithy.api#enumValue" => "Inoperable"}))
    DirectoryStage.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "Impaired"}))
    DirectoryStage.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "Restoring"}))
    DirectoryStage.add_member(:restorefailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTOREFAILED", traits: {"smithy.api#enumValue" => "RestoreFailed"}))
    DirectoryStage.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    DirectoryStage.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    DirectoryStage.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    DirectoryStage.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    DirectoryType.add_member(:simple_ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMPLE_AD", traits: {"smithy.api#enumValue" => "SimpleAD"}))
    DirectoryType.add_member(:ad_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AD_CONNECTOR", traits: {"smithy.api#enumValue" => "ADConnector"}))
    DirectoryType.add_member(:microsoft_ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSOFT_AD", traits: {"smithy.api#enumValue" => "MicrosoftAD"}))
    DirectoryType.add_member(:shared_microsoft_ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED_MICROSOFT_AD", traits: {"smithy.api#enumValue" => "SharedMicrosoftAD"}))
    DirectoryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryUnavailableException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DirectoryUnavailableException.type = Types::DirectoryUnavailableException
    DirectoryVpcSettings.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    DirectoryVpcSettings.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    DirectoryVpcSettings.type = Types::DirectoryVpcSettings
    DirectoryVpcSettingsDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    DirectoryVpcSettingsDescription.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    DirectoryVpcSettingsDescription.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "SecurityGroupId"))
    DirectoryVpcSettingsDescription.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DirectoryVpcSettingsDescription.type = Types::DirectoryVpcSettingsDescription
    DisableAlreadyInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DisableAlreadyInProgressException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DisableAlreadyInProgressException.type = Types::DisableAlreadyInProgressException
    DisableCAEnrollmentPolicyRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableCAEnrollmentPolicyRequest.type = Types::DisableCAEnrollmentPolicyRequest
    DisableCAEnrollmentPolicyResult.type = Types::DisableCAEnrollmentPolicyResult
    DisableClientAuthenticationRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableClientAuthenticationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationType, name: "Type", traits: {"smithy.api#required" => {}}))
    DisableClientAuthenticationRequest.type = Types::DisableClientAuthenticationRequest
    DisableClientAuthenticationResult.type = Types::DisableClientAuthenticationResult
    DisableDirectoryDataAccessRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableDirectoryDataAccessRequest.type = Types::DisableDirectoryDataAccessRequest
    DisableDirectoryDataAccessResult.type = Types::DisableDirectoryDataAccessResult
    DisableLDAPSRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableLDAPSRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSType, name: "Type", traits: {"smithy.api#required" => {}}))
    DisableLDAPSRequest.type = Types::DisableLDAPSRequest
    DisableLDAPSResult.type = Types::DisableLDAPSResult
    DisableRadiusRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableRadiusRequest.type = Types::DisableRadiusRequest
    DisableRadiusResult.type = Types::DisableRadiusResult
    DisableSsoRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisableSsoRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName"))
    DisableSsoRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPassword, name: "Password"))
    DisableSsoRequest.type = Types::DisableSsoRequest
    DisableSsoResult.type = Types::DisableSsoResult
    DnsIpAddrs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "member"))
    DnsIpv6Addrs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addr, name: "member"))
    DomainController.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DomainController.add_member(:domain_controller_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllerId, name: "DomainControllerId"))
    DomainController.add_member(:dns_ip_addr, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "DnsIpAddr"))
    DomainController.add_member(:dns_ipv6_addr, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addr, name: "DnsIpv6Addr"))
    DomainController.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    DomainController.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    DomainController.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    DomainController.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllerStatus, name: "Status"))
    DomainController.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllerStatusReason, name: "StatusReason"))
    DomainController.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTime, name: "LaunchTime"))
    DomainController.add_member(:status_last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "StatusLastUpdatedDateTime"))
    DomainController.type = Types::DomainController
    DomainControllerIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainControllerId, name: "member"))
    DomainControllerLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DomainControllerLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    DomainControllerLimitExceededException.type = Types::DomainControllerLimitExceededException
    DomainControllerStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    DomainControllerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    DomainControllerStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "Impaired"}))
    DomainControllerStatus.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "Restoring"}))
    DomainControllerStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    DomainControllerStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    DomainControllerStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    DomainControllerStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    DomainControllers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainController, name: "member"))
    EnableAlreadyInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    EnableAlreadyInProgressException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    EnableAlreadyInProgressException.type = Types::EnableAlreadyInProgressException
    EnableCAEnrollmentPolicyRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableCAEnrollmentPolicyRequest.add_member(:pca_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PcaConnectorArn, name: "PcaConnectorArn", traits: {"smithy.api#required" => {}}))
    EnableCAEnrollmentPolicyRequest.type = Types::EnableCAEnrollmentPolicyRequest
    EnableCAEnrollmentPolicyResult.type = Types::EnableCAEnrollmentPolicyResult
    EnableClientAuthenticationRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableClientAuthenticationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthenticationType, name: "Type", traits: {"smithy.api#required" => {}}))
    EnableClientAuthenticationRequest.type = Types::EnableClientAuthenticationRequest
    EnableClientAuthenticationResult.type = Types::EnableClientAuthenticationResult
    EnableDirectoryDataAccessRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableDirectoryDataAccessRequest.type = Types::EnableDirectoryDataAccessRequest
    EnableDirectoryDataAccessResult.type = Types::EnableDirectoryDataAccessResult
    EnableLDAPSRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableLDAPSRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSType, name: "Type", traits: {"smithy.api#required" => {}}))
    EnableLDAPSRequest.type = Types::EnableLDAPSRequest
    EnableLDAPSResult.type = Types::EnableLDAPSResult
    EnableRadiusRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableRadiusRequest.add_member(:radius_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusSettings, name: "RadiusSettings", traits: {"smithy.api#required" => {}}))
    EnableRadiusRequest.type = Types::EnableRadiusRequest
    EnableRadiusResult.type = Types::EnableRadiusResult
    EnableSsoRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    EnableSsoRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName"))
    EnableSsoRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectPassword, name: "Password"))
    EnableSsoRequest.type = Types::EnableSsoRequest
    EnableSsoResult.type = Types::EnableSsoResult
    EntityAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    EntityAlreadyExistsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    EntityAlreadyExistsException.type = Types::EntityAlreadyExistsException
    EntityDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    EntityDoesNotExistException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    EntityDoesNotExistException.type = Types::EntityDoesNotExistException
    EventTopic.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    EventTopic.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName"))
    EventTopic.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicArn, name: "TopicArn"))
    EventTopic.add_member(:created_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateTime, name: "CreatedDateTime"))
    EventTopic.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicStatus, name: "Status"))
    EventTopic.type = Types::EventTopic
    EventTopics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTopic, name: "member"))
    GetDirectoryLimitsRequest.type = Types::GetDirectoryLimitsRequest
    GetDirectoryLimitsResult.add_member(:directory_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryLimits, name: "DirectoryLimits"))
    GetDirectoryLimitsResult.type = Types::GetDirectoryLimitsResult
    GetSnapshotLimitsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    GetSnapshotLimitsRequest.type = Types::GetSnapshotLimitsRequest
    GetSnapshotLimitsResult.add_member(:snapshot_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotLimits, name: "SnapshotLimits"))
    GetSnapshotLimitsResult.type = Types::GetSnapshotLimitsResult
    HybridAdministratorAccountUpdate.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    HybridAdministratorAccountUpdate.type = Types::HybridAdministratorAccountUpdate
    HybridCustomerInstancesSettings.add_member(:customer_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDnsIps, name: "CustomerDnsIps", traits: {"smithy.api#required" => {}}))
    HybridCustomerInstancesSettings.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceIds, name: "InstanceIds", traits: {"smithy.api#required" => {}}))
    HybridCustomerInstancesSettings.type = Types::HybridCustomerInstancesSettings
    HybridSettingsDescription.add_member(:self_managed_dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddrs, name: "SelfManagedDnsIpAddrs"))
    HybridSettingsDescription.add_member(:self_managed_instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceIds, name: "SelfManagedInstanceIds"))
    HybridSettingsDescription.type = Types::HybridSettingsDescription
    HybridUpdateActivities.add_member(:self_managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateInfoEntries, name: "SelfManagedInstances"))
    HybridUpdateActivities.add_member(:hybrid_administrator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateInfoEntries, name: "HybridAdministratorAccount"))
    HybridUpdateActivities.type = Types::HybridUpdateActivities
    HybridUpdateInfoEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateInfoEntry, name: "member"))
    HybridUpdateInfoEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatus, name: "Status"))
    HybridUpdateInfoEntry.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatusReason, name: "StatusReason"))
    HybridUpdateInfoEntry.add_member(:initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InitiatedBy, name: "InitiatedBy"))
    HybridUpdateInfoEntry.add_member(:new_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateValue, name: "NewValue"))
    HybridUpdateInfoEntry.add_member(:previous_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridUpdateValue, name: "PreviousValue"))
    HybridUpdateInfoEntry.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartDateTime, name: "StartTime"))
    HybridUpdateInfoEntry.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    HybridUpdateInfoEntry.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    HybridUpdateInfoEntry.type = Types::HybridUpdateInfoEntry
    HybridUpdateType.add_member(:self_managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "SelfManagedInstances"}))
    HybridUpdateType.add_member(:hybrid_administrator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYBRID_ADMINISTRATOR_ACCOUNT", traits: {"smithy.api#enumValue" => "HybridAdministratorAccount"}))
    HybridUpdateValue.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInstanceIds, name: "InstanceIds"))
    HybridUpdateValue.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerDnsIps, name: "DnsIps"))
    HybridUpdateValue.type = Types::HybridUpdateValue
    IncompatibleSettingsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    IncompatibleSettingsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    IncompatibleSettingsException.type = Types::IncompatibleSettingsException
    InsufficientPermissionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InsufficientPermissionsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InsufficientPermissionsException.type = Types::InsufficientPermissionsException
    InvalidCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidCertificateException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidCertificateException.type = Types::InvalidCertificateException
    InvalidClientAuthStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidClientAuthStatusException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidClientAuthStatusException.type = Types::InvalidClientAuthStatusException
    InvalidLDAPSStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidLDAPSStatusException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidLDAPSStatusException.type = Types::InvalidLDAPSStatusException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidNextTokenException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidParameterException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidPasswordException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidPasswordException.type = Types::InvalidPasswordException
    InvalidTargetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidTargetException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InvalidTargetException.type = Types::InvalidTargetException
    IpAddrs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "member"))
    IpRoute.add_member(:cidr_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIp, name: "CidrIp"))
    IpRoute.add_member(:cidr_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIpv6, name: "CidrIpv6"))
    IpRoute.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    IpRoute.type = Types::IpRoute
    IpRouteInfo.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    IpRouteInfo.add_member(:cidr_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIp, name: "CidrIp"))
    IpRouteInfo.add_member(:cidr_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIpv6, name: "CidrIpv6"))
    IpRouteInfo.add_member(:ip_route_status_msg, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRouteStatusMsg, name: "IpRouteStatusMsg"))
    IpRouteInfo.add_member(:added_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AddedDateTime, name: "AddedDateTime"))
    IpRouteInfo.add_member(:ip_route_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRouteStatusReason, name: "IpRouteStatusReason"))
    IpRouteInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    IpRouteInfo.type = Types::IpRouteInfo
    IpRouteLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    IpRouteLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    IpRouteLimitExceededException.type = Types::IpRouteLimitExceededException
    IpRouteStatusMsg.add_member(:adding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDING", traits: {"smithy.api#enumValue" => "Adding"}))
    IpRouteStatusMsg.add_member(:added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDED", traits: {"smithy.api#enumValue" => "Added"}))
    IpRouteStatusMsg.add_member(:removing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVING", traits: {"smithy.api#enumValue" => "Removing"}))
    IpRouteStatusMsg.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVED", traits: {"smithy.api#enumValue" => "Removed"}))
    IpRouteStatusMsg.add_member(:add_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_FAILED", traits: {"smithy.api#enumValue" => "AddFailed"}))
    IpRouteStatusMsg.add_member(:remove_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE_FAILED", traits: {"smithy.api#enumValue" => "RemoveFailed"}))
    IpRoutes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRoute, name: "member"))
    IpRoutesInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRouteInfo, name: "member"))
    IpV6Addrs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addr, name: "member"))
    LDAPSSettingInfo.add_member(:ldaps_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSStatus, name: "LDAPSStatus"))
    LDAPSSettingInfo.add_member(:ldaps_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSStatusReason, name: "LDAPSStatusReason"))
    LDAPSSettingInfo.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    LDAPSSettingInfo.type = Types::LDAPSSettingInfo
    LDAPSSettingsInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LDAPSSettingInfo, name: "member"))
    LDAPSStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "Enabling"}))
    LDAPSStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    LDAPSStatus.add_member(:enable_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE_FAILED", traits: {"smithy.api#enumValue" => "EnableFailed"}))
    LDAPSStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    LDAPSType.add_member(:client, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT", traits: {"smithy.api#enumValue" => "Client"}))
    ListADAssessmentsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListADAssessmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListADAssessmentsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentLimit, name: "Limit"))
    ListADAssessmentsRequest.type = Types::ListADAssessmentsRequest
    ListADAssessmentsResult.add_member(:assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: Assessments, name: "Assessments"))
    ListADAssessmentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListADAssessmentsResult.type = Types::ListADAssessmentsResult
    ListCertificatesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ListCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificatesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageLimit, name: "Limit"))
    ListCertificatesRequest.type = Types::ListCertificatesRequest
    ListCertificatesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificatesResult.add_member(:certificates_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatesInfo, name: "CertificatesInfo"))
    ListCertificatesResult.type = Types::ListCertificatesResult
    ListIpRoutesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ListIpRoutesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIpRoutesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    ListIpRoutesRequest.type = Types::ListIpRoutesRequest
    ListIpRoutesResult.add_member(:ip_routes_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRoutesInfo, name: "IpRoutesInfo"))
    ListIpRoutesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIpRoutesResult.type = Types::ListIpRoutesResult
    ListLogSubscriptionsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListLogSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLogSubscriptionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    ListLogSubscriptionsRequest.type = Types::ListLogSubscriptionsRequest
    ListLogSubscriptionsResult.add_member(:log_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscriptions, name: "LogSubscriptions"))
    ListLogSubscriptionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLogSubscriptionsResult.type = Types::ListLogSubscriptionsResult
    ListSchemaExtensionsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ListSchemaExtensionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSchemaExtensionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    ListSchemaExtensionsRequest.type = Types::ListSchemaExtensionsRequest
    ListSchemaExtensionsResult.add_member(:schema_extensions_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionsInfo, name: "SchemaExtensionsInfo"))
    ListSchemaExtensionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSchemaExtensionsResult.type = Types::ListSchemaExtensionsResult
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    LogSubscription.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    LogSubscription.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroupName"))
    LogSubscription.add_member(:subscription_created_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionCreatedDateTime, name: "SubscriptionCreatedDateTime"))
    LogSubscription.type = Types::LogSubscription
    LogSubscriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSubscription, name: "member"))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "Dual-stack"}))
    NetworkType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "IPv4"}))
    NetworkType.add_member(:ipv6_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6_ONLY", traits: {"smithy.api#enumValue" => "IPv6"}))
    NetworkUpdateSettings.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    NetworkUpdateSettings.add_member(:customer_dns_ips_v6, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "CustomerDnsIpsV6"))
    NetworkUpdateSettings.type = Types::NetworkUpdateSettings
    NoAvailableCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    NoAvailableCertificateException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    NoAvailableCertificateException.type = Types::NoAvailableCertificateException
    OSUpdateSettings.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OSVersion, name: "OSVersion"))
    OSUpdateSettings.type = Types::OSUpdateSettings
    OSVersion.add_member(:version_2012, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION_2012", traits: {"smithy.api#enumValue" => "SERVER_2012"}))
    OSVersion.add_member(:version_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION_2019", traits: {"smithy.api#enumValue" => "SERVER_2019"}))
    OrganizationsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    OrganizationsException.type = Types::OrganizationsException
    OwnerDirectoryDescription.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    OwnerDirectoryDescription.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "AccountId"))
    OwnerDirectoryDescription.add_member(:dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "DnsIpAddrs"))
    OwnerDirectoryDescription.add_member(:dns_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "DnsIpv6Addrs"))
    OwnerDirectoryDescription.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettingsDescription, name: "VpcSettings"))
    OwnerDirectoryDescription.add_member(:radius_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusSettings, name: "RadiusSettings"))
    OwnerDirectoryDescription.add_member(:radius_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusStatus, name: "RadiusStatus"))
    OwnerDirectoryDescription.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    OwnerDirectoryDescription.type = Types::OwnerDirectoryDescription
    RadiusAuthenticationProtocol.add_member(:pap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAP", traits: {"smithy.api#enumValue" => "PAP"}))
    RadiusAuthenticationProtocol.add_member(:chap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAP", traits: {"smithy.api#enumValue" => "CHAP"}))
    RadiusAuthenticationProtocol.add_member(:mschapv1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSCHAPV1", traits: {"smithy.api#enumValue" => "MS-CHAPv1"}))
    RadiusAuthenticationProtocol.add_member(:mschapv2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSCHAPV2", traits: {"smithy.api#enumValue" => "MS-CHAPv2"}))
    RadiusSettings.add_member(:radius_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: Servers, name: "RadiusServers"))
    RadiusSettings.add_member(:radius_servers_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Servers, name: "RadiusServersIpv6"))
    RadiusSettings.add_member(:radius_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "RadiusPort"))
    RadiusSettings.add_member(:radius_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusTimeout, name: "RadiusTimeout"))
    RadiusSettings.add_member(:radius_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusRetries, name: "RadiusRetries", traits: {"smithy.api#default" => 0}))
    RadiusSettings.add_member(:shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusSharedSecret, name: "SharedSecret"))
    RadiusSettings.add_member(:authentication_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusAuthenticationProtocol, name: "AuthenticationProtocol"))
    RadiusSettings.add_member(:display_label, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusDisplayLabel, name: "DisplayLabel"))
    RadiusSettings.add_member(:use_same_username, ::Smithy::Schema::Shapes::MemberShape.new(target: UseSameUsername, name: "UseSameUsername", traits: {"smithy.api#default" => false}))
    RadiusSettings.type = Types::RadiusSettings
    RadiusStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    RadiusStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    RadiusStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    RegionDescription.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    RegionDescription.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    RegionDescription.add_member(:region_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "RegionType"))
    RegionDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryStage, name: "Status"))
    RegionDescription.add_member(:vpc_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryVpcSettings, name: "VpcSettings"))
    RegionDescription.add_member(:desired_number_of_domain_controllers, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredNumberOfDomainControllers, name: "DesiredNumberOfDomainControllers"))
    RegionDescription.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTime, name: "LaunchTime"))
    RegionDescription.add_member(:status_last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StateLastUpdatedDateTime, name: "StatusLastUpdatedDateTime"))
    RegionDescription.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    RegionDescription.type = Types::RegionDescription
    RegionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    RegionLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    RegionLimitExceededException.type = Types::RegionLimitExceededException
    RegionType.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "Primary"}))
    RegionType.add_member(:additional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITIONAL", traits: {"smithy.api#enumValue" => "Additional"}))
    RegionsDescription.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionDescription, name: "member"))
    RegionsInfo.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "PrimaryRegion"))
    RegionsInfo.add_member(:additional_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalRegions, name: "AdditionalRegions"))
    RegionsInfo.type = Types::RegionsInfo
    RegisterCertificateRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    RegisterCertificateRequest.add_member(:certificate_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateData, name: "CertificateData", traits: {"smithy.api#required" => {}}))
    RegisterCertificateRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    RegisterCertificateRequest.add_member(:client_cert_auth_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientCertAuthSettings, name: "ClientCertAuthSettings"))
    RegisterCertificateRequest.type = Types::RegisterCertificateRequest
    RegisterCertificateResult.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateId, name: "CertificateId"))
    RegisterCertificateResult.type = Types::RegisterCertificateResult
    RegisterEventTopicRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    RegisterEventTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    RegisterEventTopicRequest.type = Types::RegisterEventTopicRequest
    RegisterEventTopicResult.type = Types::RegisterEventTopicResult
    RejectSharedDirectoryRequest.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId", traits: {"smithy.api#required" => {}}))
    RejectSharedDirectoryRequest.type = Types::RejectSharedDirectoryRequest
    RejectSharedDirectoryResult.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId"))
    RejectSharedDirectoryResult.type = Types::RejectSharedDirectoryResult
    RemoteDomainNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "member"))
    RemoveIpRoutesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    RemoveIpRoutesRequest.add_member(:cidr_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIps, name: "CidrIps", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    RemoveIpRoutesRequest.add_member(:cidr_ipv6s, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrIpv6s, name: "CidrIpv6s"))
    RemoveIpRoutesRequest.type = Types::RemoveIpRoutesRequest
    RemoveIpRoutesResult.type = Types::RemoveIpRoutesResult
    RemoveRegionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    RemoveRegionRequest.type = Types::RemoveRegionRequest
    RemoveRegionResult.type = Types::RemoveRegionResult
    RemoveTagsFromResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.type = Types::RemoveTagsFromResourceRequest
    RemoveTagsFromResourceResult.type = Types::RemoveTagsFromResourceResult
    ReplicationScope.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Domain", traits: {"smithy.api#enumValue" => "Domain"}))
    ResetUserPasswordRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerUserName, name: "UserName", traits: {"smithy.api#required" => {}}))
    ResetUserPasswordRequest.add_member(:new_password, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPassword, name: "NewPassword", traits: {"smithy.api#required" => {}}))
    ResetUserPasswordRequest.type = Types::ResetUserPasswordRequest
    ResetUserPasswordResult.type = Types::ResetUserPasswordResult
    RestoreFromSnapshotRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#required" => {}}))
    RestoreFromSnapshotRequest.type = Types::RestoreFromSnapshotRequest
    RestoreFromSnapshotResult.type = Types::RestoreFromSnapshotResult
    SchemaExtensionInfo.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    SchemaExtensionInfo.add_member(:schema_extension_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionId, name: "SchemaExtensionId"))
    SchemaExtensionInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    SchemaExtensionInfo.add_member(:schema_extension_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionStatus, name: "SchemaExtensionStatus"))
    SchemaExtensionInfo.add_member(:schema_extension_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionStatusReason, name: "SchemaExtensionStatusReason"))
    SchemaExtensionInfo.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartDateTime, name: "StartDateTime"))
    SchemaExtensionInfo.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndDateTime, name: "EndDateTime"))
    SchemaExtensionInfo.type = Types::SchemaExtensionInfo
    SchemaExtensionStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "Initializing"}))
    SchemaExtensionStatus.add_member(:creating_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING_SNAPSHOT", traits: {"smithy.api#enumValue" => "CreatingSnapshot"}))
    SchemaExtensionStatus.add_member(:updating_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_SCHEMA", traits: {"smithy.api#enumValue" => "UpdatingSchema"}))
    SchemaExtensionStatus.add_member(:replicating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATING", traits: {"smithy.api#enumValue" => "Replicating"}))
    SchemaExtensionStatus.add_member(:cancel_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CancelInProgress"}))
    SchemaExtensionStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "RollbackInProgress"}))
    SchemaExtensionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    SchemaExtensionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    SchemaExtensionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    SchemaExtensionsInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionInfo, name: "member"))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SelectiveAuth.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    SelectiveAuth.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    Servers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Server, name: "member"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ServiceException.type = Types::ServiceException
    Setting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingName, name: "Name", traits: {"smithy.api#required" => {}}))
    Setting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Setting.type = Types::Setting
    SettingEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingEntry, name: "member"))
    SettingEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingType, name: "Type"))
    SettingEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingName, name: "Name"))
    SettingEntry.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingAllowedValues, name: "AllowedValues"))
    SettingEntry.add_member(:applied_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingValue, name: "AppliedValue"))
    SettingEntry.add_member(:requested_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingValue, name: "RequestedValue"))
    SettingEntry.add_member(:request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationStatus, name: "RequestStatus"))
    SettingEntry.add_member(:request_detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingRequestDetailedStatus, name: "RequestDetailedStatus"))
    SettingEntry.add_member(:request_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingRequestStatusMessage, name: "RequestStatusMessage"))
    SettingEntry.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingLastUpdatedDateTime, name: "LastUpdatedDateTime"))
    SettingEntry.add_member(:last_requested_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingLastRequestedDateTime, name: "LastRequestedDateTime"))
    SettingEntry.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigurationSettingDataType, name: "DataType"))
    SettingEntry.type = Types::SettingEntry
    Settings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "member"))
    ShareDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ShareDirectoryRequest.add_member(:share_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "ShareNotes"))
    ShareDirectoryRequest.add_member(:share_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareTarget, name: "ShareTarget", traits: {"smithy.api#required" => {}}))
    ShareDirectoryRequest.add_member(:share_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareMethod, name: "ShareMethod", traits: {"smithy.api#required" => {}}))
    ShareDirectoryRequest.type = Types::ShareDirectoryRequest
    ShareDirectoryResult.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId"))
    ShareDirectoryResult.type = Types::ShareDirectoryResult
    ShareLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ShareLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ShareLimitExceededException.type = Types::ShareLimitExceededException
    ShareMethod.add_member(:organizations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONS", traits: {"smithy.api#enumValue" => "ORGANIZATIONS"}))
    ShareMethod.add_member(:handshake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANDSHAKE", traits: {"smithy.api#enumValue" => "HANDSHAKE"}))
    ShareStatus.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "Shared"}))
    ShareStatus.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PendingAcceptance"}))
    ShareStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    ShareStatus.add_member(:rejecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTING", traits: {"smithy.api#enumValue" => "Rejecting"}))
    ShareStatus.add_member(:reject_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT_FAILED", traits: {"smithy.api#enumValue" => "RejectFailed"}))
    ShareStatus.add_member(:sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARING", traits: {"smithy.api#enumValue" => "Sharing"}))
    ShareStatus.add_member(:share_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARE_FAILED", traits: {"smithy.api#enumValue" => "ShareFailed"}))
    ShareStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    ShareStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    ShareTarget.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "Id", traits: {"smithy.api#required" => {}}))
    ShareTarget.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "Type", traits: {"smithy.api#required" => {}}))
    ShareTarget.type = Types::ShareTarget
    SharedDirectories.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDirectory, name: "member"))
    SharedDirectory.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "OwnerAccountId"))
    SharedDirectory.add_member(:owner_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "OwnerDirectoryId"))
    SharedDirectory.add_member(:share_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareMethod, name: "ShareMethod"))
    SharedDirectory.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "SharedAccountId"))
    SharedDirectory.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId"))
    SharedDirectory.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    SharedDirectory.add_member(:share_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: Notes, name: "ShareNotes"))
    SharedDirectory.add_member(:created_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateTime, name: "CreatedDateTime"))
    SharedDirectory.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    SharedDirectory.type = Types::SharedDirectory
    Snapshot.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    Snapshot.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    Snapshot.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotType, name: "Type"))
    Snapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotName, name: "Name"))
    Snapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotStatus, name: "Status"))
    Snapshot.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "StartTime"))
    Snapshot.type = Types::Snapshot
    SnapshotIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "member"))
    SnapshotLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    SnapshotLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    SnapshotLimitExceededException.type = Types::SnapshotLimitExceededException
    SnapshotLimits.add_member(:manual_snapshots_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "ManualSnapshotsLimit"))
    SnapshotLimits.add_member(:manual_snapshots_current_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "ManualSnapshotsCurrentCount"))
    SnapshotLimits.add_member(:manual_snapshots_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ManualSnapshotsLimitReached, name: "ManualSnapshotsLimitReached", traits: {"smithy.api#default" => false}))
    SnapshotLimits.type = Types::SnapshotLimits
    SnapshotStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    SnapshotStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    SnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    SnapshotType.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "Auto"}))
    SnapshotType.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "Manual"}))
    Snapshots.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "member"))
    StartADAssessmentRequest.add_member(:assessment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentConfiguration, name: "AssessmentConfiguration"))
    StartADAssessmentRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    StartADAssessmentRequest.type = Types::StartADAssessmentRequest
    StartADAssessmentResult.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    StartADAssessmentResult.type = Types::StartADAssessmentResult
    StartSchemaExtensionRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:create_snapshot_before_schema_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSnapshotBeforeSchemaExtension, name: "CreateSnapshotBeforeSchemaExtension", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:ldif_content, ::Smithy::Schema::Shapes::MemberShape.new(target: LdifContent, name: "LdifContent", traits: {"smithy.api#required" => {}}))
    StartSchemaExtensionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    StartSchemaExtensionRequest.type = Types::StartSchemaExtensionRequest
    StartSchemaExtensionResult.add_member(:schema_extension_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaExtensionId, name: "SchemaExtensionId"))
    StartSchemaExtensionResult.type = Types::StartSchemaExtensionResult
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TagLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    TagLimitExceededException.type = Types::TagLimitExceededException
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TargetType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TopicNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "member"))
    TopicStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "Registered"}))
    TopicStatus.add_member(:topic_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPIC_NOT_FOUND", traits: {"smithy.api#enumValue" => "Topic not found"}))
    TopicStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TopicStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    Trust.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    Trust.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId"))
    Trust.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName"))
    Trust.add_member(:trust_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustType, name: "TrustType"))
    Trust.add_member(:trust_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustDirection, name: "TrustDirection"))
    Trust.add_member(:trust_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustState, name: "TrustState"))
    Trust.add_member(:created_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateTime, name: "CreatedDateTime"))
    Trust.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    Trust.add_member(:state_last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StateLastUpdatedDateTime, name: "StateLastUpdatedDateTime"))
    Trust.add_member(:trust_state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStateReason, name: "TrustStateReason"))
    Trust.add_member(:selective_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectiveAuth, name: "SelectiveAuth"))
    Trust.type = Types::Trust
    TrustDirection.add_member(:one_way_outgoing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_WAY_OUTGOING", traits: {"smithy.api#enumValue" => "One-Way: Outgoing"}))
    TrustDirection.add_member(:one_way_incoming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_WAY_INCOMING", traits: {"smithy.api#enumValue" => "One-Way: Incoming"}))
    TrustDirection.add_member(:two_way, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWO_WAY", traits: {"smithy.api#enumValue" => "Two-Way"}))
    TrustIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "member"))
    TrustState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    TrustState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "Created"}))
    TrustState.add_member(:verifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFYING", traits: {"smithy.api#enumValue" => "Verifying"}))
    TrustState.add_member(:verify_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFY_FAILED", traits: {"smithy.api#enumValue" => "VerifyFailed"}))
    TrustState.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED", traits: {"smithy.api#enumValue" => "Verified"}))
    TrustState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    TrustState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    TrustState.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "Updated"}))
    TrustState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    TrustState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    TrustState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TrustType.add_member(:forest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOREST", traits: {"smithy.api#enumValue" => "Forest"}))
    TrustType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "External"}))
    Trusts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Trust, name: "member"))
    UnshareDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UnshareDirectoryRequest.add_member(:unshare_target, ::Smithy::Schema::Shapes::MemberShape.new(target: UnshareTarget, name: "UnshareTarget", traits: {"smithy.api#required" => {}}))
    UnshareDirectoryRequest.type = Types::UnshareDirectoryRequest
    UnshareDirectoryResult.add_member(:shared_directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "SharedDirectoryId"))
    UnshareDirectoryResult.type = Types::UnshareDirectoryResult
    UnshareTarget.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "Id", traits: {"smithy.api#required" => {}}))
    UnshareTarget.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "Type", traits: {"smithy.api#required" => {}}))
    UnshareTarget.type = Types::UnshareTarget
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UnsupportedOperationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedSettingsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UnsupportedSettingsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    UnsupportedSettingsException.type = Types::UnsupportedSettingsException
    UpdateActivities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInfoEntry, name: "member"))
    UpdateConditionalForwarderRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateConditionalForwarderRequest.add_member(:remote_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteDomainName, name: "RemoteDomainName", traits: {"smithy.api#required" => {}}))
    UpdateConditionalForwarderRequest.add_member(:dns_ip_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddrs, name: "DnsIpAddrs", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    UpdateConditionalForwarderRequest.add_member(:dns_ipv6_addrs, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpv6Addrs, name: "DnsIpv6Addrs"))
    UpdateConditionalForwarderRequest.type = Types::UpdateConditionalForwarderRequest
    UpdateConditionalForwarderResult.type = Types::UpdateConditionalForwarderResult
    UpdateDirectorySetupRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateDirectorySetupRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "UpdateType", traits: {"smithy.api#required" => {}}))
    UpdateDirectorySetupRequest.add_member(:os_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OSUpdateSettings, name: "OSUpdateSettings"))
    UpdateDirectorySetupRequest.add_member(:directory_size_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectorySizeUpdateSettings, name: "DirectorySizeUpdateSettings"))
    UpdateDirectorySetupRequest.add_member(:network_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkUpdateSettings, name: "NetworkUpdateSettings"))
    UpdateDirectorySetupRequest.add_member(:create_snapshot_before_update, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSnapshotBeforeUpdate, name: "CreateSnapshotBeforeUpdate", traits: {"smithy.api#default" => nil}))
    UpdateDirectorySetupRequest.type = Types::UpdateDirectorySetupRequest
    UpdateDirectorySetupResult.type = Types::UpdateDirectorySetupResult
    UpdateHybridADRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateHybridADRequest.add_member(:hybrid_administrator_account_update, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridAdministratorAccountUpdate, name: "HybridAdministratorAccountUpdate"))
    UpdateHybridADRequest.add_member(:self_managed_instances_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: HybridCustomerInstancesSettings, name: "SelfManagedInstancesSettings"))
    UpdateHybridADRequest.type = Types::UpdateHybridADRequest
    UpdateHybridADResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    UpdateHybridADResult.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentId, name: "AssessmentId"))
    UpdateHybridADResult.type = Types::UpdateHybridADResult
    UpdateInfoEntry.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Region"))
    UpdateInfoEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatus, name: "Status"))
    UpdateInfoEntry.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatusReason, name: "StatusReason"))
    UpdateInfoEntry.add_member(:initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InitiatedBy, name: "InitiatedBy"))
    UpdateInfoEntry.add_member(:new_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateValue, name: "NewValue"))
    UpdateInfoEntry.add_member(:previous_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateValue, name: "PreviousValue"))
    UpdateInfoEntry.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartDateTime, name: "StartTime"))
    UpdateInfoEntry.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedDateTime, name: "LastUpdatedDateTime"))
    UpdateInfoEntry.type = Types::UpdateInfoEntry
    UpdateNumberOfDomainControllersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateNumberOfDomainControllersRequest.add_member(:desired_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredNumberOfDomainControllers, name: "DesiredNumber", traits: {"smithy.api#required" => {}}))
    UpdateNumberOfDomainControllersRequest.type = Types::UpdateNumberOfDomainControllersRequest
    UpdateNumberOfDomainControllersResult.type = Types::UpdateNumberOfDomainControllersResult
    UpdateRadiusRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateRadiusRequest.add_member(:radius_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RadiusSettings, name: "RadiusSettings", traits: {"smithy.api#required" => {}}))
    UpdateRadiusRequest.type = Types::UpdateRadiusRequest
    UpdateRadiusResult.type = Types::UpdateRadiusResult
    UpdateSettingsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    UpdateSettingsRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, name: "Settings", traits: {"smithy.api#required" => {}}))
    UpdateSettingsRequest.type = Types::UpdateSettingsRequest
    UpdateSettingsResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    UpdateSettingsResult.type = Types::UpdateSettingsResult
    UpdateStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "Updated"}))
    UpdateStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    UpdateStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    UpdateTrustRequest.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId", traits: {"smithy.api#required" => {}}))
    UpdateTrustRequest.add_member(:selective_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectiveAuth, name: "SelectiveAuth"))
    UpdateTrustRequest.type = Types::UpdateTrustRequest
    UpdateTrustResult.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    UpdateTrustResult.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId"))
    UpdateTrustResult.type = Types::UpdateTrustResult
    UpdateType.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OS", traits: {"smithy.api#enumValue" => "OS"}))
    UpdateType.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK", traits: {"smithy.api#enumValue" => "NETWORK"}))
    UpdateType.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE", traits: {"smithy.api#enumValue" => "SIZE"}))
    UpdateValue.add_member(:os_update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OSUpdateSettings, name: "OSUpdateSettings"))
    UpdateValue.type = Types::UpdateValue
    UserDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UserDoesNotExistException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    UserDoesNotExistException.type = Types::UserDoesNotExistException
    VerifyTrustRequest.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId", traits: {"smithy.api#required" => {}}))
    VerifyTrustRequest.type = Types::VerifyTrustRequest
    VerifyTrustResult.add_member(:trust_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustId, name: "TrustId"))
    VerifyTrustResult.type = Types::VerifyTrustResult

    DirectoryService20150416 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.directoryservice#DirectoryService_20150416"
      service.name = "DirectoryService20150416"
      service.version = "2015-04-16"
      service.traits = {"aws.api#service" => {"sdkId" => "Directory Service", "arnNamespace" => "ds", "cloudFormationName" => "DirectoryService", "cloudTrailEventSource" => "ds.amazonaws.com", "docId" => "ds-2015-04-16", "endpointPrefix" => "ds"}, "aws.auth#sigv4" => {"name" => "ds"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Directory Service", "smithy.api#xmlNamespace" => {"uri" => "http://directoryservice.amazonaws.com/doc/2015-04-16/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:accept_shared_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AcceptSharedDirectory"
        operation.name = "AcceptSharedDirectory"
        operation.input = AcceptSharedDirectoryRequest
        operation.output = AcceptSharedDirectoryResult
        operation.errors << ClientException
        operation.errors << DirectoryAlreadySharedException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:add_ip_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddIpRoutes"
        operation.name = "AddIpRoutes"
        operation.input = AddIpRoutesRequest
        operation.output = AddIpRoutesResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << IpRouteLimitExceededException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:add_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddRegion"
        operation.name = "AddRegion"
        operation.input = AddRegionRequest
        operation.output = AddRegionResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryAlreadyInRegionException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << RegionLimitExceededException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceRequest
        operation.output = AddTagsToResourceResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << TagLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:cancel_schema_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CancelSchemaExtension"
        operation.name = "CancelSchemaExtension"
        operation.input = CancelSchemaExtensionRequest
        operation.output = CancelSchemaExtensionResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:connect_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ConnectDirectory"
        operation.name = "ConnectDirectory"
        operation.input = ConnectDirectoryRequest
        operation.output = ConnectDirectoryResult
        operation.errors << ClientException
        operation.errors << DirectoryLimitExceededException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasRequest
        operation.output = CreateAliasResult
        operation.errors << ClientException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:create_computer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateComputer"
        operation.name = "CreateComputer"
        operation.input = CreateComputerRequest
        operation.output = CreateComputerResult
        operation.errors << AuthenticationFailedException
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_conditional_forwarder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateConditionalForwarder"
        operation.name = "CreateConditionalForwarder"
        operation.input = CreateConditionalForwarderRequest
        operation.output = CreateConditionalForwarderResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateDirectory"
        operation.name = "CreateDirectory"
        operation.input = CreateDirectoryRequest
        operation.output = CreateDirectoryResult
        operation.errors << ClientException
        operation.errors << DirectoryLimitExceededException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:create_hybrid_ad, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateHybridAD"
        operation.name = "CreateHybridAD"
        operation.input = CreateHybridADRequest
        operation.output = CreateHybridADResult
        operation.errors << ADAssessmentLimitExceededException
        operation.errors << ClientException
        operation.errors << DirectoryLimitExceededException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateLogSubscription"
        operation.name = "CreateLogSubscription"
        operation.input = CreateLogSubscriptionRequest
        operation.output = CreateLogSubscriptionResult
        operation.errors << ClientException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InsufficientPermissionsException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_microsoft_ad, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateMicrosoftAD"
        operation.name = "CreateMicrosoftAD"
        operation.input = CreateMicrosoftADRequest
        operation.output = CreateMicrosoftADResult
        operation.errors << ClientException
        operation.errors << DirectoryLimitExceededException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotRequest
        operation.output = CreateSnapshotResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << SnapshotLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_trust, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#CreateTrust"
        operation.name = "CreateTrust"
        operation.input = CreateTrustRequest
        operation.output = CreateTrustResult
        operation.errors << ClientException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_ad_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteADAssessment"
        operation.name = "DeleteADAssessment"
        operation.input = DeleteADAssessmentRequest
        operation.output = DeleteADAssessmentResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_conditional_forwarder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteConditionalForwarder"
        operation.name = "DeleteConditionalForwarder"
        operation.input = DeleteConditionalForwarderRequest
        operation.output = DeleteConditionalForwarderResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteDirectory"
        operation.name = "DeleteDirectory"
        operation.input = DeleteDirectoryRequest
        operation.output = DeleteDirectoryResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:delete_log_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteLogSubscription"
        operation.name = "DeleteLogSubscription"
        operation.input = DeleteLogSubscriptionRequest
        operation.output = DeleteLogSubscriptionResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = DeleteSnapshotRequest
        operation.output = DeleteSnapshotResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:delete_trust, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeleteTrust"
        operation.name = "DeleteTrust"
        operation.input = DeleteTrustRequest
        operation.output = DeleteTrustResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:deregister_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeregisterCertificate"
        operation.name = "DeregisterCertificate"
        operation.input = DeregisterCertificateRequest
        operation.output = DeregisterCertificateResult
        operation.errors << CertificateDoesNotExistException
        operation.errors << CertificateInUseException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:deregister_event_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DeregisterEventTopic"
        operation.name = "DeregisterEventTopic"
        operation.input = DeregisterEventTopicRequest
        operation.output = DeregisterEventTopicResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:describe_ad_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeADAssessment"
        operation.name = "DescribeADAssessment"
        operation.input = DescribeADAssessmentRequest
        operation.output = DescribeADAssessmentResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_ca_enrollment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeCAEnrollmentPolicy"
        operation.name = "DescribeCAEnrollmentPolicy"
        operation.input = DescribeCAEnrollmentPolicyRequest
        operation.output = DescribeCAEnrollmentPolicyResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = DescribeCertificateRequest
        operation.output = DescribeCertificateResult
        operation.errors << CertificateDoesNotExistException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_client_authentication_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeClientAuthenticationSettings"
        operation.name = "DescribeClientAuthenticationSettings"
        operation.input = DescribeClientAuthenticationSettingsRequest
        operation.output = DescribeClientAuthenticationSettingsResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClientAuthenticationSettings.new
      end)
      service.add_operation(:describe_conditional_forwarders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeConditionalForwarders"
        operation.name = "DescribeConditionalForwarders"
        operation.input = DescribeConditionalForwardersRequest
        operation.output = DescribeConditionalForwardersResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_directories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDirectories"
        operation.name = "DescribeDirectories"
        operation.input = DescribeDirectoriesRequest
        operation.output = DescribeDirectoriesResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDirectoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDirectories.new
      end)
      service.add_operation(:describe_directory_data_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDirectoryDataAccess"
        operation.name = "DescribeDirectoryDataAccess"
        operation.input = DescribeDirectoryDataAccessRequest
        operation.output = DescribeDirectoryDataAccessResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_domain_controllers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeDomainControllers"
        operation.name = "DescribeDomainControllers"
        operation.input = DescribeDomainControllersRequest
        operation.output = DescribeDomainControllersResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDomainControllers.new
      end)
      service.add_operation(:describe_event_topics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeEventTopics"
        operation.name = "DescribeEventTopics"
        operation.input = DescribeEventTopicsRequest
        operation.output = DescribeEventTopicsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:describe_hybrid_ad_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeHybridADUpdate"
        operation.name = "DescribeHybridADUpdate"
        operation.input = DescribeHybridADUpdateRequest
        operation.output = DescribeHybridADUpdateResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_ldaps_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeLDAPSSettings"
        operation.name = "DescribeLDAPSSettings"
        operation.input = DescribeLDAPSSettingsRequest
        operation.output = DescribeLDAPSSettingsResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLDAPSSettings.new
      end)
      service.add_operation(:describe_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeRegions"
        operation.name = "DescribeRegions"
        operation.input = DescribeRegionsRequest
        operation.output = DescribeRegionsResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegions.new
      end)
      service.add_operation(:describe_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSettings"
        operation.name = "DescribeSettings"
        operation.input = DescribeSettingsRequest
        operation.output = DescribeSettingsResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:describe_shared_directories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSharedDirectories"
        operation.name = "DescribeSharedDirectories"
        operation.input = DescribeSharedDirectoriesRequest
        operation.output = DescribeSharedDirectoriesResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSharedDirectories.new
      end)
      service.add_operation(:describe_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = DescribeSnapshotsRequest
        operation.output = DescribeSnapshotsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_trusts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeTrusts"
        operation.name = "DescribeTrusts"
        operation.input = DescribeTrustsRequest
        operation.output = DescribeTrustsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrusts.new
      end)
      service.add_operation(:describe_update_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DescribeUpdateDirectory"
        operation.name = "DescribeUpdateDirectory"
        operation.input = DescribeUpdateDirectoryRequest
        operation.output = DescribeUpdateDirectoryResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUpdateDirectory.new
      end)
      service.add_operation(:disable_ca_enrollment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableCAEnrollmentPolicy"
        operation.name = "DisableCAEnrollmentPolicy"
        operation.input = DisableCAEnrollmentPolicyRequest
        operation.output = DisableCAEnrollmentPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << DisableAlreadyInProgressException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:disable_client_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableClientAuthentication"
        operation.name = "DisableClientAuthentication"
        operation.input = DisableClientAuthenticationRequest
        operation.output = DisableClientAuthenticationResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidClientAuthStatusException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:disable_directory_data_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableDirectoryDataAccess"
        operation.name = "DisableDirectoryDataAccess"
        operation.input = DisableDirectoryDataAccessRequest
        operation.output = DisableDirectoryDataAccessResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryInDesiredStateException
        operation.errors << DirectoryUnavailableException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:disable_ldaps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableLDAPS"
        operation.name = "DisableLDAPS"
        operation.input = DisableLDAPSRequest
        operation.output = DisableLDAPSResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << InvalidLDAPSStatusException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:disable_radius, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableRadius"
        operation.name = "DisableRadius"
        operation.input = DisableRadiusRequest
        operation.output = DisableRadiusResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:disable_sso, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#DisableSso"
        operation.name = "DisableSso"
        operation.input = DisableSsoRequest
        operation.output = DisableSsoResult
        operation.errors << AuthenticationFailedException
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InsufficientPermissionsException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:enable_ca_enrollment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableCAEnrollmentPolicy"
        operation.name = "EnableCAEnrollmentPolicy"
        operation.input = EnableCAEnrollmentPolicyRequest
        operation.output = EnableCAEnrollmentPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << EnableAlreadyInProgressException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:enable_client_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableClientAuthentication"
        operation.name = "EnableClientAuthentication"
        operation.input = EnableClientAuthenticationRequest
        operation.output = EnableClientAuthenticationResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidClientAuthStatusException
        operation.errors << NoAvailableCertificateException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:enable_directory_data_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableDirectoryDataAccess"
        operation.name = "EnableDirectoryDataAccess"
        operation.input = EnableDirectoryDataAccessRequest
        operation.output = EnableDirectoryDataAccessResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryInDesiredStateException
        operation.errors << DirectoryUnavailableException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:enable_ldaps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableLDAPS"
        operation.name = "EnableLDAPS"
        operation.input = EnableLDAPSRequest
        operation.output = EnableLDAPSResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << InvalidLDAPSStatusException
        operation.errors << InvalidParameterException
        operation.errors << NoAvailableCertificateException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:enable_radius, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableRadius"
        operation.name = "EnableRadius"
        operation.input = EnableRadiusRequest
        operation.output = EnableRadiusResult
        operation.errors << ClientException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:enable_sso, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#EnableSso"
        operation.name = "EnableSso"
        operation.input = EnableSsoRequest
        operation.output = EnableSsoResult
        operation.errors << AuthenticationFailedException
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InsufficientPermissionsException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:get_directory_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#GetDirectoryLimits"
        operation.name = "GetDirectoryLimits"
        operation.input = GetDirectoryLimitsRequest
        operation.output = GetDirectoryLimitsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:get_snapshot_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#GetSnapshotLimits"
        operation.name = "GetSnapshotLimits"
        operation.input = GetSnapshotLimitsRequest
        operation.output = GetSnapshotLimitsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:list_ad_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListADAssessments"
        operation.name = "ListADAssessments"
        operation.input = ListADAssessmentsRequest
        operation.output = ListADAssessmentsResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListADAssessments.new
      end)
      service.add_operation(:list_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = ListCertificatesRequest
        operation.output = ListCertificatesResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_ip_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListIpRoutes"
        operation.name = "ListIpRoutes"
        operation.input = ListIpRoutesRequest
        operation.output = ListIpRoutesResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListIpRoutes.new
      end)
      service.add_operation(:list_log_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListLogSubscriptions"
        operation.name = "ListLogSubscriptions"
        operation.input = ListLogSubscriptionsRequest
        operation.output = ListLogSubscriptionsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLogSubscriptions.new
      end)
      service.add_operation(:list_schema_extensions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListSchemaExtensions"
        operation.name = "ListSchemaExtensions"
        operation.input = ListSchemaExtensionsRequest
        operation.output = ListSchemaExtensionsResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSchemaExtensions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:register_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RegisterCertificate"
        operation.name = "RegisterCertificate"
        operation.input = RegisterCertificateRequest
        operation.output = RegisterCertificateResult
        operation.errors << CertificateAlreadyExistsException
        operation.errors << CertificateLimitExceededException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << InvalidCertificateException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:register_event_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RegisterEventTopic"
        operation.name = "RegisterEventTopic"
        operation.input = RegisterEventTopicRequest
        operation.output = RegisterEventTopicResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:reject_shared_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RejectSharedDirectory"
        operation.name = "RejectSharedDirectory"
        operation.input = RejectSharedDirectoryRequest
        operation.output = RejectSharedDirectoryResult
        operation.errors << ClientException
        operation.errors << DirectoryAlreadySharedException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:remove_ip_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveIpRoutes"
        operation.name = "RemoveIpRoutes"
        operation.input = RemoveIpRoutesRequest
        operation.output = RemoveIpRoutesResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:remove_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveRegion"
        operation.name = "RemoveRegion"
        operation.input = RemoveRegionRequest
        operation.output = RemoveRegionResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceRequest
        operation.output = RemoveTagsFromResourceResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:reset_user_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ResetUserPassword"
        operation.name = "ResetUserPassword"
        operation.input = ResetUserPasswordRequest
        operation.output = ResetUserPasswordResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidPasswordException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.errors << UserDoesNotExistException
        operation.traits = {}
      end)
      service.add_operation(:restore_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#RestoreFromSnapshot"
        operation.name = "RestoreFromSnapshot"
        operation.input = RestoreFromSnapshotRequest
        operation.output = RestoreFromSnapshotResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:share_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#ShareDirectory"
        operation.name = "ShareDirectory"
        operation.input = ShareDirectoryRequest
        operation.output = ShareDirectoryResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryAlreadySharedException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTargetException
        operation.errors << OrganizationsException
        operation.errors << ServiceException
        operation.errors << ShareLimitExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:start_ad_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#StartADAssessment"
        operation.name = "StartADAssessment"
        operation.input = StartADAssessmentRequest
        operation.output = StartADAssessmentResult
        operation.errors << ADAssessmentLimitExceededException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:start_schema_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#StartSchemaExtension"
        operation.name = "StartSchemaExtension"
        operation.input = StartSchemaExtensionRequest
        operation.output = StartSchemaExtensionResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << SnapshotLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:unshare_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UnshareDirectory"
        operation.name = "UnshareDirectory"
        operation.input = UnshareDirectoryRequest
        operation.output = UnshareDirectoryResult
        operation.errors << ClientException
        operation.errors << DirectoryNotSharedException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidTargetException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:update_conditional_forwarder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateConditionalForwarder"
        operation.name = "UpdateConditionalForwarder"
        operation.input = UpdateConditionalForwarderRequest
        operation.output = UpdateConditionalForwarderResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_directory_setup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateDirectorySetup"
        operation.name = "UpdateDirectorySetup"
        operation.input = UpdateDirectorySetupRequest
        operation.output = UpdateDirectorySetupResult
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryInDesiredStateException
        operation.errors << DirectoryUnavailableException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << SnapshotLimitExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_hybrid_ad, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateHybridAD"
        operation.name = "UpdateHybridAD"
        operation.input = UpdateHybridADRequest
        operation.output = UpdateHybridADResult
        operation.errors << ADAssessmentLimitExceededException
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_number_of_domain_controllers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateNumberOfDomainControllers"
        operation.name = "UpdateNumberOfDomainControllers"
        operation.input = UpdateNumberOfDomainControllersRequest
        operation.output = UpdateNumberOfDomainControllersResult
        operation.errors << ClientException
        operation.errors << DirectoryUnavailableException
        operation.errors << DomainControllerLimitExceededException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_radius, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateRadius"
        operation.name = "UpdateRadius"
        operation.input = UpdateRadiusRequest
        operation.output = UpdateRadiusResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:update_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateSettings"
        operation.name = "UpdateSettings"
        operation.input = UpdateSettingsRequest
        operation.output = UpdateSettingsResult
        operation.errors << ClientException
        operation.errors << DirectoryDoesNotExistException
        operation.errors << DirectoryUnavailableException
        operation.errors << IncompatibleSettingsException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
        operation.errors << UnsupportedSettingsException
        operation.traits = {}
      end)
      service.add_operation(:update_trust, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#UpdateTrust"
        operation.name = "UpdateTrust"
        operation.input = UpdateTrustRequest
        operation.output = UpdateTrustResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.traits = {}
      end)
      service.add_operation(:verify_trust, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservice#VerifyTrust"
        operation.name = "VerifyTrust"
        operation.input = VerifyTrustRequest
        operation.output = VerifyTrustResult
        operation.errors << ClientException
        operation.errors << EntityDoesNotExistException
        operation.errors << InvalidParameterException
        operation.errors << ServiceException
        operation.errors << UnsupportedOperationException
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
