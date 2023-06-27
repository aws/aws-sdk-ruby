# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerFeatureStoreRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessForbidden = Shapes::StructureShape.new(name: 'AccessForbidden')
    BatchGetRecordError = Shapes::StructureShape.new(name: 'BatchGetRecordError')
    BatchGetRecordErrors = Shapes::ListShape.new(name: 'BatchGetRecordErrors')
    BatchGetRecordIdentifier = Shapes::StructureShape.new(name: 'BatchGetRecordIdentifier')
    BatchGetRecordIdentifiers = Shapes::ListShape.new(name: 'BatchGetRecordIdentifiers')
    BatchGetRecordRequest = Shapes::StructureShape.new(name: 'BatchGetRecordRequest')
    BatchGetRecordResponse = Shapes::StructureShape.new(name: 'BatchGetRecordResponse')
    BatchGetRecordResultDetail = Shapes::StructureShape.new(name: 'BatchGetRecordResultDetail')
    BatchGetRecordResultDetails = Shapes::ListShape.new(name: 'BatchGetRecordResultDetails')
    DeleteRecordRequest = Shapes::StructureShape.new(name: 'DeleteRecordRequest')
    DeletionMode = Shapes::StringShape.new(name: 'DeletionMode')
    ExpirationTimeResponse = Shapes::StringShape.new(name: 'ExpirationTimeResponse')
    ExpiresAt = Shapes::StringShape.new(name: 'ExpiresAt')
    FeatureGroupName = Shapes::StringShape.new(name: 'FeatureGroupName')
    FeatureName = Shapes::StringShape.new(name: 'FeatureName')
    FeatureNames = Shapes::ListShape.new(name: 'FeatureNames')
    FeatureValue = Shapes::StructureShape.new(name: 'FeatureValue')
    GetRecordRequest = Shapes::StructureShape.new(name: 'GetRecordRequest')
    GetRecordResponse = Shapes::StructureShape.new(name: 'GetRecordResponse')
    InternalFailure = Shapes::StructureShape.new(name: 'InternalFailure')
    Message = Shapes::StringShape.new(name: 'Message')
    PutRecordRequest = Shapes::StructureShape.new(name: 'PutRecordRequest')
    Record = Shapes::ListShape.new(name: 'Record')
    RecordIdentifiers = Shapes::ListShape.new(name: 'RecordIdentifiers')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ServiceUnavailable = Shapes::StructureShape.new(name: 'ServiceUnavailable')
    TargetStore = Shapes::StringShape.new(name: 'TargetStore')
    TargetStores = Shapes::ListShape.new(name: 'TargetStores')
    TtlDuration = Shapes::StructureShape.new(name: 'TtlDuration')
    TtlDurationUnit = Shapes::StringShape.new(name: 'TtlDurationUnit')
    TtlDurationValue = Shapes::IntegerShape.new(name: 'TtlDurationValue')
    UnprocessedIdentifiers = Shapes::ListShape.new(name: 'UnprocessedIdentifiers')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValueAsString = Shapes::StringShape.new(name: 'ValueAsString')

    AccessForbidden.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessForbidden.struct_class = Types::AccessForbidden

    BatchGetRecordError.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "FeatureGroupName"))
    BatchGetRecordError.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "RecordIdentifierValueAsString"))
    BatchGetRecordError.add_member(:error_code, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "ErrorCode"))
    BatchGetRecordError.add_member(:error_message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "ErrorMessage"))
    BatchGetRecordError.struct_class = Types::BatchGetRecordError

    BatchGetRecordErrors.member = Shapes::ShapeRef.new(shape: BatchGetRecordError)

    BatchGetRecordIdentifier.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location_name: "FeatureGroupName"))
    BatchGetRecordIdentifier.add_member(:record_identifiers_value_as_string, Shapes::ShapeRef.new(shape: RecordIdentifiers, required: true, location_name: "RecordIdentifiersValueAsString"))
    BatchGetRecordIdentifier.add_member(:feature_names, Shapes::ShapeRef.new(shape: FeatureNames, location_name: "FeatureNames"))
    BatchGetRecordIdentifier.struct_class = Types::BatchGetRecordIdentifier

    BatchGetRecordIdentifiers.member = Shapes::ShapeRef.new(shape: BatchGetRecordIdentifier)

    BatchGetRecordRequest.add_member(:identifiers, Shapes::ShapeRef.new(shape: BatchGetRecordIdentifiers, required: true, location_name: "Identifiers"))
    BatchGetRecordRequest.add_member(:expiration_time_response, Shapes::ShapeRef.new(shape: ExpirationTimeResponse, location_name: "ExpirationTimeResponse"))
    BatchGetRecordRequest.struct_class = Types::BatchGetRecordRequest

    BatchGetRecordResponse.add_member(:records, Shapes::ShapeRef.new(shape: BatchGetRecordResultDetails, required: true, location_name: "Records"))
    BatchGetRecordResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetRecordErrors, required: true, location_name: "Errors"))
    BatchGetRecordResponse.add_member(:unprocessed_identifiers, Shapes::ShapeRef.new(shape: UnprocessedIdentifiers, required: true, location_name: "UnprocessedIdentifiers"))
    BatchGetRecordResponse.struct_class = Types::BatchGetRecordResponse

    BatchGetRecordResultDetail.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "FeatureGroupName"))
    BatchGetRecordResultDetail.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "RecordIdentifierValueAsString"))
    BatchGetRecordResultDetail.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
    BatchGetRecordResultDetail.add_member(:expires_at, Shapes::ShapeRef.new(shape: ExpiresAt, location_name: "ExpiresAt"))
    BatchGetRecordResultDetail.struct_class = Types::BatchGetRecordResultDetail

    BatchGetRecordResultDetails.member = Shapes::ShapeRef.new(shape: BatchGetRecordResultDetail)

    DeleteRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    DeleteRecordRequest.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "RecordIdentifierValueAsString"))
    DeleteRecordRequest.add_member(:event_time, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "EventTime"))
    DeleteRecordRequest.add_member(:target_stores, Shapes::ShapeRef.new(shape: TargetStores, location: "querystring", location_name: "TargetStores"))
    DeleteRecordRequest.add_member(:deletion_mode, Shapes::ShapeRef.new(shape: DeletionMode, location: "querystring", location_name: "DeletionMode"))
    DeleteRecordRequest.struct_class = Types::DeleteRecordRequest

    FeatureNames.member = Shapes::ShapeRef.new(shape: FeatureName)

    FeatureValue.add_member(:feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "FeatureName"))
    FeatureValue.add_member(:value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "ValueAsString"))
    FeatureValue.struct_class = Types::FeatureValue

    GetRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    GetRecordRequest.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "RecordIdentifierValueAsString"))
    GetRecordRequest.add_member(:feature_names, Shapes::ShapeRef.new(shape: FeatureNames, location: "querystring", location_name: "FeatureName"))
    GetRecordRequest.add_member(:expiration_time_response, Shapes::ShapeRef.new(shape: ExpirationTimeResponse, location: "querystring", location_name: "ExpirationTimeResponse"))
    GetRecordRequest.struct_class = Types::GetRecordRequest

    GetRecordResponse.add_member(:record, Shapes::ShapeRef.new(shape: Record, location_name: "Record"))
    GetRecordResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: ExpiresAt, location_name: "ExpiresAt"))
    GetRecordResponse.struct_class = Types::GetRecordResponse

    InternalFailure.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalFailure.struct_class = Types::InternalFailure

    PutRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    PutRecordRequest.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
    PutRecordRequest.add_member(:target_stores, Shapes::ShapeRef.new(shape: TargetStores, location_name: "TargetStores"))
    PutRecordRequest.add_member(:ttl_duration, Shapes::ShapeRef.new(shape: TtlDuration, location_name: "TtlDuration"))
    PutRecordRequest.struct_class = Types::PutRecordRequest

    Record.member = Shapes::ShapeRef.new(shape: FeatureValue)

    RecordIdentifiers.member = Shapes::ShapeRef.new(shape: ValueAsString)

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    ServiceUnavailable.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceUnavailable.struct_class = Types::ServiceUnavailable

    TargetStores.member = Shapes::ShapeRef.new(shape: TargetStore)

    TtlDuration.add_member(:unit, Shapes::ShapeRef.new(shape: TtlDurationUnit, required: true, location_name: "Unit"))
    TtlDuration.add_member(:value, Shapes::ShapeRef.new(shape: TtlDurationValue, required: true, location_name: "Value"))
    TtlDuration.struct_class = Types::TtlDuration

    UnprocessedIdentifiers.member = Shapes::ShapeRef.new(shape: BatchGetRecordIdentifier)

    ValidationError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationError.struct_class = Types::ValidationError


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-01"

      api.metadata = {
        "apiVersion" => "2020-07-01",
        "endpointPrefix" => "featurestore-runtime.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon SageMaker Feature Store Runtime",
        "serviceId" => "SageMaker FeatureStore Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-featurestore-runtime-2020-07-01",
      }

      api.add_operation(:batch_get_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRecord"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetRecord"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: AccessForbidden)
      end)

      api.add_operation(:delete_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/FeatureGroup/{FeatureGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: AccessForbidden)
      end)

      api.add_operation(:get_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecord"
        o.http_method = "GET"
        o.http_request_uri = "/FeatureGroup/{FeatureGroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: AccessForbidden)
      end)

      api.add_operation(:put_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecord"
        o.http_method = "PUT"
        o.http_request_uri = "/FeatureGroup/{FeatureGroupName}"
        o.input = Shapes::ShapeRef.new(shape: PutRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationError)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailure)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
        o.errors << Shapes::ShapeRef.new(shape: AccessForbidden)
      end)
    end

  end
end
