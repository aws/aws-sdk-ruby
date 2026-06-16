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
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PutRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#PutRecordRequest", name: "PutRecordRequest")
    Record = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#Record", name: "Record", traits: {"smithy.api#length" => {"min" => 1}})
    RecordIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#RecordIdentifiers", name: "RecordIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ResourceNotFound", name: "ResourceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUnavailable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ServiceUnavailable", name: "ServiceUnavailable", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    TargetStore = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TargetStore", name: "TargetStore")
    TargetStores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TargetStores", name: "TargetStores", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    TtlDuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDuration", name: "TtlDuration")
    TtlDurationUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationUnit", name: "TtlDurationUnit")
    TtlDurationValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationValue", name: "TtlDurationValue", traits: {"smithy.api#range" => {"min" => 1}})
    UnprocessedIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#UnprocessedIdentifiers", name: "UnprocessedIdentifiers", traits: {"smithy.api#length" => {"min" => 0}})
    ValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValidationError", name: "ValidationError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueAsString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValueAsString", name: "ValueAsString", traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}, "smithy.api#pattern" => ".*"})
    ValueAsStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerfeaturestoreruntime#ValueAsStringList", name: "ValueAsStringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}})

    AccessForbidden.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    AccessForbidden.type = Types::AccessForbidden
    BatchGetRecordError.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "ErrorCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "ErrorMessage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordError.type = Types::BatchGetRecordError
    BatchGetRecordErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordError)
    BatchGetRecordIdentifier.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, location_name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:record_identifiers_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifiers, location_name: "RecordIdentifiersValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNames, location_name: "FeatureNames"))
    BatchGetRecordIdentifier.type = Types::BatchGetRecordIdentifier
    BatchGetRecordIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifier)
    BatchGetRecordRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifiers, location_name: "Identifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordRequest.add_member(:expiration_time_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimeResponse, location_name: "ExpirationTimeResponse"))
    BatchGetRecordRequest.type = Types::BatchGetRecordRequest
    BatchGetRecordResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordResultDetails, location_name: "Records", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordErrors, location_name: "Errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:unprocessed_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedIdentifiers, location_name: "UnprocessedIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResponse.type = Types::BatchGetRecordResponse
    BatchGetRecordResultDetail.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "FeatureGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, location_name: "Record", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresAt, location_name: "ExpiresAt"))
    BatchGetRecordResultDetail.type = Types::BatchGetRecordResultDetail
    BatchGetRecordResultDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordResultDetail)
    DeleteRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, location_name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "EventTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "EventTime", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, location_name: "TargetStores", traits: {"smithy.api#httpQuery" => "TargetStores"}))
    DeleteRecordRequest.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, location_name: "DeletionMode", traits: {"smithy.api#httpQuery" => "DeletionMode"}))
    DeleteRecordRequest.type = Types::DeleteRecordRequest
    DeletionMode.add_member(:soft_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOFT_DELETE", traits: {"smithy.api#enumValue" => "SoftDelete"}))
    DeletionMode.add_member(:hard_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HARD_DELETE", traits: {"smithy.api#enumValue" => "HardDelete"}))
    ExpirationTimeResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationTimeResponse.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    FeatureNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureName)
    FeatureValue.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureName, location_name: "FeatureName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FeatureValue.add_member(:value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "ValueAsString"))
    FeatureValue.add_member(:value_as_string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsStringList, location_name: "ValueAsStringList"))
    FeatureValue.type = Types::FeatureValue
    GetRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, location_name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:record_identifier_value_as_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString, location_name: "RecordIdentifierValueAsString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNames, location_name: "FeatureNames", traits: {"smithy.api#httpQuery" => "FeatureName"}))
    GetRecordRequest.add_member(:expiration_time_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimeResponse, location_name: "ExpirationTimeResponse", traits: {"smithy.api#httpQuery" => "ExpirationTimeResponse"}))
    GetRecordRequest.type = Types::GetRecordRequest
    GetRecordResponse.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, location_name: "Record"))
    GetRecordResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiresAt, location_name: "ExpiresAt"))
    GetRecordResponse.type = Types::GetRecordResponse
    InternalFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    InternalFailure.type = Types::InternalFailure
    PutRecordRequest.add_member(:feature_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureGroupNameOrArn, location_name: "FeatureGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, location_name: "Record", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:target_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStores, location_name: "TargetStores"))
    PutRecordRequest.add_member(:ttl_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDuration, location_name: "TtlDuration"))
    PutRecordRequest.type = Types::PutRecordRequest
    Record.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureValue)
    RecordIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString)
    ResourceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ResourceNotFound.type = Types::ResourceNotFound
    ServiceUnavailable.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ServiceUnavailable.type = Types::ServiceUnavailable
    TargetStore.add_member(:online_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONLINE_STORE", traits: {"smithy.api#enumValue" => "OnlineStore"}))
    TargetStore.add_member(:offline_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFFLINE_STORE", traits: {"smithy.api#enumValue" => "OfflineStore"}))
    TargetStores.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStore)
    TtlDuration.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDurationUnit, location_name: "Unit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TtlDuration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TtlDurationValue, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TtlDuration.type = Types::TtlDuration
    TtlDurationUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    TtlDurationUnit.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MINUTES", traits: {"smithy.api#enumValue" => "Minutes"}))
    TtlDurationUnit.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "Hours"}))
    TtlDurationUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAYS", traits: {"smithy.api#enumValue" => "Days"}))
    TtlDurationUnit.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEEKS", traits: {"smithy.api#enumValue" => "Weeks"}))
    UnprocessedIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRecordIdentifier)
    ValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ValidationError.type = Types::ValidationError
    ValueAsStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValueAsString)

    AmazonSageMakerFeatureStoreRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerfeaturestoreruntime#AmazonSageMakerFeatureStoreRuntime"
      service.name = "AmazonSageMakerFeatureStoreRuntime"
      service.version = "2020-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker FeatureStore Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerFeatureStoreRuntime", "cloudTrailEventSource" => "sagemakerfeaturestoreruntime.amazonaws.com", "endpointPrefix" => "featurestore-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Feature Store Runtime"}
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
