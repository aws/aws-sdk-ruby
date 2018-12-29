# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroupsTaggingAPI
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceType = Shapes::StringShape.new(name: 'AmazonResourceType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FailedResourcesMap = Shapes::MapShape.new(name: 'FailedResourcesMap')
    FailureInfo = Shapes::StructureShape.new(name: 'FailureInfo')
    GetResourcesInput = Shapes::StructureShape.new(name: 'GetResourcesInput')
    GetResourcesOutput = Shapes::StructureShape.new(name: 'GetResourcesOutput')
    GetTagKeysInput = Shapes::StructureShape.new(name: 'GetTagKeysInput')
    GetTagKeysOutput = Shapes::StructureShape.new(name: 'GetTagKeysOutput')
    GetTagValuesInput = Shapes::StructureShape.new(name: 'GetTagValuesInput')
    GetTagValuesOutput = Shapes::StructureShape.new(name: 'GetTagValuesOutput')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PaginationTokenExpiredException = Shapes::StructureShape.new(name: 'PaginationTokenExpiredException')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceARNList = Shapes::ListShape.new(name: 'ResourceARNList')
    ResourceTagMapping = Shapes::StructureShape.new(name: 'ResourceTagMapping')
    ResourceTagMappingList = Shapes::ListShape.new(name: 'ResourceTagMappingList')
    ResourceTypeFilterList = Shapes::ListShape.new(name: 'ResourceTypeFilterList')
    ResourcesPerPage = Shapes::IntegerShape.new(name: 'ResourcesPerPage')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilterList = Shapes::ListShape.new(name: 'TagFilterList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyListForUntag = Shapes::ListShape.new(name: 'TagKeyListForUntag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourcesInput = Shapes::StructureShape.new(name: 'TagResourcesInput')
    TagResourcesOutput = Shapes::StructureShape.new(name: 'TagResourcesOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    TagValuesOutputList = Shapes::ListShape.new(name: 'TagValuesOutputList')
    TagsPerPage = Shapes::IntegerShape.new(name: 'TagsPerPage')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    UntagResourcesInput = Shapes::StructureShape.new(name: 'UntagResourcesInput')
    UntagResourcesOutput = Shapes::StructureShape.new(name: 'UntagResourcesOutput')

    FailedResourcesMap.key = Shapes::ShapeRef.new(shape: ResourceARN)
    FailedResourcesMap.value = Shapes::ShapeRef.new(shape: FailureInfo)

    FailureInfo.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "StatusCode"))
    FailureInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    FailureInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailureInfo.struct_class = Types::FailureInfo

    GetResourcesInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetResourcesInput.add_member(:tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "TagFilters"))
    GetResourcesInput.add_member(:resources_per_page, Shapes::ShapeRef.new(shape: ResourcesPerPage, location_name: "ResourcesPerPage"))
    GetResourcesInput.add_member(:tags_per_page, Shapes::ShapeRef.new(shape: TagsPerPage, location_name: "TagsPerPage"))
    GetResourcesInput.add_member(:resource_type_filters, Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location_name: "ResourceTypeFilters"))
    GetResourcesInput.struct_class = Types::GetResourcesInput

    GetResourcesOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetResourcesOutput.add_member(:resource_tag_mapping_list, Shapes::ShapeRef.new(shape: ResourceTagMappingList, location_name: "ResourceTagMappingList"))
    GetResourcesOutput.struct_class = Types::GetResourcesOutput

    GetTagKeysInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysInput.struct_class = Types::GetTagKeysInput

    GetTagKeysOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysOutput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    GetTagKeysOutput.struct_class = Types::GetTagKeysOutput

    GetTagValuesInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesInput.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    GetTagValuesInput.struct_class = Types::GetTagValuesInput

    GetTagValuesOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesOutput.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValuesOutputList, location_name: "TagValues"))
    GetTagValuesOutput.struct_class = Types::GetTagValuesOutput

    ResourceARNList.member = Shapes::ShapeRef.new(shape: ResourceARN)

    ResourceTagMapping.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    ResourceTagMapping.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ResourceTagMapping.struct_class = Types::ResourceTagMapping

    ResourceTagMappingList.member = Shapes::ShapeRef.new(shape: ResourceTagMapping)

    ResourceTypeFilterList.member = Shapes::ShapeRef.new(shape: AmazonResourceType)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagFilter.add_member(:values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "Values"))
    TagFilter.struct_class = Types::TagFilter

    TagFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagKeyListForUntag.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourcesInput.add_member(:resource_arn_list, Shapes::ShapeRef.new(shape: ResourceARNList, required: true, location_name: "ResourceARNList"))
    TagResourcesInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourcesInput.struct_class = Types::TagResourcesInput

    TagResourcesOutput.add_member(:failed_resources_map, Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: "FailedResourcesMap"))
    TagResourcesOutput.struct_class = Types::TagResourcesOutput

    TagValueList.member = Shapes::ShapeRef.new(shape: TagValue)

    TagValuesOutputList.member = Shapes::ShapeRef.new(shape: TagValue)

    UntagResourcesInput.add_member(:resource_arn_list, Shapes::ShapeRef.new(shape: ResourceARNList, required: true, location_name: "ResourceARNList"))
    UntagResourcesInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyListForUntag, required: true, location_name: "TagKeys"))
    UntagResourcesInput.struct_class = Types::UntagResourcesInput

    UntagResourcesOutput.add_member(:failed_resources_map, Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: "FailedResourcesMap"))
    UntagResourcesOutput.struct_class = Types::UntagResourcesOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-26"

      api.metadata = {
        "apiVersion" => "2017-01-26",
        "endpointPrefix" => "tagging",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Resource Groups Tagging API",
        "signatureVersion" => "v4",
        "targetPrefix" => "ResourceGroupsTaggingAPI_20170126",
        "uid" => "resourcegroupstaggingapi-2017-01-26",
      }

      api.add_operation(:get_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          limit_key: "resources_per_page",
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:get_tag_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagKeysInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagKeysOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:get_tag_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagValuesInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagValuesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:tag_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:untag_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
