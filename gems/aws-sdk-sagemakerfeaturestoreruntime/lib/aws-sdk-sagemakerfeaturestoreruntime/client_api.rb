# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerFeatureStoreRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessForbidden = Shapes::StructureShape.new(name: 'AccessForbidden')
    DeleteRecordRequest = Shapes::StructureShape.new(name: 'DeleteRecordRequest')
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
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    ServiceUnavailable = Shapes::StructureShape.new(name: 'ServiceUnavailable')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValueAsString = Shapes::StringShape.new(name: 'ValueAsString')

    AccessForbidden.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessForbidden.struct_class = Types::AccessForbidden

    DeleteRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    DeleteRecordRequest.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "RecordIdentifierValueAsString"))
    DeleteRecordRequest.add_member(:event_time, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "EventTime"))
    DeleteRecordRequest.struct_class = Types::DeleteRecordRequest

    FeatureNames.member = Shapes::ShapeRef.new(shape: FeatureName)

    FeatureValue.add_member(:feature_name, Shapes::ShapeRef.new(shape: FeatureName, required: true, location_name: "FeatureName"))
    FeatureValue.add_member(:value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location_name: "ValueAsString"))
    FeatureValue.struct_class = Types::FeatureValue

    GetRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    GetRecordRequest.add_member(:record_identifier_value_as_string, Shapes::ShapeRef.new(shape: ValueAsString, required: true, location: "querystring", location_name: "RecordIdentifierValueAsString"))
    GetRecordRequest.add_member(:feature_names, Shapes::ShapeRef.new(shape: FeatureNames, location: "querystring", location_name: "FeatureName"))
    GetRecordRequest.struct_class = Types::GetRecordRequest

    GetRecordResponse.add_member(:record, Shapes::ShapeRef.new(shape: Record, location_name: "Record"))
    GetRecordResponse.struct_class = Types::GetRecordResponse

    InternalFailure.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalFailure.struct_class = Types::InternalFailure

    PutRecordRequest.add_member(:feature_group_name, Shapes::ShapeRef.new(shape: FeatureGroupName, required: true, location: "uri", location_name: "FeatureGroupName"))
    PutRecordRequest.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
    PutRecordRequest.struct_class = Types::PutRecordRequest

    Record.member = Shapes::ShapeRef.new(shape: FeatureValue)

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    ServiceUnavailable.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServiceUnavailable.struct_class = Types::ServiceUnavailable

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
