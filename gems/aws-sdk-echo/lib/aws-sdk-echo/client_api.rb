# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Echo
  # @api private
  module ClientApi

    include Seahorse::Model

    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ComplexStructure = Shapes::StructureShape.new(name: 'ComplexStructure')
    Double = Shapes::FloatShape.new(name: 'Double')
    EchoOperationInput = Shapes::StructureShape.new(name: 'EchoOperationInput')
    EchoOperationOutput = Shapes::StructureShape.new(name: 'EchoOperationOutput')
    Float = Shapes::FloatShape.new(name: 'Float')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    ListOfComplexStructure = Shapes::ListShape.new(name: 'ListOfComplexStructure')
    ListOfStrings = Shapes::ListShape.new(name: 'ListOfStrings')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapOfStringToString = Shapes::MapShape.new(name: 'MapOfStringToString')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')

    ComplexStructure.add_member(:boolean_member, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanMember"))
    ComplexStructure.add_member(:string_member, Shapes::ShapeRef.new(shape: String, location_name: "stringMember"))
    ComplexStructure.add_member(:integer_member, Shapes::ShapeRef.new(shape: Integer, location_name: "integerMember"))
    ComplexStructure.add_member(:long_member, Shapes::ShapeRef.new(shape: Long, location_name: "longMember"))
    ComplexStructure.add_member(:float_member, Shapes::ShapeRef.new(shape: Float, location_name: "floatMember"))
    ComplexStructure.add_member(:double_member, Shapes::ShapeRef.new(shape: Double, location_name: "doubleMember"))
    ComplexStructure.add_member(:timestamp_member, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestampMember"))
    ComplexStructure.add_member(:blob_member, Shapes::ShapeRef.new(shape: Blob, location_name: "blobMember"))
    ComplexStructure.add_member(:list_of_strings_member, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "listOfStringsMember"))
    ComplexStructure.add_member(:list_of_complex_object_member, Shapes::ShapeRef.new(shape: ListOfComplexStructure, location_name: "listOfComplexObjectMember"))
    ComplexStructure.add_member(:map_of_string_to_string_member, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "mapOfStringToStringMember"))
    ComplexStructure.add_member(:complex_struct_member, Shapes::ShapeRef.new(shape: ComplexStructure, location_name: "complexStructMember"))
    ComplexStructure.struct_class = Types::ComplexStructure

    EchoOperationInput.add_member(:boolean_member, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanMember"))
    EchoOperationInput.add_member(:string_member, Shapes::ShapeRef.new(shape: String, location_name: "stringMember"))
    EchoOperationInput.add_member(:integer_member, Shapes::ShapeRef.new(shape: Integer, location_name: "integerMember"))
    EchoOperationInput.add_member(:long_member, Shapes::ShapeRef.new(shape: Long, location_name: "longMember"))
    EchoOperationInput.add_member(:float_member, Shapes::ShapeRef.new(shape: Float, location_name: "floatMember"))
    EchoOperationInput.add_member(:double_member, Shapes::ShapeRef.new(shape: Double, location_name: "doubleMember"))
    EchoOperationInput.add_member(:timestamp_member, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestampMember"))
    EchoOperationInput.add_member(:blob_member, Shapes::ShapeRef.new(shape: Blob, location_name: "blobMember"))
    EchoOperationInput.add_member(:list_of_strings_member, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "listOfStringsMember"))
    EchoOperationInput.add_member(:list_of_complex_object_member, Shapes::ShapeRef.new(shape: ListOfComplexStructure, location_name: "listOfComplexObjectMember"))
    EchoOperationInput.add_member(:map_of_string_to_string_member, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "mapOfStringToStringMember"))
    EchoOperationInput.add_member(:complex_struct_member, Shapes::ShapeRef.new(shape: ComplexStructure, location_name: "complexStructMember"))
    EchoOperationInput.struct_class = Types::EchoOperationInput

    EchoOperationOutput.add_member(:boolean_member, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanMember"))
    EchoOperationOutput.add_member(:string_member, Shapes::ShapeRef.new(shape: String, location_name: "stringMember"))
    EchoOperationOutput.add_member(:integer_member, Shapes::ShapeRef.new(shape: Integer, location_name: "integerMember"))
    EchoOperationOutput.add_member(:long_member, Shapes::ShapeRef.new(shape: Long, location_name: "longMember"))
    EchoOperationOutput.add_member(:float_member, Shapes::ShapeRef.new(shape: Float, location_name: "floatMember"))
    EchoOperationOutput.add_member(:double_member, Shapes::ShapeRef.new(shape: Double, location_name: "doubleMember"))
    EchoOperationOutput.add_member(:timestamp_member, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestampMember"))
    EchoOperationOutput.add_member(:blob_member, Shapes::ShapeRef.new(shape: Blob, location_name: "blobMember"))
    EchoOperationOutput.add_member(:list_of_strings_member, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "listOfStringsMember"))
    EchoOperationOutput.add_member(:list_of_complex_object_member, Shapes::ShapeRef.new(shape: ListOfComplexStructure, location_name: "listOfComplexObjectMember"))
    EchoOperationOutput.add_member(:map_of_string_to_string_member, Shapes::ShapeRef.new(shape: MapOfStringToString, location_name: "mapOfStringToStringMember"))
    EchoOperationOutput.add_member(:complex_struct_member, Shapes::ShapeRef.new(shape: ComplexStructure, location_name: "complexStructMember"))
    EchoOperationOutput.struct_class = Types::EchoOperationOutput

    ListOfComplexStructure.member = Shapes::ShapeRef.new(shape: ComplexStructure)

    ListOfStrings.member = Shapes::ShapeRef.new(shape: String)

    MapOfStringToString.key = Shapes::ShapeRef.new(shape: String)
    MapOfStringToString.value = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-02"

      api.metadata = {
        "apiVersion" => "2020-07-02",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "echoservice",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Echo Service",
        "serviceId" => "Echo",
        "signatureVersion" => "v4",
        "signingName" => "echoservice",
        "uid" => "echo-2020-07-02",
      }

      api.add_operation(:echo_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EchoOperation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EchoOperationInput)
        o.output = Shapes::ShapeRef.new(shape: EchoOperationOutput)
      end)
    end

  end
end
