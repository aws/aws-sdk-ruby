# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticInference
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceleratorHealthStatus = Shapes::StringShape.new(name: 'AcceleratorHealthStatus')
    AcceleratorId = Shapes::StringShape.new(name: 'AcceleratorId')
    AcceleratorIdList = Shapes::ListShape.new(name: 'AcceleratorIdList')
    AcceleratorType = Shapes::StructureShape.new(name: 'AcceleratorType')
    AcceleratorTypeList = Shapes::ListShape.new(name: 'AcceleratorTypeList')
    AcceleratorTypeName = Shapes::StringShape.new(name: 'AcceleratorTypeName')
    AcceleratorTypeNameList = Shapes::ListShape.new(name: 'AcceleratorTypeNameList')
    AcceleratorTypeOffering = Shapes::StructureShape.new(name: 'AcceleratorTypeOffering')
    AcceleratorTypeOfferingList = Shapes::ListShape.new(name: 'AcceleratorTypeOfferingList')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    DescribeAcceleratorOfferingsRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorOfferingsRequest')
    DescribeAcceleratorOfferingsResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorOfferingsResponse')
    DescribeAcceleratorTypesRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorTypesRequest')
    DescribeAcceleratorTypesResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorTypesResponse')
    DescribeAcceleratorsRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorsRequest')
    DescribeAcceleratorsResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorsResponse')
    ElasticInferenceAccelerator = Shapes::StructureShape.new(name: 'ElasticInferenceAccelerator')
    ElasticInferenceAcceleratorHealth = Shapes::StructureShape.new(name: 'ElasticInferenceAcceleratorHealth')
    ElasticInferenceAcceleratorSet = Shapes::ListShape.new(name: 'ElasticInferenceAcceleratorSet')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Key = Shapes::StringShape.new(name: 'Key')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    Location = Shapes::StringShape.new(name: 'Location')
    LocationType = Shapes::StringShape.new(name: 'LocationType')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemoryInfo = Shapes::StructureShape.new(name: 'MemoryInfo')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThroughputInfoList = Shapes::ListShape.new(name: 'ThroughputInfoList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    Value = Shapes::IntegerShape.new(name: 'Value')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')

    AcceleratorIdList.member = Shapes::ShapeRef.new(shape: AcceleratorId)

    AcceleratorType.add_member(:accelerator_type_name, Shapes::ShapeRef.new(shape: AcceleratorTypeName, location_name: "acceleratorTypeName"))
    AcceleratorType.add_member(:memory_info, Shapes::ShapeRef.new(shape: MemoryInfo, location_name: "memoryInfo"))
    AcceleratorType.add_member(:throughput_info, Shapes::ShapeRef.new(shape: ThroughputInfoList, location_name: "throughputInfo"))
    AcceleratorType.struct_class = Types::AcceleratorType

    AcceleratorTypeList.member = Shapes::ShapeRef.new(shape: AcceleratorType)

    AcceleratorTypeNameList.member = Shapes::ShapeRef.new(shape: AcceleratorTypeName)

    AcceleratorTypeOffering.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: AcceleratorTypeName, location_name: "acceleratorType"))
    AcceleratorTypeOffering.add_member(:location_type, Shapes::ShapeRef.new(shape: LocationType, location_name: "locationType"))
    AcceleratorTypeOffering.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    AcceleratorTypeOffering.struct_class = Types::AcceleratorTypeOffering

    AcceleratorTypeOfferingList.member = Shapes::ShapeRef.new(shape: AcceleratorTypeOffering)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    DescribeAcceleratorOfferingsRequest.add_member(:location_type, Shapes::ShapeRef.new(shape: LocationType, required: true, location_name: "locationType"))
    DescribeAcceleratorOfferingsRequest.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: AcceleratorTypeNameList, location_name: "acceleratorTypes"))
    DescribeAcceleratorOfferingsRequest.struct_class = Types::DescribeAcceleratorOfferingsRequest

    DescribeAcceleratorOfferingsResponse.add_member(:accelerator_type_offerings, Shapes::ShapeRef.new(shape: AcceleratorTypeOfferingList, location_name: "acceleratorTypeOfferings"))
    DescribeAcceleratorOfferingsResponse.struct_class = Types::DescribeAcceleratorOfferingsResponse

    DescribeAcceleratorTypesRequest.struct_class = Types::DescribeAcceleratorTypesRequest

    DescribeAcceleratorTypesResponse.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: AcceleratorTypeList, location_name: "acceleratorTypes"))
    DescribeAcceleratorTypesResponse.struct_class = Types::DescribeAcceleratorTypesResponse

    DescribeAcceleratorsRequest.add_member(:accelerator_ids, Shapes::ShapeRef.new(shape: AcceleratorIdList, location_name: "acceleratorIds"))
    DescribeAcceleratorsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    DescribeAcceleratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeAcceleratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAcceleratorsRequest.struct_class = Types::DescribeAcceleratorsRequest

    DescribeAcceleratorsResponse.add_member(:accelerator_set, Shapes::ShapeRef.new(shape: ElasticInferenceAcceleratorSet, location_name: "acceleratorSet"))
    DescribeAcceleratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAcceleratorsResponse.struct_class = Types::DescribeAcceleratorsResponse

    ElasticInferenceAccelerator.add_member(:accelerator_health, Shapes::ShapeRef.new(shape: ElasticInferenceAcceleratorHealth, location_name: "acceleratorHealth"))
    ElasticInferenceAccelerator.add_member(:accelerator_type, Shapes::ShapeRef.new(shape: AcceleratorTypeName, location_name: "acceleratorType"))
    ElasticInferenceAccelerator.add_member(:accelerator_id, Shapes::ShapeRef.new(shape: AcceleratorId, location_name: "acceleratorId"))
    ElasticInferenceAccelerator.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    ElasticInferenceAccelerator.add_member(:attached_resource, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "attachedResource"))
    ElasticInferenceAccelerator.struct_class = Types::ElasticInferenceAccelerator

    ElasticInferenceAcceleratorHealth.add_member(:status, Shapes::ShapeRef.new(shape: AcceleratorHealthStatus, location_name: "status"))
    ElasticInferenceAcceleratorHealth.struct_class = Types::ElasticInferenceAcceleratorHealth

    ElasticInferenceAcceleratorSet.member = Shapes::ShapeRef.new(shape: ElasticInferenceAccelerator)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    MemoryInfo.add_member(:size_in_mi_b, Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInMiB"))
    MemoryInfo.struct_class = Types::MemoryInfo

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    ThroughputInfoList.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    ValueStringList.member = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "api.elastic-inference",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon Elastic Inference",
        "serviceFullName" => "Amazon Elastic  Inference",
        "serviceId" => "Elastic Inference",
        "signatureVersion" => "v4",
        "signingName" => "elastic-inference",
        "uid" => "elastic-inference-2017-07-25",
      }

      api.add_operation(:describe_accelerator_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcceleratorOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/describe-accelerator-offerings"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_accelerator_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcceleratorTypes"
        o.http_method = "GET"
        o.http_request_uri = "/describe-accelerator-types"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_accelerators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccelerators"
        o.http_method = "POST"
        o.http_request_uri = "/describe-accelerators"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
