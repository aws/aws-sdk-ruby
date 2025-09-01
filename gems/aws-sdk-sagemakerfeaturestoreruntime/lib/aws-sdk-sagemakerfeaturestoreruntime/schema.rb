# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerFeatureStoreRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessForbidden = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#AccessForbidden', name: 'AccessForbidden', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchGetRecordError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordError', name: 'BatchGetRecordError')
    BatchGetRecordErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordErrors', name: 'BatchGetRecordErrors', traits: {"smithy.api#length" => {"min" => 0}})
    BatchGetRecordIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordIdentifier', name: 'BatchGetRecordIdentifier')
    BatchGetRecordIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordIdentifiers', name: 'BatchGetRecordIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchGetRecordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordRequest', name: 'BatchGetRecordRequest')
    BatchGetRecordResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResponse', name: 'BatchGetRecordResponse')
    BatchGetRecordResultDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResultDetail', name: 'BatchGetRecordResultDetail')
    BatchGetRecordResultDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecordResultDetails', name: 'BatchGetRecordResultDetails', traits: {"smithy.api#length" => {"min" => 0}})
    DeleteRecordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#DeleteRecordRequest', name: 'DeleteRecordRequest')
    DeletionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#DeletionMode', name: 'DeletionMode')
    ExpirationTimeResponse = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ExpirationTimeResponse', name: 'ExpirationTimeResponse')
    ExpiresAt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ExpiresAt', name: 'ExpiresAt')
    FeatureGroupNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#FeatureGroupNameOrArn', name: 'FeatureGroupNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$"})
    FeatureName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#FeatureName', name: 'FeatureName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63}$"})
    FeatureNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#FeatureNames', name: 'FeatureNames', traits: {"smithy.api#length" => {"min" => 1}})
    FeatureValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#FeatureValue', name: 'FeatureValue')
    GetRecordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#GetRecordRequest', name: 'GetRecordRequest')
    GetRecordResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#GetRecordResponse', name: 'GetRecordResponse')
    InternalFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#InternalFailure', name: 'InternalFailure', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    PutRecordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#PutRecordRequest', name: 'PutRecordRequest')
    Record = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#Record', name: 'Record', traits: {"smithy.api#length" => {"min" => 1}})
    RecordIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#RecordIdentifiers', name: 'RecordIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ResourceNotFound', name: 'ResourceNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUnavailable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ServiceUnavailable', name: 'ServiceUnavailable', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    TargetStore = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#TargetStore', name: 'TargetStore')
    TargetStores = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#TargetStores', name: 'TargetStores', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    TtlDuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#TtlDuration', name: 'TtlDuration')
    TtlDurationUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationUnit', name: 'TtlDurationUnit')
    TtlDurationValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#TtlDurationValue', name: 'TtlDurationValue', traits: {"smithy.api#range" => {"min" => 1}})
    UnprocessedIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#UnprocessedIdentifiers', name: 'UnprocessedIdentifiers', traits: {"smithy.api#length" => {"min" => 0}})
    ValidationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ValidationError', name: 'ValidationError', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueAsString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ValueAsString', name: 'ValueAsString', traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}, "smithy.api#pattern" => ".*"})
    ValueAsStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakerfeaturestoreruntime#ValueAsStringList', name: 'ValueAsStringList', traits: {"smithy.api#length" => {"min" => 0, "max" => 358400}})

    AccessForbidden.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AccessForbidden.type = Types::AccessForbidden
    BatchGetRecordError.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'FeatureGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the feature group that the record belongs to.</p>", "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:record_identifier_value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'RecordIdentifierValueAsString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value for the <code>RecordIdentifier</code> in string format of a Record from a\n            <code>FeatureGroup</code> that is causing an error when attempting to be\n         retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'ErrorCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The error code of an error that has occurred when attempting to retrieve a batch of\n         Records. For more information on errors, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors\">Errors</a>.</p>", "smithy.api#required" => {}}))
    BatchGetRecordError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'ErrorMessage', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The error message of an error that has occurred when attempting to retrieve a record in\n         the batch.</p>", "smithy.api#required" => {}}))
    BatchGetRecordError.type = Types::BatchGetRecordError
    BatchGetRecordErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordError)
    BatchGetRecordIdentifier.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureGroupNameOrArn, location_name: 'FeatureGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the <code>FeatureGroup</code> containing the\n         records you are retrieving in a batch.</p>", "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:record_identifiers_value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordIdentifiers, location_name: 'RecordIdentifiersValueAsString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value for a list of record identifiers in string format.</p>", "smithy.api#required" => {}}))
    BatchGetRecordIdentifier.add_member(:feature_names, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNames, location_name: 'FeatureNames', traits: {"smithy.api#documentation" => "<p>List of names of Features to be retrieved. If not specified, the latest value for all\n         the Features are returned.</p>"}))
    BatchGetRecordIdentifier.type = Types::BatchGetRecordIdentifier
    BatchGetRecordIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordIdentifier)
    BatchGetRecordRequest.add_member(:identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordIdentifiers, location_name: 'Identifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list containing the name or Amazon Resource Name (ARN) of the\n            <code>FeatureGroup</code>, the list of names of <code>Feature</code>s to be retrieved,\n         and the corresponding <code>RecordIdentifier</code> values as strings.</p>", "smithy.api#required" => {}}))
    BatchGetRecordRequest.add_member(:expiration_time_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimeResponse, location_name: 'ExpirationTimeResponse', traits: {"smithy.api#documentation" => "<p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,\n            <code>BatchGetRecord</code> will return the value of <code>ExpiresAt</code>, if it is\n         not null. If <code>Disabled</code> and null, <code>BatchGetRecord</code> will return\n         null.</p>"}))
    BatchGetRecordRequest.type = Types::BatchGetRecordRequest
    BatchGetRecordResponse.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordResultDetails, location_name: 'Records', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of Records you requested to be retrieved in batch.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordErrors, location_name: 'Errors', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of errors that have occurred when retrieving a batch of Records.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResponse.add_member(:unprocessed_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedIdentifiers, location_name: 'UnprocessedIdentifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unprocessed list of <code>FeatureGroup</code> names, with their corresponding\n            <code>RecordIdentifier</code> value, and Feature name.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResponse.type = Types::BatchGetRecordResponse
    BatchGetRecordResultDetail.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'FeatureGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The <code>FeatureGroupName</code> containing Records you retrieved in a batch.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record_identifier_value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'RecordIdentifierValueAsString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value of the record identifier in string format.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:record, Smithy::Schema::Shapes::ShapeRef.new(shape: Record, location_name: 'Record', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The <code>Record</code> retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetRecordResultDetail.add_member(:expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiresAt, location_name: 'ExpiresAt', traits: {"smithy.api#documentation" => "<p>The <code>ExpiresAt</code> ISO string of the requested record.</p>"}))
    BatchGetRecordResultDetail.type = Types::BatchGetRecordResultDetail
    BatchGetRecordResultDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordResultDetail)
    DeleteRecordRequest.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureGroupNameOrArn, location_name: 'FeatureGroupName', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the feature group to delete the record from.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:record_identifier_value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'RecordIdentifierValueAsString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in\n         string format. </p>", "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'EventTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be\n         used to query data at a certain point in time.</p>", "smithy.api#httpQuery" => "EventTime", "smithy.api#required" => {}}))
    DeleteRecordRequest.add_member(:target_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStores, location_name: 'TargetStores', traits: {"smithy.api#documentation" => "<p>A list of stores from which you're deleting the record. By default, Feature Store\n         deletes the record from all of the stores that you're using for the\n            <code>FeatureGroup</code>.</p>", "smithy.api#httpQuery" => "TargetStores"}))
    DeleteRecordRequest.add_member(:deletion_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionMode, location_name: 'DeletionMode', traits: {"smithy.api#documentation" => "<p>The name of the deletion mode for deleting the record. By default, the deletion mode is\n         set to <code>SoftDelete</code>.</p>", "smithy.api#httpQuery" => "DeletionMode"}))
    DeleteRecordRequest.type = Types::DeleteRecordRequest
    DeletionMode.add_member(:soft_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOFT_DELETE', traits: {"smithy.api#enumValue" => "SoftDelete"}))
    DeletionMode.add_member(:hard_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HARD_DELETE', traits: {"smithy.api#enumValue" => "HardDelete"}))
    ExpirationTimeResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationTimeResponse.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    FeatureNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName)
    FeatureValue.add_member(:feature_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureName, location_name: 'FeatureName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of a feature that a feature value corresponds to.</p>", "smithy.api#required" => {}}))
    FeatureValue.add_member(:value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'ValueAsString', traits: {"smithy.api#documentation" => "<p>The value in string format associated with a feature. Used when your\n            <code>CollectionType</code> is <code>None</code>. Note that features types can be\n            <code>String</code>, <code>Integral</code>, or <code>Fractional</code>. This value\n         represents all three types as a string.</p>"}))
    FeatureValue.add_member(:value_as_string_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsStringList, location_name: 'ValueAsStringList', traits: {"smithy.api#documentation" => "<p>The list of values in string format associated with a feature. Used when your\n            <code>CollectionType</code> is a <code>List</code>, <code>Set</code>, or\n            <code>Vector</code>. Note that features types can be <code>String</code>,\n            <code>Integral</code>, or <code>Fractional</code>. These values represents all three\n         types as a string.</p>"}))
    FeatureValue.type = Types::FeatureValue
    GetRecordRequest.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureGroupNameOrArn, location_name: 'FeatureGroupName', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the feature group from which you want to\n         retrieve a record.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:record_identifier_value_as_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString, location_name: 'RecordIdentifierValueAsString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies\n         the record in the <code>FeatureGroup</code>. </p>", "smithy.api#httpQuery" => "RecordIdentifierValueAsString", "smithy.api#required" => {}}))
    GetRecordRequest.add_member(:feature_names, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNames, location_name: 'FeatureNames', traits: {"smithy.api#documentation" => "<p>List of names of Features to be retrieved. If not specified, the latest value for all\n         the Features are returned.</p>", "smithy.api#httpQuery" => "FeatureName"}))
    GetRecordRequest.add_member(:expiration_time_response, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimeResponse, location_name: 'ExpirationTimeResponse', traits: {"smithy.api#documentation" => "<p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,\n            <code>GetRecord</code> will return the value of <code>ExpiresAt</code>, if it is not\n         null. If <code>Disabled</code> and null, <code>GetRecord</code> will return null.</p>", "smithy.api#httpQuery" => "ExpirationTimeResponse"}))
    GetRecordRequest.type = Types::GetRecordRequest
    GetRecordResponse.add_member(:record, Smithy::Schema::Shapes::ShapeRef.new(shape: Record, location_name: 'Record', traits: {"smithy.api#documentation" => "<p>The record you requested. A list of <code>FeatureValues</code>.</p>"}))
    GetRecordResponse.add_member(:expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiresAt, location_name: 'ExpiresAt', traits: {"smithy.api#documentation" => "<p>The <code>ExpiresAt</code> ISO string of the requested record.</p>"}))
    GetRecordResponse.type = Types::GetRecordResponse
    InternalFailure.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalFailure.type = Types::InternalFailure
    PutRecordRequest.add_member(:feature_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureGroupNameOrArn, location_name: 'FeatureGroupName', traits: {"smithy.api#documentation" => "<p>The name or Amazon Resource Name (ARN) of the feature group that you want to insert the\n         record into.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:record, Smithy::Schema::Shapes::ShapeRef.new(shape: Record, location_name: 'Record', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of FeatureValues to be inserted. This will be a full over-write. If you only want\n         to update few of the feature values, do the following:</p>\n         <ul>\n            <li>\n               <p>Use <code>GetRecord</code> to retrieve the latest record.</p>\n            </li>\n            <li>\n               <p>Update the record returned from <code>GetRecord</code>. </p>\n            </li>\n            <li>\n               <p>Use <code>PutRecord</code> to update feature values.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutRecordRequest.add_member(:target_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStores, location_name: 'TargetStores', traits: {"smithy.api#documentation" => "<p>A list of stores to which you're adding the record. By default, Feature Store adds the\n         record to all of the stores that you're using for the <code>FeatureGroup</code>.</p>"}))
    PutRecordRequest.add_member(:ttl_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: TtlDuration, location_name: 'TtlDuration', traits: {"smithy.api#documentation" => "<p>Time to live duration, where the record is hard deleted after the expiration time is\n         reached; <code>ExpiresAt</code> = <code>EventTime</code> + <code>TtlDuration</code>. For\n         information on HardDelete, see the <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html\">DeleteRecord</a> API in the Amazon SageMaker API Reference guide.</p>"}))
    PutRecordRequest.type = Types::PutRecordRequest
    Record.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureValue)
    RecordIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString)
    ResourceNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFound.type = Types::ResourceNotFound
    ServiceUnavailable.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ServiceUnavailable.type = Types::ServiceUnavailable
    TargetStore.add_member(:online_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONLINE_STORE', traits: {"smithy.api#enumValue" => "OnlineStore"}))
    TargetStore.add_member(:offline_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFLINE_STORE', traits: {"smithy.api#enumValue" => "OfflineStore"}))
    TargetStores.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStore)
    TtlDuration.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: TtlDurationUnit, location_name: 'Unit', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\n            <code>TtlDuration</code> time unit.</p>", "smithy.api#required" => {}}))
    TtlDuration.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TtlDurationValue, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>\n            <code>TtlDuration</code> time value.</p>", "smithy.api#required" => {}}))
    TtlDuration.type = Types::TtlDuration
    TtlDurationUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "Seconds"}))
    TtlDurationUnit.add_member(:minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINUTES', traits: {"smithy.api#enumValue" => "Minutes"}))
    TtlDurationUnit.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "Hours"}))
    TtlDurationUnit.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "Days"}))
    TtlDurationUnit.add_member(:weeks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKS', traits: {"smithy.api#enumValue" => "Weeks"}))
    UnprocessedIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordIdentifier)
    ValidationError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ValidationError.type = Types::ValidationError
    ValueAsStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueAsString)

    AmazonSageMakerFeatureStoreRuntime = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerfeaturestoreruntime#AmazonSageMakerFeatureStoreRuntime"
      service.name = "AmazonSageMakerFeatureStoreRuntime"
      service.version = "2020-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker FeatureStore Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerFeatureStoreRuntime", "cloudTrailEventSource" => "sagemakerfeaturestoreruntime.amazonaws.com", "endpointPrefix" => "featurestore-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon SageMaker Feature Store Runtime"}
      service.add_operation(:batch_get_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#BatchGetRecord"
        operation.name = "BatchGetRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRecordResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessForbidden)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetRecord", "code" => 200}}
      end)
      service.add_operation(:delete_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#DeleteRecord"
        operation.name = "DeleteRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessForbidden)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
      end)
      service.add_operation(:get_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#GetRecord"
        operation.name = "GetRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessForbidden)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
      end)
      service.add_operation(:put_record, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerfeaturestoreruntime#PutRecord"
        operation.name = "PutRecord"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRecordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessForbidden)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailure)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailable)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationError)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/FeatureGroup/{FeatureGroupName}", "code" => 200}}
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
