# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AIOps
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChatConfigurationArn = Shapes::StringShape.new(name: 'ChatConfigurationArn')
    ChatConfigurationArns = Shapes::ListShape.new(name: 'ChatConfigurationArns')
    ChatbotNotificationChannel = Shapes::MapShape.new(name: 'ChatbotNotificationChannel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateInvestigationGroupInput = Shapes::StructureShape.new(name: 'CreateInvestigationGroupInput')
    CreateInvestigationGroupOutput = Shapes::StructureShape.new(name: 'CreateInvestigationGroupOutput')
    CrossAccountConfiguration = Shapes::StructureShape.new(name: 'CrossAccountConfiguration')
    CrossAccountConfigurations = Shapes::ListShape.new(name: 'CrossAccountConfigurations')
    DeleteInvestigationGroupPolicyOutput = Shapes::StructureShape.new(name: 'DeleteInvestigationGroupPolicyOutput')
    DeleteInvestigationGroupPolicyRequest = Shapes::StructureShape.new(name: 'DeleteInvestigationGroupPolicyRequest')
    DeleteInvestigationGroupRequest = Shapes::StructureShape.new(name: 'DeleteInvestigationGroupRequest')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionConfigurationType = Shapes::StringShape.new(name: 'EncryptionConfigurationType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetInvestigationGroupPolicyRequest = Shapes::StructureShape.new(name: 'GetInvestigationGroupPolicyRequest')
    GetInvestigationGroupPolicyResponse = Shapes::StructureShape.new(name: 'GetInvestigationGroupPolicyResponse')
    GetInvestigationGroupRequest = Shapes::StructureShape.new(name: 'GetInvestigationGroupRequest')
    GetInvestigationGroupResponse = Shapes::StructureShape.new(name: 'GetInvestigationGroupResponse')
    IdentifierStringWithPatternAndLengthLimits = Shapes::StringShape.new(name: 'IdentifierStringWithPatternAndLengthLimits')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvestigationGroupArn = Shapes::StringShape.new(name: 'InvestigationGroupArn')
    InvestigationGroupIdentifier = Shapes::StringShape.new(name: 'InvestigationGroupIdentifier')
    InvestigationGroupPolicyDocument = Shapes::StringShape.new(name: 'InvestigationGroupPolicyDocument')
    InvestigationGroups = Shapes::ListShape.new(name: 'InvestigationGroups')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListInvestigationGroupsInput = Shapes::StructureShape.new(name: 'ListInvestigationGroupsInput')
    ListInvestigationGroupsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListInvestigationGroupsInputMaxResultsInteger')
    ListInvestigationGroupsModel = Shapes::StructureShape.new(name: 'ListInvestigationGroupsModel')
    ListInvestigationGroupsOutput = Shapes::StructureShape.new(name: 'ListInvestigationGroupsOutput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    Long = Shapes::IntegerShape.new(name: 'Long')
    PutInvestigationGroupPolicyRequest = Shapes::StructureShape.new(name: 'PutInvestigationGroupPolicyRequest')
    PutInvestigationGroupPolicyResponse = Shapes::StructureShape.new(name: 'PutInvestigationGroupPolicyResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Retention = Shapes::IntegerShape.new(name: 'Retention')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SNSTopicArn = Shapes::StringShape.new(name: 'SNSTopicArn')
    SensitiveStringWithLengthLimits = Shapes::StringShape.new(name: 'SensitiveStringWithLengthLimits')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringWithPatternAndLengthLimits = Shapes::StringShape.new(name: 'StringWithPatternAndLengthLimits')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyBoundaries = Shapes::ListShape.new(name: 'TagKeyBoundaries')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInvestigationGroupOutput = Shapes::StructureShape.new(name: 'UpdateInvestigationGroupOutput')
    UpdateInvestigationGroupRequest = Shapes::StructureShape.new(name: 'UpdateInvestigationGroupRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChatConfigurationArns.member = Shapes::ShapeRef.new(shape: ChatConfigurationArn)

    ChatbotNotificationChannel.key = Shapes::ShapeRef.new(shape: SNSTopicArn)
    ChatbotNotificationChannel.value = Shapes::ShapeRef.new(shape: ChatConfigurationArns)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateInvestigationGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, required: true, location_name: "name"))
    CreateInvestigationGroupInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateInvestigationGroupInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateInvestigationGroupInput.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Retention, location_name: "retentionInDays"))
    CreateInvestigationGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInvestigationGroupInput.add_member(:tag_key_boundaries, Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    CreateInvestigationGroupInput.add_member(:chatbot_notification_channel, Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    CreateInvestigationGroupInput.add_member(:is_cloud_trail_event_history_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    CreateInvestigationGroupInput.add_member(:cross_account_configurations, Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    CreateInvestigationGroupInput.struct_class = Types::CreateInvestigationGroupInput

    CreateInvestigationGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: "arn"))
    CreateInvestigationGroupOutput.struct_class = Types::CreateInvestigationGroupOutput

    CrossAccountConfiguration.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "sourceRoleArn"))
    CrossAccountConfiguration.struct_class = Types::CrossAccountConfiguration

    CrossAccountConfigurations.member = Shapes::ShapeRef.new(shape: CrossAccountConfiguration)

    DeleteInvestigationGroupPolicyOutput.struct_class = Types::DeleteInvestigationGroupPolicyOutput

    DeleteInvestigationGroupPolicyRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    DeleteInvestigationGroupPolicyRequest.struct_class = Types::DeleteInvestigationGroupPolicyRequest

    DeleteInvestigationGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    DeleteInvestigationGroupRequest.struct_class = Types::DeleteInvestigationGroupRequest

    EncryptionConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionConfigurationType, location_name: "type"))
    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetInvestigationGroupPolicyRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    GetInvestigationGroupPolicyRequest.struct_class = Types::GetInvestigationGroupPolicyRequest

    GetInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: "investigationGroupArn"))
    GetInvestigationGroupPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: InvestigationGroupPolicyDocument, location_name: "policy"))
    GetInvestigationGroupPolicyResponse.struct_class = Types::GetInvestigationGroupPolicyResponse

    GetInvestigationGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    GetInvestigationGroupRequest.struct_class = Types::GetInvestigationGroupRequest

    GetInvestigationGroupResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: IdentifierStringWithPatternAndLengthLimits, location_name: "createdBy"))
    GetInvestigationGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Long, location_name: "createdAt"))
    GetInvestigationGroupResponse.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: IdentifierStringWithPatternAndLengthLimits, location_name: "lastModifiedBy"))
    GetInvestigationGroupResponse.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Long, location_name: "lastModifiedAt"))
    GetInvestigationGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, location_name: "name"))
    GetInvestigationGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: "arn"))
    GetInvestigationGroupResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetInvestigationGroupResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetInvestigationGroupResponse.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Retention, location_name: "retentionInDays"))
    GetInvestigationGroupResponse.add_member(:chatbot_notification_channel, Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    GetInvestigationGroupResponse.add_member(:tag_key_boundaries, Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    GetInvestigationGroupResponse.add_member(:is_cloud_trail_event_history_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    GetInvestigationGroupResponse.add_member(:cross_account_configurations, Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    GetInvestigationGroupResponse.struct_class = Types::GetInvestigationGroupResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvestigationGroups.member = Shapes::ShapeRef.new(shape: ListInvestigationGroupsModel)

    ListInvestigationGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SensitiveStringWithLengthLimits, location: "querystring", location_name: "nextToken"))
    ListInvestigationGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListInvestigationGroupsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListInvestigationGroupsInput.struct_class = Types::ListInvestigationGroupsInput

    ListInvestigationGroupsModel.add_member(:arn, Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: "arn"))
    ListInvestigationGroupsModel.add_member(:name, Shapes::ShapeRef.new(shape: StringWithPatternAndLengthLimits, location_name: "name"))
    ListInvestigationGroupsModel.struct_class = Types::ListInvestigationGroupsModel

    ListInvestigationGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SensitiveStringWithLengthLimits, location_name: "nextToken"))
    ListInvestigationGroupsOutput.add_member(:investigation_groups, Shapes::ShapeRef.new(shape: InvestigationGroups, location_name: "investigationGroups"))
    ListInvestigationGroupsOutput.struct_class = Types::ListInvestigationGroupsOutput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    PutInvestigationGroupPolicyRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    PutInvestigationGroupPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: InvestigationGroupPolicyDocument, required: true, location_name: "policy"))
    PutInvestigationGroupPolicyRequest.struct_class = Types::PutInvestigationGroupPolicyRequest

    PutInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, Shapes::ShapeRef.new(shape: InvestigationGroupArn, location_name: "investigationGroupArn"))
    PutInvestigationGroupPolicyResponse.struct_class = Types::PutInvestigationGroupPolicyResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyBoundaries.member = Shapes::ShapeRef.new(shape: TagKey)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateInvestigationGroupOutput.struct_class = Types::UpdateInvestigationGroupOutput

    UpdateInvestigationGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: InvestigationGroupIdentifier, required: true, location: "uri", location_name: "identifier"))
    UpdateInvestigationGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateInvestigationGroupRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateInvestigationGroupRequest.add_member(:tag_key_boundaries, Shapes::ShapeRef.new(shape: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    UpdateInvestigationGroupRequest.add_member(:chatbot_notification_channel, Shapes::ShapeRef.new(shape: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    UpdateInvestigationGroupRequest.add_member(:is_cloud_trail_event_history_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    UpdateInvestigationGroupRequest.add_member(:cross_account_configurations, Shapes::ShapeRef.new(shape: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    UpdateInvestigationGroupRequest.struct_class = Types::UpdateInvestigationGroupRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "aiops",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS AI Ops",
        "serviceId" => "AIOps",
        "signatureVersion" => "v4",
        "signingName" => "aiops",
        "uid" => "aiops-2018-05-10",
      }

      api.add_operation(:create_investigation_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvestigationGroup"
        o.http_method = "POST"
        o.http_request_uri = "/investigationGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateInvestigationGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateInvestigationGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_investigation_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvestigationGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/investigationGroups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvestigationGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_investigation_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvestigationGroupPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/investigationGroups/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvestigationGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvestigationGroupPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_investigation_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvestigationGroup"
        o.http_method = "GET"
        o.http_request_uri = "/investigationGroups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetInvestigationGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvestigationGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_investigation_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvestigationGroupPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/investigationGroups/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetInvestigationGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvestigationGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_investigation_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvestigationGroups"
        o.http_method = "GET"
        o.http_request_uri = "/investigationGroups"
        o.input = Shapes::ShapeRef.new(shape: ListInvestigationGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListInvestigationGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_investigation_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInvestigationGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/investigationGroups/{identifier}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutInvestigationGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInvestigationGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_investigation_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInvestigationGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/investigationGroups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInvestigationGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInvestigationGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
