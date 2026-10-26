# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerFeatureStoreRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessForbidden = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#AccessForbidden", name: "AccessForbidden", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchGetRecordError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordError", name: "BatchGetRecordError")
    BatchGetRecordErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordErrors", name: "BatchGetRecordErrors", traits: {"smithy.api#length" => {"min" => 0}})
    BatchGetRecordIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordIdentifier", name: "BatchGetRecordIdentifier")
    BatchGetRecordIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordIdentifiers", name: "BatchGetRecordIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchGetRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordRequest", name: "BatchGetRecordRequest")
    BatchGetRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResponse", name: "BatchGetRecordResponse")
    BatchGetRecordResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResultDetail", name: "BatchGetRecordResultDetail")
    BatchGetRecordResultDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResultDetails", name: "BatchGetRecordResultDetails", traits: {"smithy.api#length" => {"min" => 0}})
    BatchWriteRecordEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordEntries", name: "BatchWriteRecordEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BatchWriteRecordEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordEntry", name: "BatchWriteRecordEntry")
    BatchWriteRecordError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordError", name: "BatchWriteRecordError")
    BatchWriteRecordErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordErrors", name: "BatchWriteRecordErrors", traits: {"smithy.api#length" => {"min" => 0}})
    BatchWriteRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordRequest", name: "BatchWriteRecordRequest")
    BatchWriteRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecordResponse", name: "BatchWriteRecordResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#Boolean", name: "Boolean")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeleteRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#DeleteRecordRequest", name: "DeleteRecordRequest")
    DeletionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#DeletionMode", name: "DeletionMode")
    ExpirationTimeResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ExpirationTimeResponse", name: "ExpirationTimeResponse")
    ExpiresAt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ExpiresAt", name: "ExpiresAt")
    FeatureGroupNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#FeatureGroupNameOrArn", name: "FeatureGroupNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$"})
    FeatureName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#FeatureName", name: "FeatureName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63}$"})
    FeatureNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#FeatureNames", name: "FeatureNames", traits: {"smithy.api#length" => {"min" => 1}})
    FeatureValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#FeatureValue", name: "FeatureValue")
    GetRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#GetRecordRequest", name: "GetRecordRequest")
    GetRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#GetRecordResponse", name: "GetRecordResponse")
    InternalFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#InternalFailure", name: "InternalFailure", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRecordsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ListRecordsMaxResults", name: "ListRecordsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListRecordsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ListRecordsNextToken", name: "ListRecordsNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ListRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ListRecordsRequest", name: "ListRecordsRequest")
    ListRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ListRecordsResponse", name: "ListRecordsResponse")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PutRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#PutRecordRequest", name: "PutRecordRequest")
    Record = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#Record", name: "Record", traits: {"smithy.api#length" => {"min" => 1}})
    RecordIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#RecordIdentifierList", name: "RecordIdentifierList")
    RecordIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#RecordIdentifiers", name: "RecordIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ResourceNotFound", name: "ResourceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ServiceUnavailable", name: "ServiceUnavailable", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    TargetStore = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TargetStore", name: "TargetStore")
    TargetStores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TargetStores", name: "TargetStores", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    TtlDuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDuration", name: "TtlDuration")
    TtlDurationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationUnit", name: "TtlDurationUnit")
    TtlDurationValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationValue", name: "TtlDurationValue", traits: {"smithy.api#range" => {"min" => 1}})
    UnprocessedBatchWriteRecordEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#UnprocessedBatchWriteRecordEntries", name: "UnprocessedBatchWriteRecordEntries", traits: {"smithy.api#length" => {"min" => 0}})
    UnprocessedIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#UnprocessedIdentifiers", name: "UnprocessedIdentifiers", traits: {"smithy.api#length" => {"min" => 0}})
    UpdateRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#UpdateRecordRequest", name: "UpdateRecordRequest")
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValidationError", name: "ValidationError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueAsString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValueAsString", name: "ValueAsString", traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}, "smithy.api#pattern" => ".*"})
    ValueAsStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValueAsStringList", name: "ValueAsStringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}})

    AccessForbidden.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessForbidden.type = Types::AccessForbidden
    BatchGetRecordError.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "ErrorCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "ErrorMessage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.type = Types::BatchGetRecordError
    BatchGetRecordErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordError, name: "member"))
    BatchGetRecordIdentifier.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:record_identifiers_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifiers, name: "RecordIdentifiersValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNames, name: "FeatureNames"))
    BatchGetRecordIdentifier.type = Types::BatchGetRecordIdentifier
    BatchGetRecordIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifier, name: "member"))
    BatchGetRecordRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifiers, name: "Identifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordRequest.add_member(:expiration_time_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimeResponse, name: "ExpirationTimeResponse"))
    BatchGetRecordRequest.type = Types::BatchGetRecordRequest
    BatchGetRecordResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordResultDetails, name: "Records", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordErrors, name: "Errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:unprocessed_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedIdentifiers, name: "UnprocessedIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.type = Types::BatchGetRecordResponse
    BatchGetRecordResultDetail.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresAt, name: "ExpiresAt"))
    BatchGetRecordResultDetail.type = Types::BatchGetRecordResultDetail
    BatchGetRecordResultDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordResultDetail, name: "member"))
    BatchWriteRecordEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordEntry, name: "member"))
    BatchWriteRecordEntry.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordEntry.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordEntry.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, name: "TargetStores"))
    BatchWriteRecordEntry.add_member(:ttl_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDuration, name: "TtlDuration"))
    BatchWriteRecordEntry.type = Types::BatchWriteRecordEntry
    BatchWriteRecordError.add_member(:entry, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordEntry, name: "Entry", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "ErrorCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "ErrorMessage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordError.type = Types::BatchWriteRecordError
    BatchWriteRecordErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordError, name: "member"))
    BatchWriteRecordRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordEntries, name: "Entries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordRequest.add_member(:ttl_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDuration, name: "TtlDuration"))
    BatchWriteRecordRequest.type = Types::BatchWriteRecordRequest
    BatchWriteRecordResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordErrors, name: "Errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordResponse.add_member(:unprocessed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedBatchWriteRecordEntries, name: "UnprocessedEntries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchWriteRecordResponse.type = Types::BatchWriteRecordResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConflictException.type = Types::ConflictException
    DeleteRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "EventTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "EventTime", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, name: "TargetStores", traits: {"smithy.api#httpQuery" => "TargetStores"}))
    DeleteRecordRequest.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, name: "DeletionMode", traits: {"smithy.api#httpQuery" => "DeletionMode"}))
    DeleteRecordRequest.type = Types::DeleteRecordRequest
    DeletionMode.add_member(:soft_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFT_DELETE", traits: {"smithy.api#enumValue" => "SoftDelete"}))
    DeletionMode.add_member(:hard_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARD_DELETE", traits: {"smithy.api#enumValue" => "HardDelete"}))
    ExpirationTimeResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationTimeResponse.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    FeatureNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureName, name: "member"))
    FeatureValue.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureName, name: "FeatureName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FeatureValue.add_member(:value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "ValueAsString"))
    FeatureValue.add_member(:value_as_string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsStringList, name: "ValueAsStringList"))
    FeatureValue.type = Types::FeatureValue
    GetRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNames, name: "FeatureNames", traits: {"smithy.api#httpQuery" => "FeatureName"}))
    GetRecordRequest.add_member(:expiration_time_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimeResponse, name: "ExpirationTimeResponse", traits: {"smithy.api#httpQuery" => "ExpirationTimeResponse"}))
    GetRecordRequest.type = Types::GetRecordRequest
    GetRecordResponse.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record"))
    GetRecordResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresAt, name: "ExpiresAt"))
    GetRecordResponse.type = Types::GetRecordResponse
    InternalFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalFailure.type = Types::InternalFailure
    ListRecordsRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecordsMaxResults, name: "MaxResults"))
    ListRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecordsNextToken, name: "NextToken"))
    ListRecordsRequest.add_member(:include_soft_deleted_records, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeSoftDeletedRecords"))
    ListRecordsRequest.type = Types::ListRecordsRequest
    ListRecordsResponse.add_member(:record_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifierList, name: "RecordIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecordsNextToken, name: "NextToken"))
    ListRecordsResponse.type = Types::ListRecordsResponse
    PutRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, name: "TargetStores"))
    PutRecordRequest.add_member(:ttl_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDuration, name: "TtlDuration"))
    PutRecordRequest.type = Types::PutRecordRequest
    Record.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureValue, name: "member"))
    RecordIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "member"))
    RecordIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "member"))
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFound.type = Types::ResourceNotFound
    ServiceUnavailable.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ServiceUnavailable.type = Types::ServiceUnavailable
    TargetStore.add_member(:online_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLINE_STORE", traits: {"smithy.api#enumValue" => "OnlineStore"}))
    TargetStore.add_member(:offline_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFLINE_STORE", traits: {"smithy.api#enumValue" => "OfflineStore"}))
    TargetStores.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStore, name: "member"))
    TtlDuration.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDurationUnit, name: "Unit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TtlDuration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDurationValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TtlDuration.type = Types::TtlDuration
    TtlDurationUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    TtlDurationUnit.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "Minutes"}))
    TtlDurationUnit.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "Hours"}))
    TtlDurationUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "Days"}))
    TtlDurationUnit.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKS", traits: {"smithy.api#enumValue" => "Weeks"}))
    UnprocessedBatchWriteRecordEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteRecordEntry, name: "member"))
    UnprocessedIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifier, name: "member"))
    UpdateRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecordRequest.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRecordRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Features", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRecordRequest.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, name: "TargetStores"))
    UpdateRecordRequest.add_member(:ttl_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDuration, name: "TtlDuration"))
    UpdateRecordRequest.type = Types::UpdateRecordRequest
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ValidationError.type = Types::ValidationError
    ValueAsStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, name: "member"))

    AmazonSageMakerFeatureStoreRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerfeaturestoreruntime#AmazonSageMakerFeatureStoreRuntime"
      service.name = "AmazonSageMakerFeatureStoreRuntime"
      service.version = "2020-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker FeatureStore Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerFeatureStoreRuntime", "cloudTrailEventSource" => "sagemakerfeaturestoreruntime.amazonaws.com", "endpointPrefix" => "featurestore-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Feature Store Runtime", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://featurestore-runtime.sagemaker-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://featurestore-runtime.sagemaker-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://featurestore-runtime.sagemaker.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://featurestore-runtime.sagemaker.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_get_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecord"
        operation.name = "BatchGetRecord"
        operation.input = BatchGetRecordRequest
        operation.output = BatchGetRecordResponse
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetRecord", "code" => 200}}
      end)
      service.add_operation(:batch_write_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#BatchWriteRecord"
        operation.name = "BatchWriteRecord"
        operation.input = BatchWriteRecordRequest
        operation.output = BatchWriteRecordResponse
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ResourceNotFound
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchWriteRecord", "code" => 200}}
      end)
      service.add_operation(:delete_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#DeleteRecord"
        operation.name = "DeleteRecord"
        operation.input = DeleteRecordRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
      end)
      service.add_operation(:get_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#GetRecord"
        operation.name = "GetRecord"
        operation.input = GetRecordRequest
        operation.output = GetRecordResponse
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ResourceNotFound
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
      end)
      service.add_operation(:list_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#ListRecords"
        operation.name = "ListRecords"
        operation.input = ListRecordsRequest
        operation.output = ListRecordsResponse
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ResourceNotFound
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/FeatureGroup/{FeatureGroupName}/ListRecords", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecords.new
      end)
      service.add_operation(:put_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#PutRecord"
        operation.name = "PutRecord"
        operation.input = PutRecordRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessForbidden
        operation.errors << InternalFailure
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
      end)
      service.add_operation(:update_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#UpdateRecord"
        operation.name = "UpdateRecord"
        operation.input = UpdateRecordRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessForbidden
        operation.errors << ConflictException
        operation.errors << InternalFailure
        operation.errors << ResourceNotFound
        operation.errors << ServiceUnavailable
        operation.errors << ValidationError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/FeatureGroup/{FeatureGroupName}/Record", "code" => 200}}
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
