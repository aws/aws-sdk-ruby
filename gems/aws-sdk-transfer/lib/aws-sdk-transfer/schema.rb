# frozen_string_literal: true

# This is generated code!

module Aws::Transfer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddressAllocationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#AddressAllocationId', name: 'AddressAllocationId')
    AddressAllocationIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#AddressAllocationIds', name: 'AddressAllocationIds')
    AgreementId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#AgreementId', name: 'AgreementId', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^a-([0-9a-f]{17})$"})
    AgreementStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#AgreementStatusType', name: 'AgreementStatusType')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1600}, "smithy.api#pattern" => "^arn:\\S+$"})
    As2ConnectorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#As2ConnectorConfig', name: 'As2ConnectorConfig')
    As2ConnectorSecretId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#As2ConnectorSecretId', name: 'As2ConnectorSecretId', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    As2Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#As2Id', name: 'As2Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{Print}\\s]*$"})
    As2Transport = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#As2Transport', name: 'As2Transport')
    As2Transports = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#As2Transports', name: 'As2Transports', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CallbackToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CallbackToken', name: 'CallbackToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\w+$"})
    CertDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.transfer#CertDate', name: 'CertDate')
    CertSerial = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CertSerial', name: 'CertSerial', traits: {"smithy.api#length" => {"min" => 0, "max" => 48}, "smithy.api#pattern" => "^[\\p{XDigit}{2}:?]*$"})
    Certificate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Certificate', name: 'Certificate', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}})
    CertificateBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CertificateBodyType', name: 'CertificateBodyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$", "smithy.api#sensitive" => {}})
    CertificateChainType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CertificateChainType', name: 'CertificateChainType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$", "smithy.api#sensitive" => {}})
    CertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CertificateId', name: 'CertificateId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^cert-([0-9a-f]{17})$"})
    CertificateIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#CertificateIds', name: 'CertificateIds')
    CertificateStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#CertificateStatusType', name: 'CertificateStatusType')
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#CertificateType', name: 'CertificateType')
    CertificateUsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#CertificateUsageType', name: 'CertificateUsageType')
    CompressionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#CompressionEnum', name: 'CompressionEnum')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorFileTransferResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ConnectorFileTransferResult', name: 'ConnectorFileTransferResult')
    ConnectorFileTransferResults = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ConnectorFileTransferResults', name: 'ConnectorFileTransferResults', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ConnectorId', name: 'ConnectorId', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^c-([0-9a-f]{17})$"})
    ConnectorSecurityPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ConnectorSecurityPolicyName', name: 'ConnectorSecurityPolicyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^TransferSFTPConnectorSecurityPolicy-[A-Za-z0-9-]+$"})
    CopyStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CopyStepDetails', name: 'CopyStepDetails')
    CreateAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateAccessRequest', name: 'CreateAccessRequest')
    CreateAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateAccessResponse', name: 'CreateAccessResponse')
    CreateAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateAgreementRequest', name: 'CreateAgreementRequest')
    CreateAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateAgreementResponse', name: 'CreateAgreementResponse')
    CreateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateConnectorRequest', name: 'CreateConnectorRequest')
    CreateConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateConnectorResponse', name: 'CreateConnectorResponse')
    CreateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateProfileRequest', name: 'CreateProfileRequest')
    CreateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateProfileResponse', name: 'CreateProfileResponse')
    CreateServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateServerRequest', name: 'CreateServerRequest')
    CreateServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateServerResponse', name: 'CreateServerResponse')
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateUserResponse', name: 'CreateUserResponse')
    CreateWebAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateWebAppRequest', name: 'CreateWebAppRequest')
    CreateWebAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateWebAppResponse', name: 'CreateWebAppResponse')
    CreateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateWorkflowRequest', name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CreateWorkflowResponse', name: 'CreateWorkflowResponse')
    CustomDirectoriesType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CustomDirectoriesType', name: 'CustomDirectoriesType')
    CustomStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#CustomStepDetails', name: 'CustomStepDetails')
    CustomStepStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#CustomStepStatus', name: 'CustomStepStatus')
    CustomStepTarget = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#CustomStepTarget', name: 'CustomStepTarget', traits: {"smithy.api#length" => {"min" => 0, "max" => 170}, "smithy.api#pattern" => "^arn:[a-z-]+:lambda:.*$"})
    CustomStepTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#CustomStepTimeoutSeconds', name: 'CustomStepTimeoutSeconds', traits: {"smithy.api#range" => {"min" => 1, "max" => 1800}})
    DateImported = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.transfer#DateImported', name: 'DateImported')
    DecryptStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DecryptStepDetails', name: 'DecryptStepDetails')
    DeleteAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteAccessRequest', name: 'DeleteAccessRequest')
    DeleteAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteAgreementRequest', name: 'DeleteAgreementRequest')
    DeleteCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteCertificateRequest', name: 'DeleteCertificateRequest')
    DeleteConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteConnectorRequest', name: 'DeleteConnectorRequest')
    DeleteHostKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteHostKeyRequest', name: 'DeleteHostKeyRequest')
    DeleteId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#DeleteId', name: 'DeleteId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9a-zA-Z./-]+$"})
    DeleteProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteProfileRequest', name: 'DeleteProfileRequest')
    DeleteServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteServerRequest', name: 'DeleteServerRequest')
    DeleteSshPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteSshPublicKeyRequest', name: 'DeleteSshPublicKeyRequest')
    DeleteStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteStepDetails', name: 'DeleteStepDetails')
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteWebAppCustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteWebAppCustomizationRequest', name: 'DeleteWebAppCustomizationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.transfer#WebAppResource"}]})
    DeleteWebAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteWebAppRequest', name: 'DeleteWebAppRequest')
    DeleteWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DeleteWorkflowRequest', name: 'DeleteWorkflowRequest')
    DescribeAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeAccessRequest', name: 'DescribeAccessRequest')
    DescribeAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeAccessResponse', name: 'DescribeAccessResponse')
    DescribeAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeAgreementRequest', name: 'DescribeAgreementRequest')
    DescribeAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeAgreementResponse', name: 'DescribeAgreementResponse')
    DescribeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeCertificateRequest', name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeCertificateResponse', name: 'DescribeCertificateResponse')
    DescribeConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeConnectorRequest', name: 'DescribeConnectorRequest')
    DescribeConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeConnectorResponse', name: 'DescribeConnectorResponse')
    DescribeExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeExecutionRequest', name: 'DescribeExecutionRequest')
    DescribeExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeExecutionResponse', name: 'DescribeExecutionResponse')
    DescribeHostKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeHostKeyRequest', name: 'DescribeHostKeyRequest')
    DescribeHostKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeHostKeyResponse', name: 'DescribeHostKeyResponse')
    DescribeProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeProfileRequest', name: 'DescribeProfileRequest')
    DescribeProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeProfileResponse', name: 'DescribeProfileResponse')
    DescribeSecurityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeSecurityPolicyRequest', name: 'DescribeSecurityPolicyRequest')
    DescribeSecurityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeSecurityPolicyResponse', name: 'DescribeSecurityPolicyResponse')
    DescribeServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeServerRequest', name: 'DescribeServerRequest')
    DescribeServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeServerResponse', name: 'DescribeServerResponse')
    DescribeUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeUserRequest', name: 'DescribeUserRequest')
    DescribeUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeUserResponse', name: 'DescribeUserResponse')
    DescribeWebAppCustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWebAppCustomizationRequest', name: 'DescribeWebAppCustomizationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.transfer#WebAppResource"}]})
    DescribeWebAppCustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWebAppCustomizationResponse', name: 'DescribeWebAppCustomizationResponse')
    DescribeWebAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWebAppRequest', name: 'DescribeWebAppRequest')
    DescribeWebAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWebAppResponse', name: 'DescribeWebAppResponse')
    DescribeWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWorkflowRequest', name: 'DescribeWorkflowRequest')
    DescribeWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribeWorkflowResponse', name: 'DescribeWorkflowResponse')
    DescribedAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedAccess', name: 'DescribedAccess')
    DescribedAgreement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedAgreement', name: 'DescribedAgreement')
    DescribedCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedCertificate', name: 'DescribedCertificate')
    DescribedConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedConnector', name: 'DescribedConnector')
    DescribedExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedExecution', name: 'DescribedExecution')
    DescribedHostKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedHostKey', name: 'DescribedHostKey')
    DescribedIdentityCenterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedIdentityCenterConfig', name: 'DescribedIdentityCenterConfig')
    DescribedProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedProfile', name: 'DescribedProfile')
    DescribedSecurityPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedSecurityPolicy', name: 'DescribedSecurityPolicy')
    DescribedServer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedServer', name: 'DescribedServer')
    DescribedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedUser', name: 'DescribedUser')
    DescribedWebApp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedWebApp', name: 'DescribedWebApp')
    DescribedWebAppCustomization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedWebAppCustomization', name: 'DescribedWebAppCustomization', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.transfer#WebAppResource"}]})
    DescribedWebAppIdentityProviderDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.transfer#DescribedWebAppIdentityProviderDetails', name: 'DescribedWebAppIdentityProviderDetails')
    DescribedWorkflow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#DescribedWorkflow', name: 'DescribedWorkflow')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\p{Graph}]+$"})
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryListingOptimization = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#DirectoryListingOptimization', name: 'DirectoryListingOptimization')
    Domain = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#Domain', name: 'Domain')
    EfsFileLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#EfsFileLocation', name: 'EfsFileLocation')
    EfsFileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#EfsFileSystemId', name: 'EfsFileSystemId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:(access-point/fsap|file-system/fs)-[0-9a-f]{8,40}|fs(ap)?-[0-9a-f]{8,40})$"})
    EfsPath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#EfsPath', name: 'EfsPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[^\\x00]+$"})
    EncryptionAlg = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#EncryptionAlg', name: 'EncryptionAlg')
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#EncryptionType', name: 'EncryptionType')
    EndpointDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#EndpointDetails', name: 'EndpointDetails')
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#EndpointType', name: 'EndpointType')
    EnforceMessageSigningType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#EnforceMessageSigningType', name: 'EnforceMessageSigningType')
    ExecutionError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ExecutionError', name: 'ExecutionError')
    ExecutionErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ExecutionErrorMessage', name: 'ExecutionErrorMessage')
    ExecutionErrorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#ExecutionErrorType', name: 'ExecutionErrorType')
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ExecutionId', name: 'ExecutionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    ExecutionResults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ExecutionResults', name: 'ExecutionResults')
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#ExecutionStatus', name: 'ExecutionStatus')
    ExecutionStepResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ExecutionStepResult', name: 'ExecutionStepResult')
    ExecutionStepResults = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ExecutionStepResults', name: 'ExecutionStepResults', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ExternalId', name: 'ExternalId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^S-1-[\\d-]+$"})
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#FailureCode', name: 'FailureCode')
    FileLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#FileLocation', name: 'FileLocation')
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#FilePath', name: 'FilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(.)+$"})
    FilePaths = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#FilePaths', name: 'FilePaths', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Fips = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.transfer#Fips', name: 'Fips')
    Function = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Function', name: 'Function', traits: {"smithy.api#length" => {"min" => 1, "max" => 170}, "smithy.api#pattern" => "^arn:[a-z-]+:lambda:.*$"})
    HomeDirectory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HomeDirectory', name: 'HomeDirectory', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(|/.*)$"})
    HomeDirectoryMapEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#HomeDirectoryMapEntry', name: 'HomeDirectoryMapEntry')
    HomeDirectoryMappings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#HomeDirectoryMappings', name: 'HomeDirectoryMappings', traits: {"smithy.api#length" => {"min" => 1, "max" => 50000}})
    HomeDirectoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#HomeDirectoryType', name: 'HomeDirectoryType')
    HostKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HostKey', name: 'HostKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    HostKeyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HostKeyDescription', name: 'HostKeyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[\\p{Print}]*$"})
    HostKeyFingerprint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HostKeyFingerprint', name: 'HostKeyFingerprint')
    HostKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HostKeyId', name: 'HostKeyId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^hostkey-[0-9a-f]{17}$"})
    HostKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#HostKeyType', name: 'HostKeyType')
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#IdentityCenterApplicationArn', name: 'IdentityCenterApplicationArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[\\w-]+:sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#IdentityCenterConfig', name: 'IdentityCenterConfig')
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[\\w-]+:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityProviderDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#IdentityProviderDetails', name: 'IdentityProviderDetails')
    IdentityProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#IdentityProviderType', name: 'IdentityProviderType')
    ImportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportCertificateRequest', name: 'ImportCertificateRequest')
    ImportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportCertificateResponse', name: 'ImportCertificateResponse')
    ImportHostKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportHostKeyRequest', name: 'ImportHostKeyRequest')
    ImportHostKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportHostKeyResponse', name: 'ImportHostKeyResponse')
    ImportSshPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportSshPublicKeyRequest', name: 'ImportSshPublicKeyRequest')
    ImportSshPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ImportSshPublicKeyResponse', name: 'ImportSshPublicKeyResponse')
    InputFileLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#InputFileLocation', name: 'InputFileLocation')
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#InternalServiceError', name: 'InternalServiceError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#IpAddressType', name: 'IpAddressType')
    ListAccessesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListAccessesRequest', name: 'ListAccessesRequest')
    ListAccessesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListAccessesResponse', name: 'ListAccessesResponse')
    ListAgreementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListAgreementsRequest', name: 'ListAgreementsRequest')
    ListAgreementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListAgreementsResponse', name: 'ListAgreementsResponse')
    ListCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListCertificatesRequest', name: 'ListCertificatesRequest')
    ListCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListCertificatesResponse', name: 'ListCertificatesResponse')
    ListConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListConnectorsRequest', name: 'ListConnectorsRequest')
    ListConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListConnectorsResponse', name: 'ListConnectorsResponse')
    ListExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListExecutionsRequest', name: 'ListExecutionsRequest')
    ListExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListExecutionsResponse', name: 'ListExecutionsResponse')
    ListFileTransferResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListFileTransferResultsRequest', name: 'ListFileTransferResultsRequest')
    ListFileTransferResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListFileTransferResultsResponse', name: 'ListFileTransferResultsResponse')
    ListHostKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListHostKeysRequest', name: 'ListHostKeysRequest')
    ListHostKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListHostKeysResponse', name: 'ListHostKeysResponse')
    ListProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListProfilesRequest', name: 'ListProfilesRequest')
    ListProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListProfilesResponse', name: 'ListProfilesResponse')
    ListSecurityPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListSecurityPoliciesRequest', name: 'ListSecurityPoliciesRequest')
    ListSecurityPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListSecurityPoliciesResponse', name: 'ListSecurityPoliciesResponse')
    ListServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListServersRequest', name: 'ListServersRequest')
    ListServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListServersResponse', name: 'ListServersResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListUsersResponse', name: 'ListUsersResponse')
    ListWebAppsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListWebAppsRequest', name: 'ListWebAppsRequest')
    ListWebAppsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListWebAppsResponse', name: 'ListWebAppsResponse')
    ListWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListWorkflowsRequest', name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListWorkflowsResponse', name: 'ListWorkflowsResponse')
    ListedAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedAccess', name: 'ListedAccess')
    ListedAccesses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedAccesses', name: 'ListedAccesses')
    ListedAgreement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedAgreement', name: 'ListedAgreement')
    ListedAgreements = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedAgreements', name: 'ListedAgreements')
    ListedCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedCertificate', name: 'ListedCertificate')
    ListedCertificates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedCertificates', name: 'ListedCertificates')
    ListedConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedConnector', name: 'ListedConnector')
    ListedConnectors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedConnectors', name: 'ListedConnectors')
    ListedExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedExecution', name: 'ListedExecution')
    ListedExecutions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedExecutions', name: 'ListedExecutions')
    ListedHostKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedHostKey', name: 'ListedHostKey')
    ListedHostKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedHostKeys', name: 'ListedHostKeys')
    ListedProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedProfile', name: 'ListedProfile')
    ListedProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedProfiles', name: 'ListedProfiles')
    ListedServer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedServer', name: 'ListedServer')
    ListedServers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedServers', name: 'ListedServers')
    ListedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedUser', name: 'ListedUser')
    ListedUsers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedUsers', name: 'ListedUsers')
    ListedWebApp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedWebApp', name: 'ListedWebApp')
    ListedWebApps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedWebApps', name: 'ListedWebApps')
    ListedWorkflow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ListedWorkflow', name: 'ListedWorkflow')
    ListedWorkflows = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ListedWorkflows', name: 'ListedWorkflows')
    ListingId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ListingId', name: 'ListingId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9a-zA-Z./-]+$"})
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#LogGroupName', name: 'LogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]*$"})
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#LoggingConfiguration', name: 'LoggingConfiguration')
    MapEntry = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#MapEntry', name: 'MapEntry', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^/.*$"})
    MapTarget = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#MapTarget', name: 'MapTarget', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^/.*$"})
    MapType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#MapType', name: 'MapType')
    MaxConcurrentConnections = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#MaxConcurrentConnections', name: 'MaxConcurrentConnections', traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1}})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#MaxItems', name: 'MaxItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MdnResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#MdnResponse', name: 'MdnResponse')
    MdnSigningAlg = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#MdnSigningAlg', name: 'MdnSigningAlg')
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Message', name: 'Message')
    MessageSubject = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#MessageSubject', name: 'MessageSubject', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{Print}\\p{Blank}]+$"})
    MoveId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#MoveId', name: 'MoveId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9a-zA-Z./-]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}})
    NullableRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#NullableRole', name: 'NullableRole', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(|arn:.*role/\\S+)$"})
    OnPartialUploadWorkflowDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#OnPartialUploadWorkflowDetails', name: 'OnPartialUploadWorkflowDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    OnUploadWorkflowDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#OnUploadWorkflowDetails', name: 'OnUploadWorkflowDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    OutputFileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#OutputFileName', name: 'OutputFileName', traits: {"smithy.api#length" => {"min" => 26, "max" => 537}, "smithy.api#pattern" => "^c-([0-9a-f]{17})-[0-9a-zA-Z./-]+.json$"})
    OverwriteExisting = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#OverwriteExisting', name: 'OverwriteExisting')
    PassiveIp = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#PassiveIp', name: 'PassiveIp', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PosixId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#PosixId', name: 'PosixId', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    PosixProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#PosixProfile', name: 'PosixProfile')
    PostAuthenticationLoginBanner = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#PostAuthenticationLoginBanner', name: 'PostAuthenticationLoginBanner', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\x09-\\x0D\\x20-\\x7E]*$"})
    PreAuthenticationLoginBanner = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#PreAuthenticationLoginBanner', name: 'PreAuthenticationLoginBanner', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\x09-\\x0D\\x20-\\x7E]*$"})
    PreserveContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#PreserveContentType', name: 'PreserveContentType')
    PreserveFilenameType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#PreserveFilenameType', name: 'PreserveFilenameType')
    PrivateKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#PrivateKeyType', name: 'PrivateKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$", "smithy.api#sensitive" => {}})
    ProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ProfileId', name: 'ProfileId', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^p-([0-9a-f]{17})$"})
    ProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#ProfileType', name: 'ProfileType')
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#Protocol', name: 'Protocol')
    ProtocolDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ProtocolDetails', name: 'ProtocolDetails')
    Protocols = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#Protocols', name: 'Protocols', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Resource', name: 'Resource')
    ResourceExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ResourceExistsException', name: 'ResourceExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ResourceType', name: 'ResourceType')
    Response = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Response', name: 'Response')
    RetryAfterSeconds = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#RetryAfterSeconds', name: 'RetryAfterSeconds')
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Role', name: 'Role', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*role/\\S+$"})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3Etag = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3Etag', name: 'S3Etag', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^.+$"})
    S3FileLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#S3FileLocation', name: 'S3FileLocation')
    S3InputFileLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#S3InputFileLocation', name: 'S3InputFileLocation')
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\P{M}\\p{M}]*$"})
    S3StorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#S3StorageOptions', name: 'S3StorageOptions')
    S3Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#S3Tag', name: 'S3Tag')
    S3TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3TagKey', name: 'S3TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    S3TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3TagValue', name: 'S3TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    S3Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#S3Tags', name: 'S3Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    S3VersionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#S3VersionId', name: 'S3VersionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    SecondaryGids = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SecondaryGids', name: 'SecondaryGids', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SecretId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SecretId', name: 'SecretId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-[0-9a-f]{8,17}$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SecurityGroupIds', name: 'SecurityGroupIds')
    SecurityPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SecurityPolicyName', name: 'SecurityPolicyName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^Transfer[A-Za-z0-9]*SecurityPolicy-[A-Za-z0-9-]+$"})
    SecurityPolicyNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SecurityPolicyNames', name: 'SecurityPolicyNames')
    SecurityPolicyOption = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SecurityPolicyOption', name: 'SecurityPolicyOption', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SecurityPolicyOptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SecurityPolicyOptions', name: 'SecurityPolicyOptions')
    SecurityPolicyProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#SecurityPolicyProtocol', name: 'SecurityPolicyProtocol')
    SecurityPolicyProtocols = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SecurityPolicyProtocols', name: 'SecurityPolicyProtocols', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SecurityPolicyResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#SecurityPolicyResourceType', name: 'SecurityPolicyResourceType')
    SendWorkflowStepStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#SendWorkflowStepStateRequest', name: 'SendWorkflowStepStateRequest')
    SendWorkflowStepStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#SendWorkflowStepStateResponse', name: 'SendWorkflowStepStateResponse')
    ServerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ServerId', name: 'ServerId', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^s-([0-9a-f]{17})$"})
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ServiceErrorMessage', name: 'ServiceErrorMessage')
    ServiceManagedEgressIpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#ServiceManagedEgressIpAddress', name: 'ServiceManagedEgressIpAddress', traits: {"smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"})
    ServiceManagedEgressIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#ServiceManagedEgressIpAddresses', name: 'ServiceManagedEgressIpAddresses')
    ServiceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ServiceMetadata', name: 'ServiceMetadata')
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceUnavailable", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[\\w-]*$"})
    SetStatOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#SetStatOption', name: 'SetStatOption')
    SftpAuthenticationMethods = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#SftpAuthenticationMethods', name: 'SftpAuthenticationMethods')
    SftpConnectorConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#SftpConnectorConfig', name: 'SftpConnectorConfig')
    SftpConnectorConnectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#SftpConnectorConnectionDetails', name: 'SftpConnectorConnectionDetails')
    SftpConnectorHostKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SftpConnectorHostKey', name: 'SftpConnectorHostKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SftpConnectorTrustedHostKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SftpConnectorTrustedHostKey', name: 'SftpConnectorTrustedHostKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SftpConnectorTrustedHostKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SftpConnectorTrustedHostKeyList', name: 'SftpConnectorTrustedHostKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SigningAlg = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#SigningAlg', name: 'SigningAlg')
    SourceFileLocation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SourceFileLocation', name: 'SourceFileLocation', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\$\\{(\\w+.)+\\w+\\}$"})
    SourceIp = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SourceIp', name: 'SourceIp', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^[0-9a-fA-F\\.\\:]+$"})
    SshPublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#SshPublicKey', name: 'SshPublicKey')
    SshPublicKeyBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SshPublicKeyBody', name: 'SshPublicKeyBody', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\s*(ssh|ecdsa)-[a-z0-9-]+[ \\t]+(([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{1,3})?(={0,3})?)(\\s*|[ \\t]+[\\S \\t]*\\s*)$"})
    SshPublicKeyCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#SshPublicKeyCount', name: 'SshPublicKeyCount')
    SshPublicKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SshPublicKeyId', name: 'SshPublicKeyId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^key-[0-9a-f]{17}$"})
    SshPublicKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SshPublicKeys', name: 'SshPublicKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    StartDirectoryListingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartDirectoryListingRequest', name: 'StartDirectoryListingRequest')
    StartDirectoryListingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartDirectoryListingResponse', name: 'StartDirectoryListingResponse')
    StartFileTransferRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartFileTransferRequest', name: 'StartFileTransferRequest')
    StartFileTransferResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartFileTransferResponse', name: 'StartFileTransferResponse')
    StartRemoteDeleteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartRemoteDeleteRequest', name: 'StartRemoteDeleteRequest')
    StartRemoteDeleteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartRemoteDeleteResponse', name: 'StartRemoteDeleteResponse')
    StartRemoteMoveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartRemoteMoveRequest', name: 'StartRemoteMoveRequest')
    StartRemoteMoveResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartRemoteMoveResponse', name: 'StartRemoteMoveResponse')
    StartServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StartServerRequest', name: 'StartServerRequest')
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#State', name: 'State')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Status', name: 'Status')
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#StatusCode', name: 'StatusCode', traits: {"smithy.api#default" => 0})
    StepResultOutputsJson = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#StepResultOutputsJson', name: 'StepResultOutputsJson', traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    StopServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#StopServerRequest', name: 'StopServerRequest')
    StructuredLogDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#StructuredLogDestinations', name: 'StructuredLogDestinations', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#SubnetId', name: 'SubnetId')
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#SubnetIds', name: 'SubnetIds')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TagResourceRequest', name: 'TagResourceRequest')
    TagStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TagStepDetails', name: 'TagStepDetails')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TestConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TestConnectionRequest', name: 'TestConnectionRequest')
    TestConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TestConnectionResponse', name: 'TestConnectionResponse')
    TestIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TestIdentityProviderRequest', name: 'TestIdentityProviderRequest')
    TestIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#TestIdentityProviderResponse', name: 'TestIdentityProviderResponse')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TlsSessionResumptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#TlsSessionResumptionMode', name: 'TlsSessionResumptionMode')
    TransferId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#TransferId', name: 'TransferId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9a-zA-Z./-]+$"})
    TransferTableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#TransferTableStatus', name: 'TransferTableStatus')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateAccessRequest', name: 'UpdateAccessRequest')
    UpdateAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateAccessResponse', name: 'UpdateAccessResponse')
    UpdateAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateAgreementRequest', name: 'UpdateAgreementRequest')
    UpdateAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateAgreementResponse', name: 'UpdateAgreementResponse')
    UpdateCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateCertificateRequest', name: 'UpdateCertificateRequest')
    UpdateCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateCertificateResponse', name: 'UpdateCertificateResponse')
    UpdateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateConnectorRequest', name: 'UpdateConnectorRequest')
    UpdateConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateConnectorResponse', name: 'UpdateConnectorResponse')
    UpdateHostKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateHostKeyRequest', name: 'UpdateHostKeyRequest')
    UpdateHostKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateHostKeyResponse', name: 'UpdateHostKeyResponse')
    UpdateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateProfileRequest', name: 'UpdateProfileRequest')
    UpdateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateProfileResponse', name: 'UpdateProfileResponse')
    UpdateServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateServerRequest', name: 'UpdateServerRequest')
    UpdateServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateServerResponse', name: 'UpdateServerResponse')
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateUserResponse', name: 'UpdateUserResponse')
    UpdateWebAppCustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateWebAppCustomizationRequest', name: 'UpdateWebAppCustomizationRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.transfer#WebAppResource"}]})
    UpdateWebAppCustomizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateWebAppCustomizationResponse', name: 'UpdateWebAppCustomizationResponse', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.transfer#WebAppResource"}]})
    UpdateWebAppIdentityCenterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateWebAppIdentityCenterConfig', name: 'UpdateWebAppIdentityCenterConfig')
    UpdateWebAppIdentityProviderDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.transfer#UpdateWebAppIdentityProviderDetails', name: 'UpdateWebAppIdentityProviderDetails')
    UpdateWebAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateWebAppRequest', name: 'UpdateWebAppRequest')
    UpdateWebAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UpdateWebAppResponse', name: 'UpdateWebAppResponse')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    UserCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#UserCount', name: 'UserCount')
    UserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#UserDetails', name: 'UserDetails')
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[\\w][\\w@.-]{2,99}$"})
    UserPassword = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#UserPassword', name: 'UserPassword', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#VpcId', name: 'VpcId')
    WebAppAccessEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WebAppAccessEndpoint', name: 'WebAppAccessEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WebAppEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WebAppEndpoint', name: 'WebAppEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WebAppEndpointPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#WebAppEndpointPolicy', name: 'WebAppEndpointPolicy')
    WebAppFaviconFile = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.transfer#WebAppFaviconFile', name: 'WebAppFaviconFile', traits: {"smithy.api#length" => {"min" => 1, "max" => 20960}, "smithy.api#sensitive" => {}})
    WebAppId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WebAppId', name: 'WebAppId', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^webapp-[0-9a-f]{17}$"})
    WebAppIdentityProviderDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.transfer#WebAppIdentityProviderDetails', name: 'WebAppIdentityProviderDetails')
    WebAppLogoFile = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.transfer#WebAppLogoFile', name: 'WebAppLogoFile', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#sensitive" => {}})
    WebAppTitle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WebAppTitle', name: 'WebAppTitle', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    WebAppUnitCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.transfer#WebAppUnitCount', name: 'WebAppUnitCount', traits: {"smithy.api#range" => {"min" => 1}})
    WebAppUnits = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.transfer#WebAppUnits', name: 'WebAppUnits')
    WorkflowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WorkflowDescription', name: 'WorkflowDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w- ]*$"})
    WorkflowDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#WorkflowDetail', name: 'WorkflowDetail')
    WorkflowDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#WorkflowDetails', name: 'WorkflowDetails')
    WorkflowId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WorkflowId', name: 'WorkflowId', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^w-([a-z0-9]{17})$"})
    WorkflowStep = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.transfer#WorkflowStep', name: 'WorkflowStep')
    WorkflowStepName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.transfer#WorkflowStepName', name: 'WorkflowStepName', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}, "smithy.api#pattern" => "^[\\w-]*$"})
    WorkflowStepType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.transfer#WorkflowStepType', name: 'WorkflowStepType')
    WorkflowSteps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.transfer#WorkflowSteps', name: 'WorkflowSteps', traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddressAllocationIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressAllocationId)
    AgreementStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AgreementStatusType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    As2ConnectorConfig.add_member(:local_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'LocalProfileId'))
    As2ConnectorConfig.add_member(:partner_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'PartnerProfileId'))
    As2ConnectorConfig.add_member(:message_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSubject, location_name: 'MessageSubject'))
    As2ConnectorConfig.add_member(:compression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompressionEnum, location_name: 'Compression'))
    As2ConnectorConfig.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlg, location_name: 'EncryptionAlgorithm'))
    As2ConnectorConfig.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlg, location_name: 'SigningAlgorithm'))
    As2ConnectorConfig.add_member(:mdn_signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MdnSigningAlg, location_name: 'MdnSigningAlgorithm'))
    As2ConnectorConfig.add_member(:mdn_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MdnResponse, location_name: 'MdnResponse'))
    As2ConnectorConfig.add_member(:basic_auth_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2ConnectorSecretId, location_name: 'BasicAuthSecretId'))
    As2ConnectorConfig.add_member(:preserve_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveContentType, location_name: 'PreserveContentType'))
    As2ConnectorConfig.type = Types::As2ConnectorConfig
    As2Transport.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    As2Transports.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2Transport)
    CertificateIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId)
    CertificateStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CertificateStatusType.add_member(:pending_rotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ROTATION', traits: {"smithy.api#enumValue" => "PENDING_ROTATION"}))
    CertificateStatusType.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CertificateType.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE', traits: {"smithy.api#enumValue" => "CERTIFICATE"}))
    CertificateType.add_member(:certificate_with_private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_WITH_PRIVATE_KEY', traits: {"smithy.api#enumValue" => "CERTIFICATE_WITH_PRIVATE_KEY"}))
    CertificateUsageType.add_member(:signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNING', traits: {"smithy.api#enumValue" => "SIGNING"}))
    CertificateUsageType.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION', traits: {"smithy.api#enumValue" => "ENCRYPTION"}))
    CertificateUsageType.add_member(:tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS', traits: {"smithy.api#enumValue" => "TLS"}))
    CompressionEnum.add_member(:zlib, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZLIB', traits: {"smithy.api#enumValue" => "ZLIB"}))
    CompressionEnum.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectorFileTransferResult.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'FilePath', traits: {"smithy.api#required" => {}}))
    ConnectorFileTransferResult.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransferTableStatus, location_name: 'StatusCode', traits: {"smithy.api#required" => {}}))
    ConnectorFileTransferResult.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'FailureCode'))
    ConnectorFileTransferResult.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'FailureMessage'))
    ConnectorFileTransferResult.type = Types::ConnectorFileTransferResult
    ConnectorFileTransferResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorFileTransferResult)
    CopyStepDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: 'Name'))
    CopyStepDetails.add_member(:destination_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFileLocation, location_name: 'DestinationFileLocation'))
    CopyStepDetails.add_member(:overwrite_existing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteExisting, location_name: 'OverwriteExisting'))
    CopyStepDetails.add_member(:source_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: 'SourceFileLocation'))
    CopyStepDetails.type = Types::CopyStepDetails
    CreateAccessRequest.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    CreateAccessRequest.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    CreateAccessRequest.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings'))
    CreateAccessRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    CreateAccessRequest.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    CreateAccessRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"smithy.api#required" => {}}))
    CreateAccessRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateAccessRequest.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    CreateAccessRequest.type = Types::CreateAccessRequest
    CreateAccessResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateAccessResponse.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    CreateAccessResponse.type = Types::CreateAccessResponse
    CreateAgreementRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateAgreementRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateAgreementRequest.add_member(:local_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'LocalProfileId', traits: {"smithy.api#required" => {}}))
    CreateAgreementRequest.add_member(:partner_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'PartnerProfileId', traits: {"smithy.api#required" => {}}))
    CreateAgreementRequest.add_member(:base_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'BaseDirectory'))
    CreateAgreementRequest.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole', traits: {"smithy.api#required" => {}}))
    CreateAgreementRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatusType, location_name: 'Status'))
    CreateAgreementRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateAgreementRequest.add_member(:preserve_filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveFilenameType, location_name: 'PreserveFilename'))
    CreateAgreementRequest.add_member(:enforce_message_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceMessageSigningType, location_name: 'EnforceMessageSigning'))
    CreateAgreementRequest.add_member(:custom_directories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDirectoriesType, location_name: 'CustomDirectories'))
    CreateAgreementRequest.type = Types::CreateAgreementRequest
    CreateAgreementResponse.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId', traits: {"smithy.api#required" => {}}))
    CreateAgreementResponse.type = Types::CreateAgreementResponse
    CreateConnectorRequest.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url', traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:as2_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2ConnectorConfig, location_name: 'As2Config'))
    CreateConnectorRequest.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole', traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'LoggingRole'))
    CreateConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateConnectorRequest.add_member(:sftp_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorConfig, location_name: 'SftpConfig'))
    CreateConnectorRequest.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSecurityPolicyName, location_name: 'SecurityPolicyName'))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateConnectorResponse.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    CreateConnectorResponse.type = Types::CreateConnectorResponse
    CreateProfileRequest.add_member(:as2_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2Id, location_name: 'As2Id', traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:profile_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileType, location_name: 'ProfileType', traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:certificate_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateIds, location_name: 'CertificateIds'))
    CreateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateProfileRequest.type = Types::CreateProfileRequest
    CreateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId', traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.type = Types::CreateProfileResponse
    CreateServerRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate'))
    CreateServerRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain'))
    CreateServerRequest.add_member(:endpoint_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetails, location_name: 'EndpointDetails'))
    CreateServerRequest.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'EndpointType'))
    CreateServerRequest.add_member(:host_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKey, location_name: 'HostKey', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateServerRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'IdentityProviderDetails'))
    CreateServerRequest.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProviderType'))
    CreateServerRequest.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableRole, location_name: 'LoggingRole'))
    CreateServerRequest.add_member(:post_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: 'PostAuthenticationLoginBanner'))
    CreateServerRequest.add_member(:pre_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: 'PreAuthenticationLoginBanner'))
    CreateServerRequest.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocols, location_name: 'Protocols'))
    CreateServerRequest.add_member(:protocol_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: 'ProtocolDetails'))
    CreateServerRequest.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: 'SecurityPolicyName'))
    CreateServerRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateServerRequest.add_member(:workflow_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: 'WorkflowDetails'))
    CreateServerRequest.add_member(:structured_log_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredLogDestinations, location_name: 'StructuredLogDestinations'))
    CreateServerRequest.add_member(:s3_storage_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageOptions, location_name: 'S3StorageOptions'))
    CreateServerRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType'))
    CreateServerRequest.type = Types::CreateServerRequest
    CreateServerResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateServerResponse.type = Types::CreateServerResponse
    CreateUserRequest.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    CreateUserRequest.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    CreateUserRequest.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings'))
    CreateUserRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    CreateUserRequest.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    CreateUserRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:ssh_public_key_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyBody, location_name: 'SshPublicKeyBody', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    CreateUserResponse.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    CreateUserResponse.type = Types::CreateUserResponse
    CreateWebAppRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppIdentityProviderDetails, location_name: 'IdentityProviderDetails', traits: {"smithy.api#required" => {}}))
    CreateWebAppRequest.add_member(:access_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppAccessEndpoint, location_name: 'AccessEndpoint'))
    CreateWebAppRequest.add_member(:web_app_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppUnits, location_name: 'WebAppUnits'))
    CreateWebAppRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateWebAppRequest.add_member(:web_app_endpoint_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppEndpointPolicy, location_name: 'WebAppEndpointPolicy'))
    CreateWebAppRequest.type = Types::CreateWebAppRequest
    CreateWebAppResponse.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    CreateWebAppResponse.type = Types::CreateWebAppResponse
    CreateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'Description'))
    CreateWorkflowRequest.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: 'Steps', traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:on_exception_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: 'OnExceptionSteps'))
    CreateWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    CustomDirectoriesType.add_member(:failed_files_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'FailedFilesDirectory', traits: {"smithy.api#required" => {}}))
    CustomDirectoriesType.add_member(:mdn_files_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'MdnFilesDirectory', traits: {"smithy.api#required" => {}}))
    CustomDirectoriesType.add_member(:payload_files_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'PayloadFilesDirectory', traits: {"smithy.api#required" => {}}))
    CustomDirectoriesType.add_member(:status_files_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'StatusFilesDirectory', traits: {"smithy.api#required" => {}}))
    CustomDirectoriesType.add_member(:temporary_files_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'TemporaryFilesDirectory', traits: {"smithy.api#required" => {}}))
    CustomDirectoriesType.type = Types::CustomDirectoriesType
    CustomStepDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: 'Name'))
    CustomStepDetails.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomStepTarget, location_name: 'Target'))
    CustomStepDetails.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomStepTimeoutSeconds, location_name: 'TimeoutSeconds'))
    CustomStepDetails.add_member(:source_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: 'SourceFileLocation'))
    CustomStepDetails.type = Types::CustomStepDetails
    CustomStepStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    CustomStepStatus.add_member(:failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILURE', traits: {"smithy.api#enumValue" => "FAILURE"}))
    DecryptStepDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: 'Name'))
    DecryptStepDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    DecryptStepDetails.add_member(:source_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: 'SourceFileLocation'))
    DecryptStepDetails.add_member(:overwrite_existing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteExisting, location_name: 'OverwriteExisting'))
    DecryptStepDetails.add_member(:destination_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFileLocation, location_name: 'DestinationFileLocation', traits: {"smithy.api#required" => {}}))
    DecryptStepDetails.type = Types::DecryptStepDetails
    DeleteAccessRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteAccessRequest.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    DeleteAccessRequest.type = Types::DeleteAccessRequest
    DeleteAgreementRequest.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId', traits: {"smithy.api#required" => {}}))
    DeleteAgreementRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteAgreementRequest.type = Types::DeleteAgreementRequest
    DeleteCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DeleteConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteHostKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteHostKeyRequest.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId', traits: {"smithy.api#required" => {}}))
    DeleteHostKeyRequest.type = Types::DeleteHostKeyRequest
    DeleteProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId', traits: {"smithy.api#required" => {}}))
    DeleteProfileRequest.type = Types::DeleteProfileRequest
    DeleteServerRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteServerRequest.type = Types::DeleteServerRequest
    DeleteSshPublicKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteSshPublicKeyRequest.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyId, location_name: 'SshPublicKeyId', traits: {"smithy.api#required" => {}}))
    DeleteSshPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    DeleteSshPublicKeyRequest.type = Types::DeleteSshPublicKeyRequest
    DeleteStepDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: 'Name'))
    DeleteStepDetails.add_member(:source_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: 'SourceFileLocation'))
    DeleteStepDetails.type = Types::DeleteStepDetails
    DeleteUserRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteWebAppCustomizationRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DeleteWebAppCustomizationRequest.type = Types::DeleteWebAppCustomizationRequest
    DeleteWebAppRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DeleteWebAppRequest.type = Types::DeleteWebAppRequest
    DeleteWorkflowRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DescribeAccessRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeAccessRequest.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    DescribeAccessRequest.type = Types::DescribeAccessRequest
    DescribeAccessResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeAccessResponse.add_member(:access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedAccess, location_name: 'Access', traits: {"smithy.api#required" => {}}))
    DescribeAccessResponse.type = Types::DescribeAccessResponse
    DescribeAgreementRequest.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId', traits: {"smithy.api#required" => {}}))
    DescribeAgreementRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeAgreementRequest.type = Types::DescribeAgreementRequest
    DescribeAgreementResponse.add_member(:agreement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedAgreement, location_name: 'Agreement', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeAgreementResponse.type = Types::DescribeAgreementResponse
    DescribeCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedCertificate, location_name: 'Certificate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeCertificateResponse.type = Types::DescribeCertificateResponse
    DescribeConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    DescribeConnectorRequest.type = Types::DescribeConnectorRequest
    DescribeConnectorResponse.add_member(:connector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedConnector, location_name: 'Connector', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeConnectorResponse.type = Types::DescribeConnectorResponse
    DescribeExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'ExecutionId', traits: {"smithy.api#required" => {}}))
    DescribeExecutionRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    DescribeExecutionRequest.type = Types::DescribeExecutionRequest
    DescribeExecutionResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.add_member(:execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedExecution, location_name: 'Execution', traits: {"smithy.api#required" => {}}))
    DescribeExecutionResponse.type = Types::DescribeExecutionResponse
    DescribeHostKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeHostKeyRequest.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId', traits: {"smithy.api#required" => {}}))
    DescribeHostKeyRequest.type = Types::DescribeHostKeyRequest
    DescribeHostKeyResponse.add_member(:host_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedHostKey, location_name: 'HostKey', traits: {"smithy.api#required" => {}}))
    DescribeHostKeyResponse.type = Types::DescribeHostKeyResponse
    DescribeProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId', traits: {"smithy.api#required" => {}}))
    DescribeProfileRequest.type = Types::DescribeProfileRequest
    DescribeProfileResponse.add_member(:profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedProfile, location_name: 'Profile', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeProfileResponse.type = Types::DescribeProfileResponse
    DescribeSecurityPolicyRequest.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: 'SecurityPolicyName', traits: {"smithy.api#required" => {}}))
    DescribeSecurityPolicyRequest.type = Types::DescribeSecurityPolicyRequest
    DescribeSecurityPolicyResponse.add_member(:security_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedSecurityPolicy, location_name: 'SecurityPolicy', traits: {"smithy.api#required" => {}}))
    DescribeSecurityPolicyResponse.type = Types::DescribeSecurityPolicyResponse
    DescribeServerRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeServerRequest.type = Types::DescribeServerRequest
    DescribeServerResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedServer, location_name: 'Server', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeServerResponse.type = Types::DescribeServerResponse
    DescribeUserRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    DescribeUserResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedUser, location_name: 'User', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeUserResponse.type = Types::DescribeUserResponse
    DescribeWebAppCustomizationRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DescribeWebAppCustomizationRequest.type = Types::DescribeWebAppCustomizationRequest
    DescribeWebAppCustomizationResponse.add_member(:web_app_customization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedWebAppCustomization, location_name: 'WebAppCustomization', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeWebAppCustomizationResponse.type = Types::DescribeWebAppCustomizationResponse
    DescribeWebAppRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DescribeWebAppRequest.type = Types::DescribeWebAppRequest
    DescribeWebAppResponse.add_member(:web_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedWebApp, location_name: 'WebApp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeWebAppResponse.type = Types::DescribeWebAppResponse
    DescribeWorkflowRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    DescribeWorkflowRequest.type = Types::DescribeWorkflowRequest
    DescribeWorkflowResponse.add_member(:workflow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedWorkflow, location_name: 'Workflow', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    DescribeWorkflowResponse.type = Types::DescribeWorkflowResponse
    DescribedAccess.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    DescribedAccess.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings'))
    DescribedAccess.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    DescribedAccess.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    DescribedAccess.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    DescribedAccess.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    DescribedAccess.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId'))
    DescribedAccess.type = Types::DescribedAccess
    DescribedAgreement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    DescribedAgreement.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId'))
    DescribedAgreement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DescribedAgreement.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatusType, location_name: 'Status'))
    DescribedAgreement.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId'))
    DescribedAgreement.add_member(:local_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'LocalProfileId'))
    DescribedAgreement.add_member(:partner_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'PartnerProfileId'))
    DescribedAgreement.add_member(:base_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'BaseDirectory'))
    DescribedAgreement.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole'))
    DescribedAgreement.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedAgreement.add_member(:preserve_filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveFilenameType, location_name: 'PreserveFilename'))
    DescribedAgreement.add_member(:enforce_message_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceMessageSigningType, location_name: 'EnforceMessageSigning'))
    DescribedAgreement.add_member(:custom_directories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDirectoriesType, location_name: 'CustomDirectories'))
    DescribedAgreement.type = Types::DescribedAgreement
    DescribedCertificate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    DescribedCertificate.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId'))
    DescribedCertificate.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateUsageType, location_name: 'Usage'))
    DescribedCertificate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatusType, location_name: 'Status'))
    DescribedCertificate.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBodyType, location_name: 'Certificate'))
    DescribedCertificate.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChainType, location_name: 'CertificateChain'))
    DescribedCertificate.add_member(:active_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'ActiveDate'))
    DescribedCertificate.add_member(:inactive_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'InactiveDate'))
    DescribedCertificate.add_member(:serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertSerial, location_name: 'Serial'))
    DescribedCertificate.add_member(:not_before_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'NotBeforeDate'))
    DescribedCertificate.add_member(:not_after_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'NotAfterDate'))
    DescribedCertificate.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type'))
    DescribedCertificate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DescribedCertificate.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedCertificate.type = Types::DescribedCertificate
    DescribedConnector.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DescribedConnector.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId'))
    DescribedConnector.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url'))
    DescribedConnector.add_member(:as2_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2ConnectorConfig, location_name: 'As2Config'))
    DescribedConnector.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole'))
    DescribedConnector.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'LoggingRole'))
    DescribedConnector.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedConnector.add_member(:sftp_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorConfig, location_name: 'SftpConfig'))
    DescribedConnector.add_member(:service_managed_egress_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEgressIpAddresses, location_name: 'ServiceManagedEgressIpAddresses'))
    DescribedConnector.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSecurityPolicyName, location_name: 'SecurityPolicyName'))
    DescribedConnector.type = Types::DescribedConnector
    DescribedExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'ExecutionId'))
    DescribedExecution.add_member(:initial_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileLocation, location_name: 'InitialFileLocation'))
    DescribedExecution.add_member(:service_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadata, location_name: 'ServiceMetadata'))
    DescribedExecution.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'ExecutionRole'))
    DescribedExecution.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration'))
    DescribedExecution.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    DescribedExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'Status'))
    DescribedExecution.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionResults, location_name: 'Results'))
    DescribedExecution.type = Types::DescribedExecution
    DescribedHostKey.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DescribedHostKey.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId'))
    DescribedHostKey.add_member(:host_key_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyFingerprint, location_name: 'HostKeyFingerprint'))
    DescribedHostKey.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyDescription, location_name: 'Description'))
    DescribedHostKey.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyType, location_name: 'Type'))
    DescribedHostKey.add_member(:date_imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateImported, location_name: 'DateImported'))
    DescribedHostKey.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedHostKey.type = Types::DescribedHostKey
    DescribedIdentityCenterConfig.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'ApplicationArn'))
    DescribedIdentityCenterConfig.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'InstanceArn'))
    DescribedIdentityCenterConfig.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    DescribedIdentityCenterConfig.type = Types::DescribedIdentityCenterConfig
    DescribedProfile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DescribedProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId'))
    DescribedProfile.add_member(:profile_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileType, location_name: 'ProfileType'))
    DescribedProfile.add_member(:as2_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2Id, location_name: 'As2Id'))
    DescribedProfile.add_member(:certificate_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateIds, location_name: 'CertificateIds'))
    DescribedProfile.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedProfile.type = Types::DescribedProfile
    DescribedSecurityPolicy.add_member(:fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fips, location_name: 'Fips'))
    DescribedSecurityPolicy.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: 'SecurityPolicyName', traits: {"smithy.api#required" => {}}))
    DescribedSecurityPolicy.add_member(:ssh_ciphers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: 'SshCiphers'))
    DescribedSecurityPolicy.add_member(:ssh_kexs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: 'SshKexs'))
    DescribedSecurityPolicy.add_member(:ssh_macs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: 'SshMacs'))
    DescribedSecurityPolicy.add_member(:tls_ciphers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: 'TlsCiphers'))
    DescribedSecurityPolicy.add_member(:ssh_host_key_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOptions, location_name: 'SshHostKeyAlgorithms'))
    DescribedSecurityPolicy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyResourceType, location_name: 'Type'))
    DescribedSecurityPolicy.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyProtocols, location_name: 'Protocols'))
    DescribedSecurityPolicy.type = Types::DescribedSecurityPolicy
    DescribedServer.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"aws.cloudformation#cfnAdditionalIdentifier" => {}, "aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    DescribedServer.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:protocol_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: 'ProtocolDetails', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    DescribedServer.add_member(:endpoint_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetails, location_name: 'EndpointDetails', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'EndpointType', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:host_key_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyFingerprint, location_name: 'HostKeyFingerprint', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribedServer.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'IdentityProviderDetails', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProviderType'))
    DescribedServer.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableRole, location_name: 'LoggingRole', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:post_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: 'PostAuthenticationLoginBanner', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:pre_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: 'PreAuthenticationLoginBanner', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocols, location_name: 'Protocols', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: 'SecurityPolicyName', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId'))
    DescribedServer.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribedServer.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCount, location_name: 'UserCount', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribedServer.add_member(:workflow_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: 'WorkflowDetails', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:structured_log_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredLogDestinations, location_name: 'StructuredLogDestinations', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:s3_storage_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageOptions, location_name: 'S3StorageOptions', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.add_member(:as2_service_managed_egress_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEgressIpAddresses, location_name: 'As2ServiceManagedEgressIpAddresses', traits: {"aws.cloudformation#cfnMutability" => "read"}))
    DescribedServer.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedServer.type = Types::DescribedServer
    DescribedUser.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"aws.cloudformation#cfnAdditionalIdentifier" => {}, "aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    DescribedUser.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeys, location_name: 'SshPublicKeys', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    DescribedUser.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    DescribedUser.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName'))
    DescribedUser.type = Types::DescribedUser
    DescribedWebApp.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DescribedWebApp.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DescribedWebApp.add_member(:described_identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedWebAppIdentityProviderDetails, location_name: 'DescribedIdentityProviderDetails'))
    DescribedWebApp.add_member(:access_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppAccessEndpoint, location_name: 'AccessEndpoint'))
    DescribedWebApp.add_member(:web_app_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppEndpoint, location_name: 'WebAppEndpoint'))
    DescribedWebApp.add_member(:web_app_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppUnits, location_name: 'WebAppUnits'))
    DescribedWebApp.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedWebApp.add_member(:web_app_endpoint_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppEndpointPolicy, location_name: 'WebAppEndpointPolicy'))
    DescribedWebApp.type = Types::DescribedWebApp
    DescribedWebAppCustomization.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DescribedWebAppCustomization.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    DescribedWebAppCustomization.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppTitle, location_name: 'Title'))
    DescribedWebAppCustomization.add_member(:logo_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppLogoFile, location_name: 'LogoFile'))
    DescribedWebAppCustomization.add_member(:favicon_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppFaviconFile, location_name: 'FaviconFile'))
    DescribedWebAppCustomization.type = Types::DescribedWebAppCustomization
    DescribedWebAppIdentityProviderDetails.add_member(:identity_center_config, Types::DescribedWebAppIdentityProviderDetails::IdentityCenterConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribedIdentityCenterConfig, location_name: 'IdentityCenterConfig'))
    DescribedWebAppIdentityProviderDetails.add_member(:unknown, Types::DescribedWebAppIdentityProviderDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DescribedWebAppIdentityProviderDetails.type = Types::DescribedWebAppIdentityProviderDetails
    DescribedWorkflow.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    DescribedWorkflow.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'Description'))
    DescribedWorkflow.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: 'Steps'))
    DescribedWorkflow.add_member(:on_exception_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSteps, location_name: 'OnExceptionSteps'))
    DescribedWorkflow.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId'))
    DescribedWorkflow.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DescribedWorkflow.type = Types::DescribedWorkflow
    DirectoryListingOptimization.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DirectoryListingOptimization.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Domain.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    Domain.add_member(:efs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EFS', traits: {"smithy.api#enumValue" => "EFS"}))
    EfsFileLocation.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileSystemId, location_name: 'FileSystemId'))
    EfsFileLocation.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsPath, location_name: 'Path'))
    EfsFileLocation.type = Types::EfsFileLocation
    EncryptionAlg.add_member(:aes128_cbc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES128_CBC', traits: {"smithy.api#enumValue" => "AES128_CBC"}))
    EncryptionAlg.add_member(:aes192_cbc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES192_CBC', traits: {"smithy.api#enumValue" => "AES192_CBC"}))
    EncryptionAlg.add_member(:aes256_cbc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256_CBC', traits: {"smithy.api#enumValue" => "AES256_CBC"}))
    EncryptionAlg.add_member(:des_ede3_cbc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DES_EDE3_CBC', traits: {"smithy.api#enumValue" => "DES_EDE3_CBC"}))
    EncryptionAlg.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:pgp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PGP', traits: {"smithy.api#enumValue" => "PGP"}))
    EndpointDetails.add_member(:address_allocation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressAllocationIds, location_name: 'AddressAllocationIds'))
    EndpointDetails.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds'))
    EndpointDetails.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'VpcEndpointId'))
    EndpointDetails.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId'))
    EndpointDetails.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds'))
    EndpointDetails.type = Types::EndpointDetails
    EndpointType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EndpointType.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC', traits: {"smithy.api#enumValue" => "VPC"}))
    EndpointType.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT"}))
    EnforceMessageSigningType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EnforceMessageSigningType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ExecutionError.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionErrorType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ExecutionError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionErrorMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ExecutionError.type = Types::ExecutionError
    ExecutionErrorType.add_member(:permission_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMISSION_DENIED', traits: {"smithy.api#enumValue" => "PERMISSION_DENIED"}))
    ExecutionErrorType.add_member(:custom_step_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_STEP_FAILED', traits: {"smithy.api#enumValue" => "CUSTOM_STEP_FAILED"}))
    ExecutionErrorType.add_member(:throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    ExecutionErrorType.add_member(:already_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "ALREADY_EXISTS"}))
    ExecutionErrorType.add_member(:not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    ExecutionErrorType.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD_REQUEST', traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    ExecutionErrorType.add_member(:timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    ExecutionErrorType.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    ExecutionResults.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStepResults, location_name: 'Steps'))
    ExecutionResults.add_member(:on_exception_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStepResults, location_name: 'OnExceptionSteps'))
    ExecutionResults.type = Types::ExecutionResults
    ExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCEPTION', traits: {"smithy.api#enumValue" => "EXCEPTION"}))
    ExecutionStatus.add_member(:handling_exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDLING_EXCEPTION', traits: {"smithy.api#enumValue" => "HANDLING_EXCEPTION"}))
    ExecutionStepResult.add_member(:step_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepType, location_name: 'StepType'))
    ExecutionStepResult.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepResultOutputsJson, location_name: 'Outputs'))
    ExecutionStepResult.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionError, location_name: 'Error'))
    ExecutionStepResult.type = Types::ExecutionStepResult
    ExecutionStepResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStepResult)
    FileLocation.add_member(:s3_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3FileLocation, location_name: 'S3FileLocation'))
    FileLocation.add_member(:efs_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileLocation, location_name: 'EfsFileLocation'))
    FileLocation.type = Types::FileLocation
    FilePaths.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath)
    HomeDirectoryMapEntry.add_member(:entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapEntry, location_name: 'Entry', traits: {"smithy.api#required" => {}}))
    HomeDirectoryMapEntry.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapTarget, location_name: 'Target', traits: {"smithy.api#required" => {}}))
    HomeDirectoryMapEntry.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapType, location_name: 'Type'))
    HomeDirectoryMapEntry.type = Types::HomeDirectoryMapEntry
    HomeDirectoryMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMapEntry)
    HomeDirectoryType.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATH', traits: {"smithy.api#enumValue" => "PATH"}))
    HomeDirectoryType.add_member(:logical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGICAL', traits: {"smithy.api#enumValue" => "LOGICAL"}))
    IdentityCenterConfig.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'InstanceArn'))
    IdentityCenterConfig.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    IdentityCenterConfig.type = Types::IdentityCenterConfig
    IdentityProviderDetails.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url'))
    IdentityProviderDetails.add_member(:invocation_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'InvocationRole'))
    IdentityProviderDetails.add_member(:directory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId'))
    IdentityProviderDetails.add_member(:function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Function, location_name: 'Function'))
    IdentityProviderDetails.add_member(:sftp_authentication_methods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpAuthenticationMethods, location_name: 'SftpAuthenticationMethods'))
    IdentityProviderDetails.type = Types::IdentityProviderDetails
    IdentityProviderType.add_member(:service_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_MANAGED', traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    IdentityProviderType.add_member(:api_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_GATEWAY', traits: {"smithy.api#enumValue" => "API_GATEWAY"}))
    IdentityProviderType.add_member(:aws_directory_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_DIRECTORY_SERVICE', traits: {"smithy.api#enumValue" => "AWS_DIRECTORY_SERVICE"}))
    IdentityProviderType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LAMBDA', traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    ImportCertificateRequest.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateUsageType, location_name: 'Usage', traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBodyType, location_name: 'Certificate', traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChainType, location_name: 'CertificateChain'))
    ImportCertificateRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyType, location_name: 'PrivateKey'))
    ImportCertificateRequest.add_member(:active_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'ActiveDate'))
    ImportCertificateRequest.add_member(:inactive_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'InactiveDate'))
    ImportCertificateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ImportCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ImportCertificateRequest.type = Types::ImportCertificateRequest
    ImportCertificateResponse.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#required" => {}}))
    ImportCertificateResponse.type = Types::ImportCertificateResponse
    ImportHostKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ImportHostKeyRequest.add_member(:host_key_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKey, location_name: 'HostKeyBody', traits: {"smithy.api#required" => {}}))
    ImportHostKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyDescription, location_name: 'Description'))
    ImportHostKeyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ImportHostKeyRequest.type = Types::ImportHostKeyRequest
    ImportHostKeyResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ImportHostKeyResponse.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId', traits: {"smithy.api#required" => {}}))
    ImportHostKeyResponse.type = Types::ImportHostKeyResponse
    ImportSshPublicKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyRequest.add_member(:ssh_public_key_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyBody, location_name: 'SshPublicKeyBody', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyRequest.type = Types::ImportSshPublicKeyRequest
    ImportSshPublicKeyResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyResponse.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyId, location_name: 'SshPublicKeyId', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyResponse.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    ImportSshPublicKeyResponse.type = Types::ImportSshPublicKeyResponse
    InputFileLocation.add_member(:s3_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3InputFileLocation, location_name: 'S3FileLocation'))
    InputFileLocation.add_member(:efs_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileLocation, location_name: 'EfsFileLocation'))
    InputFileLocation.type = Types::InputFileLocation
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServiceError.type = Types::InternalServiceError
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InvalidRequestException.type = Types::InvalidRequestException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    ListAccessesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAccessesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccessesRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListAccessesRequest.type = Types::ListAccessesRequest
    ListAccessesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAccessesResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListAccessesResponse.add_member(:accesses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedAccesses, location_name: 'Accesses', traits: {"smithy.api#required" => {}}))
    ListAccessesResponse.type = Types::ListAccessesResponse
    ListAgreementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAgreementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAgreementsRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListAgreementsRequest.type = Types::ListAgreementsRequest
    ListAgreementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAgreementsResponse.add_member(:agreements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedAgreements, location_name: 'Agreements', traits: {"smithy.api#required" => {}}))
    ListAgreementsResponse.type = Types::ListAgreementsResponse
    ListCertificatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificatesRequest.type = Types::ListCertificatesRequest
    ListCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificatesResponse.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedCertificates, location_name: 'Certificates', traits: {"smithy.api#required" => {}}))
    ListCertificatesResponse.type = Types::ListCertificatesResponse
    ListConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListConnectorsResponse.add_member(:connectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedConnectors, location_name: 'Connectors', traits: {"smithy.api#required" => {}}))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListExecutionsRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    ListExecutionsRequest.type = Types::ListExecutionsRequest
    ListExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListExecutionsResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    ListExecutionsResponse.add_member(:executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedExecutions, location_name: 'Executions', traits: {"smithy.api#required" => {}}))
    ListExecutionsResponse.type = Types::ListExecutionsResponse
    ListFileTransferResultsRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    ListFileTransferResultsRequest.add_member(:transfer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransferId, location_name: 'TransferId', traits: {"smithy.api#required" => {}}))
    ListFileTransferResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFileTransferResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListFileTransferResultsRequest.type = Types::ListFileTransferResultsRequest
    ListFileTransferResultsResponse.add_member(:file_transfer_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorFileTransferResults, location_name: 'FileTransferResults', traits: {"smithy.api#required" => {}}))
    ListFileTransferResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFileTransferResultsResponse.type = Types::ListFileTransferResultsResponse
    ListHostKeysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListHostKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHostKeysRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListHostKeysRequest.type = Types::ListHostKeysRequest
    ListHostKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListHostKeysResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListHostKeysResponse.add_member(:host_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedHostKeys, location_name: 'HostKeys', traits: {"smithy.api#required" => {}}))
    ListHostKeysResponse.type = Types::ListHostKeysResponse
    ListProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListProfilesRequest.add_member(:profile_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileType, location_name: 'ProfileType'))
    ListProfilesRequest.type = Types::ListProfilesRequest
    ListProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListProfilesResponse.add_member(:profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedProfiles, location_name: 'Profiles', traits: {"smithy.api#required" => {}}))
    ListProfilesResponse.type = Types::ListProfilesResponse
    ListSecurityPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListSecurityPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSecurityPoliciesRequest.type = Types::ListSecurityPoliciesRequest
    ListSecurityPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSecurityPoliciesResponse.add_member(:security_policy_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyNames, location_name: 'SecurityPolicyNames', traits: {"smithy.api#required" => {}}))
    ListSecurityPoliciesResponse.type = Types::ListSecurityPoliciesResponse
    ListServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListServersRequest.type = Types::ListServersRequest
    ListServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListServersResponse.add_member(:servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedServers, location_name: 'Servers', traits: {"smithy.api#required" => {}}))
    ListServersResponse.type = Types::ListServersResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListUsersRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListUsersResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedUsers, location_name: 'Users', traits: {"smithy.api#required" => {}}))
    ListUsersResponse.type = Types::ListUsersResponse
    ListWebAppsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListWebAppsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWebAppsRequest.type = Types::ListWebAppsRequest
    ListWebAppsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWebAppsResponse.add_member(:web_apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedWebApps, location_name: 'WebApps', traits: {"smithy.api#required" => {}}))
    ListWebAppsResponse.type = Types::ListWebAppsResponse
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWorkflowsResponse.add_member(:workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedWorkflows, location_name: 'Workflows', traits: {"smithy.api#required" => {}}))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    ListedAccess.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    ListedAccess.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    ListedAccess.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    ListedAccess.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId'))
    ListedAccess.type = Types::ListedAccess
    ListedAccesses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedAccess)
    ListedAgreement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListedAgreement.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId'))
    ListedAgreement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ListedAgreement.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatusType, location_name: 'Status'))
    ListedAgreement.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId'))
    ListedAgreement.add_member(:local_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'LocalProfileId'))
    ListedAgreement.add_member(:partner_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'PartnerProfileId'))
    ListedAgreement.type = Types::ListedAgreement
    ListedAgreements.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedAgreement)
    ListedCertificate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListedCertificate.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId'))
    ListedCertificate.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateUsageType, location_name: 'Usage'))
    ListedCertificate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatusType, location_name: 'Status'))
    ListedCertificate.add_member(:active_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'ActiveDate'))
    ListedCertificate.add_member(:inactive_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'InactiveDate'))
    ListedCertificate.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type'))
    ListedCertificate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ListedCertificate.type = Types::ListedCertificate
    ListedCertificates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedCertificate)
    ListedConnector.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListedConnector.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId'))
    ListedConnector.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url'))
    ListedConnector.type = Types::ListedConnector
    ListedConnectors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedConnector)
    ListedExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'ExecutionId'))
    ListedExecution.add_member(:initial_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileLocation, location_name: 'InitialFileLocation'))
    ListedExecution.add_member(:service_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceMetadata, location_name: 'ServiceMetadata'))
    ListedExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'Status'))
    ListedExecution.type = Types::ListedExecution
    ListedExecutions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedExecution)
    ListedHostKey.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListedHostKey.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId'))
    ListedHostKey.add_member(:fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyFingerprint, location_name: 'Fingerprint'))
    ListedHostKey.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyDescription, location_name: 'Description'))
    ListedHostKey.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyType, location_name: 'Type'))
    ListedHostKey.add_member(:date_imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateImported, location_name: 'DateImported'))
    ListedHostKey.type = Types::ListedHostKey
    ListedHostKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedHostKey)
    ListedProfile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListedProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId'))
    ListedProfile.add_member(:as2_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2Id, location_name: 'As2Id'))
    ListedProfile.add_member(:profile_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileType, location_name: 'ProfileType'))
    ListedProfile.type = Types::ListedProfile
    ListedProfiles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedProfile)
    ListedServer.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListedServer.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain'))
    ListedServer.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProviderType'))
    ListedServer.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'EndpointType'))
    ListedServer.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'LoggingRole'))
    ListedServer.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId'))
    ListedServer.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    ListedServer.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserCount, location_name: 'UserCount'))
    ListedServer.type = Types::ListedServer
    ListedServers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedServer)
    ListedUser.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListedUser.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    ListedUser.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    ListedUser.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    ListedUser.add_member(:ssh_public_key_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyCount, location_name: 'SshPublicKeyCount'))
    ListedUser.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName'))
    ListedUser.type = Types::ListedUser
    ListedUsers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedUser)
    ListedWebApp.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListedWebApp.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    ListedWebApp.add_member(:access_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppAccessEndpoint, location_name: 'AccessEndpoint'))
    ListedWebApp.add_member(:web_app_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppEndpoint, location_name: 'WebAppEndpoint'))
    ListedWebApp.type = Types::ListedWebApp
    ListedWebApps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedWebApp)
    ListedWorkflow.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId'))
    ListedWorkflow.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'Description'))
    ListedWorkflow.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    ListedWorkflow.type = Types::ListedWorkflow
    ListedWorkflows.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListedWorkflow)
    LoggingConfiguration.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'LoggingRole'))
    LoggingConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: 'LogGroupName'))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MapType.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE', traits: {"smithy.api#enumValue" => "FILE"}))
    MapType.add_member(:directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY', traits: {"smithy.api#enumValue" => "DIRECTORY"}))
    MdnResponse.add_member(:sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC', traits: {"smithy.api#enumValue" => "SYNC"}))
    MdnResponse.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    MdnSigningAlg.add_member(:sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    MdnSigningAlg.add_member(:sha384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384', traits: {"smithy.api#enumValue" => "SHA384"}))
    MdnSigningAlg.add_member(:sha512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512', traits: {"smithy.api#enumValue" => "SHA512"}))
    MdnSigningAlg.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA1', traits: {"smithy.api#enumValue" => "SHA1"}))
    MdnSigningAlg.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    MdnSigningAlg.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    OnPartialUploadWorkflowDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDetail)
    OnUploadWorkflowDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDetail)
    OverwriteExisting.add_member(:true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    OverwriteExisting.add_member(:false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    PosixProfile.add_member(:uid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixId, location_name: 'Uid', traits: {"smithy.api#required" => {}}))
    PosixProfile.add_member(:gid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixId, location_name: 'Gid', traits: {"smithy.api#required" => {}}))
    PosixProfile.add_member(:secondary_gids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryGids, location_name: 'SecondaryGids'))
    PosixProfile.type = Types::PosixProfile
    PreserveContentType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PreserveContentType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PreserveFilenameType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PreserveFilenameType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProfileType.add_member(:local, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "LOCAL"}))
    ProfileType.add_member(:partner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTNER', traits: {"smithy.api#enumValue" => "PARTNER"}))
    Protocol.add_member(:sftp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SFTP', traits: {"smithy.api#enumValue" => "SFTP"}))
    Protocol.add_member(:ftp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FTP', traits: {"smithy.api#enumValue" => "FTP"}))
    Protocol.add_member(:ftps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FTPS', traits: {"smithy.api#enumValue" => "FTPS"}))
    Protocol.add_member(:as2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AS2', traits: {"smithy.api#enumValue" => "AS2"}))
    ProtocolDetails.add_member(:passive_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PassiveIp, location_name: 'PassiveIp'))
    ProtocolDetails.add_member(:tls_session_resumption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TlsSessionResumptionMode, location_name: 'TlsSessionResumptionMode'))
    ProtocolDetails.add_member(:set_stat_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetStatOption, location_name: 'SetStatOption'))
    ProtocolDetails.add_member(:as2_transports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2Transports, location_name: 'As2Transports'))
    ProtocolDetails.type = Types::ProtocolDetails
    Protocols.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    ResourceExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceExistsException.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#required" => {}}))
    ResourceExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'Resource', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3FileLocation.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket'))
    S3FileLocation.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'Key'))
    S3FileLocation.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3VersionId, location_name: 'VersionId'))
    S3FileLocation.add_member(:etag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Etag, location_name: 'Etag'))
    S3FileLocation.type = Types::S3FileLocation
    S3InputFileLocation.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket'))
    S3InputFileLocation.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'Key'))
    S3InputFileLocation.type = Types::S3InputFileLocation
    S3StorageOptions.add_member(:directory_listing_optimization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryListingOptimization, location_name: 'DirectoryListingOptimization'))
    S3StorageOptions.type = Types::S3StorageOptions
    S3Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    S3Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    S3Tag.type = Types::S3Tag
    S3Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tag)
    SecondaryGids.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixId)
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SecurityPolicyNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName)
    SecurityPolicyOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyOption)
    SecurityPolicyProtocol.add_member(:sftp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SFTP', traits: {"smithy.api#enumValue" => "SFTP"}))
    SecurityPolicyProtocol.add_member(:ftps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FTPS', traits: {"smithy.api#enumValue" => "FTPS"}))
    SecurityPolicyProtocols.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyProtocol)
    SecurityPolicyResourceType.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "SERVER"}))
    SecurityPolicyResourceType.add_member(:connector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTOR', traits: {"smithy.api#enumValue" => "CONNECTOR"}))
    SendWorkflowStepStateRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    SendWorkflowStepStateRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'ExecutionId', traits: {"smithy.api#required" => {}}))
    SendWorkflowStepStateRequest.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallbackToken, location_name: 'Token', traits: {"smithy.api#required" => {}}))
    SendWorkflowStepStateRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomStepStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    SendWorkflowStepStateRequest.type = Types::SendWorkflowStepStateRequest
    SendWorkflowStepStateResponse.type = Types::SendWorkflowStepStateResponse
    ServiceManagedEgressIpAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceManagedEgressIpAddress)
    ServiceMetadata.add_member(:user_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDetails, location_name: 'UserDetails', traits: {"smithy.api#required" => {}}))
    ServiceMetadata.type = Types::ServiceMetadata
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetStatOption.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    SetStatOption.add_member(:enable_no_op, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE_NO_OP', traits: {"smithy.api#enumValue" => "ENABLE_NO_OP"}))
    SftpAuthenticationMethods.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "PASSWORD"}))
    SftpAuthenticationMethods.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_KEY', traits: {"smithy.api#enumValue" => "PUBLIC_KEY"}))
    SftpAuthenticationMethods.add_member(:public_key_or_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_KEY_OR_PASSWORD', traits: {"smithy.api#enumValue" => "PUBLIC_KEY_OR_PASSWORD"}))
    SftpAuthenticationMethods.add_member(:public_key_and_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_KEY_AND_PASSWORD', traits: {"smithy.api#enumValue" => "PUBLIC_KEY_AND_PASSWORD"}))
    SftpConnectorConfig.add_member(:user_secret_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretId, location_name: 'UserSecretId'))
    SftpConnectorConfig.add_member(:trusted_host_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorTrustedHostKeyList, location_name: 'TrustedHostKeys'))
    SftpConnectorConfig.add_member(:max_concurrent_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentConnections, location_name: 'MaxConcurrentConnections', traits: {"smithy.api#default" => 1}))
    SftpConnectorConfig.type = Types::SftpConnectorConfig
    SftpConnectorConnectionDetails.add_member(:host_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorHostKey, location_name: 'HostKey'))
    SftpConnectorConnectionDetails.type = Types::SftpConnectorConnectionDetails
    SftpConnectorTrustedHostKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorTrustedHostKey)
    SigningAlg.add_member(:sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    SigningAlg.add_member(:sha384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384', traits: {"smithy.api#enumValue" => "SHA384"}))
    SigningAlg.add_member(:sha512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512', traits: {"smithy.api#enumValue" => "SHA512"}))
    SigningAlg.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA1', traits: {"smithy.api#enumValue" => "SHA1"}))
    SigningAlg.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    SshPublicKey.add_member(:date_imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateImported, location_name: 'DateImported', traits: {"smithy.api#required" => {}}))
    SshPublicKey.add_member(:ssh_public_key_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyBody, location_name: 'SshPublicKeyBody', traits: {"smithy.api#required" => {}}))
    SshPublicKey.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKeyId, location_name: 'SshPublicKeyId', traits: {"smithy.api#required" => {}}))
    SshPublicKey.type = Types::SshPublicKey
    SshPublicKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SshPublicKey)
    StartDirectoryListingRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    StartDirectoryListingRequest.add_member(:remote_directory_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'RemoteDirectoryPath', traits: {"smithy.api#required" => {}}))
    StartDirectoryListingRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems'))
    StartDirectoryListingRequest.add_member(:output_directory_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'OutputDirectoryPath', traits: {"smithy.api#required" => {}}))
    StartDirectoryListingRequest.type = Types::StartDirectoryListingRequest
    StartDirectoryListingResponse.add_member(:listing_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListingId, location_name: 'ListingId', traits: {"smithy.api#required" => {}}))
    StartDirectoryListingResponse.add_member(:output_file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFileName, location_name: 'OutputFileName', traits: {"smithy.api#required" => {}}))
    StartDirectoryListingResponse.type = Types::StartDirectoryListingResponse
    StartFileTransferRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    StartFileTransferRequest.add_member(:send_file_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePaths, location_name: 'SendFilePaths'))
    StartFileTransferRequest.add_member(:retrieve_file_paths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePaths, location_name: 'RetrieveFilePaths'))
    StartFileTransferRequest.add_member(:local_directory_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'LocalDirectoryPath'))
    StartFileTransferRequest.add_member(:remote_directory_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'RemoteDirectoryPath'))
    StartFileTransferRequest.type = Types::StartFileTransferRequest
    StartFileTransferResponse.add_member(:transfer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransferId, location_name: 'TransferId', traits: {"smithy.api#required" => {}}))
    StartFileTransferResponse.type = Types::StartFileTransferResponse
    StartRemoteDeleteRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    StartRemoteDeleteRequest.add_member(:delete_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'DeletePath', traits: {"smithy.api#required" => {}}))
    StartRemoteDeleteRequest.type = Types::StartRemoteDeleteRequest
    StartRemoteDeleteResponse.add_member(:delete_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteId, location_name: 'DeleteId', traits: {"smithy.api#required" => {}}))
    StartRemoteDeleteResponse.type = Types::StartRemoteDeleteResponse
    StartRemoteMoveRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    StartRemoteMoveRequest.add_member(:source_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'SourcePath', traits: {"smithy.api#required" => {}}))
    StartRemoteMoveRequest.add_member(:target_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'TargetPath', traits: {"smithy.api#required" => {}}))
    StartRemoteMoveRequest.type = Types::StartRemoteMoveRequest
    StartRemoteMoveResponse.add_member(:move_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MoveId, location_name: 'MoveId', traits: {"smithy.api#required" => {}}))
    StartRemoteMoveResponse.type = Types::StartRemoteMoveResponse
    StartServerRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    StartServerRequest.type = Types::StartServerRequest
    State.add_member(:offline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFLINE', traits: {"smithy.api#enumValue" => "OFFLINE"}))
    State.add_member(:online, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLINE', traits: {"smithy.api#enumValue" => "ONLINE"}))
    State.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    State.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    State.add_member(:start_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_FAILED', traits: {"smithy.api#enumValue" => "START_FAILED"}))
    State.add_member(:stop_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_FAILED', traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    StopServerRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    StopServerRequest.type = Types::StopServerRequest
    StructuredLogDestinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagStepDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: 'Name'))
    TagStepDetails.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tags, location_name: 'Tags'))
    TagStepDetails.add_member(:source_file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileLocation, location_name: 'SourceFileLocation'))
    TagStepDetails.type = Types::TagStepDetails
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TestConnectionRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    TestConnectionRequest.type = Types::TestConnectionRequest
    TestConnectionResponse.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId'))
    TestConnectionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    TestConnectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage'))
    TestConnectionResponse.add_member(:sftp_connection_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorConnectionDetails, location_name: 'SftpConnectionDetails'))
    TestConnectionResponse.type = Types::TestConnectionResponse
    TestIdentityProviderRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    TestIdentityProviderRequest.add_member(:server_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'ServerProtocol'))
    TestIdentityProviderRequest.add_member(:source_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIp, location_name: 'SourceIp'))
    TestIdentityProviderRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    TestIdentityProviderRequest.add_member(:user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPassword, location_name: 'UserPassword'))
    TestIdentityProviderRequest.type = Types::TestIdentityProviderRequest
    TestIdentityProviderResponse.add_member(:response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Response, location_name: 'Response'))
    TestIdentityProviderResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'StatusCode', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TestIdentityProviderResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    TestIdentityProviderResponse.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url', traits: {"smithy.api#required" => {}}))
    TestIdentityProviderResponse.type = Types::TestIdentityProviderResponse
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TlsSessionResumptionMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    TlsSessionResumptionMode.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    TlsSessionResumptionMode.add_member(:enforced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENFORCED', traits: {"smithy.api#enumValue" => "ENFORCED"}))
    TransferTableStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    TransferTableStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TransferTableStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TransferTableStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccessRequest.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    UpdateAccessRequest.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    UpdateAccessRequest.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings'))
    UpdateAccessRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    UpdateAccessRequest.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    UpdateAccessRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    UpdateAccessRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateAccessRequest.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    UpdateAccessRequest.type = Types::UpdateAccessRequest
    UpdateAccessResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateAccessResponse.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#required" => {}}))
    UpdateAccessResponse.type = Types::UpdateAccessResponse
    UpdateAgreementRequest.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId', traits: {"smithy.api#required" => {}}))
    UpdateAgreementRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateAgreementRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateAgreementRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatusType, location_name: 'Status'))
    UpdateAgreementRequest.add_member(:local_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'LocalProfileId'))
    UpdateAgreementRequest.add_member(:partner_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'PartnerProfileId'))
    UpdateAgreementRequest.add_member(:base_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'BaseDirectory'))
    UpdateAgreementRequest.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole'))
    UpdateAgreementRequest.add_member(:preserve_filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveFilenameType, location_name: 'PreserveFilename'))
    UpdateAgreementRequest.add_member(:enforce_message_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnforceMessageSigningType, location_name: 'EnforceMessageSigning'))
    UpdateAgreementRequest.add_member(:custom_directories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDirectoriesType, location_name: 'CustomDirectories'))
    UpdateAgreementRequest.type = Types::UpdateAgreementRequest
    UpdateAgreementResponse.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementId, location_name: 'AgreementId', traits: {"smithy.api#required" => {}}))
    UpdateAgreementResponse.type = Types::UpdateAgreementResponse
    UpdateCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#required" => {}}))
    UpdateCertificateRequest.add_member(:active_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'ActiveDate'))
    UpdateCertificateRequest.add_member(:inactive_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertDate, location_name: 'InactiveDate'))
    UpdateCertificateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateCertificateRequest.type = Types::UpdateCertificateRequest
    UpdateCertificateResponse.add_member(:certificate_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateId, location_name: 'CertificateId', traits: {"smithy.api#required" => {}}))
    UpdateCertificateResponse.type = Types::UpdateCertificateResponse
    UpdateConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    UpdateConnectorRequest.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'Url'))
    UpdateConnectorRequest.add_member(:as2_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: As2ConnectorConfig, location_name: 'As2Config'))
    UpdateConnectorRequest.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'AccessRole'))
    UpdateConnectorRequest.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'LoggingRole'))
    UpdateConnectorRequest.add_member(:sftp_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SftpConnectorConfig, location_name: 'SftpConfig'))
    UpdateConnectorRequest.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSecurityPolicyName, location_name: 'SecurityPolicyName'))
    UpdateConnectorRequest.type = Types::UpdateConnectorRequest
    UpdateConnectorResponse.add_member(:connector_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorId, location_name: 'ConnectorId', traits: {"smithy.api#required" => {}}))
    UpdateConnectorResponse.type = Types::UpdateConnectorResponse
    UpdateHostKeyRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateHostKeyRequest.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId', traits: {"smithy.api#required" => {}}))
    UpdateHostKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    UpdateHostKeyRequest.type = Types::UpdateHostKeyRequest
    UpdateHostKeyResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateHostKeyResponse.add_member(:host_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKeyId, location_name: 'HostKeyId', traits: {"smithy.api#required" => {}}))
    UpdateHostKeyResponse.type = Types::UpdateHostKeyResponse
    UpdateProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId', traits: {"smithy.api#required" => {}}))
    UpdateProfileRequest.add_member(:certificate_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateIds, location_name: 'CertificateIds'))
    UpdateProfileRequest.type = Types::UpdateProfileRequest
    UpdateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'ProfileId', traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.type = Types::UpdateProfileResponse
    UpdateServerRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate'))
    UpdateServerRequest.add_member(:protocol_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolDetails, location_name: 'ProtocolDetails'))
    UpdateServerRequest.add_member(:endpoint_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDetails, location_name: 'EndpointDetails'))
    UpdateServerRequest.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'EndpointType'))
    UpdateServerRequest.add_member(:host_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostKey, location_name: 'HostKey', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateServerRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderDetails, location_name: 'IdentityProviderDetails'))
    UpdateServerRequest.add_member(:logging_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableRole, location_name: 'LoggingRole'))
    UpdateServerRequest.add_member(:post_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostAuthenticationLoginBanner, location_name: 'PostAuthenticationLoginBanner'))
    UpdateServerRequest.add_member(:pre_authentication_login_banner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreAuthenticationLoginBanner, location_name: 'PreAuthenticationLoginBanner'))
    UpdateServerRequest.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocols, location_name: 'Protocols'))
    UpdateServerRequest.add_member(:security_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyName, location_name: 'SecurityPolicyName'))
    UpdateServerRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateServerRequest.add_member(:workflow_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDetails, location_name: 'WorkflowDetails'))
    UpdateServerRequest.add_member(:structured_log_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredLogDestinations, location_name: 'StructuredLogDestinations'))
    UpdateServerRequest.add_member(:s3_storage_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageOptions, location_name: 'S3StorageOptions'))
    UpdateServerRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType'))
    UpdateServerRequest.add_member(:identity_provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderType, location_name: 'IdentityProviderType'))
    UpdateServerRequest.type = Types::UpdateServerRequest
    UpdateServerResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateServerResponse.type = Types::UpdateServerResponse
    UpdateUserRequest.add_member(:home_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectory, location_name: 'HomeDirectory'))
    UpdateUserRequest.add_member(:home_directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryType, location_name: 'HomeDirectoryType'))
    UpdateUserRequest.add_member(:home_directory_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeDirectoryMappings, location_name: 'HomeDirectoryMappings'))
    UpdateUserRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    UpdateUserRequest.add_member(:posix_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixProfile, location_name: 'PosixProfile'))
    UpdateUserRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    UpdateUserRequest.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UpdateWebAppCustomizationRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    UpdateWebAppCustomizationRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppTitle, location_name: 'Title'))
    UpdateWebAppCustomizationRequest.add_member(:logo_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppLogoFile, location_name: 'LogoFile'))
    UpdateWebAppCustomizationRequest.add_member(:favicon_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppFaviconFile, location_name: 'FaviconFile'))
    UpdateWebAppCustomizationRequest.type = Types::UpdateWebAppCustomizationRequest
    UpdateWebAppCustomizationResponse.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    UpdateWebAppCustomizationResponse.type = Types::UpdateWebAppCustomizationResponse
    UpdateWebAppIdentityCenterConfig.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    UpdateWebAppIdentityCenterConfig.type = Types::UpdateWebAppIdentityCenterConfig
    UpdateWebAppIdentityProviderDetails.add_member(:identity_center_config, Types::UpdateWebAppIdentityProviderDetails::IdentityCenterConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppIdentityCenterConfig, location_name: 'IdentityCenterConfig'))
    UpdateWebAppIdentityProviderDetails.add_member(:unknown, Types::UpdateWebAppIdentityProviderDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdateWebAppIdentityProviderDetails.type = Types::UpdateWebAppIdentityProviderDetails
    UpdateWebAppRequest.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    UpdateWebAppRequest.add_member(:identity_provider_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppIdentityProviderDetails, location_name: 'IdentityProviderDetails', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateWebAppRequest.add_member(:access_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppAccessEndpoint, location_name: 'AccessEndpoint'))
    UpdateWebAppRequest.add_member(:web_app_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppUnits, location_name: 'WebAppUnits'))
    UpdateWebAppRequest.type = Types::UpdateWebAppRequest
    UpdateWebAppResponse.add_member(:web_app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppId, location_name: 'WebAppId', traits: {"smithy.api#required" => {}}))
    UpdateWebAppResponse.type = Types::UpdateWebAppResponse
    UserDetails.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#required" => {}}))
    UserDetails.add_member(:server_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'ServerId', traits: {"smithy.api#required" => {}}))
    UserDetails.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    UserDetails.type = Types::UserDetails
    WebAppEndpointPolicy.add_member(:fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS', traits: {"smithy.api#enumValue" => "FIPS"}))
    WebAppEndpointPolicy.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    WebAppIdentityProviderDetails.add_member(:identity_center_config, Types::WebAppIdentityProviderDetails::IdentityCenterConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfig, location_name: 'IdentityCenterConfig'))
    WebAppIdentityProviderDetails.add_member(:unknown, Types::WebAppIdentityProviderDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    WebAppIdentityProviderDetails.type = Types::WebAppIdentityProviderDetails
    WebAppUnits.add_member(:provisioned, Types::WebAppUnits::Provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebAppUnitCount, location_name: 'Provisioned'))
    WebAppUnits.add_member(:unknown, Types::WebAppUnits::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    WebAppUnits.type = Types::WebAppUnits
    WorkflowDetail.add_member(:workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'WorkflowId', traits: {"smithy.api#required" => {}}))
    WorkflowDetail.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'ExecutionRole', traits: {"smithy.api#required" => {}}))
    WorkflowDetail.type = Types::WorkflowDetail
    WorkflowDetails.add_member(:on_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnUploadWorkflowDetails, location_name: 'OnUpload'))
    WorkflowDetails.add_member(:on_partial_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnPartialUploadWorkflowDetails, location_name: 'OnPartialUpload'))
    WorkflowDetails.type = Types::WorkflowDetails
    WorkflowStep.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStepType, location_name: 'Type'))
    WorkflowStep.add_member(:copy_step_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyStepDetails, location_name: 'CopyStepDetails'))
    WorkflowStep.add_member(:custom_step_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomStepDetails, location_name: 'CustomStepDetails'))
    WorkflowStep.add_member(:delete_step_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStepDetails, location_name: 'DeleteStepDetails'))
    WorkflowStep.add_member(:tag_step_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStepDetails, location_name: 'TagStepDetails'))
    WorkflowStep.add_member(:decrypt_step_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptStepDetails, location_name: 'DecryptStepDetails'))
    WorkflowStep.type = Types::WorkflowStep
    WorkflowStepType.add_member(:copy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY', traits: {"smithy.api#enumValue" => "COPY"}))
    WorkflowStepType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    WorkflowStepType.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "TAG"}))
    WorkflowStepType.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    WorkflowStepType.add_member(:decrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECRYPT', traits: {"smithy.api#enumValue" => "DECRYPT"}))
    WorkflowSteps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStep)

    TransferService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.transfer#TransferService"
      service.name = "TransferService"
      service.version = "2018-11-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Transfer", "arnNamespace" => "transfer", "cloudFormationName" => "Transfer", "cloudTrailEventSource" => "transfer.amazonaws.com", "endpointPrefix" => "transfer"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "transfer"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Transfer Family"}
      service.add_operation(:create_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateAccess"
        operation.name = "CreateAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateAgreement"
        operation.name = "CreateAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "iam:PassRole"]}}
      end)
      service.add_operation(:create_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "iam:PassRole"]}}
      end)
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource"]}}
      end)
      service.add_operation(:create_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateServer"
        operation.name = "CreateServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["apigateway:GET", "ds:AuthorizeApplication", "ds:DescribeDirectories", "ec2:AssociateAddress", "ec2:CreateVpcEndpoint", "ec2:DescribeAddresses", "ec2:DescribeNetworkInterfaces", "ec2:DescribeVpcEndpoints", "iam:PassRole", "transfer:CreateServer", "transfer:DescribeServer", "transfer:StartServer", "transfer:StopServer", "transfer:UpdateServer", "transfer:TagResource", "logs:CreateLogDelivery", "logs:GetLogDelivery", "logs:UpdateLogDelivery", "logs:DeleteLogDelivery", "logs:ListLogDeliveries", "logs:PutResourcePolicy", "logs:DescribeResourcePolicies", "logs:DescribeLogGroups"]}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "transfer:CreateUser", "transfer:DescribeUser", "transfer:ImportSshPublicKey", "transfer:TagResource"]}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateWebApp"
        operation.name = "CreateWebApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "transfer:CreateWebApp", "transfer:TagResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/createWebApp"}}
      end)
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource"]}}
      end)
      service.add_operation(:delete_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteAccess"
        operation.name = "DeleteAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteAgreement"
        operation.name = "DeleteAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_host_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteHostKey"
        operation.name = "DeleteHostKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteServer"
        operation.name = "DeleteServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["ds:DescribeDirectories", "ds:UnauthorizeApplication", "ec2:DeleteVpcEndpoints", "ec2:DescribeAddresses", "ec2:DescribeNetworkInterfaces", "ec2:DescribeVpcEndpoints", "ec2:DisassociateAddress", "logs:GetLogDelivery", "logs:DeleteLogDelivery", "logs:ListLogDeliveries", "transfer:DeleteServer"]}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteSshPublicKey"
        operation.name = "DeleteSshPublicKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSshPublicKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DeleteUser"]}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteWebApp"
        operation.name = "DeleteWebApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DeleteWebApp"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteWebApp"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_app_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteWebAppCustomization"
        operation.name = "DeleteWebAppCustomization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebAppCustomizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DeleteWebAppCustomization"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/deleteWebAppCustomization"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeAccess"
        operation.name = "DescribeAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeAgreement"
        operation.name = "DescribeAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeConnector"
        operation.name = "DescribeConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_host_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeHostKey"
        operation.name = "DescribeHostKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHostKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHostKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeProfile"
        operation.name = "DescribeProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeSecurityPolicy"
        operation.name = "DescribeSecurityPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeServer"
        operation.name = "DescribeServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["ec2:DescribeVpcEndpoints", "transfer:DescribeServer"]}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DescribeUser"]}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_web_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeWebApp"
        operation.name = "DescribeWebApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWebAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWebAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DescribeWebApp"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeWebApp"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_web_app_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeWebAppCustomization"
        operation.name = "DescribeWebAppCustomization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWebAppCustomizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWebAppCustomizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:DescribeWebAppCustomization"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/describeWebAppCustomization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#DescribeWorkflow"
        operation.name = "DescribeWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource"]}}
      end)
      service.add_operation(:import_host_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ImportHostKey"
        operation.name = "ImportHostKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHostKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHostKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:import_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ImportSshPublicKey"
        operation.name = "ImportSshPublicKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSshPublicKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSshPublicKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_accesses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListAccesses"
        operation.name = "ListAccesses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccesses.new
      end)
      service.add_operation(:list_agreements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListAgreements"
        operation.name = "ListAgreements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgreementsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgreementsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAgreements.new
      end)
      service.add_operation(:list_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_file_transfer_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListFileTransferResults"
        operation.name = "ListFileTransferResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileTransferResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileTransferResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listFileTransferResults"}}
        operation[:paginator] = Paginators::ListFileTransferResults.new
      end)
      service.add_operation(:list_host_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListHostKeys"
        operation.name = "ListHostKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_security_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListSecurityPolicies"
        operation.name = "ListSecurityPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityPolicies.new
      end)
      service.add_operation(:list_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListServers"
        operation.name = "ListServers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:ListServers"]}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListUsers"
        operation.name = "ListUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:ListUsers"]}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_web_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListWebApps"
        operation.name = "ListWebApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebAppsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebAppsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:ListWebApps"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/listWebApps"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebApps.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:send_workflow_step_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#SendWorkflowStepState"
        operation.name = "SendWorkflowStepState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendWorkflowStepStateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendWorkflowStepStateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_directory_listing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StartDirectoryListing"
        operation.name = "StartDirectoryListing"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDirectoryListingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDirectoryListingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_file_transfer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StartFileTransfer"
        operation.name = "StartFileTransfer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFileTransferRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFileTransferResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_remote_delete, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StartRemoteDelete"
        operation.name = "StartRemoteDelete"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRemoteDeleteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRemoteDeleteResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startRemoteDelete"}}
      end)
      service.add_operation(:start_remote_move, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StartRemoteMove"
        operation.name = "StartRemoteMove"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRemoteMoveRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartRemoteMoveResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/startRemoteMove"}}
      end)
      service.add_operation(:start_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StartServer"
        operation.name = "StartServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:stop_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#StopServer"
        operation.name = "StopServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:test_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#TestConnection"
        operation.name = "TestConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:test_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#TestIdentityProvider"
        operation.name = "TestIdentityProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestIdentityProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestIdentityProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateAccess"
        operation.name = "UpdateAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateAgreement"
        operation.name = "UpdateAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "transfer:UnTagResource", "iam:PassRole"]}}
      end)
      service.add_operation(:update_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateCertificate"
        operation.name = "UpdateCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "transfer:UnTagResource"]}}
      end)
      service.add_operation(:update_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateConnector"
        operation.name = "UpdateConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "transfer:UnTagResource", "iam:PassRole"]}}
      end)
      service.add_operation(:update_host_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateHostKey"
        operation.name = "UpdateHostKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:TagResource", "transfer:UnTagResource"]}}
      end)
      service.add_operation(:update_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateServer"
        operation.name = "UpdateServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["apigateway:GET", "ec2:AssociateAddress", "ec2:DisassociateAddress", "ec2:CreateVpcEndpoint", "ec2:DeleteVpcEndpoints", "ec2:DescribeAddresses", "ec2:DescribeNetworkInterfaces", "ec2:DescribeVpcEndpoints", "ec2:ModifyVpcEndpoint", "iam:PassRole", "transfer:DescribeServer", "transfer:StartServer", "transfer:StopServer", "transfer:UpdateServer", "transfer:TagResource", "transfer:UnTagResource", "logs:CreateLogDelivery", "logs:GetLogDelivery", "logs:UpdateLogDelivery", "logs:DeleteLogDelivery", "logs:ListLogDeliveries", "logs:PutResourcePolicy", "logs:DescribeResourcePolicies", "logs:DescribeLogGroups"]}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "transfer:DeleteSshPublicKey", "transfer:DescribeUser", "transfer:ImportSshPublicKey", "transfer:TagResource", "transfer:UnTagResource"]}}
      end)
      service.add_operation(:update_web_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateWebApp"
        operation.name = "UpdateWebApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole", "transfer:TagResource", "transfer:UnTagResource", "transfer:UpdateWebApp"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/updateWebApp"}}
      end)
      service.add_operation(:update_web_app_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.transfer#UpdateWebAppCustomization"
        operation.name = "UpdateWebAppCustomization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppCustomizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebAppCustomizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["transfer:UpdateWebAppCustomization"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/updateWebAppCustomization"}}
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
