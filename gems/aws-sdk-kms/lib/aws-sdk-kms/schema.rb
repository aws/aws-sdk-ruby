# frozen_string_literal: true

# This is generated code!

module Aws::KMS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#AWSAccountIdType', name: 'AWSAccountIdType')
    AlgorithmSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#AlgorithmSpec', name: 'AlgorithmSpec')
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#AliasList', name: 'AliasList')
    AliasListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#AliasListEntry', name: 'AliasListEntry')
    AliasNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#AliasNameType', name: 'AliasNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExists", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#ArnType', name: 'ArnType', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AttestationDocumentType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kms#AttestationDocumentType', name: 'AttestationDocumentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    BackingKeyIdResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#BackingKeyIdResponseType', name: 'BackingKeyIdResponseType', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-f0-9]+$"})
    BackingKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#BackingKeyIdType', name: 'BackingKeyIdType', traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[a-f0-9]+$"})
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kms#BooleanType', name: 'BooleanType', traits: {"smithy.api#default" => false})
    CancelKeyDeletionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CancelKeyDeletionRequest', name: 'CancelKeyDeletionRequest')
    CancelKeyDeletionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CancelKeyDeletionResponse', name: 'CancelKeyDeletionResponse')
    CiphertextType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kms#CiphertextType', name: 'CiphertextType', traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}})
    CloudHsmClusterIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#CloudHsmClusterIdType', name: 'CloudHsmClusterIdType', traits: {"smithy.api#length" => {"min" => 19, "max" => 24}, "smithy.api#pattern" => "^cluster-[2-7a-zA-Z]{11,16}$"})
    CloudHsmClusterInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CloudHsmClusterInUseException', name: 'CloudHsmClusterInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudHsmClusterInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudHsmClusterInvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CloudHsmClusterInvalidConfigurationException', name: 'CloudHsmClusterInvalidConfigurationException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudHsmClusterInvalidConfigurationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudHsmClusterNotActiveException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CloudHsmClusterNotActiveException', name: 'CloudHsmClusterNotActiveException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudHsmClusterNotActiveException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudHsmClusterNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CloudHsmClusterNotFoundException', name: 'CloudHsmClusterNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudHsmClusterNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudHsmClusterNotRelatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CloudHsmClusterNotRelatedException', name: 'CloudHsmClusterNotRelatedException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudHsmClusterNotRelatedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectCustomKeyStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ConnectCustomKeyStoreRequest', name: 'ConnectCustomKeyStoreRequest')
    ConnectCustomKeyStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ConnectCustomKeyStoreResponse', name: 'ConnectCustomKeyStoreResponse')
    ConnectionErrorCodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#ConnectionErrorCodeType', name: 'ConnectionErrorCodeType')
    ConnectionStateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#ConnectionStateType', name: 'ConnectionStateType')
    CreateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateAliasRequest', name: 'CreateAliasRequest')
    CreateCustomKeyStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateCustomKeyStoreRequest', name: 'CreateCustomKeyStoreRequest')
    CreateCustomKeyStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateCustomKeyStoreResponse', name: 'CreateCustomKeyStoreResponse')
    CreateGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateGrantRequest', name: 'CreateGrantRequest')
    CreateGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateGrantResponse', name: 'CreateGrantResponse')
    CreateKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateKeyRequest', name: 'CreateKeyRequest')
    CreateKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CreateKeyResponse', name: 'CreateKeyResponse')
    CustomKeyStoreHasCMKsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CustomKeyStoreHasCMKsException', name: 'CustomKeyStoreHasCMKsException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomKeyStoreHasCMKsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomKeyStoreIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#CustomKeyStoreIdType', name: 'CustomKeyStoreIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CustomKeyStoreInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CustomKeyStoreInvalidStateException', name: 'CustomKeyStoreInvalidStateException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomKeyStoreInvalidStateException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomKeyStoreNameInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CustomKeyStoreNameInUseException', name: 'CustomKeyStoreNameInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomKeyStoreNameInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomKeyStoreNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#CustomKeyStoreNameType', name: 'CustomKeyStoreNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    CustomKeyStoreNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CustomKeyStoreNotFoundException', name: 'CustomKeyStoreNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomKeyStoreNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomKeyStoreType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#CustomKeyStoreType', name: 'CustomKeyStoreType')
    CustomKeyStoresList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#CustomKeyStoresList', name: 'CustomKeyStoresList')
    CustomKeyStoresListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#CustomKeyStoresListEntry', name: 'CustomKeyStoresListEntry')
    CustomerMasterKeySpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#CustomerMasterKeySpec', name: 'CustomerMasterKeySpec', traits: {"smithy.api#deprecated" => {"message" => "This enum has been deprecated. Instead, use the KeySpec enum."}})
    DataKeyPairSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#DataKeyPairSpec', name: 'DataKeyPairSpec')
    DataKeySpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#DataKeySpec', name: 'DataKeySpec')
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kms#DateType', name: 'DateType')
    DecryptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DecryptRequest', name: 'DecryptRequest')
    DecryptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DecryptResponse', name: 'DecryptResponse')
    DeleteAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeleteAliasRequest', name: 'DeleteAliasRequest')
    DeleteCustomKeyStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeleteCustomKeyStoreRequest', name: 'DeleteCustomKeyStoreRequest')
    DeleteCustomKeyStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeleteCustomKeyStoreResponse', name: 'DeleteCustomKeyStoreResponse')
    DeleteImportedKeyMaterialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeleteImportedKeyMaterialRequest', name: 'DeleteImportedKeyMaterialRequest')
    DeleteImportedKeyMaterialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeleteImportedKeyMaterialResponse', name: 'DeleteImportedKeyMaterialResponse')
    DependencyTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DependencyTimeoutException', name: 'DependencyTimeoutException', traits: {"aws.protocols#awsQueryError" => {"code" => "DependencyTimeout", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    DeriveSharedSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeriveSharedSecretRequest', name: 'DeriveSharedSecretRequest')
    DeriveSharedSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DeriveSharedSecretResponse', name: 'DeriveSharedSecretResponse')
    DescribeCustomKeyStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DescribeCustomKeyStoresRequest', name: 'DescribeCustomKeyStoresRequest')
    DescribeCustomKeyStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DescribeCustomKeyStoresResponse', name: 'DescribeCustomKeyStoresResponse')
    DescribeKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DescribeKeyRequest', name: 'DescribeKeyRequest')
    DescribeKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DescribeKeyResponse', name: 'DescribeKeyResponse')
    DescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#DescriptionType', name: 'DescriptionType', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    DisableKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DisableKeyRequest', name: 'DisableKeyRequest')
    DisableKeyRotationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DisableKeyRotationRequest', name: 'DisableKeyRotationRequest')
    DisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DisabledException', name: 'DisabledException', traits: {"aws.protocols#awsQueryError" => {"code" => "Disabled", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DisconnectCustomKeyStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DisconnectCustomKeyStoreRequest', name: 'DisconnectCustomKeyStoreRequest')
    DisconnectCustomKeyStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DisconnectCustomKeyStoreResponse', name: 'DisconnectCustomKeyStoreResponse')
    DryRunOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#DryRunOperationException', name: 'DryRunOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "DryRunOperation", "httpResponseCode" => 412}, "smithy.api#error" => "client", "smithy.api#httpError" => 412})
    EnableKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#EnableKeyRequest', name: 'EnableKeyRequest')
    EnableKeyRotationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#EnableKeyRotationRequest', name: 'EnableKeyRotationRequest')
    EncryptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#EncryptRequest', name: 'EncryptRequest')
    EncryptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#EncryptResponse', name: 'EncryptResponse')
    EncryptionAlgorithmSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#EncryptionAlgorithmSpec', name: 'EncryptionAlgorithmSpec')
    EncryptionAlgorithmSpecList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#EncryptionAlgorithmSpecList', name: 'EncryptionAlgorithmSpecList')
    EncryptionContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#EncryptionContextKey', name: 'EncryptionContextKey')
    EncryptionContextType = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kms#EncryptionContextType', name: 'EncryptionContextType')
    EncryptionContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#EncryptionContextValue', name: 'EncryptionContextValue')
    ErrorMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#ErrorMessageType', name: 'ErrorMessageType')
    ExpirationModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#ExpirationModelType', name: 'ExpirationModelType')
    ExpiredImportTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ExpiredImportTokenException', name: 'ExpiredImportTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "ExpiredImportTokenException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GenerateDataKeyPairRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyPairRequest', name: 'GenerateDataKeyPairRequest')
    GenerateDataKeyPairResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyPairResponse', name: 'GenerateDataKeyPairResponse')
    GenerateDataKeyPairWithoutPlaintextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyPairWithoutPlaintextRequest', name: 'GenerateDataKeyPairWithoutPlaintextRequest')
    GenerateDataKeyPairWithoutPlaintextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyPairWithoutPlaintextResponse', name: 'GenerateDataKeyPairWithoutPlaintextResponse')
    GenerateDataKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyRequest', name: 'GenerateDataKeyRequest')
    GenerateDataKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyResponse', name: 'GenerateDataKeyResponse')
    GenerateDataKeyWithoutPlaintextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyWithoutPlaintextRequest', name: 'GenerateDataKeyWithoutPlaintextRequest')
    GenerateDataKeyWithoutPlaintextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateDataKeyWithoutPlaintextResponse', name: 'GenerateDataKeyWithoutPlaintextResponse')
    GenerateMacRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateMacRequest', name: 'GenerateMacRequest')
    GenerateMacResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateMacResponse', name: 'GenerateMacResponse')
    GenerateRandomRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateRandomRequest', name: 'GenerateRandomRequest')
    GenerateRandomResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GenerateRandomResponse', name: 'GenerateRandomResponse')
    GetKeyPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetKeyPolicyRequest', name: 'GetKeyPolicyRequest')
    GetKeyPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetKeyPolicyResponse', name: 'GetKeyPolicyResponse')
    GetKeyRotationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetKeyRotationStatusRequest', name: 'GetKeyRotationStatusRequest')
    GetKeyRotationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetKeyRotationStatusResponse', name: 'GetKeyRotationStatusResponse')
    GetParametersForImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetParametersForImportRequest', name: 'GetParametersForImportRequest')
    GetParametersForImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetParametersForImportResponse', name: 'GetParametersForImportResponse')
    GetPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetPublicKeyRequest', name: 'GetPublicKeyRequest')
    GetPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GetPublicKeyResponse', name: 'GetPublicKeyResponse')
    GrantConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GrantConstraints', name: 'GrantConstraints')
    GrantIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#GrantIdType', name: 'GrantIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#GrantList', name: 'GrantList')
    GrantListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#GrantListEntry', name: 'GrantListEntry')
    GrantNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#GrantNameType', name: 'GrantNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    GrantOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#GrantOperation', name: 'GrantOperation')
    GrantOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#GrantOperationList', name: 'GrantOperationList')
    GrantTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#GrantTokenList', name: 'GrantTokenList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GrantTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#GrantTokenType', name: 'GrantTokenType', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ImportKeyMaterialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ImportKeyMaterialRequest', name: 'ImportKeyMaterialRequest')
    ImportKeyMaterialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ImportKeyMaterialResponse', name: 'ImportKeyMaterialResponse')
    ImportState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#ImportState', name: 'ImportState')
    ImportType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#ImportType', name: 'ImportType')
    IncludeKeyMaterial = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#IncludeKeyMaterial', name: 'IncludeKeyMaterial')
    IncorrectKeyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#IncorrectKeyException', name: 'IncorrectKeyException', traits: {"aws.protocols#awsQueryError" => {"code" => "IncorrectKeyException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IncorrectKeyMaterialException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#IncorrectKeyMaterialException', name: 'IncorrectKeyMaterialException', traits: {"aws.protocols#awsQueryError" => {"code" => "IncorrectKeyMaterialException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IncorrectTrustAnchorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#IncorrectTrustAnchorException', name: 'IncorrectTrustAnchorException', traits: {"aws.protocols#awsQueryError" => {"code" => "IncorrectTrustAnchorException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAliasNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidAliasNameException', name: 'InvalidAliasNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAliasName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidArnException', name: 'InvalidArnException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidArn", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCiphertextException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidCiphertextException', name: 'InvalidCiphertextException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCiphertext", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGrantIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidGrantIdException', name: 'InvalidGrantIdException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGrantId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGrantTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidGrantTokenException', name: 'InvalidGrantTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGrantToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidImportTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidImportTokenException', name: 'InvalidImportTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidImportTokenException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKeyUsageException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidKeyUsageException', name: 'InvalidKeyUsageException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKeyUsage", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMarkerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#InvalidMarkerException', name: 'InvalidMarkerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMarker", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSInternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KMSInternalException', name: 'KMSInternalException', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSInternal", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KMSInvalidMacException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KMSInvalidMacException', name: 'KMSInvalidMacException', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSInvalidMac", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSInvalidSignatureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KMSInvalidSignatureException', name: 'KMSInvalidSignatureException', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSInvalidSignature", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KMSInvalidStateException', name: 'KMSInvalidStateException', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSInvalidStateException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    KeyAgreementAlgorithmSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyAgreementAlgorithmSpec', name: 'KeyAgreementAlgorithmSpec')
    KeyAgreementAlgorithmSpecList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#KeyAgreementAlgorithmSpecList', name: 'KeyAgreementAlgorithmSpecList')
    KeyEncryptionMechanism = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyEncryptionMechanism', name: 'KeyEncryptionMechanism')
    KeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#KeyIdType', name: 'KeyIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#KeyList', name: 'KeyList')
    KeyListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KeyListEntry', name: 'KeyListEntry')
    KeyManagerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyManagerType', name: 'KeyManagerType')
    KeyMaterialDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#KeyMaterialDescriptionType', name: 'KeyMaterialDescriptionType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_\\s.-]+$"})
    KeyMaterialState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyMaterialState', name: 'KeyMaterialState')
    KeyMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KeyMetadata', name: 'KeyMetadata')
    KeySpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeySpec', name: 'KeySpec')
    KeyState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyState', name: 'KeyState')
    KeyStorePasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#KeyStorePasswordType', name: 'KeyStorePasswordType', traits: {"smithy.api#length" => {"min" => 7, "max" => 32}, "smithy.api#sensitive" => {}})
    KeyUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#KeyUnavailableException', name: 'KeyUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "KeyUnavailable", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyUsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#KeyUsageType', name: 'KeyUsageType')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kms#LimitType', name: 'LimitType', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListAliasesRequest', name: 'ListAliasesRequest')
    ListAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListAliasesResponse', name: 'ListAliasesResponse')
    ListGrantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListGrantsOutput', name: 'ListGrantsOutput')
    ListGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListGrantsRequest', name: 'ListGrantsRequest')
    ListKeyPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeyPoliciesRequest', name: 'ListKeyPoliciesRequest')
    ListKeyPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeyPoliciesResponse', name: 'ListKeyPoliciesResponse')
    ListKeyRotationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeyRotationsRequest', name: 'ListKeyRotationsRequest')
    ListKeyRotationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeyRotationsResponse', name: 'ListKeyRotationsResponse')
    ListKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeysRequest', name: 'ListKeysRequest')
    ListKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListKeysResponse', name: 'ListKeysResponse')
    ListResourceTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListResourceTagsRequest', name: 'ListResourceTagsRequest')
    ListResourceTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListResourceTagsResponse', name: 'ListResourceTagsResponse')
    ListRetirableGrantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListRetirableGrantsOutput', name: 'ListRetirableGrantsOutput')
    ListRetirableGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ListRetirableGrantsRequest', name: 'ListRetirableGrantsRequest')
    MacAlgorithmSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#MacAlgorithmSpec', name: 'MacAlgorithmSpec')
    MacAlgorithmSpecList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#MacAlgorithmSpecList', name: 'MacAlgorithmSpecList')
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#MalformedPolicyDocumentException', name: 'MalformedPolicyDocumentException', traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedPolicyDocument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#MarkerType', name: 'MarkerType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]*$"})
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#MessageType', name: 'MessageType')
    MultiRegionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#MultiRegionConfiguration', name: 'MultiRegionConfiguration')
    MultiRegionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#MultiRegionKey', name: 'MultiRegionKey')
    MultiRegionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#MultiRegionKeyList', name: 'MultiRegionKeyList')
    MultiRegionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#MultiRegionKeyType', name: 'MultiRegionKeyType')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#NotFoundException', name: 'NotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "NotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kms#NullableBooleanType', name: 'NullableBooleanType')
    NumberOfBytesType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kms#NumberOfBytesType', name: 'NumberOfBytesType', traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    OriginType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#OriginType', name: 'OriginType')
    PendingWindowInDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kms#PendingWindowInDaysType', name: 'PendingWindowInDaysType', traits: {"smithy.api#range" => {"min" => 1, "max" => 365}})
    PlaintextType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kms#PlaintextType', name: 'PlaintextType', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    PolicyNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#PolicyNameList', name: 'PolicyNameList')
    PolicyNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#PolicyNameType', name: 'PolicyNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    PolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#PolicyType', name: 'PolicyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PrincipalIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#PrincipalIdType', name: 'PrincipalIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w+=,.@:/-]+$"})
    PublicKeyType = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kms#PublicKeyType', name: 'PublicKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    PutKeyPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#PutKeyPolicyRequest', name: 'PutKeyPolicyRequest')
    ReEncryptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ReEncryptRequest', name: 'ReEncryptRequest')
    ReEncryptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ReEncryptResponse', name: 'ReEncryptResponse')
    RecipientInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RecipientInfo', name: 'RecipientInfo')
    RegionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#RegionType', name: 'RegionType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-z]+-){2,3}\\d+$"})
    ReplicateKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ReplicateKeyRequest', name: 'ReplicateKeyRequest')
    ReplicateKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ReplicateKeyResponse', name: 'ReplicateKeyResponse')
    RetireGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RetireGrantRequest', name: 'RetireGrantRequest')
    RevokeGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RevokeGrantRequest', name: 'RevokeGrantRequest')
    RotateKeyOnDemandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RotateKeyOnDemandRequest', name: 'RotateKeyOnDemandRequest')
    RotateKeyOnDemandResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RotateKeyOnDemandResponse', name: 'RotateKeyOnDemandResponse')
    RotationPeriodInDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kms#RotationPeriodInDaysType', name: 'RotationPeriodInDaysType', traits: {"smithy.api#range" => {"min" => 90, "max" => 2560}})
    RotationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#RotationType', name: 'RotationType')
    RotationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#RotationsList', name: 'RotationsList')
    RotationsListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#RotationsListEntry', name: 'RotationsListEntry')
    ScheduleKeyDeletionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ScheduleKeyDeletionRequest', name: 'ScheduleKeyDeletionRequest')
    ScheduleKeyDeletionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#ScheduleKeyDeletionResponse', name: 'ScheduleKeyDeletionResponse')
    SignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#SignRequest', name: 'SignRequest')
    SignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#SignResponse', name: 'SignResponse')
    SigningAlgorithmSpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#SigningAlgorithmSpec', name: 'SigningAlgorithmSpec')
    SigningAlgorithmSpecList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#SigningAlgorithmSpecList', name: 'SigningAlgorithmSpecList')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#Tag', name: 'Tag')
    TagException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#TagException', name: 'TagException', traits: {"aws.protocols#awsQueryError" => {"code" => "TagException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#TagKeyList', name: 'TagKeyList')
    TagKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#TagKeyType', name: 'TagKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kms#TagList', name: 'TagList')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#TagResourceRequest', name: 'TagResourceRequest')
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#TagValueType', name: 'TagValueType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrustAnchorCertificateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#TrustAnchorCertificateType', name: 'TrustAnchorCertificateType', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UpdateAliasRequest', name: 'UpdateAliasRequest')
    UpdateCustomKeyStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UpdateCustomKeyStoreRequest', name: 'UpdateCustomKeyStoreRequest')
    UpdateCustomKeyStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UpdateCustomKeyStoreResponse', name: 'UpdateCustomKeyStoreResponse')
    UpdateKeyDescriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UpdateKeyDescriptionRequest', name: 'UpdateKeyDescriptionRequest')
    UpdatePrimaryRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#UpdatePrimaryRegionRequest', name: 'UpdatePrimaryRegionRequest')
    VerifyMacRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#VerifyMacRequest', name: 'VerifyMacRequest')
    VerifyMacResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#VerifyMacResponse', name: 'VerifyMacResponse')
    VerifyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#VerifyRequest', name: 'VerifyRequest')
    VerifyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#VerifyResponse', name: 'VerifyResponse')
    WrappingKeySpec = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#WrappingKeySpec', name: 'WrappingKeySpec')
    XksKeyAlreadyInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksKeyAlreadyInUseException', name: 'XksKeyAlreadyInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksKeyAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksKeyConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksKeyConfigurationType', name: 'XksKeyConfigurationType')
    XksKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksKeyIdType', name: 'XksKeyIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.]+$"})
    XksKeyInvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksKeyInvalidConfigurationException', name: 'XksKeyInvalidConfigurationException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksKeyInvalidConfiguration", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksKeyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksKeyNotFoundException', name: 'XksKeyNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksKeyNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyAuthenticationAccessKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksProxyAuthenticationAccessKeyIdType', name: 'XksProxyAuthenticationAccessKeyIdType', traits: {"smithy.api#length" => {"min" => 20, "max" => 30}, "smithy.api#pattern" => "^[A-Z2-7]+$", "smithy.api#sensitive" => {}})
    XksProxyAuthenticationCredentialType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyAuthenticationCredentialType', name: 'XksProxyAuthenticationCredentialType')
    XksProxyAuthenticationRawSecretAccessKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksProxyAuthenticationRawSecretAccessKeyType', name: 'XksProxyAuthenticationRawSecretAccessKeyType', traits: {"smithy.api#length" => {"min" => 43, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/+=]+$", "smithy.api#sensitive" => {}})
    XksProxyConfigurationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyConfigurationType', name: 'XksProxyConfigurationType')
    XksProxyConnectivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kms#XksProxyConnectivityType', name: 'XksProxyConnectivityType')
    XksProxyIncorrectAuthenticationCredentialException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyIncorrectAuthenticationCredentialException', name: 'XksProxyIncorrectAuthenticationCredentialException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyIncorrectAuthenticationCredentialException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyInvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyInvalidConfigurationException', name: 'XksProxyInvalidConfigurationException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyInvalidConfigurationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyInvalidResponseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyInvalidResponseException', name: 'XksProxyInvalidResponseException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyInvalidResponseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyUriEndpointInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyUriEndpointInUseException', name: 'XksProxyUriEndpointInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyUriEndpointInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyUriEndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksProxyUriEndpointType', name: 'XksProxyUriEndpointType', traits: {"smithy.api#length" => {"min" => 10, "max" => 128}, "smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+$"})
    XksProxyUriInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyUriInUseException', name: 'XksProxyUriInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyUriInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyUriPathType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksProxyUriPathType', name: 'XksProxyUriPathType', traits: {"smithy.api#length" => {"min" => 10, "max" => 128}, "smithy.api#pattern" => "^(/[a-zA-Z0-9\\/_-]+/kms/xks/v\\d{1,2})$|^(/kms/xks/v\\d{1,2})$"})
    XksProxyUriUnreachableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyUriUnreachableException', name: 'XksProxyUriUnreachableException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyUriUnreachableException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyVpcEndpointServiceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyVpcEndpointServiceInUseException', name: 'XksProxyVpcEndpointServiceInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyVpcEndpointServiceInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyVpcEndpointServiceInvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyVpcEndpointServiceInvalidConfigurationException', name: 'XksProxyVpcEndpointServiceInvalidConfigurationException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyVpcEndpointServiceInvalidConfigurationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XksProxyVpcEndpointServiceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kms#XksProxyVpcEndpointServiceNameType', name: 'XksProxyVpcEndpointServiceNameType', traits: {"smithy.api#length" => {"min" => 20, "max" => 64}, "smithy.api#pattern" => "^com\\.amazonaws\\.vpce\\.([a-z]+-){2,3}\\d+\\.vpce-svc-[0-9a-z]+$"})
    XksProxyVpcEndpointServiceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kms#XksProxyVpcEndpointServiceNotFoundException', name: 'XksProxyVpcEndpointServiceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "XksProxyVpcEndpointServiceNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AlgorithmSpec.add_member(:rsaes_pkcs1_v1_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_PKCS1_V1_5', traits: {"smithy.api#enumValue" => "RSAES_PKCS1_V1_5"}))
    AlgorithmSpec.add_member(:rsaes_oaep_sha_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_OAEP_SHA_1', traits: {"smithy.api#enumValue" => "RSAES_OAEP_SHA_1"}))
    AlgorithmSpec.add_member(:rsaes_oaep_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_OAEP_SHA_256', traits: {"smithy.api#enumValue" => "RSAES_OAEP_SHA_256"}))
    AlgorithmSpec.add_member(:rsa_aes_key_wrap_sha_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_AES_KEY_WRAP_SHA_1', traits: {"smithy.api#enumValue" => "RSA_AES_KEY_WRAP_SHA_1"}))
    AlgorithmSpec.add_member(:rsa_aes_key_wrap_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_AES_KEY_WRAP_SHA_256', traits: {"smithy.api#enumValue" => "RSA_AES_KEY_WRAP_SHA_256"}))
    AlgorithmSpec.add_member(:sm2_pke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2PKE', traits: {"smithy.api#enumValue" => "SM2PKE"}))
    AliasList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasListEntry)
    AliasListEntry.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameType, location_name: 'AliasName'))
    AliasListEntry.add_member(:alias_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'AliasArn'))
    AliasListEntry.add_member(:target_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'TargetKeyId'))
    AliasListEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    AliasListEntry.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'LastUpdatedDate'))
    AliasListEntry.type = Types::AliasListEntry
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    AlreadyExistsException.type = Types::AlreadyExistsException
    CancelKeyDeletionRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    CancelKeyDeletionRequest.type = Types::CancelKeyDeletionRequest
    CancelKeyDeletionResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    CancelKeyDeletionResponse.type = Types::CancelKeyDeletionResponse
    CloudHsmClusterInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CloudHsmClusterInUseException.type = Types::CloudHsmClusterInUseException
    CloudHsmClusterInvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CloudHsmClusterInvalidConfigurationException.type = Types::CloudHsmClusterInvalidConfigurationException
    CloudHsmClusterNotActiveException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CloudHsmClusterNotActiveException.type = Types::CloudHsmClusterNotActiveException
    CloudHsmClusterNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CloudHsmClusterNotFoundException.type = Types::CloudHsmClusterNotFoundException
    CloudHsmClusterNotRelatedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CloudHsmClusterNotRelatedException.type = Types::CloudHsmClusterNotRelatedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectCustomKeyStoreRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId', traits: {"smithy.api#required" => {}}))
    ConnectCustomKeyStoreRequest.type = Types::ConnectCustomKeyStoreRequest
    ConnectCustomKeyStoreResponse.type = Types::ConnectCustomKeyStoreResponse
    ConnectionErrorCodeType.add_member(:invalid_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CREDENTIALS', traits: {"smithy.api#enumValue" => "INVALID_CREDENTIALS"}))
    ConnectionErrorCodeType.add_member(:cluster_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_NOT_FOUND', traits: {"smithy.api#enumValue" => "CLUSTER_NOT_FOUND"}))
    ConnectionErrorCodeType.add_member(:network_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_ERRORS', traits: {"smithy.api#enumValue" => "NETWORK_ERRORS"}))
    ConnectionErrorCodeType.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ConnectionErrorCodeType.add_member(:insufficient_cloudhsm_hsms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_CLOUDHSM_HSMS', traits: {"smithy.api#enumValue" => "INSUFFICIENT_CLOUDHSM_HSMS"}))
    ConnectionErrorCodeType.add_member(:user_locked_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_LOCKED_OUT', traits: {"smithy.api#enumValue" => "USER_LOCKED_OUT"}))
    ConnectionErrorCodeType.add_member(:user_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_NOT_FOUND', traits: {"smithy.api#enumValue" => "USER_NOT_FOUND"}))
    ConnectionErrorCodeType.add_member(:user_logged_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_LOGGED_IN', traits: {"smithy.api#enumValue" => "USER_LOGGED_IN"}))
    ConnectionErrorCodeType.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    ConnectionErrorCodeType.add_member(:insufficient_free_addresses_in_subnet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET', traits: {"smithy.api#enumValue" => "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "XKS_PROXY_ACCESS_DENIED"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_not_reachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_NOT_REACHABLE', traits: {"smithy.api#enumValue" => "XKS_PROXY_NOT_REACHABLE"}))
    ConnectionErrorCodeType.add_member(:xks_vpc_endpoint_service_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND', traits: {"smithy.api#enumValue" => "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_invalid_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_INVALID_RESPONSE', traits: {"smithy.api#enumValue" => "XKS_PROXY_INVALID_RESPONSE"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_invalid_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "XKS_PROXY_INVALID_CONFIGURATION"}))
    ConnectionErrorCodeType.add_member(:xks_vpc_endpoint_service_invalid_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_TIMED_OUT', traits: {"smithy.api#enumValue" => "XKS_PROXY_TIMED_OUT"}))
    ConnectionErrorCodeType.add_member(:xks_proxy_invalid_tls_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XKS_PROXY_INVALID_TLS_CONFIGURATION', traits: {"smithy.api#enumValue" => "XKS_PROXY_INVALID_TLS_CONFIGURATION"}))
    ConnectionStateType.add_member(:connected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionStateType.add_member(:connecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTING', traits: {"smithy.api#enumValue" => "CONNECTING"}))
    ConnectionStateType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectionStateType.add_member(:disconnected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONNECTED', traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    ConnectionStateType.add_member(:disconnecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONNECTING', traits: {"smithy.api#enumValue" => "DISCONNECTING"}))
    CreateAliasRequest.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameType, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:target_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'TargetKeyId', traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateCustomKeyStoreRequest.add_member(:custom_key_store_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameType, location_name: 'CustomKeyStoreName', traits: {"smithy.api#required" => {}}))
    CreateCustomKeyStoreRequest.add_member(:cloud_hsm_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterIdType, location_name: 'CloudHsmClusterId'))
    CreateCustomKeyStoreRequest.add_member(:trust_anchor_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorCertificateType, location_name: 'TrustAnchorCertificate'))
    CreateCustomKeyStoreRequest.add_member(:key_store_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorePasswordType, location_name: 'KeyStorePassword'))
    CreateCustomKeyStoreRequest.add_member(:custom_key_store_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreType, location_name: 'CustomKeyStoreType'))
    CreateCustomKeyStoreRequest.add_member(:xks_proxy_uri_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriEndpointType, location_name: 'XksProxyUriEndpoint'))
    CreateCustomKeyStoreRequest.add_member(:xks_proxy_uri_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriPathType, location_name: 'XksProxyUriPath'))
    CreateCustomKeyStoreRequest.add_member(:xks_proxy_vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceNameType, location_name: 'XksProxyVpcEndpointServiceName'))
    CreateCustomKeyStoreRequest.add_member(:xks_proxy_authentication_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyAuthenticationCredentialType, location_name: 'XksProxyAuthenticationCredential'))
    CreateCustomKeyStoreRequest.add_member(:xks_proxy_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyConnectivityType, location_name: 'XksProxyConnectivity'))
    CreateCustomKeyStoreRequest.type = Types::CreateCustomKeyStoreRequest
    CreateCustomKeyStoreResponse.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    CreateCustomKeyStoreResponse.type = Types::CreateCustomKeyStoreResponse
    CreateGrantRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:grantee_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'GranteePrincipal', traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:retiring_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'RetiringPrincipal'))
    CreateGrantRequest.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantOperationList, location_name: 'Operations', traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantConstraints, location_name: 'Constraints'))
    CreateGrantRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    CreateGrantRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantNameType, location_name: 'Name'))
    CreateGrantRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    CreateGrantRequest.type = Types::CreateGrantRequest
    CreateGrantResponse.add_member(:grant_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenType, location_name: 'GrantToken'))
    CreateGrantResponse.add_member(:grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantIdType, location_name: 'GrantId'))
    CreateGrantResponse.type = Types::CreateGrantResponse
    CreateKeyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Policy'))
    CreateKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    CreateKeyRequest.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageType, location_name: 'KeyUsage'))
    CreateKeyRequest.add_member(:customer_master_key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerMasterKeySpec, location_name: 'CustomerMasterKeySpec', traits: {"smithy.api#deprecated" => {"message" => "This parameter has been deprecated. Instead, use the KeySpec parameter."}}))
    CreateKeyRequest.add_member(:key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec'))
    CreateKeyRequest.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'Origin'))
    CreateKeyRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    CreateKeyRequest.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false}))
    CreateKeyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateKeyRequest.add_member(:multi_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'MultiRegion'))
    CreateKeyRequest.add_member(:xks_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyIdType, location_name: 'XksKeyId'))
    CreateKeyRequest.type = Types::CreateKeyRequest
    CreateKeyResponse.add_member(:key_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMetadata, location_name: 'KeyMetadata'))
    CreateKeyResponse.type = Types::CreateKeyResponse
    CustomKeyStoreHasCMKsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CustomKeyStoreHasCMKsException.type = Types::CustomKeyStoreHasCMKsException
    CustomKeyStoreInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CustomKeyStoreInvalidStateException.type = Types::CustomKeyStoreInvalidStateException
    CustomKeyStoreNameInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CustomKeyStoreNameInUseException.type = Types::CustomKeyStoreNameInUseException
    CustomKeyStoreNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    CustomKeyStoreNotFoundException.type = Types::CustomKeyStoreNotFoundException
    CustomKeyStoreType.add_member(:aws_cloudhsm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDHSM', traits: {"smithy.api#enumValue" => "AWS_CLOUDHSM"}))
    CustomKeyStoreType.add_member(:external_key_store, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_KEY_STORE', traits: {"smithy.api#enumValue" => "EXTERNAL_KEY_STORE"}))
    CustomKeyStoresList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoresListEntry)
    CustomKeyStoresListEntry.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    CustomKeyStoresListEntry.add_member(:custom_key_store_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameType, location_name: 'CustomKeyStoreName'))
    CustomKeyStoresListEntry.add_member(:cloud_hsm_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterIdType, location_name: 'CloudHsmClusterId'))
    CustomKeyStoresListEntry.add_member(:trust_anchor_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustAnchorCertificateType, location_name: 'TrustAnchorCertificate'))
    CustomKeyStoresListEntry.add_member(:connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStateType, location_name: 'ConnectionState'))
    CustomKeyStoresListEntry.add_member(:connection_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionErrorCodeType, location_name: 'ConnectionErrorCode'))
    CustomKeyStoresListEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    CustomKeyStoresListEntry.add_member(:custom_key_store_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreType, location_name: 'CustomKeyStoreType'))
    CustomKeyStoresListEntry.add_member(:xks_proxy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyConfigurationType, location_name: 'XksProxyConfiguration'))
    CustomKeyStoresListEntry.type = Types::CustomKeyStoresListEntry
    CustomerMasterKeySpec.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    CustomerMasterKeySpec.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    CustomerMasterKeySpec.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    CustomerMasterKeySpec.add_member(:ecc_nist_p256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P256', traits: {"smithy.api#enumValue" => "ECC_NIST_P256"}))
    CustomerMasterKeySpec.add_member(:ecc_nist_p384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P384', traits: {"smithy.api#enumValue" => "ECC_NIST_P384"}))
    CustomerMasterKeySpec.add_member(:ecc_nist_p521, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P521', traits: {"smithy.api#enumValue" => "ECC_NIST_P521"}))
    CustomerMasterKeySpec.add_member(:ecc_secg_p256_k1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_SECG_P256K1', traits: {"smithy.api#enumValue" => "ECC_SECG_P256K1"}))
    CustomerMasterKeySpec.add_member(:symmetric_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMMETRIC_DEFAULT', traits: {"smithy.api#enumValue" => "SYMMETRIC_DEFAULT"}))
    CustomerMasterKeySpec.add_member(:hmac_224, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_224', traits: {"smithy.api#enumValue" => "HMAC_224"}))
    CustomerMasterKeySpec.add_member(:hmac_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_256', traits: {"smithy.api#enumValue" => "HMAC_256"}))
    CustomerMasterKeySpec.add_member(:hmac_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_384', traits: {"smithy.api#enumValue" => "HMAC_384"}))
    CustomerMasterKeySpec.add_member(:hmac_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_512', traits: {"smithy.api#enumValue" => "HMAC_512"}))
    CustomerMasterKeySpec.add_member(:sm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    DataKeyPairSpec.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    DataKeyPairSpec.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    DataKeyPairSpec.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    DataKeyPairSpec.add_member(:ecc_nist_p256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P256', traits: {"smithy.api#enumValue" => "ECC_NIST_P256"}))
    DataKeyPairSpec.add_member(:ecc_nist_p384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P384', traits: {"smithy.api#enumValue" => "ECC_NIST_P384"}))
    DataKeyPairSpec.add_member(:ecc_nist_p521, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P521', traits: {"smithy.api#enumValue" => "ECC_NIST_P521"}))
    DataKeyPairSpec.add_member(:ecc_secg_p256_k1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_SECG_P256K1', traits: {"smithy.api#enumValue" => "ECC_SECG_P256K1"}))
    DataKeyPairSpec.add_member(:sm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    DataKeySpec.add_member(:aes_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_256', traits: {"smithy.api#enumValue" => "AES_256"}))
    DataKeySpec.add_member(:aes_128, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_128', traits: {"smithy.api#enumValue" => "AES_128"}))
    DecryptRequest.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob', traits: {"smithy.api#required" => {}}))
    DecryptRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    DecryptRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    DecryptRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    DecryptRequest.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'EncryptionAlgorithm'))
    DecryptRequest.add_member(:recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientInfo, location_name: 'Recipient'))
    DecryptRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    DecryptRequest.type = Types::DecryptRequest
    DecryptResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    DecryptResponse.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Plaintext'))
    DecryptResponse.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'EncryptionAlgorithm'))
    DecryptResponse.add_member(:ciphertext_for_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextForRecipient'))
    DecryptResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    DecryptResponse.type = Types::DecryptResponse
    DeleteAliasRequest.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameType, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    DeleteAliasRequest.type = Types::DeleteAliasRequest
    DeleteCustomKeyStoreRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId', traits: {"smithy.api#required" => {}}))
    DeleteCustomKeyStoreRequest.type = Types::DeleteCustomKeyStoreRequest
    DeleteCustomKeyStoreResponse.type = Types::DeleteCustomKeyStoreResponse
    DeleteImportedKeyMaterialRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    DeleteImportedKeyMaterialRequest.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    DeleteImportedKeyMaterialRequest.type = Types::DeleteImportedKeyMaterialRequest
    DeleteImportedKeyMaterialResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    DeleteImportedKeyMaterialResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdResponseType, location_name: 'KeyMaterialId'))
    DeleteImportedKeyMaterialResponse.type = Types::DeleteImportedKeyMaterialResponse
    DependencyTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    DependencyTimeoutException.type = Types::DependencyTimeoutException
    DeriveSharedSecretRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    DeriveSharedSecretRequest.add_member(:key_agreement_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAgreementAlgorithmSpec, location_name: 'KeyAgreementAlgorithm', traits: {"smithy.api#required" => {}}))
    DeriveSharedSecretRequest.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyType, location_name: 'PublicKey', traits: {"smithy.api#required" => {}}))
    DeriveSharedSecretRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    DeriveSharedSecretRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    DeriveSharedSecretRequest.add_member(:recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientInfo, location_name: 'Recipient'))
    DeriveSharedSecretRequest.type = Types::DeriveSharedSecretRequest
    DeriveSharedSecretResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    DeriveSharedSecretResponse.add_member(:shared_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'SharedSecret'))
    DeriveSharedSecretResponse.add_member(:ciphertext_for_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextForRecipient'))
    DeriveSharedSecretResponse.add_member(:key_agreement_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAgreementAlgorithmSpec, location_name: 'KeyAgreementAlgorithm'))
    DeriveSharedSecretResponse.add_member(:key_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'KeyOrigin'))
    DeriveSharedSecretResponse.type = Types::DeriveSharedSecretResponse
    DescribeCustomKeyStoresRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    DescribeCustomKeyStoresRequest.add_member(:custom_key_store_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameType, location_name: 'CustomKeyStoreName'))
    DescribeCustomKeyStoresRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    DescribeCustomKeyStoresRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    DescribeCustomKeyStoresRequest.type = Types::DescribeCustomKeyStoresRequest
    DescribeCustomKeyStoresResponse.add_member(:custom_key_stores, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoresList, location_name: 'CustomKeyStores'))
    DescribeCustomKeyStoresResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    DescribeCustomKeyStoresResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    DescribeCustomKeyStoresResponse.type = Types::DescribeCustomKeyStoresResponse
    DescribeKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    DescribeKeyRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    DescribeKeyRequest.type = Types::DescribeKeyRequest
    DescribeKeyResponse.add_member(:key_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMetadata, location_name: 'KeyMetadata'))
    DescribeKeyResponse.type = Types::DescribeKeyResponse
    DisableKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    DisableKeyRequest.type = Types::DisableKeyRequest
    DisableKeyRotationRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    DisableKeyRotationRequest.type = Types::DisableKeyRotationRequest
    DisabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    DisabledException.type = Types::DisabledException
    DisconnectCustomKeyStoreRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId', traits: {"smithy.api#required" => {}}))
    DisconnectCustomKeyStoreRequest.type = Types::DisconnectCustomKeyStoreRequest
    DisconnectCustomKeyStoreResponse.type = Types::DisconnectCustomKeyStoreResponse
    DryRunOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    DryRunOperationException.type = Types::DryRunOperationException
    EnableKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    EnableKeyRequest.type = Types::EnableKeyRequest
    EnableKeyRotationRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    EnableKeyRotationRequest.add_member(:rotation_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotationPeriodInDaysType, location_name: 'RotationPeriodInDays'))
    EnableKeyRotationRequest.type = Types::EnableKeyRotationRequest
    EncryptRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    EncryptRequest.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Plaintext', traits: {"smithy.api#required" => {}}))
    EncryptRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    EncryptRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    EncryptRequest.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'EncryptionAlgorithm'))
    EncryptRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    EncryptRequest.type = Types::EncryptRequest
    EncryptResponse.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob'))
    EncryptResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    EncryptResponse.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'EncryptionAlgorithm'))
    EncryptResponse.type = Types::EncryptResponse
    EncryptionAlgorithmSpec.add_member(:symmetric_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMMETRIC_DEFAULT', traits: {"smithy.api#enumValue" => "SYMMETRIC_DEFAULT"}))
    EncryptionAlgorithmSpec.add_member(:rsaes_oaep_sha_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_OAEP_SHA_1', traits: {"smithy.api#enumValue" => "RSAES_OAEP_SHA_1"}))
    EncryptionAlgorithmSpec.add_member(:rsaes_oaep_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_OAEP_SHA_256', traits: {"smithy.api#enumValue" => "RSAES_OAEP_SHA_256"}))
    EncryptionAlgorithmSpec.add_member(:sm2_pke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2PKE', traits: {"smithy.api#enumValue" => "SM2PKE"}))
    EncryptionAlgorithmSpecList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec)
    EncryptionContextType.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextKey)
    EncryptionContextType.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextValue)
    ExpirationModelType.add_member(:key_material_expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_MATERIAL_EXPIRES', traits: {"smithy.api#enumValue" => "KEY_MATERIAL_EXPIRES"}))
    ExpirationModelType.add_member(:key_material_does_not_expire, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_MATERIAL_DOES_NOT_EXPIRE', traits: {"smithy.api#enumValue" => "KEY_MATERIAL_DOES_NOT_EXPIRE"}))
    ExpiredImportTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    ExpiredImportTokenException.type = Types::ExpiredImportTokenException
    GenerateDataKeyPairRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    GenerateDataKeyPairRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyPairRequest.add_member(:key_pair_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeyPairSpec, location_name: 'KeyPairSpec', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyPairRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GenerateDataKeyPairRequest.add_member(:recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientInfo, location_name: 'Recipient'))
    GenerateDataKeyPairRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    GenerateDataKeyPairRequest.type = Types::GenerateDataKeyPairRequest
    GenerateDataKeyPairResponse.add_member(:private_key_ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'PrivateKeyCiphertextBlob'))
    GenerateDataKeyPairResponse.add_member(:private_key_plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'PrivateKeyPlaintext'))
    GenerateDataKeyPairResponse.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyType, location_name: 'PublicKey'))
    GenerateDataKeyPairResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GenerateDataKeyPairResponse.add_member(:key_pair_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeyPairSpec, location_name: 'KeyPairSpec'))
    GenerateDataKeyPairResponse.add_member(:ciphertext_for_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextForRecipient'))
    GenerateDataKeyPairResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    GenerateDataKeyPairResponse.type = Types::GenerateDataKeyPairResponse
    GenerateDataKeyPairWithoutPlaintextRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    GenerateDataKeyPairWithoutPlaintextRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyPairWithoutPlaintextRequest.add_member(:key_pair_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeyPairSpec, location_name: 'KeyPairSpec', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyPairWithoutPlaintextRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GenerateDataKeyPairWithoutPlaintextRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    GenerateDataKeyPairWithoutPlaintextRequest.type = Types::GenerateDataKeyPairWithoutPlaintextRequest
    GenerateDataKeyPairWithoutPlaintextResponse.add_member(:private_key_ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'PrivateKeyCiphertextBlob'))
    GenerateDataKeyPairWithoutPlaintextResponse.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyType, location_name: 'PublicKey'))
    GenerateDataKeyPairWithoutPlaintextResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GenerateDataKeyPairWithoutPlaintextResponse.add_member(:key_pair_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeyPairSpec, location_name: 'KeyPairSpec'))
    GenerateDataKeyPairWithoutPlaintextResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    GenerateDataKeyPairWithoutPlaintextResponse.type = Types::GenerateDataKeyPairWithoutPlaintextResponse
    GenerateDataKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    GenerateDataKeyRequest.add_member(:number_of_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfBytesType, location_name: 'NumberOfBytes'))
    GenerateDataKeyRequest.add_member(:key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeySpec, location_name: 'KeySpec'))
    GenerateDataKeyRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GenerateDataKeyRequest.add_member(:recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientInfo, location_name: 'Recipient'))
    GenerateDataKeyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    GenerateDataKeyRequest.type = Types::GenerateDataKeyRequest
    GenerateDataKeyResponse.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob'))
    GenerateDataKeyResponse.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Plaintext'))
    GenerateDataKeyResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GenerateDataKeyResponse.add_member(:ciphertext_for_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextForRecipient'))
    GenerateDataKeyResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    GenerateDataKeyResponse.type = Types::GenerateDataKeyResponse
    GenerateDataKeyWithoutPlaintextRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GenerateDataKeyWithoutPlaintextRequest.add_member(:encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContext'))
    GenerateDataKeyWithoutPlaintextRequest.add_member(:key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataKeySpec, location_name: 'KeySpec'))
    GenerateDataKeyWithoutPlaintextRequest.add_member(:number_of_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfBytesType, location_name: 'NumberOfBytes'))
    GenerateDataKeyWithoutPlaintextRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GenerateDataKeyWithoutPlaintextRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    GenerateDataKeyWithoutPlaintextRequest.type = Types::GenerateDataKeyWithoutPlaintextRequest
    GenerateDataKeyWithoutPlaintextResponse.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob'))
    GenerateDataKeyWithoutPlaintextResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GenerateDataKeyWithoutPlaintextResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    GenerateDataKeyWithoutPlaintextResponse.type = Types::GenerateDataKeyWithoutPlaintextResponse
    GenerateMacRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    GenerateMacRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GenerateMacRequest.add_member(:mac_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpec, location_name: 'MacAlgorithm', traits: {"smithy.api#required" => {}}))
    GenerateMacRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GenerateMacRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    GenerateMacRequest.type = Types::GenerateMacRequest
    GenerateMacResponse.add_member(:mac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'Mac'))
    GenerateMacResponse.add_member(:mac_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpec, location_name: 'MacAlgorithm'))
    GenerateMacResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GenerateMacResponse.type = Types::GenerateMacResponse
    GenerateRandomRequest.add_member(:number_of_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfBytesType, location_name: 'NumberOfBytes'))
    GenerateRandomRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    GenerateRandomRequest.add_member(:recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecipientInfo, location_name: 'Recipient'))
    GenerateRandomRequest.type = Types::GenerateRandomRequest
    GenerateRandomResponse.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Plaintext'))
    GenerateRandomResponse.add_member(:ciphertext_for_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextForRecipient'))
    GenerateRandomResponse.type = Types::GenerateRandomResponse
    GetKeyPolicyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GetKeyPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameType, location_name: 'PolicyName'))
    GetKeyPolicyRequest.type = Types::GetKeyPolicyRequest
    GetKeyPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Policy'))
    GetKeyPolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameType, location_name: 'PolicyName'))
    GetKeyPolicyResponse.type = Types::GetKeyPolicyResponse
    GetKeyRotationStatusRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GetKeyRotationStatusRequest.type = Types::GetKeyRotationStatusRequest
    GetKeyRotationStatusResponse.add_member(:key_rotation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'KeyRotationEnabled', traits: {"smithy.api#default" => false}))
    GetKeyRotationStatusResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GetKeyRotationStatusResponse.add_member(:rotation_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotationPeriodInDaysType, location_name: 'RotationPeriodInDays'))
    GetKeyRotationStatusResponse.add_member(:next_rotation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'NextRotationDate'))
    GetKeyRotationStatusResponse.add_member(:on_demand_rotation_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'OnDemandRotationStartDate'))
    GetKeyRotationStatusResponse.type = Types::GetKeyRotationStatusResponse
    GetParametersForImportRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GetParametersForImportRequest.add_member(:wrapping_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmSpec, location_name: 'WrappingAlgorithm', traits: {"smithy.api#required" => {}}))
    GetParametersForImportRequest.add_member(:wrapping_key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappingKeySpec, location_name: 'WrappingKeySpec', traits: {"smithy.api#required" => {}}))
    GetParametersForImportRequest.type = Types::GetParametersForImportRequest
    GetParametersForImportResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GetParametersForImportResponse.add_member(:import_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'ImportToken'))
    GetParametersForImportResponse.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'PublicKey'))
    GetParametersForImportResponse.add_member(:parameters_valid_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'ParametersValidTo'))
    GetParametersForImportResponse.type = Types::GetParametersForImportResponse
    GetPublicKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    GetPublicKeyRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    GetPublicKeyRequest.type = Types::GetPublicKeyRequest
    GetPublicKeyResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GetPublicKeyResponse.add_member(:public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyType, location_name: 'PublicKey'))
    GetPublicKeyResponse.add_member(:customer_master_key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerMasterKeySpec, location_name: 'CustomerMasterKeySpec', traits: {"smithy.api#deprecated" => {"message" => "This field has been deprecated. Instead, use the KeySpec field."}}))
    GetPublicKeyResponse.add_member(:key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec'))
    GetPublicKeyResponse.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageType, location_name: 'KeyUsage'))
    GetPublicKeyResponse.add_member(:encryption_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpecList, location_name: 'EncryptionAlgorithms'))
    GetPublicKeyResponse.add_member(:signing_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpecList, location_name: 'SigningAlgorithms'))
    GetPublicKeyResponse.add_member(:key_agreement_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAgreementAlgorithmSpecList, location_name: 'KeyAgreementAlgorithms'))
    GetPublicKeyResponse.type = Types::GetPublicKeyResponse
    GrantConstraints.add_member(:encryption_context_subset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContextSubset'))
    GrantConstraints.add_member(:encryption_context_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'EncryptionContextEquals'))
    GrantConstraints.type = Types::GrantConstraints
    GrantList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantListEntry)
    GrantListEntry.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    GrantListEntry.add_member(:grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantIdType, location_name: 'GrantId'))
    GrantListEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantNameType, location_name: 'Name'))
    GrantListEntry.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    GrantListEntry.add_member(:grantee_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'GranteePrincipal'))
    GrantListEntry.add_member(:retiring_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'RetiringPrincipal'))
    GrantListEntry.add_member(:issuing_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'IssuingAccount'))
    GrantListEntry.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantOperationList, location_name: 'Operations'))
    GrantListEntry.add_member(:constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantConstraints, location_name: 'Constraints'))
    GrantListEntry.type = Types::GrantListEntry
    GrantOperation.add_member(:decrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Decrypt', traits: {"smithy.api#enumValue" => "Decrypt"}))
    GrantOperation.add_member(:encrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Encrypt', traits: {"smithy.api#enumValue" => "Encrypt"}))
    GrantOperation.add_member(:generate_data_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GenerateDataKey', traits: {"smithy.api#enumValue" => "GenerateDataKey"}))
    GrantOperation.add_member(:generate_data_key_without_plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GenerateDataKeyWithoutPlaintext', traits: {"smithy.api#enumValue" => "GenerateDataKeyWithoutPlaintext"}))
    GrantOperation.add_member(:re_encrypt_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReEncryptFrom', traits: {"smithy.api#enumValue" => "ReEncryptFrom"}))
    GrantOperation.add_member(:re_encrypt_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReEncryptTo', traits: {"smithy.api#enumValue" => "ReEncryptTo"}))
    GrantOperation.add_member(:sign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sign', traits: {"smithy.api#enumValue" => "Sign"}))
    GrantOperation.add_member(:verify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Verify', traits: {"smithy.api#enumValue" => "Verify"}))
    GrantOperation.add_member(:get_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GetPublicKey', traits: {"smithy.api#enumValue" => "GetPublicKey"}))
    GrantOperation.add_member(:create_grant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreateGrant', traits: {"smithy.api#enumValue" => "CreateGrant"}))
    GrantOperation.add_member(:retire_grant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RetireGrant', traits: {"smithy.api#enumValue" => "RetireGrant"}))
    GrantOperation.add_member(:describe_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DescribeKey', traits: {"smithy.api#enumValue" => "DescribeKey"}))
    GrantOperation.add_member(:generate_data_key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GenerateDataKeyPair', traits: {"smithy.api#enumValue" => "GenerateDataKeyPair"}))
    GrantOperation.add_member(:generate_data_key_pair_without_plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GenerateDataKeyPairWithoutPlaintext', traits: {"smithy.api#enumValue" => "GenerateDataKeyPairWithoutPlaintext"}))
    GrantOperation.add_member(:generate_mac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GenerateMac', traits: {"smithy.api#enumValue" => "GenerateMac"}))
    GrantOperation.add_member(:verify_mac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VerifyMac', traits: {"smithy.api#enumValue" => "VerifyMac"}))
    GrantOperation.add_member(:derive_shared_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeriveSharedSecret', traits: {"smithy.api#enumValue" => "DeriveSharedSecret"}))
    GrantOperationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantOperation)
    GrantTokenList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenType)
    ImportKeyMaterialRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ImportKeyMaterialRequest.add_member(:import_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'ImportToken', traits: {"smithy.api#required" => {}}))
    ImportKeyMaterialRequest.add_member(:encrypted_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'EncryptedKeyMaterial', traits: {"smithy.api#required" => {}}))
    ImportKeyMaterialRequest.add_member(:valid_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'ValidTo'))
    ImportKeyMaterialRequest.add_member(:expiration_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationModelType, location_name: 'ExpirationModel'))
    ImportKeyMaterialRequest.add_member(:import_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportType, location_name: 'ImportType'))
    ImportKeyMaterialRequest.add_member(:key_material_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialDescriptionType, location_name: 'KeyMaterialDescription'))
    ImportKeyMaterialRequest.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    ImportKeyMaterialRequest.type = Types::ImportKeyMaterialRequest
    ImportKeyMaterialResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    ImportKeyMaterialResponse.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    ImportKeyMaterialResponse.type = Types::ImportKeyMaterialResponse
    ImportState.add_member(:imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTED', traits: {"smithy.api#enumValue" => "IMPORTED"}))
    ImportState.add_member(:pending_import, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_IMPORT', traits: {"smithy.api#enumValue" => "PENDING_IMPORT"}))
    ImportType.add_member(:new_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_KEY_MATERIAL', traits: {"smithy.api#enumValue" => "NEW_KEY_MATERIAL"}))
    ImportType.add_member(:existing_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXISTING_KEY_MATERIAL', traits: {"smithy.api#enumValue" => "EXISTING_KEY_MATERIAL"}))
    IncludeKeyMaterial.add_member(:all_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_KEY_MATERIAL', traits: {"smithy.api#enumValue" => "ALL_KEY_MATERIAL"}))
    IncludeKeyMaterial.add_member(:rotations_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATIONS_ONLY', traits: {"smithy.api#enumValue" => "ROTATIONS_ONLY"}))
    IncorrectKeyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    IncorrectKeyException.type = Types::IncorrectKeyException
    IncorrectKeyMaterialException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    IncorrectKeyMaterialException.type = Types::IncorrectKeyMaterialException
    IncorrectTrustAnchorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    IncorrectTrustAnchorException.type = Types::IncorrectTrustAnchorException
    InvalidAliasNameException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidAliasNameException.type = Types::InvalidAliasNameException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidCiphertextException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidCiphertextException.type = Types::InvalidCiphertextException
    InvalidGrantIdException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidGrantIdException.type = Types::InvalidGrantIdException
    InvalidGrantTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidGrantTokenException.type = Types::InvalidGrantTokenException
    InvalidImportTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidImportTokenException.type = Types::InvalidImportTokenException
    InvalidKeyUsageException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidKeyUsageException.type = Types::InvalidKeyUsageException
    InvalidMarkerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    InvalidMarkerException.type = Types::InvalidMarkerException
    KMSInternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    KMSInternalException.type = Types::KMSInternalException
    KMSInvalidMacException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    KMSInvalidMacException.type = Types::KMSInvalidMacException
    KMSInvalidSignatureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    KMSInvalidSignatureException.type = Types::KMSInvalidSignatureException
    KMSInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    KMSInvalidStateException.type = Types::KMSInvalidStateException
    KeyAgreementAlgorithmSpec.add_member(:ecdh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDH', traits: {"smithy.api#enumValue" => "ECDH"}))
    KeyAgreementAlgorithmSpecList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAgreementAlgorithmSpec)
    KeyEncryptionMechanism.add_member(:rsaes_oaep_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSAES_OAEP_SHA_256', traits: {"smithy.api#enumValue" => "RSAES_OAEP_SHA_256"}))
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyListEntry)
    KeyListEntry.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    KeyListEntry.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'KeyArn'))
    KeyListEntry.type = Types::KeyListEntry
    KeyManagerType.add_member(:aws, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    KeyManagerType.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    KeyMaterialState.add_member(:non_current, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_CURRENT', traits: {"smithy.api#enumValue" => "NON_CURRENT"}))
    KeyMaterialState.add_member(:current, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CURRENT', traits: {"smithy.api#enumValue" => "CURRENT"}))
    KeyMaterialState.add_member(:pending_rotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ROTATION', traits: {"smithy.api#enumValue" => "PENDING_ROTATION"}))
    KeyMetadata.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountIdType, location_name: 'AWSAccountId'))
    KeyMetadata.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    KeyMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'Arn'))
    KeyMetadata.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'CreationDate'))
    KeyMetadata.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    KeyMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    KeyMetadata.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageType, location_name: 'KeyUsage'))
    KeyMetadata.add_member(:key_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState'))
    KeyMetadata.add_member(:deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'DeletionDate'))
    KeyMetadata.add_member(:valid_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'ValidTo'))
    KeyMetadata.add_member(:origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'Origin'))
    KeyMetadata.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId'))
    KeyMetadata.add_member(:cloud_hsm_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterIdType, location_name: 'CloudHsmClusterId'))
    KeyMetadata.add_member(:expiration_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationModelType, location_name: 'ExpirationModel'))
    KeyMetadata.add_member(:key_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyManagerType, location_name: 'KeyManager'))
    KeyMetadata.add_member(:customer_master_key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerMasterKeySpec, location_name: 'CustomerMasterKeySpec', traits: {"smithy.api#deprecated" => {"message" => "This field has been deprecated. Instead, use the KeySpec field."}}))
    KeyMetadata.add_member(:key_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec'))
    KeyMetadata.add_member(:encryption_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpecList, location_name: 'EncryptionAlgorithms'))
    KeyMetadata.add_member(:signing_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpecList, location_name: 'SigningAlgorithms'))
    KeyMetadata.add_member(:key_agreement_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAgreementAlgorithmSpecList, location_name: 'KeyAgreementAlgorithms'))
    KeyMetadata.add_member(:multi_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'MultiRegion'))
    KeyMetadata.add_member(:multi_region_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionConfiguration, location_name: 'MultiRegionConfiguration'))
    KeyMetadata.add_member(:pending_deletion_window_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingWindowInDaysType, location_name: 'PendingDeletionWindowInDays'))
    KeyMetadata.add_member(:mac_algorithms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpecList, location_name: 'MacAlgorithms'))
    KeyMetadata.add_member(:xks_key_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyConfigurationType, location_name: 'XksKeyConfiguration'))
    KeyMetadata.add_member(:current_key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'CurrentKeyMaterialId'))
    KeyMetadata.type = Types::KeyMetadata
    KeySpec.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeySpec.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeySpec.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeySpec.add_member(:ecc_nist_p256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P256', traits: {"smithy.api#enumValue" => "ECC_NIST_P256"}))
    KeySpec.add_member(:ecc_nist_p384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P384', traits: {"smithy.api#enumValue" => "ECC_NIST_P384"}))
    KeySpec.add_member(:ecc_nist_p521, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_NIST_P521', traits: {"smithy.api#enumValue" => "ECC_NIST_P521"}))
    KeySpec.add_member(:ecc_secg_p256_k1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECC_SECG_P256K1', traits: {"smithy.api#enumValue" => "ECC_SECG_P256K1"}))
    KeySpec.add_member(:symmetric_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMMETRIC_DEFAULT', traits: {"smithy.api#enumValue" => "SYMMETRIC_DEFAULT"}))
    KeySpec.add_member(:hmac_224, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_224', traits: {"smithy.api#enumValue" => "HMAC_224"}))
    KeySpec.add_member(:hmac_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_256', traits: {"smithy.api#enumValue" => "HMAC_256"}))
    KeySpec.add_member(:hmac_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_384', traits: {"smithy.api#enumValue" => "HMAC_384"}))
    KeySpec.add_member(:hmac_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_512', traits: {"smithy.api#enumValue" => "HMAC_512"}))
    KeySpec.add_member(:sm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    KeySpec.add_member(:ml_dsa_44, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_DSA_44', traits: {"smithy.api#enumValue" => "ML_DSA_44"}))
    KeySpec.add_member(:ml_dsa_65, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_DSA_65', traits: {"smithy.api#enumValue" => "ML_DSA_65"}))
    KeySpec.add_member(:ml_dsa_87, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_DSA_87', traits: {"smithy.api#enumValue" => "ML_DSA_87"}))
    KeyState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "Creating"}))
    KeyState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    KeyState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "Disabled"}))
    KeyState.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingDeletion', traits: {"smithy.api#enumValue" => "PendingDeletion"}))
    KeyState.add_member(:pending_import, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingImport', traits: {"smithy.api#enumValue" => "PendingImport"}))
    KeyState.add_member(:pending_replica_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingReplicaDeletion', traits: {"smithy.api#enumValue" => "PendingReplicaDeletion"}))
    KeyState.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unavailable', traits: {"smithy.api#enumValue" => "Unavailable"}))
    KeyState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "Updating"}))
    KeyUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    KeyUnavailableException.type = Types::KeyUnavailableException
    KeyUsageType.add_member(:sign_verify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGN_VERIFY', traits: {"smithy.api#enumValue" => "SIGN_VERIFY"}))
    KeyUsageType.add_member(:encrypt_decrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPT_DECRYPT', traits: {"smithy.api#enumValue" => "ENCRYPT_DECRYPT"}))
    KeyUsageType.add_member(:generate_verify_mac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERATE_VERIFY_MAC', traits: {"smithy.api#enumValue" => "GENERATE_VERIFY_MAC"}))
    KeyUsageType.add_member(:key_agreement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_AGREEMENT', traits: {"smithy.api#enumValue" => "KEY_AGREEMENT"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAliasesRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    ListAliasesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListAliasesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListAliasesRequest.type = Types::ListAliasesRequest
    ListAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasList, location_name: 'Aliases'))
    ListAliasesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListAliasesResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListAliasesResponse.type = Types::ListAliasesResponse
    ListGrantsOutput.add_member(:grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'Grants'))
    ListGrantsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListGrantsOutput.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListGrantsOutput.type = Types::ListGrantsOutput
    ListGrantsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListGrantsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListGrantsRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ListGrantsRequest.add_member(:grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantIdType, location_name: 'GrantId'))
    ListGrantsRequest.add_member(:grantee_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'GranteePrincipal'))
    ListGrantsRequest.type = Types::ListGrantsRequest
    ListKeyPoliciesRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ListKeyPoliciesRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListKeyPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListKeyPoliciesRequest.type = Types::ListKeyPoliciesRequest
    ListKeyPoliciesResponse.add_member(:policy_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameList, location_name: 'PolicyNames'))
    ListKeyPoliciesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListKeyPoliciesResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListKeyPoliciesResponse.type = Types::ListKeyPoliciesResponse
    ListKeyRotationsRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ListKeyRotationsRequest.add_member(:include_key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeKeyMaterial, location_name: 'IncludeKeyMaterial'))
    ListKeyRotationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListKeyRotationsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListKeyRotationsRequest.type = Types::ListKeyRotationsRequest
    ListKeyRotationsResponse.add_member(:rotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotationsList, location_name: 'Rotations'))
    ListKeyRotationsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListKeyRotationsResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListKeyRotationsResponse.type = Types::ListKeyRotationsResponse
    ListKeysRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListKeysRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListKeysRequest.type = Types::ListKeysRequest
    ListKeysResponse.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'Keys'))
    ListKeysResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListKeysResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListKeysResponse.type = Types::ListKeysResponse
    ListResourceTagsRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ListResourceTagsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListResourceTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListResourceTagsRequest.type = Types::ListResourceTagsRequest
    ListResourceTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListResourceTagsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListResourceTagsResponse.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListResourceTagsResponse.type = Types::ListResourceTagsResponse
    ListRetirableGrantsOutput.add_member(:grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'Grants'))
    ListRetirableGrantsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'NextMarker'))
    ListRetirableGrantsOutput.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'Truncated', traits: {"smithy.api#default" => false}))
    ListRetirableGrantsOutput.type = Types::ListRetirableGrantsOutput
    ListRetirableGrantsRequest.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Limit'))
    ListRetirableGrantsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarkerType, location_name: 'Marker'))
    ListRetirableGrantsRequest.add_member(:retiring_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalIdType, location_name: 'RetiringPrincipal', traits: {"smithy.api#required" => {}}))
    ListRetirableGrantsRequest.type = Types::ListRetirableGrantsRequest
    MacAlgorithmSpec.add_member(:hmac_sha_224, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA_224', traits: {"smithy.api#enumValue" => "HMAC_SHA_224"}))
    MacAlgorithmSpec.add_member(:hmac_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA_256', traits: {"smithy.api#enumValue" => "HMAC_SHA_256"}))
    MacAlgorithmSpec.add_member(:hmac_sha_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA_384', traits: {"smithy.api#enumValue" => "HMAC_SHA_384"}))
    MacAlgorithmSpec.add_member(:hmac_sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA_512', traits: {"smithy.api#enumValue" => "HMAC_SHA_512"}))
    MacAlgorithmSpecList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpec)
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    MessageType.add_member(:raw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RAW', traits: {"smithy.api#enumValue" => "RAW"}))
    MessageType.add_member(:digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIGEST', traits: {"smithy.api#enumValue" => "DIGEST"}))
    MessageType.add_member(:external_mu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_MU', traits: {"smithy.api#enumValue" => "EXTERNAL_MU"}))
    MultiRegionConfiguration.add_member(:multi_region_key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKeyType, location_name: 'MultiRegionKeyType'))
    MultiRegionConfiguration.add_member(:primary_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKey, location_name: 'PrimaryKey'))
    MultiRegionConfiguration.add_member(:replica_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKeyList, location_name: 'ReplicaKeys'))
    MultiRegionConfiguration.type = Types::MultiRegionConfiguration
    MultiRegionKey.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'Arn'))
    MultiRegionKey.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionType, location_name: 'Region'))
    MultiRegionKey.type = Types::MultiRegionKey
    MultiRegionKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKey)
    MultiRegionKeyType.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    MultiRegionKeyType.add_member(:replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICA', traits: {"smithy.api#enumValue" => "REPLICA"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OriginType.add_member(:aws_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_KMS', traits: {"smithy.api#enumValue" => "AWS_KMS"}))
    OriginType.add_member(:external, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    OriginType.add_member(:aws_cloudhsm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDHSM', traits: {"smithy.api#enumValue" => "AWS_CLOUDHSM"}))
    OriginType.add_member(:external_key_store, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_KEY_STORE', traits: {"smithy.api#enumValue" => "EXTERNAL_KEY_STORE"}))
    PolicyNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameType)
    PutKeyPolicyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    PutKeyPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNameType, location_name: 'PolicyName'))
    PutKeyPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutKeyPolicyRequest.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false}))
    PutKeyPolicyRequest.type = Types::PutKeyPolicyRequest
    ReEncryptRequest.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob', traits: {"smithy.api#required" => {}}))
    ReEncryptRequest.add_member(:source_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'SourceEncryptionContext'))
    ReEncryptRequest.add_member(:source_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'SourceKeyId'))
    ReEncryptRequest.add_member(:destination_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'DestinationKeyId', traits: {"smithy.api#required" => {}}))
    ReEncryptRequest.add_member(:destination_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextType, location_name: 'DestinationEncryptionContext'))
    ReEncryptRequest.add_member(:source_encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'SourceEncryptionAlgorithm'))
    ReEncryptRequest.add_member(:destination_encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'DestinationEncryptionAlgorithm'))
    ReEncryptRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    ReEncryptRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    ReEncryptRequest.type = Types::ReEncryptRequest
    ReEncryptResponse.add_member(:ciphertext_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'CiphertextBlob'))
    ReEncryptResponse.add_member(:source_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'SourceKeyId'))
    ReEncryptResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    ReEncryptResponse.add_member(:source_encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'SourceEncryptionAlgorithm'))
    ReEncryptResponse.add_member(:destination_encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmSpec, location_name: 'DestinationEncryptionAlgorithm'))
    ReEncryptResponse.add_member(:source_key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'SourceKeyMaterialId'))
    ReEncryptResponse.add_member(:destination_key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'DestinationKeyMaterialId'))
    ReEncryptResponse.type = Types::ReEncryptResponse
    RecipientInfo.add_member(:key_encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyEncryptionMechanism, location_name: 'KeyEncryptionAlgorithm'))
    RecipientInfo.add_member(:attestation_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttestationDocumentType, location_name: 'AttestationDocument'))
    RecipientInfo.type = Types::RecipientInfo
    ReplicateKeyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ReplicateKeyRequest.add_member(:replica_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionType, location_name: 'ReplicaRegion', traits: {"smithy.api#required" => {}}))
    ReplicateKeyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'Policy'))
    ReplicateKeyRequest.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false}))
    ReplicateKeyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description'))
    ReplicateKeyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ReplicateKeyRequest.type = Types::ReplicateKeyRequest
    ReplicateKeyResponse.add_member(:replica_key_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMetadata, location_name: 'ReplicaKeyMetadata'))
    ReplicateKeyResponse.add_member(:replica_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'ReplicaPolicy'))
    ReplicateKeyResponse.add_member(:replica_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'ReplicaTags'))
    ReplicateKeyResponse.type = Types::ReplicateKeyResponse
    RetireGrantRequest.add_member(:grant_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenType, location_name: 'GrantToken'))
    RetireGrantRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    RetireGrantRequest.add_member(:grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantIdType, location_name: 'GrantId'))
    RetireGrantRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    RetireGrantRequest.type = Types::RetireGrantRequest
    RevokeGrantRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    RevokeGrantRequest.add_member(:grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantIdType, location_name: 'GrantId', traits: {"smithy.api#required" => {}}))
    RevokeGrantRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    RevokeGrantRequest.type = Types::RevokeGrantRequest
    RotateKeyOnDemandRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    RotateKeyOnDemandRequest.type = Types::RotateKeyOnDemandRequest
    RotateKeyOnDemandResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    RotateKeyOnDemandResponse.type = Types::RotateKeyOnDemandResponse
    RotationType.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    RotationType.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    RotationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotationsListEntry)
    RotationsListEntry.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    RotationsListEntry.add_member(:key_material_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackingKeyIdType, location_name: 'KeyMaterialId'))
    RotationsListEntry.add_member(:key_material_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialDescriptionType, location_name: 'KeyMaterialDescription'))
    RotationsListEntry.add_member(:import_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportState, location_name: 'ImportState'))
    RotationsListEntry.add_member(:key_material_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialState, location_name: 'KeyMaterialState'))
    RotationsListEntry.add_member(:expiration_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationModelType, location_name: 'ExpirationModel'))
    RotationsListEntry.add_member(:valid_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'ValidTo'))
    RotationsListEntry.add_member(:rotation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'RotationDate'))
    RotationsListEntry.add_member(:rotation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotationType, location_name: 'RotationType'))
    RotationsListEntry.type = Types::RotationsListEntry
    ScheduleKeyDeletionRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    ScheduleKeyDeletionRequest.add_member(:pending_window_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingWindowInDaysType, location_name: 'PendingWindowInDays'))
    ScheduleKeyDeletionRequest.type = Types::ScheduleKeyDeletionRequest
    ScheduleKeyDeletionResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    ScheduleKeyDeletionResponse.add_member(:deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'DeletionDate'))
    ScheduleKeyDeletionResponse.add_member(:key_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState'))
    ScheduleKeyDeletionResponse.add_member(:pending_window_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingWindowInDaysType, location_name: 'PendingWindowInDays'))
    ScheduleKeyDeletionResponse.type = Types::ScheduleKeyDeletionResponse
    SignRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    SignRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    SignRequest.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    SignRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    SignRequest.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpec, location_name: 'SigningAlgorithm', traits: {"smithy.api#required" => {}}))
    SignRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    SignRequest.type = Types::SignRequest
    SignResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    SignResponse.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'Signature'))
    SignResponse.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpec, location_name: 'SigningAlgorithm'))
    SignResponse.type = Types::SignResponse
    SigningAlgorithmSpec.add_member(:rsassa_pss_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PSS_SHA_256', traits: {"smithy.api#enumValue" => "RSASSA_PSS_SHA_256"}))
    SigningAlgorithmSpec.add_member(:rsassa_pss_sha_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PSS_SHA_384', traits: {"smithy.api#enumValue" => "RSASSA_PSS_SHA_384"}))
    SigningAlgorithmSpec.add_member(:rsassa_pss_sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PSS_SHA_512', traits: {"smithy.api#enumValue" => "RSASSA_PSS_SHA_512"}))
    SigningAlgorithmSpec.add_member(:rsassa_pkcs1_v1_5_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PKCS1_V1_5_SHA_256', traits: {"smithy.api#enumValue" => "RSASSA_PKCS1_V1_5_SHA_256"}))
    SigningAlgorithmSpec.add_member(:rsassa_pkcs1_v1_5_sha_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PKCS1_V1_5_SHA_384', traits: {"smithy.api#enumValue" => "RSASSA_PKCS1_V1_5_SHA_384"}))
    SigningAlgorithmSpec.add_member(:rsassa_pkcs1_v1_5_sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSASSA_PKCS1_V1_5_SHA_512', traits: {"smithy.api#enumValue" => "RSASSA_PKCS1_V1_5_SHA_512"}))
    SigningAlgorithmSpec.add_member(:ecdsa_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDSA_SHA_256', traits: {"smithy.api#enumValue" => "ECDSA_SHA_256"}))
    SigningAlgorithmSpec.add_member(:ecdsa_sha_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDSA_SHA_384', traits: {"smithy.api#enumValue" => "ECDSA_SHA_384"}))
    SigningAlgorithmSpec.add_member(:ecdsa_sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDSA_SHA_512', traits: {"smithy.api#enumValue" => "ECDSA_SHA_512"}))
    SigningAlgorithmSpec.add_member(:sm2_dsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2DSA', traits: {"smithy.api#enumValue" => "SM2DSA"}))
    SigningAlgorithmSpec.add_member(:ml_dsa_shake_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ML_DSA_SHAKE_256', traits: {"smithy.api#enumValue" => "ML_DSA_SHAKE_256"}))
    SigningAlgorithmSpecList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpec)
    Tag.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyType, location_name: 'TagKey', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueType, location_name: 'TagValue', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    TagException.type = Types::TagException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyType)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAliasRequest.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasNameType, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    UpdateAliasRequest.add_member(:target_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'TargetKeyId', traits: {"smithy.api#required" => {}}))
    UpdateAliasRequest.type = Types::UpdateAliasRequest
    UpdateCustomKeyStoreRequest.add_member(:custom_key_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreIdType, location_name: 'CustomKeyStoreId', traits: {"smithy.api#required" => {}}))
    UpdateCustomKeyStoreRequest.add_member(:new_custom_key_store_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameType, location_name: 'NewCustomKeyStoreName'))
    UpdateCustomKeyStoreRequest.add_member(:key_store_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorePasswordType, location_name: 'KeyStorePassword'))
    UpdateCustomKeyStoreRequest.add_member(:cloud_hsm_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterIdType, location_name: 'CloudHsmClusterId'))
    UpdateCustomKeyStoreRequest.add_member(:xks_proxy_uri_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriEndpointType, location_name: 'XksProxyUriEndpoint'))
    UpdateCustomKeyStoreRequest.add_member(:xks_proxy_uri_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriPathType, location_name: 'XksProxyUriPath'))
    UpdateCustomKeyStoreRequest.add_member(:xks_proxy_vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceNameType, location_name: 'XksProxyVpcEndpointServiceName'))
    UpdateCustomKeyStoreRequest.add_member(:xks_proxy_authentication_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyAuthenticationCredentialType, location_name: 'XksProxyAuthenticationCredential'))
    UpdateCustomKeyStoreRequest.add_member(:xks_proxy_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyConnectivityType, location_name: 'XksProxyConnectivity'))
    UpdateCustomKeyStoreRequest.type = Types::UpdateCustomKeyStoreRequest
    UpdateCustomKeyStoreResponse.type = Types::UpdateCustomKeyStoreResponse
    UpdateKeyDescriptionRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    UpdateKeyDescriptionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionType, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    UpdateKeyDescriptionRequest.type = Types::UpdateKeyDescriptionRequest
    UpdatePrimaryRegionRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    UpdatePrimaryRegionRequest.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionType, location_name: 'PrimaryRegion', traits: {"smithy.api#required" => {}}))
    UpdatePrimaryRegionRequest.type = Types::UpdatePrimaryRegionRequest
    VerifyMacRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    VerifyMacRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    VerifyMacRequest.add_member(:mac_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpec, location_name: 'MacAlgorithm', traits: {"smithy.api#required" => {}}))
    VerifyMacRequest.add_member(:mac, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'Mac', traits: {"smithy.api#required" => {}}))
    VerifyMacRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    VerifyMacRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    VerifyMacRequest.type = Types::VerifyMacRequest
    VerifyMacResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    VerifyMacResponse.add_member(:mac_valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'MacValid', traits: {"smithy.api#default" => false}))
    VerifyMacResponse.add_member(:mac_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacAlgorithmSpec, location_name: 'MacAlgorithm'))
    VerifyMacResponse.type = Types::VerifyMacResponse
    VerifyRequest.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId', traits: {"smithy.api#required" => {}}))
    VerifyRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaintextType, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    VerifyRequest.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    VerifyRequest.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CiphertextType, location_name: 'Signature', traits: {"smithy.api#required" => {}}))
    VerifyRequest.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpec, location_name: 'SigningAlgorithm', traits: {"smithy.api#required" => {}}))
    VerifyRequest.add_member(:grant_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantTokenList, location_name: 'GrantTokens'))
    VerifyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBooleanType, location_name: 'DryRun'))
    VerifyRequest.type = Types::VerifyRequest
    VerifyResponse.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyIdType, location_name: 'KeyId'))
    VerifyResponse.add_member(:signature_valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanType, location_name: 'SignatureValid', traits: {"smithy.api#default" => false}))
    VerifyResponse.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmSpec, location_name: 'SigningAlgorithm'))
    VerifyResponse.type = Types::VerifyResponse
    WrappingKeySpec.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    WrappingKeySpec.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    WrappingKeySpec.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    WrappingKeySpec.add_member(:sm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    XksKeyAlreadyInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksKeyAlreadyInUseException.type = Types::XksKeyAlreadyInUseException
    XksKeyConfigurationType.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyIdType, location_name: 'Id'))
    XksKeyConfigurationType.type = Types::XksKeyConfigurationType
    XksKeyInvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksKeyInvalidConfigurationException.type = Types::XksKeyInvalidConfigurationException
    XksKeyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksKeyNotFoundException.type = Types::XksKeyNotFoundException
    XksProxyAuthenticationCredentialType.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyAuthenticationAccessKeyIdType, location_name: 'AccessKeyId', traits: {"smithy.api#required" => {}}))
    XksProxyAuthenticationCredentialType.add_member(:raw_secret_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyAuthenticationRawSecretAccessKeyType, location_name: 'RawSecretAccessKey', traits: {"smithy.api#required" => {}}))
    XksProxyAuthenticationCredentialType.type = Types::XksProxyAuthenticationCredentialType
    XksProxyConfigurationType.add_member(:connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyConnectivityType, location_name: 'Connectivity'))
    XksProxyConfigurationType.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyAuthenticationAccessKeyIdType, location_name: 'AccessKeyId'))
    XksProxyConfigurationType.add_member(:uri_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriEndpointType, location_name: 'UriEndpoint'))
    XksProxyConfigurationType.add_member(:uri_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriPathType, location_name: 'UriPath'))
    XksProxyConfigurationType.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceNameType, location_name: 'VpcEndpointServiceName'))
    XksProxyConfigurationType.type = Types::XksProxyConfigurationType
    XksProxyConnectivityType.add_member(:public_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_ENDPOINT', traits: {"smithy.api#enumValue" => "PUBLIC_ENDPOINT"}))
    XksProxyConnectivityType.add_member(:vpc_endpoint_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT_SERVICE', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_SERVICE"}))
    XksProxyIncorrectAuthenticationCredentialException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyIncorrectAuthenticationCredentialException.type = Types::XksProxyIncorrectAuthenticationCredentialException
    XksProxyInvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyInvalidConfigurationException.type = Types::XksProxyInvalidConfigurationException
    XksProxyInvalidResponseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyInvalidResponseException.type = Types::XksProxyInvalidResponseException
    XksProxyUriEndpointInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyUriEndpointInUseException.type = Types::XksProxyUriEndpointInUseException
    XksProxyUriInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyUriInUseException.type = Types::XksProxyUriInUseException
    XksProxyUriUnreachableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyUriUnreachableException.type = Types::XksProxyUriUnreachableException
    XksProxyVpcEndpointServiceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyVpcEndpointServiceInUseException.type = Types::XksProxyVpcEndpointServiceInUseException
    XksProxyVpcEndpointServiceInvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyVpcEndpointServiceInvalidConfigurationException.type = Types::XksProxyVpcEndpointServiceInvalidConfigurationException
    XksProxyVpcEndpointServiceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessageType, location_name: 'message'))
    XksProxyVpcEndpointServiceNotFoundException.type = Types::XksProxyVpcEndpointServiceNotFoundException

    TrentService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kms#TrentService"
      service.name = "TrentService"
      service.version = "2014-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "KMS", "arnNamespace" => "kms", "cloudFormationName" => "KMS", "cloudTrailEventSource" => "kms.amazonaws.com", "endpointPrefix" => "kms"}, "aws.auth#sigv4" => {"name" => "kms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Key Management Service", "smithy.api#xmlNamespace" => {"uri" => "https://trent.amazonaws.com/doc/2014-11-01/"}}
      service.add_operation(:cancel_key_deletion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#CancelKeyDeletion"
        operation.name = "CancelKeyDeletion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelKeyDeletionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelKeyDeletionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:connect_custom_key_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ConnectCustomKeyStore"
        operation.name = "ConnectCustomKeyStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectCustomKeyStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectCustomKeyStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.traits = {}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAliasNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_key_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#CreateCustomKeyStore"
        operation.name = "CreateCustomKeyStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomKeyStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomKeyStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectTrustAnchorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyIncorrectAuthenticationCredentialException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyInvalidResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriEndpointInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriUnreachableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#CreateGrant"
        operation.name = "CreateGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#CreateKey"
        operation.name = "CreateKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyAlreadyInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksKeyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:decrypt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#Decrypt"
        operation.name = "Decrypt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectKeyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCiphertextException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_key_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DeleteCustomKeyStore"
        operation.name = "DeleteCustomKeyStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomKeyStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomKeyStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreHasCMKsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.traits = {}
      end)
      service.add_operation(:delete_imported_key_material, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DeleteImportedKeyMaterial"
        operation.name = "DeleteImportedKeyMaterial"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportedKeyMaterialRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportedKeyMaterialResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:derive_shared_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DeriveSharedSecret"
        operation.name = "DeriveSharedSecret"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveSharedSecretRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveSharedSecretResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_key_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DescribeCustomKeyStores"
        operation.name = "DescribeCustomKeyStores"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomKeyStoresRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomKeyStoresResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomKeyStores.new
      end)
      service.add_operation(:describe_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DescribeKey"
        operation.name = "DescribeKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DisableKey"
        operation.name = "DisableKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_key_rotation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DisableKeyRotation"
        operation.name = "DisableKeyRotation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableKeyRotationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:disconnect_custom_key_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#DisconnectCustomKeyStore"
        operation.name = "DisconnectCustomKeyStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectCustomKeyStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectCustomKeyStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.traits = {}
      end)
      service.add_operation(:enable_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#EnableKey"
        operation.name = "EnableKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:enable_key_rotation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#EnableKeyRotation"
        operation.name = "EnableKeyRotation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKeyRotationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:encrypt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#Encrypt"
        operation.name = "Encrypt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:generate_data_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateDataKey"
        operation.name = "GenerateDataKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:generate_data_key_pair, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateDataKeyPair"
        operation.name = "GenerateDataKeyPair"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyPairRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyPairResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_data_key_pair_without_plaintext, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateDataKeyPairWithoutPlaintext"
        operation.name = "GenerateDataKeyPairWithoutPlaintext"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyPairWithoutPlaintextRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyPairWithoutPlaintextResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_data_key_without_plaintext, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateDataKeyWithoutPlaintext"
        operation.name = "GenerateDataKeyWithoutPlaintext"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyWithoutPlaintextRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateDataKeyWithoutPlaintextResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:generate_mac, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateMac"
        operation.name = "GenerateMac"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateMacRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateMacResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:generate_random, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GenerateRandom"
        operation.name = "GenerateRandom"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateRandomRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateRandomResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_key_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GetKeyPolicy"
        operation.name = "GetKeyPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_key_rotation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GetKeyRotationStatus"
        operation.name = "GetKeyRotationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyRotationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyRotationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_parameters_for_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GetParametersForImport"
        operation.name = "GetParametersForImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#GetPublicKey"
        operation.name = "GetPublicKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:import_key_material, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ImportKeyMaterial"
        operation.name = "ImportKeyMaterial"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyMaterialRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyMaterialResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredImportTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectKeyMaterialException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCiphertextException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImportTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListAliases"
        operation.name = "ListAliases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListGrants"
        operation.name = "ListGrants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGrantsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGrantsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListGrants.new
      end)
      service.add_operation(:list_key_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListKeyPolicies"
        operation.name = "ListKeyPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyPolicies.new
      end)
      service.add_operation(:list_key_rotations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListKeyRotations"
        operation.name = "ListKeyRotations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyRotationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyRotationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyRotations.new
      end)
      service.add_operation(:list_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListKeys"
        operation.name = "ListKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:list_resource_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListResourceTags"
        operation.name = "ListResourceTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceTags.new
      end)
      service.add_operation(:list_retirable_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ListRetirableGrants"
        operation.name = "ListRetirableGrants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetirableGrantsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetirableGrantsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMarkerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRetirableGrants.new
      end)
      service.add_operation(:put_key_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#PutKeyPolicy"
        operation.name = "PutKeyPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeyPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:re_encrypt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ReEncrypt"
        operation.name = "ReEncrypt"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReEncryptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReEncryptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectKeyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCiphertextException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:replicate_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ReplicateKey"
        operation.name = "ReplicateKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:retire_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#RetireGrant"
        operation.name = "RetireGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetireGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#RevokeGrant"
        operation.name = "RevokeGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantIdException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:rotate_key_on_demand, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#RotateKeyOnDemand"
        operation.name = "RotateKeyOnDemand"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateKeyOnDemandRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateKeyOnDemandResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:schedule_key_deletion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#ScheduleKeyDeletion"
        operation.name = "ScheduleKeyDeletion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleKeyDeletionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleKeyDeletionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:sign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#Sign"
        operation.name = "Sign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagException)
        operation.traits = {}
      end)
      service.add_operation(:update_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_key_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#UpdateCustomKeyStore"
        operation.name = "UpdateCustomKeyStore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomKeyStoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomKeyStoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotActiveException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmClusterNotRelatedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNameInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomKeyStoreNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyIncorrectAuthenticationCredentialException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyInvalidResponseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriEndpointInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyUriUnreachableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceInvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: XksProxyVpcEndpointServiceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_key_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#UpdateKeyDescription"
        operation.name = "UpdateKeyDescription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyDescriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_primary_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#UpdatePrimaryRegion"
        operation.name = "UpdatePrimaryRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePrimaryRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:verify, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#Verify"
        operation.name = "Verify"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidSignatureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:verify_mac, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kms#VerifyMac"
        operation.name = "VerifyMac"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyMacRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyMacResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGrantTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyUsageException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidMacException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
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
