# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecretsManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AutomaticallyRotateAfterDaysType = Shapes::IntegerShape.new(name: 'AutomaticallyRotateAfterDaysType')
    BooleanType = Shapes::BooleanShape.new(name: 'BooleanType')
    CancelRotateSecretRequest = Shapes::StructureShape.new(name: 'CancelRotateSecretRequest')
    CancelRotateSecretResponse = Shapes::StructureShape.new(name: 'CancelRotateSecretResponse')
    ClientRequestTokenType = Shapes::StringShape.new(name: 'ClientRequestTokenType')
    CreateSecretRequest = Shapes::StructureShape.new(name: 'CreateSecretRequest')
    CreateSecretResponse = Shapes::StructureShape.new(name: 'CreateSecretResponse')
    CreatedDateType = Shapes::TimestampShape.new(name: 'CreatedDateType')
    DecryptionFailure = Shapes::StructureShape.new(name: 'DecryptionFailure')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteSecretRequest = Shapes::StructureShape.new(name: 'DeleteSecretRequest')
    DeleteSecretResponse = Shapes::StructureShape.new(name: 'DeleteSecretResponse')
    DeletedDateType = Shapes::TimestampShape.new(name: 'DeletedDateType')
    DeletionDateType = Shapes::TimestampShape.new(name: 'DeletionDateType')
    DescribeSecretRequest = Shapes::StructureShape.new(name: 'DescribeSecretRequest')
    DescribeSecretResponse = Shapes::StructureShape.new(name: 'DescribeSecretResponse')
    DescriptionType = Shapes::StringShape.new(name: 'DescriptionType')
    EncryptionFailure = Shapes::StructureShape.new(name: 'EncryptionFailure')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExcludeCharactersType = Shapes::StringShape.new(name: 'ExcludeCharactersType')
    ExcludeLowercaseType = Shapes::BooleanShape.new(name: 'ExcludeLowercaseType')
    ExcludeNumbersType = Shapes::BooleanShape.new(name: 'ExcludeNumbersType')
    ExcludePunctuationType = Shapes::BooleanShape.new(name: 'ExcludePunctuationType')
    ExcludeUppercaseType = Shapes::BooleanShape.new(name: 'ExcludeUppercaseType')
    GetRandomPasswordRequest = Shapes::StructureShape.new(name: 'GetRandomPasswordRequest')
    GetRandomPasswordResponse = Shapes::StructureShape.new(name: 'GetRandomPasswordResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetSecretValueRequest = Shapes::StructureShape.new(name: 'GetSecretValueRequest')
    GetSecretValueResponse = Shapes::StructureShape.new(name: 'GetSecretValueResponse')
    IncludeSpaceType = Shapes::BooleanShape.new(name: 'IncludeSpaceType')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KmsKeyIdType = Shapes::StringShape.new(name: 'KmsKeyIdType')
    LastAccessedDateType = Shapes::TimestampShape.new(name: 'LastAccessedDateType')
    LastChangedDateType = Shapes::TimestampShape.new(name: 'LastChangedDateType')
    LastRotatedDateType = Shapes::TimestampShape.new(name: 'LastRotatedDateType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListSecretVersionIdsRequest = Shapes::StructureShape.new(name: 'ListSecretVersionIdsRequest')
    ListSecretVersionIdsResponse = Shapes::StructureShape.new(name: 'ListSecretVersionIdsResponse')
    ListSecretsRequest = Shapes::StructureShape.new(name: 'ListSecretsRequest')
    ListSecretsResponse = Shapes::StructureShape.new(name: 'ListSecretsResponse')
    MalformedPolicyDocumentException = Shapes::StructureShape.new(name: 'MalformedPolicyDocumentException')
    MaxResultsType = Shapes::IntegerShape.new(name: 'MaxResultsType')
    NameType = Shapes::StringShape.new(name: 'NameType')
    NextTokenType = Shapes::StringShape.new(name: 'NextTokenType')
    NonEmptyResourcePolicyType = Shapes::StringShape.new(name: 'NonEmptyResourcePolicyType')
    PasswordLengthType = Shapes::IntegerShape.new(name: 'PasswordLengthType')
    PreconditionNotMetException = Shapes::StructureShape.new(name: 'PreconditionNotMetException')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutSecretValueRequest = Shapes::StructureShape.new(name: 'PutSecretValueRequest')
    PutSecretValueResponse = Shapes::StructureShape.new(name: 'PutSecretValueResponse')
    RandomPasswordType = Shapes::StringShape.new(name: 'RandomPasswordType')
    RecoveryWindowInDaysType = Shapes::IntegerShape.new(name: 'RecoveryWindowInDaysType')
    RequireEachIncludedTypeType = Shapes::BooleanShape.new(name: 'RequireEachIncludedTypeType')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreSecretRequest = Shapes::StructureShape.new(name: 'RestoreSecretRequest')
    RestoreSecretResponse = Shapes::StructureShape.new(name: 'RestoreSecretResponse')
    RotateSecretRequest = Shapes::StructureShape.new(name: 'RotateSecretRequest')
    RotateSecretResponse = Shapes::StructureShape.new(name: 'RotateSecretResponse')
    RotationEnabledType = Shapes::BooleanShape.new(name: 'RotationEnabledType')
    RotationLambdaARNType = Shapes::StringShape.new(name: 'RotationLambdaARNType')
    RotationRulesType = Shapes::StructureShape.new(name: 'RotationRulesType')
    SecretARNType = Shapes::StringShape.new(name: 'SecretARNType')
    SecretBinaryType = Shapes::BlobShape.new(name: 'SecretBinaryType')
    SecretIdType = Shapes::StringShape.new(name: 'SecretIdType')
    SecretListEntry = Shapes::StructureShape.new(name: 'SecretListEntry')
    SecretListType = Shapes::ListShape.new(name: 'SecretListType')
    SecretNameType = Shapes::StringShape.new(name: 'SecretNameType')
    SecretStringType = Shapes::StringShape.new(name: 'SecretStringType')
    SecretVersionIdType = Shapes::StringShape.new(name: 'SecretVersionIdType')
    SecretVersionStageType = Shapes::StringShape.new(name: 'SecretVersionStageType')
    SecretVersionStagesType = Shapes::ListShape.new(name: 'SecretVersionStagesType')
    SecretVersionsListEntry = Shapes::StructureShape.new(name: 'SecretVersionsListEntry')
    SecretVersionsListType = Shapes::ListShape.new(name: 'SecretVersionsListType')
    SecretVersionsToStagesMapType = Shapes::MapShape.new(name: 'SecretVersionsToStagesMapType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyListType = Shapes::ListShape.new(name: 'TagKeyListType')
    TagKeyType = Shapes::StringShape.new(name: 'TagKeyType')
    TagListType = Shapes::ListShape.new(name: 'TagListType')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValueType = Shapes::StringShape.new(name: 'TagValueType')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateSecretRequest = Shapes::StructureShape.new(name: 'UpdateSecretRequest')
    UpdateSecretResponse = Shapes::StructureShape.new(name: 'UpdateSecretResponse')
    UpdateSecretVersionStageRequest = Shapes::StructureShape.new(name: 'UpdateSecretVersionStageRequest')
    UpdateSecretVersionStageResponse = Shapes::StructureShape.new(name: 'UpdateSecretVersionStageResponse')

    CancelRotateSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    CancelRotateSecretRequest.struct_class = Types::CancelRotateSecretRequest

    CancelRotateSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    CancelRotateSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    CancelRotateSecretResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    CancelRotateSecretResponse.struct_class = Types::CancelRotateSecretResponse

    CreateSecretRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameType, required: true, location_name: "Name"))
    CreateSecretRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenType, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateSecretRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    CreateSecretRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdType, location_name: "KmsKeyId"))
    CreateSecretRequest.add_member(:secret_binary, Shapes::ShapeRef.new(shape: SecretBinaryType, location_name: "SecretBinary"))
    CreateSecretRequest.add_member(:secret_string, Shapes::ShapeRef.new(shape: SecretStringType, location_name: "SecretString"))
    CreateSecretRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagListType, location_name: "Tags"))
    CreateSecretRequest.struct_class = Types::CreateSecretRequest

    CreateSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    CreateSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    CreateSecretResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    CreateSecretResponse.struct_class = Types::CreateSecretResponse

    DeleteResourcePolicyRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    DeleteResourcePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    DeleteSecretRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: RecoveryWindowInDaysType, location_name: "RecoveryWindowInDays", metadata: {"box"=>true}))
    DeleteSecretRequest.add_member(:force_delete_without_recovery, Shapes::ShapeRef.new(shape: BooleanType, location_name: "ForceDeleteWithoutRecovery", metadata: {"box"=>true}))
    DeleteSecretRequest.struct_class = Types::DeleteSecretRequest

    DeleteSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    DeleteSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    DeleteSecretResponse.add_member(:deletion_date, Shapes::ShapeRef.new(shape: DeletionDateType, location_name: "DeletionDate", metadata: {"box"=>true}))
    DeleteSecretResponse.struct_class = Types::DeleteSecretResponse

    DescribeSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    DescribeSecretRequest.struct_class = Types::DescribeSecretRequest

    DescribeSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    DescribeSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    DescribeSecretResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    DescribeSecretResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdType, location_name: "KmsKeyId"))
    DescribeSecretResponse.add_member(:rotation_enabled, Shapes::ShapeRef.new(shape: RotationEnabledType, location_name: "RotationEnabled", metadata: {"box"=>true}))
    DescribeSecretResponse.add_member(:rotation_lambda_arn, Shapes::ShapeRef.new(shape: RotationLambdaARNType, location_name: "RotationLambdaARN"))
    DescribeSecretResponse.add_member(:rotation_rules, Shapes::ShapeRef.new(shape: RotationRulesType, location_name: "RotationRules"))
    DescribeSecretResponse.add_member(:last_rotated_date, Shapes::ShapeRef.new(shape: LastRotatedDateType, location_name: "LastRotatedDate", metadata: {"box"=>true}))
    DescribeSecretResponse.add_member(:last_changed_date, Shapes::ShapeRef.new(shape: LastChangedDateType, location_name: "LastChangedDate", metadata: {"box"=>true}))
    DescribeSecretResponse.add_member(:last_accessed_date, Shapes::ShapeRef.new(shape: LastAccessedDateType, location_name: "LastAccessedDate", metadata: {"box"=>true}))
    DescribeSecretResponse.add_member(:deleted_date, Shapes::ShapeRef.new(shape: DeletedDateType, location_name: "DeletedDate", metadata: {"box"=>true}))
    DescribeSecretResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagListType, location_name: "Tags"))
    DescribeSecretResponse.add_member(:version_ids_to_stages, Shapes::ShapeRef.new(shape: SecretVersionsToStagesMapType, location_name: "VersionIdsToStages"))
    DescribeSecretResponse.struct_class = Types::DescribeSecretResponse

    GetRandomPasswordRequest.add_member(:password_length, Shapes::ShapeRef.new(shape: PasswordLengthType, location_name: "PasswordLength", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:exclude_characters, Shapes::ShapeRef.new(shape: ExcludeCharactersType, location_name: "ExcludeCharacters"))
    GetRandomPasswordRequest.add_member(:exclude_numbers, Shapes::ShapeRef.new(shape: ExcludeNumbersType, location_name: "ExcludeNumbers", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:exclude_punctuation, Shapes::ShapeRef.new(shape: ExcludePunctuationType, location_name: "ExcludePunctuation", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:exclude_uppercase, Shapes::ShapeRef.new(shape: ExcludeUppercaseType, location_name: "ExcludeUppercase", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:exclude_lowercase, Shapes::ShapeRef.new(shape: ExcludeLowercaseType, location_name: "ExcludeLowercase", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:include_space, Shapes::ShapeRef.new(shape: IncludeSpaceType, location_name: "IncludeSpace", metadata: {"box"=>true}))
    GetRandomPasswordRequest.add_member(:require_each_included_type, Shapes::ShapeRef.new(shape: RequireEachIncludedTypeType, location_name: "RequireEachIncludedType", metadata: {"box"=>true}))
    GetRandomPasswordRequest.struct_class = Types::GetRandomPasswordRequest

    GetRandomPasswordResponse.add_member(:random_password, Shapes::ShapeRef.new(shape: RandomPasswordType, location_name: "RandomPassword"))
    GetRandomPasswordResponse.struct_class = Types::GetRandomPasswordResponse

    GetResourcePolicyRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    GetResourcePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    GetResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: NonEmptyResourcePolicyType, location_name: "ResourcePolicy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetSecretValueRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    GetSecretValueRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    GetSecretValueRequest.add_member(:version_stage, Shapes::ShapeRef.new(shape: SecretVersionStageType, location_name: "VersionStage"))
    GetSecretValueRequest.struct_class = Types::GetSecretValueRequest

    GetSecretValueResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    GetSecretValueResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    GetSecretValueResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    GetSecretValueResponse.add_member(:secret_binary, Shapes::ShapeRef.new(shape: SecretBinaryType, location_name: "SecretBinary"))
    GetSecretValueResponse.add_member(:secret_string, Shapes::ShapeRef.new(shape: SecretStringType, location_name: "SecretString"))
    GetSecretValueResponse.add_member(:version_stages, Shapes::ShapeRef.new(shape: SecretVersionStagesType, location_name: "VersionStages"))
    GetSecretValueResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDateType, location_name: "CreatedDate", metadata: {"box"=>true}))
    GetSecretValueResponse.struct_class = Types::GetSecretValueResponse

    ListSecretVersionIdsRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    ListSecretVersionIdsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "MaxResults", metadata: {"box"=>true}))
    ListSecretVersionIdsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenType, location_name: "NextToken"))
    ListSecretVersionIdsRequest.add_member(:include_deprecated, Shapes::ShapeRef.new(shape: BooleanType, location_name: "IncludeDeprecated", metadata: {"box"=>true}))
    ListSecretVersionIdsRequest.struct_class = Types::ListSecretVersionIdsRequest

    ListSecretVersionIdsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: SecretVersionsListType, location_name: "Versions"))
    ListSecretVersionIdsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenType, location_name: "NextToken"))
    ListSecretVersionIdsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    ListSecretVersionIdsResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    ListSecretVersionIdsResponse.struct_class = Types::ListSecretVersionIdsResponse

    ListSecretsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "MaxResults", metadata: {"box"=>true}))
    ListSecretsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenType, location_name: "NextToken"))
    ListSecretsRequest.struct_class = Types::ListSecretsRequest

    ListSecretsResponse.add_member(:secret_list, Shapes::ShapeRef.new(shape: SecretListType, location_name: "SecretList"))
    ListSecretsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenType, location_name: "NextToken"))
    ListSecretsResponse.struct_class = Types::ListSecretsResponse

    PutResourcePolicyRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    PutResourcePolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: NonEmptyResourcePolicyType, required: true, location_name: "ResourcePolicy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    PutResourcePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutSecretValueRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    PutSecretValueRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenType, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    PutSecretValueRequest.add_member(:secret_binary, Shapes::ShapeRef.new(shape: SecretBinaryType, location_name: "SecretBinary"))
    PutSecretValueRequest.add_member(:secret_string, Shapes::ShapeRef.new(shape: SecretStringType, location_name: "SecretString"))
    PutSecretValueRequest.add_member(:version_stages, Shapes::ShapeRef.new(shape: SecretVersionStagesType, location_name: "VersionStages"))
    PutSecretValueRequest.struct_class = Types::PutSecretValueRequest

    PutSecretValueResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    PutSecretValueResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    PutSecretValueResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    PutSecretValueResponse.add_member(:version_stages, Shapes::ShapeRef.new(shape: SecretVersionStagesType, location_name: "VersionStages"))
    PutSecretValueResponse.struct_class = Types::PutSecretValueResponse

    RestoreSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    RestoreSecretRequest.struct_class = Types::RestoreSecretRequest

    RestoreSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    RestoreSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    RestoreSecretResponse.struct_class = Types::RestoreSecretResponse

    RotateSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    RotateSecretRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenType, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    RotateSecretRequest.add_member(:rotation_lambda_arn, Shapes::ShapeRef.new(shape: RotationLambdaARNType, location_name: "RotationLambdaARN"))
    RotateSecretRequest.add_member(:rotation_rules, Shapes::ShapeRef.new(shape: RotationRulesType, location_name: "RotationRules"))
    RotateSecretRequest.struct_class = Types::RotateSecretRequest

    RotateSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    RotateSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    RotateSecretResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId", metadata: {"box"=>true}))
    RotateSecretResponse.struct_class = Types::RotateSecretResponse

    RotationRulesType.add_member(:automatically_after_days, Shapes::ShapeRef.new(shape: AutomaticallyRotateAfterDaysType, location_name: "AutomaticallyAfterDays", metadata: {"box"=>true}))
    RotationRulesType.struct_class = Types::RotationRulesType

    SecretListEntry.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    SecretListEntry.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    SecretListEntry.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    SecretListEntry.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdType, location_name: "KmsKeyId"))
    SecretListEntry.add_member(:rotation_enabled, Shapes::ShapeRef.new(shape: RotationEnabledType, location_name: "RotationEnabled", metadata: {"box"=>true}))
    SecretListEntry.add_member(:rotation_lambda_arn, Shapes::ShapeRef.new(shape: RotationLambdaARNType, location_name: "RotationLambdaARN"))
    SecretListEntry.add_member(:rotation_rules, Shapes::ShapeRef.new(shape: RotationRulesType, location_name: "RotationRules"))
    SecretListEntry.add_member(:last_rotated_date, Shapes::ShapeRef.new(shape: LastRotatedDateType, location_name: "LastRotatedDate", metadata: {"box"=>true}))
    SecretListEntry.add_member(:last_changed_date, Shapes::ShapeRef.new(shape: LastChangedDateType, location_name: "LastChangedDate", metadata: {"box"=>true}))
    SecretListEntry.add_member(:last_accessed_date, Shapes::ShapeRef.new(shape: LastAccessedDateType, location_name: "LastAccessedDate", metadata: {"box"=>true}))
    SecretListEntry.add_member(:deleted_date, Shapes::ShapeRef.new(shape: DeletedDateType, location_name: "DeletedDate"))
    SecretListEntry.add_member(:tags, Shapes::ShapeRef.new(shape: TagListType, location_name: "Tags"))
    SecretListEntry.add_member(:secret_versions_to_stages, Shapes::ShapeRef.new(shape: SecretVersionsToStagesMapType, location_name: "SecretVersionsToStages"))
    SecretListEntry.struct_class = Types::SecretListEntry

    SecretListType.member = Shapes::ShapeRef.new(shape: SecretListEntry)

    SecretVersionStagesType.member = Shapes::ShapeRef.new(shape: SecretVersionStageType)

    SecretVersionsListEntry.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    SecretVersionsListEntry.add_member(:version_stages, Shapes::ShapeRef.new(shape: SecretVersionStagesType, location_name: "VersionStages"))
    SecretVersionsListEntry.add_member(:last_accessed_date, Shapes::ShapeRef.new(shape: LastAccessedDateType, location_name: "LastAccessedDate", metadata: {"box"=>true}))
    SecretVersionsListEntry.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDateType, location_name: "CreatedDate", metadata: {"box"=>true}))
    SecretVersionsListEntry.struct_class = Types::SecretVersionsListEntry

    SecretVersionsListType.member = Shapes::ShapeRef.new(shape: SecretVersionsListEntry)

    SecretVersionsToStagesMapType.key = Shapes::ShapeRef.new(shape: SecretVersionIdType)
    SecretVersionsToStagesMapType.value = Shapes::ShapeRef.new(shape: SecretVersionStagesType)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKeyType, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValueType, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyListType.member = Shapes::ShapeRef.new(shape: TagKeyType)

    TagListType.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagListType, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    UntagResourceRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyListType, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateSecretRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    UpdateSecretRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenType, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateSecretRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    UpdateSecretRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdType, location_name: "KmsKeyId"))
    UpdateSecretRequest.add_member(:secret_binary, Shapes::ShapeRef.new(shape: SecretBinaryType, location_name: "SecretBinary"))
    UpdateSecretRequest.add_member(:secret_string, Shapes::ShapeRef.new(shape: SecretStringType, location_name: "SecretString"))
    UpdateSecretRequest.struct_class = Types::UpdateSecretRequest

    UpdateSecretResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    UpdateSecretResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    UpdateSecretResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "VersionId"))
    UpdateSecretResponse.struct_class = Types::UpdateSecretResponse

    UpdateSecretVersionStageRequest.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "SecretId"))
    UpdateSecretVersionStageRequest.add_member(:version_stage, Shapes::ShapeRef.new(shape: SecretVersionStageType, required: true, location_name: "VersionStage"))
    UpdateSecretVersionStageRequest.add_member(:remove_from_version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "RemoveFromVersionId", metadata: {"box"=>true}))
    UpdateSecretVersionStageRequest.add_member(:move_to_version_id, Shapes::ShapeRef.new(shape: SecretVersionIdType, location_name: "MoveToVersionId", metadata: {"box"=>true}))
    UpdateSecretVersionStageRequest.struct_class = Types::UpdateSecretVersionStageRequest

    UpdateSecretVersionStageResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SecretARNType, location_name: "ARN"))
    UpdateSecretVersionStageResponse.add_member(:name, Shapes::ShapeRef.new(shape: SecretNameType, location_name: "Name"))
    UpdateSecretVersionStageResponse.struct_class = Types::UpdateSecretVersionStageResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-17"

      api.metadata = {
        "apiVersion" => "2017-10-17",
        "endpointPrefix" => "secretsmanager",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Secrets Manager",
        "serviceId" => "Secrets Manager",
        "signatureVersion" => "v4",
        "signingName" => "secretsmanager",
        "targetPrefix" => "secretsmanager",
        "uid" => "secretsmanager-2017-10-17",
      }

      api.add_operation(:cancel_rotate_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelRotateSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelRotateSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelRotateSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:describe_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:get_random_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRandomPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRandomPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRandomPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_secret_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecretValue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSecretValueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSecretValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:list_secret_version_ids, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecretVersionIds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSecretVersionIdsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecretVersionIdsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_secrets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecrets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSecretsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecretsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:put_secret_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSecretValue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSecretValueRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSecretValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:restore_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:rotate_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RotateSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RotateSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: RotateSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)

      api.add_operation(:update_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecret"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
      end)

      api.add_operation(:update_secret_version_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecretVersionStage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecretVersionStageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecretVersionStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
      end)
    end

  end
end
