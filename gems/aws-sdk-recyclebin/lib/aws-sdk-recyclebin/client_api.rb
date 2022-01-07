# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RecycleBin
  # @api private
  module ClientApi

    include Seahorse::Model

    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResponse = Shapes::StructureShape.new(name: 'CreateRuleResponse')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteRuleResponse = Shapes::StructureShape.new(name: 'DeleteRuleResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetRuleRequest = Shapes::StructureShape.new(name: 'GetRuleRequest')
    GetRuleResponse = Shapes::StructureShape.new(name: 'GetRuleResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundExceptionReason = Shapes::StringShape.new(name: 'ResourceNotFoundExceptionReason')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceTags = Shapes::ListShape.new(name: 'ResourceTags')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetentionPeriod = Shapes::StructureShape.new(name: 'RetentionPeriod')
    RetentionPeriodUnit = Shapes::StringShape.new(name: 'RetentionPeriodUnit')
    RetentionPeriodValue = Shapes::IntegerShape.new(name: 'RetentionPeriodValue')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleStatus = Shapes::StringShape.new(name: 'RuleStatus')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    RuleSummaryList = Shapes::ListShape.new(name: 'RuleSummaryList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateRuleRequest = Shapes::StructureShape.new(name: 'UpdateRuleRequest')
    UpdateRuleResponse = Shapes::StructureShape.new(name: 'UpdateRuleResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    CreateRuleRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, required: true, location_name: "RetentionPeriod"))
    CreateRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    CreateRuleRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "Identifier"))
    CreateRuleResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateRuleResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    CreateRuleResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    CreateRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "Status"))
    CreateRuleResponse.struct_class = Types::CreateRuleResponse

    DeleteRuleRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "identifier"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteRuleResponse.struct_class = Types::DeleteRuleResponse

    GetRuleRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "identifier"))
    GetRuleRequest.struct_class = Types::GetRuleRequest

    GetRuleResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "Identifier"))
    GetRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetRuleResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    GetRuleResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    GetRuleResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    GetRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "Status"))
    GetRuleResponse.struct_class = Types::GetRuleResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ListRulesRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleSummaryList, location_name: "Rules"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:reason, Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: "Reason"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:resource_tag_key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "ResourceTagKey"))
    ResourceTag.add_member(:resource_tag_value, Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "ResourceTagValue"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTags.member = Shapes::ShapeRef.new(shape: ResourceTag)

    RetentionPeriod.add_member(:retention_period_value, Shapes::ShapeRef.new(shape: RetentionPeriodValue, required: true, location_name: "RetentionPeriodValue"))
    RetentionPeriod.add_member(:retention_period_unit, Shapes::ShapeRef.new(shape: RetentionPeriodUnit, required: true, location_name: "RetentionPeriodUnit"))
    RetentionPeriod.struct_class = Types::RetentionPeriod

    RuleSummary.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "Identifier"))
    RuleSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    RuleSummary.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    RuleSummary.struct_class = Types::RuleSummary

    RuleSummaryList.member = Shapes::ShapeRef.new(shape: RuleSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateRuleRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "identifier"))
    UpdateRuleRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateRuleRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    UpdateRuleRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    UpdateRuleRequest.struct_class = Types::UpdateRuleRequest

    UpdateRuleResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "Identifier"))
    UpdateRuleResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateRuleResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    UpdateRuleResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    UpdateRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleStatus, location_name: "Status"))
    UpdateRuleResponse.struct_class = Types::UpdateRuleResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-06-15"

      api.metadata = {
        "apiVersion" => "2021-06-15",
        "endpointPrefix" => "rbin",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Recycle Bin",
        "serviceId" => "rbin",
        "signatureVersion" => "v4",
        "signingName" => "rbin",
        "uid" => "rbin-2021-06-15",
      }

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/rules/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRule"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "POST"
        o.http_request_uri = "/list-rules"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/rules/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
