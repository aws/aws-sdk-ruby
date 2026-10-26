# frozen_string_literal: true

# This is generated code!

module Aws::SecretsManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIErrorListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#APIErrorListType", name: "APIErrorListType")
    APIErrorType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#APIErrorType", name: "APIErrorType")
    AddReplicaRegionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#AddReplicaRegionListType", name: "AddReplicaRegionListType", traits: {"smithy.api#length" => {"min" => 1}})
    AutomaticallyRotateAfterDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.secretsmanager#AutomaticallyRotateAfterDaysType", name: "AutomaticallyRotateAfterDaysType", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    BatchGetSecretValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#BatchGetSecretValueRequest", name: "BatchGetSecretValueRequest")
    BatchGetSecretValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#BatchGetSecretValueResponse", name: "BatchGetSecretValueResponse")
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#BooleanType", name: "BooleanType", traits: {"smithy.api#default" => false})
    CancelRotateSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#CancelRotateSecretRequest", name: "CancelRotateSecretRequest")
    CancelRotateSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#CancelRotateSecretResponse", name: "CancelRotateSecretResponse")
    ClientRequestTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ClientRequestTokenType", name: "ClientRequestTokenType", traits: {"smithy.api#length" => {"min" => 32, "max" => 64}})
    CreateSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#CreateSecretRequest", name: "CreateSecretRequest")
    CreateSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#CreateSecretResponse", name: "CreateSecretResponse")
    CreatedDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#CreatedDateType", name: "CreatedDateType")
    DecryptionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DecryptionFailure", name: "DecryptionFailure", traits: {"smithy.api#error" => "client"})
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DeleteSecretRequest", name: "DeleteSecretRequest")
    DeleteSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DeleteSecretResponse", name: "DeleteSecretResponse")
    DeletedDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#DeletedDateType", name: "DeletedDateType")
    DeletionDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#DeletionDateType", name: "DeletionDateType")
    DescribeSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DescribeSecretRequest", name: "DescribeSecretRequest")
    DescribeSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#DescribeSecretResponse", name: "DescribeSecretResponse")
    DescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#DescriptionType", name: "DescriptionType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    DurationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#DurationType", name: "DurationType", traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^[0-9]+h$"})
    EncryptionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#EncryptionFailure", name: "EncryptionFailure", traits: {"smithy.api#error" => "client"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ErrorMessage", name: "ErrorMessage")
    ExcludeCharactersType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ExcludeCharactersType", name: "ExcludeCharactersType", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    ExcludeLowercaseType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#ExcludeLowercaseType", name: "ExcludeLowercaseType", traits: {"smithy.api#default" => false})
    ExcludeNumbersType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#ExcludeNumbersType", name: "ExcludeNumbersType", traits: {"smithy.api#default" => false})
    ExcludePunctuationType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#ExcludePunctuationType", name: "ExcludePunctuationType", traits: {"smithy.api#default" => false})
    ExcludeUppercaseType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#ExcludeUppercaseType", name: "ExcludeUppercaseType", traits: {"smithy.api#default" => false})
    ExternalSecretRotationMetadataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ExternalSecretRotationMetadataItem", name: "ExternalSecretRotationMetadataItem")
    ExternalSecretRotationMetadataItemKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ExternalSecretRotationMetadataItemKeyType", name: "ExternalSecretRotationMetadataItemKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ExternalSecretRotationMetadataItemValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ExternalSecretRotationMetadataItemValueType", name: "ExternalSecretRotationMetadataItemValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ExternalSecretRotationMetadataType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#ExternalSecretRotationMetadataType", name: "ExternalSecretRotationMetadataType")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#Filter", name: "Filter")
    FilterNameStringType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.secretsmanager#FilterNameStringType", name: "FilterNameStringType")
    FilterValueStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#FilterValueStringType", name: "FilterValueStringType", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\!?[a-zA-Z0-9 :_@\\/\\+\\=\\.\\-\\!]*$"})
    FilterValuesStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#FilterValuesStringList", name: "FilterValuesStringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FiltersListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#FiltersListType", name: "FiltersListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetRandomPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetRandomPasswordRequest", name: "GetRandomPasswordRequest")
    GetRandomPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetRandomPasswordResponse", name: "GetRandomPasswordResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetSecretValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetSecretValueRequest", name: "GetSecretValueRequest")
    GetSecretValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#GetSecretValueResponse", name: "GetSecretValueResponse")
    IncludeSpaceType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#IncludeSpaceType", name: "IncludeSpaceType", traits: {"smithy.api#default" => false})
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#InternalServiceError", name: "InternalServiceError", traits: {"smithy.api#error" => "server"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    KmsKeyIdListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#KmsKeyIdListType", name: "KmsKeyIdListType")
    KmsKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#KmsKeyIdType", name: "KmsKeyIdType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    LastAccessedDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#LastAccessedDateType", name: "LastAccessedDateType")
    LastChangedDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#LastChangedDateType", name: "LastChangedDateType")
    LastRotatedDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#LastRotatedDateType", name: "LastRotatedDateType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListSecretVersionIdsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ListSecretVersionIdsRequest", name: "ListSecretVersionIdsRequest")
    ListSecretVersionIdsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ListSecretVersionIdsResponse", name: "ListSecretVersionIdsResponse")
    ListSecretsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ListSecretsRequest", name: "ListSecretsRequest")
    ListSecretsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ListSecretsResponse", name: "ListSecretsResponse")
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"smithy.api#error" => "client"})
    MaxResultsBatchType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.secretsmanager#MaxResultsBatchType", name: "MaxResultsBatchType", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MaxResultsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.secretsmanager#MaxResultsType", name: "MaxResultsType", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MedeaTypeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#MedeaTypeType", name: "MedeaTypeType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    NameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#NameType", name: "NameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    NextRotationDateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#NextRotationDateType", name: "NextRotationDateType")
    NextTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#NextTokenType", name: "NextTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NonEmptyResourcePolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#NonEmptyResourcePolicyType", name: "NonEmptyResourcePolicyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    OwningServiceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#OwningServiceType", name: "OwningServiceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PasswordLengthType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.secretsmanager#PasswordLengthType", name: "PasswordLengthType", traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}})
    PreconditionNotMetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PreconditionNotMetException", name: "PreconditionNotMetException", traits: {"smithy.api#error" => "client"})
    PublicPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PublicPolicyException", name: "PublicPolicyException", traits: {"smithy.api#error" => "client"})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    PutSecretValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PutSecretValueRequest", name: "PutSecretValueRequest")
    PutSecretValueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#PutSecretValueResponse", name: "PutSecretValueResponse")
    RandomPasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#RandomPasswordType", name: "RandomPasswordType", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    RecoveryWindowInDaysType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.secretsmanager#RecoveryWindowInDaysType", name: "RecoveryWindowInDaysType", traits: {"smithy.api#default" => 0})
    RegionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#RegionType", name: "RegionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-z]+-)+\\d+$"})
    RemoveRegionsFromReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RemoveRegionsFromReplicationRequest", name: "RemoveRegionsFromReplicationRequest")
    RemoveRegionsFromReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RemoveRegionsFromReplicationResponse", name: "RemoveRegionsFromReplicationResponse")
    RemoveReplicaRegionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#RemoveReplicaRegionListType", name: "RemoveReplicaRegionListType", traits: {"smithy.api#length" => {"min" => 1}})
    ReplicaRegionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ReplicaRegionType", name: "ReplicaRegionType")
    ReplicateSecretToRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ReplicateSecretToRegionsRequest", name: "ReplicateSecretToRegionsRequest")
    ReplicateSecretToRegionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ReplicateSecretToRegionsResponse", name: "ReplicateSecretToRegionsResponse")
    ReplicationStatusListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#ReplicationStatusListType", name: "ReplicationStatusListType")
    ReplicationStatusType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ReplicationStatusType", name: "ReplicationStatusType")
    RequireEachIncludedTypeType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#RequireEachIncludedTypeType", name: "RequireEachIncludedTypeType", traits: {"smithy.api#default" => false})
    ResourceExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ResourceExistsException", name: "ResourceExistsException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RestoreSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RestoreSecretRequest", name: "RestoreSecretRequest")
    RestoreSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RestoreSecretResponse", name: "RestoreSecretResponse")
    RoleARNType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#RoleARNType", name: "RoleARNType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RotateSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RotateSecretRequest", name: "RotateSecretRequest")
    RotateSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RotateSecretResponse", name: "RotateSecretResponse")
    RotationEnabledType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.secretsmanager#RotationEnabledType", name: "RotationEnabledType", traits: {"smithy.api#default" => false})
    RotationLambdaARNType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#RotationLambdaARNType", name: "RotationLambdaARNType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    RotationRulesType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#RotationRulesType", name: "RotationRulesType")
    RotationTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#RotationTokenType", name: "RotationTokenType", traits: {"smithy.api#length" => {"min" => 36, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$", "smithy.api#sensitive" => {}})
    ScheduleExpressionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#ScheduleExpressionType", name: "ScheduleExpressionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z\\(\\)#\\?\\*\\-\\/, ]+$"})
    SecretARNType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretARNType", name: "SecretARNType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    SecretBinaryType = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.secretsmanager#SecretBinaryType", name: "SecretBinaryType", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#sensitive" => {}})
    SecretIdListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#SecretIdListType", name: "SecretIdListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SecretIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretIdType", name: "SecretIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SecretListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#SecretListEntry", name: "SecretListEntry")
    SecretListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#SecretListType", name: "SecretListType")
    SecretNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretNameType", name: "SecretNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SecretStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretStringType", name: "SecretStringType", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#sensitive" => {}})
    SecretValueEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#SecretValueEntry", name: "SecretValueEntry")
    SecretValuesType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#SecretValuesType", name: "SecretValuesType")
    SecretVersionIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretVersionIdType", name: "SecretVersionIdType", traits: {"smithy.api#length" => {"min" => 32, "max" => 64}})
    SecretVersionStageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#SecretVersionStageType", name: "SecretVersionStageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SecretVersionStagesType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#SecretVersionStagesType", name: "SecretVersionStagesType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SecretVersionsListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#SecretVersionsListEntry", name: "SecretVersionsListEntry")
    SecretVersionsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#SecretVersionsListType", name: "SecretVersionsListType")
    SecretVersionsToStagesMapType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.secretsmanager#SecretVersionsToStagesMapType", name: "SecretVersionsToStagesMapType")
    SortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.secretsmanager#SortByType", name: "SortByType")
    SortOrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.secretsmanager#SortOrderType", name: "SortOrderType")
    StatusMessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#StatusMessageType", name: "StatusMessageType", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.secretsmanager#StatusType", name: "StatusType")
    StopReplicationToReplicaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#StopReplicationToReplicaRequest", name: "StopReplicationToReplicaRequest")
    StopReplicationToReplicaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#StopReplicationToReplicaResponse", name: "StopReplicationToReplicaResponse")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#Tag", name: "Tag")
    TagKeyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#TagKeyListType", name: "TagKeyListType")
    TagKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#TagKeyType", name: "TagKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#TagListType", name: "TagListType")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#TagResourceRequest", name: "TagResourceRequest")
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.secretsmanager#TagValueType", name: "TagValueType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.secretsmanager#TimestampType", name: "TimestampType")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#UpdateSecretRequest", name: "UpdateSecretRequest")
    UpdateSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#UpdateSecretResponse", name: "UpdateSecretResponse")
    UpdateSecretVersionStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#UpdateSecretVersionStageRequest", name: "UpdateSecretVersionStageRequest")
    UpdateSecretVersionStageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#UpdateSecretVersionStageResponse", name: "UpdateSecretVersionStageResponse")
    ValidateResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ValidateResourcePolicyRequest", name: "ValidateResourcePolicyRequest")
    ValidateResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ValidateResourcePolicyResponse", name: "ValidateResourcePolicyResponse")
    ValidationErrorsEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.secretsmanager#ValidationErrorsEntry", name: "ValidationErrorsEntry")
    ValidationErrorsType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.secretsmanager#ValidationErrorsType", name: "ValidationErrorsType")

    APIErrorListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: APIErrorType, name: "member"))
    APIErrorType.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId"))
    APIErrorType.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    APIErrorType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    APIErrorType.type = Types::APIErrorType
    AddReplicaRegionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaRegionType, name: "member"))
    BatchGetSecretValueRequest.add_member(:secret_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdListType, name: "SecretIdList"))
    BatchGetSecretValueRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FiltersListType, name: "Filters"))
    BatchGetSecretValueRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsBatchType, name: "MaxResults"))
    BatchGetSecretValueRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    BatchGetSecretValueRequest.type = Types::BatchGetSecretValueRequest
    BatchGetSecretValueResponse.add_member(:secret_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretValuesType, name: "SecretValues"))
    BatchGetSecretValueResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    BatchGetSecretValueResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: APIErrorListType, name: "Errors"))
    BatchGetSecretValueResponse.type = Types::BatchGetSecretValueResponse
    CancelRotateSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    CancelRotateSecretRequest.type = Types::CancelRotateSecretRequest
    CancelRotateSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    CancelRotateSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    CancelRotateSecretResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    CancelRotateSecretResponse.type = Types::CancelRotateSecretResponse
    CreateSecretRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSecretRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenType, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSecretRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    CreateSecretRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    CreateSecretRequest.add_member(:secret_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretBinaryType, name: "SecretBinary"))
    CreateSecretRequest.add_member(:secret_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretStringType, name: "SecretString"))
    CreateSecretRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateSecretRequest.add_member(:add_replica_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AddReplicaRegionListType, name: "AddReplicaRegions"))
    CreateSecretRequest.add_member(:force_overwrite_replica_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ForceOverwriteReplicaSecret", traits: {"smithy.api#default" => false}))
    CreateSecretRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MedeaTypeType, name: "Type"))
    CreateSecretRequest.type = Types::CreateSecretRequest
    CreateSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    CreateSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    CreateSecretResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    CreateSecretResponse.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusListType, name: "ReplicationStatus"))
    CreateSecretResponse.type = Types::CreateSecretResponse
    DecryptionFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DecryptionFailure.type = Types::DecryptionFailure
    DeleteResourcePolicyRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    DeleteResourcePolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    DeleteSecretRequest.add_member(:recovery_window_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryWindowInDaysType, name: "RecoveryWindowInDays", traits: {"smithy.api#default" => nil}))
    DeleteSecretRequest.add_member(:force_delete_without_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ForceDeleteWithoutRecovery", traits: {"smithy.api#default" => nil}))
    DeleteSecretRequest.type = Types::DeleteSecretRequest
    DeleteSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    DeleteSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    DeleteSecretResponse.add_member(:deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionDateType, name: "DeletionDate"))
    DeleteSecretResponse.type = Types::DeleteSecretResponse
    DescribeSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    DescribeSecretRequest.type = Types::DescribeSecretRequest
    DescribeSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    DescribeSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    DescribeSecretResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MedeaTypeType, name: "Type"))
    DescribeSecretResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    DescribeSecretResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    DescribeSecretResponse.add_member(:rotation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationEnabledType, name: "RotationEnabled", traits: {"smithy.api#default" => nil}))
    DescribeSecretResponse.add_member(:rotation_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationLambdaARNType, name: "RotationLambdaARN"))
    DescribeSecretResponse.add_member(:rotation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationRulesType, name: "RotationRules"))
    DescribeSecretResponse.add_member(:external_secret_rotation_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataType, name: "ExternalSecretRotationMetadata"))
    DescribeSecretResponse.add_member(:external_secret_rotation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARNType, name: "ExternalSecretRotationRoleArn"))
    DescribeSecretResponse.add_member(:last_rotated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRotatedDateType, name: "LastRotatedDate"))
    DescribeSecretResponse.add_member(:last_changed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastChangedDateType, name: "LastChangedDate"))
    DescribeSecretResponse.add_member(:last_accessed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAccessedDateType, name: "LastAccessedDate"))
    DescribeSecretResponse.add_member(:deleted_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletedDateType, name: "DeletedDate"))
    DescribeSecretResponse.add_member(:next_rotation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: NextRotationDateType, name: "NextRotationDate"))
    DescribeSecretResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    DescribeSecretResponse.add_member(:version_ids_to_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionsToStagesMapType, name: "VersionIdsToStages"))
    DescribeSecretResponse.add_member(:owning_service, ::Smithy::Schema::Shapes::MemberShape.new(target: OwningServiceType, name: "OwningService"))
    DescribeSecretResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedDate"))
    DescribeSecretResponse.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "PrimaryRegion"))
    DescribeSecretResponse.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusListType, name: "ReplicationStatus"))
    DescribeSecretResponse.type = Types::DescribeSecretResponse
    EncryptionFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    EncryptionFailure.type = Types::EncryptionFailure
    ExternalSecretRotationMetadataItem.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataItemKeyType, name: "Key"))
    ExternalSecretRotationMetadataItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataItemValueType, name: "Value"))
    ExternalSecretRotationMetadataItem.type = Types::ExternalSecretRotationMetadataItem
    ExternalSecretRotationMetadataType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataItem, name: "member"))
    Filter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterNameStringType, name: "Key"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValuesStringList, name: "Values"))
    Filter.type = Types::Filter
    FilterNameStringType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "description", traits: {"smithy.api#enumValue" => "description"}))
    FilterNameStringType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "name", traits: {"smithy.api#enumValue" => "name"}))
    FilterNameStringType.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "tag_key", traits: {"smithy.api#enumValue" => "tag-key"}))
    FilterNameStringType.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "tag_value", traits: {"smithy.api#enumValue" => "tag-value"}))
    FilterNameStringType.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "primary_region", traits: {"smithy.api#enumValue" => "primary-region"}))
    FilterNameStringType.add_member(:owning_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "owning_service", traits: {"smithy.api#enumValue" => "owning-service"}))
    FilterNameStringType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    FilterValuesStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueStringType, name: "member"))
    FiltersListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetRandomPasswordRequest.add_member(:password_length, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordLengthType, name: "PasswordLength"))
    GetRandomPasswordRequest.add_member(:exclude_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeCharactersType, name: "ExcludeCharacters"))
    GetRandomPasswordRequest.add_member(:exclude_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeNumbersType, name: "ExcludeNumbers", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.add_member(:exclude_punctuation, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludePunctuationType, name: "ExcludePunctuation", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.add_member(:exclude_uppercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeUppercaseType, name: "ExcludeUppercase", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.add_member(:exclude_lowercase, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeLowercaseType, name: "ExcludeLowercase", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.add_member(:include_space, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeSpaceType, name: "IncludeSpace", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.add_member(:require_each_included_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RequireEachIncludedTypeType, name: "RequireEachIncludedType", traits: {"smithy.api#default" => nil}))
    GetRandomPasswordRequest.type = Types::GetRandomPasswordRequest
    GetRandomPasswordResponse.add_member(:random_password, ::Smithy::Schema::Shapes::MemberShape.new(target: RandomPasswordType, name: "RandomPassword"))
    GetRandomPasswordResponse.type = Types::GetRandomPasswordResponse
    GetResourcePolicyRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    GetResourcePolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    GetResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourcePolicyType, name: "ResourcePolicy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetSecretValueRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    GetSecretValueRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    GetSecretValueRequest.add_member(:version_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStageType, name: "VersionStage"))
    GetSecretValueRequest.type = Types::GetSecretValueRequest
    GetSecretValueResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    GetSecretValueResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    GetSecretValueResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    GetSecretValueResponse.add_member(:secret_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretBinaryType, name: "SecretBinary"))
    GetSecretValueResponse.add_member(:secret_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretStringType, name: "SecretString"))
    GetSecretValueResponse.add_member(:version_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "VersionStages"))
    GetSecretValueResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateType, name: "CreatedDate"))
    GetSecretValueResponse.type = Types::GetSecretValueResponse
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServiceError.type = Types::InternalServiceError
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    KmsKeyIdListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListSecretVersionIdsRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    ListSecretVersionIdsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "MaxResults"))
    ListSecretVersionIdsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    ListSecretVersionIdsRequest.add_member(:include_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludeDeprecated", traits: {"smithy.api#default" => nil}))
    ListSecretVersionIdsRequest.type = Types::ListSecretVersionIdsRequest
    ListSecretVersionIdsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionsListType, name: "Versions"))
    ListSecretVersionIdsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    ListSecretVersionIdsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    ListSecretVersionIdsResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    ListSecretVersionIdsResponse.type = Types::ListSecretVersionIdsResponse
    ListSecretsRequest.add_member(:include_planned_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IncludePlannedDeletion", traits: {"smithy.api#default" => nil}))
    ListSecretsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "MaxResults"))
    ListSecretsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    ListSecretsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FiltersListType, name: "Filters"))
    ListSecretsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "SortOrder"))
    ListSecretsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortByType, name: "SortBy"))
    ListSecretsRequest.type = Types::ListSecretsRequest
    ListSecretsResponse.add_member(:secret_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretListType, name: "SecretList"))
    ListSecretsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenType, name: "NextToken"))
    ListSecretsResponse.type = Types::ListSecretsResponse
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    PreconditionNotMetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PreconditionNotMetException.type = Types::PreconditionNotMetException
    PublicPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PublicPolicyException.type = Types::PublicPolicyException
    PutResourcePolicyRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourcePolicyType, name: "ResourcePolicy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:block_public_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "BlockPublicPolicy", traits: {"smithy.api#default" => nil}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    PutResourcePolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutSecretValueRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    PutSecretValueRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenType, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutSecretValueRequest.add_member(:secret_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretBinaryType, name: "SecretBinary"))
    PutSecretValueRequest.add_member(:secret_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretStringType, name: "SecretString"))
    PutSecretValueRequest.add_member(:version_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "VersionStages"))
    PutSecretValueRequest.add_member(:rotation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationTokenType, name: "RotationToken"))
    PutSecretValueRequest.type = Types::PutSecretValueRequest
    PutSecretValueResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    PutSecretValueResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    PutSecretValueResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    PutSecretValueResponse.add_member(:version_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "VersionStages"))
    PutSecretValueResponse.type = Types::PutSecretValueResponse
    RemoveRegionsFromReplicationRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    RemoveRegionsFromReplicationRequest.add_member(:remove_replica_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveReplicaRegionListType, name: "RemoveReplicaRegions", traits: {"smithy.api#required" => {}}))
    RemoveRegionsFromReplicationRequest.type = Types::RemoveRegionsFromReplicationRequest
    RemoveRegionsFromReplicationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    RemoveRegionsFromReplicationResponse.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusListType, name: "ReplicationStatus"))
    RemoveRegionsFromReplicationResponse.type = Types::RemoveRegionsFromReplicationResponse
    RemoveReplicaRegionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "member"))
    ReplicaRegionType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "Region"))
    ReplicaRegionType.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    ReplicaRegionType.type = Types::ReplicaRegionType
    ReplicateSecretToRegionsRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    ReplicateSecretToRegionsRequest.add_member(:add_replica_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AddReplicaRegionListType, name: "AddReplicaRegions", traits: {"smithy.api#required" => {}}))
    ReplicateSecretToRegionsRequest.add_member(:force_overwrite_replica_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ForceOverwriteReplicaSecret", traits: {"smithy.api#default" => false}))
    ReplicateSecretToRegionsRequest.type = Types::ReplicateSecretToRegionsRequest
    ReplicateSecretToRegionsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    ReplicateSecretToRegionsResponse.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusListType, name: "ReplicationStatus"))
    ReplicateSecretToRegionsResponse.type = Types::ReplicateSecretToRegionsResponse
    ReplicationStatusListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusType, name: "member"))
    ReplicationStatusType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "Region"))
    ReplicationStatusType.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    ReplicationStatusType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status"))
    ReplicationStatusType.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessageType, name: "StatusMessage"))
    ReplicationStatusType.add_member(:last_accessed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAccessedDateType, name: "LastAccessedDate"))
    ReplicationStatusType.type = Types::ReplicationStatusType
    ResourceExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    RestoreSecretRequest.type = Types::RestoreSecretRequest
    RestoreSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    RestoreSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    RestoreSecretResponse.type = Types::RestoreSecretResponse
    RotateSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    RotateSecretRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenType, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RotateSecretRequest.add_member(:rotation_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationLambdaARNType, name: "RotationLambdaARN"))
    RotateSecretRequest.add_member(:rotation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationRulesType, name: "RotationRules"))
    RotateSecretRequest.add_member(:external_secret_rotation_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataType, name: "ExternalSecretRotationMetadata"))
    RotateSecretRequest.add_member(:external_secret_rotation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARNType, name: "ExternalSecretRotationRoleArn"))
    RotateSecretRequest.add_member(:rotate_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RotateImmediately", traits: {"smithy.api#default" => nil}))
    RotateSecretRequest.type = Types::RotateSecretRequest
    RotateSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    RotateSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    RotateSecretResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    RotateSecretResponse.type = Types::RotateSecretResponse
    RotationRulesType.add_member(:automatically_after_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticallyRotateAfterDaysType, name: "AutomaticallyAfterDays"))
    RotationRulesType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationType, name: "Duration"))
    RotationRulesType.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpressionType, name: "ScheduleExpression"))
    RotationRulesType.type = Types::RotationRulesType
    SecretIdListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "member"))
    SecretListEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    SecretListEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    SecretListEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MedeaTypeType, name: "Type"))
    SecretListEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    SecretListEntry.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    SecretListEntry.add_member(:rotation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationEnabledType, name: "RotationEnabled", traits: {"smithy.api#default" => nil}))
    SecretListEntry.add_member(:rotation_lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationLambdaARNType, name: "RotationLambdaARN"))
    SecretListEntry.add_member(:rotation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RotationRulesType, name: "RotationRules"))
    SecretListEntry.add_member(:external_secret_rotation_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSecretRotationMetadataType, name: "ExternalSecretRotationMetadata"))
    SecretListEntry.add_member(:external_secret_rotation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARNType, name: "ExternalSecretRotationRoleArn"))
    SecretListEntry.add_member(:last_rotated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRotatedDateType, name: "LastRotatedDate"))
    SecretListEntry.add_member(:last_changed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastChangedDateType, name: "LastChangedDate"))
    SecretListEntry.add_member(:last_accessed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAccessedDateType, name: "LastAccessedDate"))
    SecretListEntry.add_member(:deleted_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletedDateType, name: "DeletedDate"))
    SecretListEntry.add_member(:next_rotation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: NextRotationDateType, name: "NextRotationDate"))
    SecretListEntry.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    SecretListEntry.add_member(:secret_versions_to_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionsToStagesMapType, name: "SecretVersionsToStages"))
    SecretListEntry.add_member(:owning_service, ::Smithy::Schema::Shapes::MemberShape.new(target: OwningServiceType, name: "OwningService"))
    SecretListEntry.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedDate"))
    SecretListEntry.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionType, name: "PrimaryRegion"))
    SecretListEntry.type = Types::SecretListEntry
    SecretListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretListEntry, name: "member"))
    SecretValueEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    SecretValueEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    SecretValueEntry.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    SecretValueEntry.add_member(:secret_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretBinaryType, name: "SecretBinary"))
    SecretValueEntry.add_member(:secret_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretStringType, name: "SecretString"))
    SecretValueEntry.add_member(:version_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "VersionStages"))
    SecretValueEntry.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateType, name: "CreatedDate"))
    SecretValueEntry.type = Types::SecretValueEntry
    SecretValuesType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretValueEntry, name: "member"))
    SecretVersionStagesType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStageType, name: "member"))
    SecretVersionsListEntry.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    SecretVersionsListEntry.add_member(:version_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "VersionStages"))
    SecretVersionsListEntry.add_member(:last_accessed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAccessedDateType, name: "LastAccessedDate"))
    SecretVersionsListEntry.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDateType, name: "CreatedDate"))
    SecretVersionsListEntry.add_member(:kms_key_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdListType, name: "KmsKeyIds"))
    SecretVersionsListEntry.type = Types::SecretVersionsListEntry
    SecretVersionsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionsListEntry, name: "member"))
    SecretVersionsToStagesMapType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "key"))
    SecretVersionsToStagesMapType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStagesType, name: "value"))
    SortByType.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "created_date", traits: {"smithy.api#enumValue" => "created-date"}))
    SortByType.add_member(:last_accessed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "last_accessed_date", traits: {"smithy.api#enumValue" => "last-accessed-date"}))
    SortByType.add_member(:last_changed_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "last_changed_date", traits: {"smithy.api#enumValue" => "last-changed-date"}))
    SortByType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "name", traits: {"smithy.api#enumValue" => "name"}))
    SortOrderType.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "asc", traits: {"smithy.api#enumValue" => "asc"}))
    SortOrderType.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "desc", traits: {"smithy.api#enumValue" => "desc"}))
    StatusType.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InSync", traits: {"smithy.api#enumValue" => "InSync"}))
    StatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    StatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    StopReplicationToReplicaRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    StopReplicationToReplicaRequest.type = Types::StopReplicationToReplicaRequest
    StopReplicationToReplicaResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    StopReplicationToReplicaResponse.type = Types::StopReplicationToReplicaResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueType, name: "Value"))
    Tag.type = Types::Tag
    TagKeyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "member"))
    TagListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    UntagResourceRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateSecretRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    UpdateSecretRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestTokenType, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSecretRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionType, name: "Description"))
    UpdateSecretRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdType, name: "KmsKeyId"))
    UpdateSecretRequest.add_member(:secret_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretBinaryType, name: "SecretBinary"))
    UpdateSecretRequest.add_member(:secret_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretStringType, name: "SecretString"))
    UpdateSecretRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MedeaTypeType, name: "Type"))
    UpdateSecretRequest.type = Types::UpdateSecretRequest
    UpdateSecretResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    UpdateSecretResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    UpdateSecretResponse.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "VersionId"))
    UpdateSecretResponse.type = Types::UpdateSecretResponse
    UpdateSecretVersionStageRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId", traits: {"smithy.api#required" => {}}))
    UpdateSecretVersionStageRequest.add_member(:version_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionStageType, name: "VersionStage", traits: {"smithy.api#required" => {}}))
    UpdateSecretVersionStageRequest.add_member(:remove_from_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "RemoveFromVersionId"))
    UpdateSecretVersionStageRequest.add_member(:move_to_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretVersionIdType, name: "MoveToVersionId"))
    UpdateSecretVersionStageRequest.type = Types::UpdateSecretVersionStageRequest
    UpdateSecretVersionStageResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARNType, name: "ARN"))
    UpdateSecretVersionStageResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretNameType, name: "Name"))
    UpdateSecretVersionStageResponse.type = Types::UpdateSecretVersionStageResponse
    ValidateResourcePolicyRequest.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretIdType, name: "SecretId"))
    ValidateResourcePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyResourcePolicyType, name: "ResourcePolicy", traits: {"smithy.api#required" => {}}))
    ValidateResourcePolicyRequest.type = Types::ValidateResourcePolicyRequest
    ValidateResourcePolicyResponse.add_member(:policy_validation_passed, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PolicyValidationPassed", traits: {"smithy.api#default" => false}))
    ValidateResourcePolicyResponse.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorsType, name: "ValidationErrors"))
    ValidateResourcePolicyResponse.type = Types::ValidateResourcePolicyResponse
    ValidationErrorsEntry.add_member(:check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "CheckName"))
    ValidationErrorsEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    ValidationErrorsEntry.type = Types::ValidationErrorsEntry
    ValidationErrorsType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorsEntry, name: "member"))

    Secretsmanager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.secretsmanager#secretsmanager"
      service.name = "Secretsmanager"
      service.version = "2017-10-17"
      service.traits = {"aws.api#service" => {"sdkId" => "Secrets Manager", "arnNamespace" => "secretsmanager", "cloudFormationName" => "SecretsManager", "cloudTrailEventSource" => "secretsmanager.amazonaws.com", "docId" => "secretsmanager-2017-10-17", "endpointPrefix" => "secretsmanager"}, "aws.auth#sigv4" => {"name" => "secretsmanager"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Secrets Manager", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager-fips.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager.{Region}.amazonaws.com.cn", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://secretsmanager.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 18, "nodes" => "/////wAAAAH/////AAAAAAAAABEAAAADAAAAAQAAAAQF9eEOAAAAAgAAAAUF9eEOAAAAAwAAAAsAAAAGAAAABAAAAAcF9eENAAAABQAAAAgF9eEMAAAABwX14QkAAAAJAAAACAX14QoAAAAKAAAACQX14QkF9eELAAAABAAAAA0AAAAMAAAABgX14QcF9eEIAAAABQAAAA4F9eEGAAAABgAAAA8F9eEGAAAABwX14QQAAAAQAAAACQX14QQF9eEFAAAAAwX14QEAAAASAAAABAX14QIF9eED"}}
      service.add_operation(:batch_get_secret_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#BatchGetSecretValue"
        operation.name = "BatchGetSecretValue"
        operation.input = BatchGetSecretValueRequest
        operation.output = BatchGetSecretValueResponse
        operation.errors << DecryptionFailure
        operation.errors << InternalServiceError
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::BatchGetSecretValue.new
      end)
      service.add_operation(:cancel_rotate_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#CancelRotateSecret"
        operation.name = "CancelRotateSecret"
        operation.input = CancelRotateSecretRequest
        operation.output = CancelRotateSecretResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#CreateSecret"
        operation.name = "CreateSecret"
        operation.input = CreateSecretRequest
        operation.output = CreateSecretResponse
        operation.errors << DecryptionFailure
        operation.errors << EncryptionFailure
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#DeleteSecret"
        operation.name = "DeleteSecret"
        operation.input = DeleteSecretRequest
        operation.output = DeleteSecretResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#DescribeSecret"
        operation.name = "DescribeSecret"
        operation.input = DescribeSecretRequest
        operation.output = DescribeSecretResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeSecretFailure", "params" => {"SecretId" => "fake-secret-id"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_random_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#GetRandomPassword"
        operation.name = "GetRandomPassword"
        operation.input = GetRandomPasswordRequest
        operation.output = GetRandomPasswordResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_secret_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#GetSecretValue"
        operation.name = "GetSecretValue"
        operation.input = GetSecretValueRequest
        operation.output = GetSecretValueResponse
        operation.errors << DecryptionFailure
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_secret_version_ids, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#ListSecretVersionIds"
        operation.name = "ListSecretVersionIds"
        operation.input = ListSecretVersionIdsRequest
        operation.output = ListSecretVersionIdsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSecretVersionIds.new
      end)
      service.add_operation(:list_secrets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#ListSecrets"
        operation.name = "ListSecrets"
        operation.input = ListSecretsRequest
        operation.output = ListSecretsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListSecretsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListSecrets.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PublicPolicyException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_secret_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#PutSecretValue"
        operation.name = "PutSecretValue"
        operation.input = PutSecretValueRequest
        operation.output = PutSecretValueResponse
        operation.errors << DecryptionFailure
        operation.errors << EncryptionFailure
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:remove_regions_from_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#RemoveRegionsFromReplication"
        operation.name = "RemoveRegionsFromReplication"
        operation.input = RemoveRegionsFromReplicationRequest
        operation.output = RemoveRegionsFromReplicationResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:replicate_secret_to_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#ReplicateSecretToRegions"
        operation.name = "ReplicateSecretToRegions"
        operation.input = ReplicateSecretToRegionsRequest
        operation.output = ReplicateSecretToRegionsResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:restore_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#RestoreSecret"
        operation.name = "RestoreSecret"
        operation.input = RestoreSecretRequest
        operation.output = RestoreSecretResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:rotate_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#RotateSecret"
        operation.name = "RotateSecret"
        operation.input = RotateSecretRequest
        operation.output = RotateSecretResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_replication_to_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#StopReplicationToReplica"
        operation.name = "StopReplicationToReplica"
        operation.input = StopReplicationToReplicaRequest
        operation.output = StopReplicationToReplicaResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#UpdateSecret"
        operation.name = "UpdateSecret"
        operation.input = UpdateSecretRequest
        operation.output = UpdateSecretResponse
        operation.errors << DecryptionFailure
        operation.errors << EncryptionFailure
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << PreconditionNotMetException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_secret_version_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#UpdateSecretVersionStage"
        operation.name = "UpdateSecretVersionStage"
        operation.input = UpdateSecretVersionStageRequest
        operation.output = UpdateSecretVersionStageResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:validate_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.secretsmanager#ValidateResourcePolicy"
        operation.name = "ValidateResourcePolicy"
        operation.input = ValidateResourcePolicyRequest
        operation.output = ValidateResourcePolicyResponse
        operation.errors << InternalServiceError
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << ResourceNotFoundException
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
