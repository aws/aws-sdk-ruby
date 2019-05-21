# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComprehendMedical
  # @api private
  module ClientApi

    include Seahorse::Model

    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    BoundedLengthString = Shapes::StringShape.new(name: 'BoundedLengthString')
    DetectEntitiesRequest = Shapes::StructureShape.new(name: 'DetectEntitiesRequest')
    DetectEntitiesResponse = Shapes::StructureShape.new(name: 'DetectEntitiesResponse')
    DetectPHIRequest = Shapes::StructureShape.new(name: 'DetectPHIRequest')
    DetectPHIResponse = Shapes::StructureShape.new(name: 'DetectPHIResponse')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    EntitySubType = Shapes::StringShape.new(name: 'EntitySubType')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    Float = Shapes::FloatShape.new(name: 'Float')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEncodingException = Shapes::StructureShape.new(name: 'InvalidEncodingException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    TextSizeLimitExceededException = Shapes::StructureShape.new(name: 'TextSizeLimitExceededException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Trait = Shapes::StructureShape.new(name: 'Trait')
    TraitList = Shapes::ListShape.new(name: 'TraitList')
    UnmappedAttribute = Shapes::StructureShape.new(name: 'UnmappedAttribute')
    UnmappedAttributeList = Shapes::ListShape.new(name: 'UnmappedAttributeList')

    Attribute.add_member(:type, Shapes::ShapeRef.new(shape: EntitySubType, location_name: "Type"))
    Attribute.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Attribute.add_member(:relationship_score, Shapes::ShapeRef.new(shape: Float, location_name: "RelationshipScore"))
    Attribute.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    Attribute.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Attribute.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Attribute.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Attribute.add_member(:traits, Shapes::ShapeRef.new(shape: TraitList, location_name: "Traits"))
    Attribute.struct_class = Types::Attribute

    AttributeList.member = Shapes::ShapeRef.new(shape: Attribute)

    DetectEntitiesRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    DetectEntitiesRequest.struct_class = Types::DetectEntitiesRequest

    DetectEntitiesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, required: true, location_name: "Entities"))
    DetectEntitiesResponse.add_member(:unmapped_attributes, Shapes::ShapeRef.new(shape: UnmappedAttributeList, location_name: "UnmappedAttributes"))
    DetectEntitiesResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    DetectEntitiesResponse.struct_class = Types::DetectEntitiesResponse

    DetectPHIRequest.add_member(:text, Shapes::ShapeRef.new(shape: BoundedLengthString, required: true, location_name: "Text"))
    DetectPHIRequest.struct_class = Types::DetectPHIRequest

    DetectPHIResponse.add_member(:entities, Shapes::ShapeRef.new(shape: EntityList, required: true, location_name: "Entities"))
    DetectPHIResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: String, location_name: "PaginationToken"))
    DetectPHIResponse.struct_class = Types::DetectPHIResponse

    Entity.add_member(:id, Shapes::ShapeRef.new(shape: Integer, location_name: "Id"))
    Entity.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Entity.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Entity.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Entity.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Entity.add_member(:category, Shapes::ShapeRef.new(shape: EntityType, location_name: "Category"))
    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntitySubType, location_name: "Type"))
    Entity.add_member(:traits, Shapes::ShapeRef.new(shape: TraitList, location_name: "Traits"))
    Entity.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "Attributes"))
    Entity.struct_class = Types::Entity

    EntityList.member = Shapes::ShapeRef.new(shape: Entity)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEncodingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidEncodingException.struct_class = Types::InvalidEncodingException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    TextSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TextSizeLimitExceededException.struct_class = Types::TextSizeLimitExceededException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Trait.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "Name"))
    Trait.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    Trait.struct_class = Types::Trait

    TraitList.member = Shapes::ShapeRef.new(shape: Trait)

    UnmappedAttribute.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, location_name: "Type"))
    UnmappedAttribute.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "Attribute"))
    UnmappedAttribute.struct_class = Types::UnmappedAttribute

    UnmappedAttributeList.member = Shapes::ShapeRef.new(shape: UnmappedAttribute)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-30"

      api.metadata = {
        "apiVersion" => "2018-10-30",
        "endpointPrefix" => "comprehendmedical",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "ComprehendMedical",
        "serviceFullName" => "AWS Comprehend Medical",
        "serviceId" => "ComprehendMedical",
        "signatureVersion" => "v4",
        "signingName" => "comprehendmedical",
        "targetPrefix" => "ComprehendMedical_20181030",
        "uid" => "comprehendmedical-2018-10-30",
      }

      api.add_operation(:detect_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)

      api.add_operation(:detect_phi, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectPHI"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectPHIRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectPHIResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEncodingException)
        o.errors << Shapes::ShapeRef.new(shape: TextSizeLimitExceededException)
      end)
    end

  end
end
