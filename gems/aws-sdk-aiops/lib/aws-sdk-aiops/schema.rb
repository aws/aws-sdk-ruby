# frozen_string_literal: true

# This is generated code!

module Aws::AIOps
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ChatConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#ChatConfigurationArn", name: "ChatConfigurationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    ChatConfigurationArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.aiops#ChatConfigurationArns", name: "ChatConfigurationArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ChatbotNotificationChannel = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.aiops#ChatbotNotificationChannel", name: "ChatbotNotificationChannel")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateInvestigationGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#CreateInvestigationGroupInput", name: "CreateInvestigationGroupInput")
    CreateInvestigationGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#CreateInvestigationGroupOutput", name: "CreateInvestigationGroupOutput")
    CrossAccountConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#CrossAccountConfiguration", name: "CrossAccountConfiguration")
    CrossAccountConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.aiops#CrossAccountConfigurations", name: "CrossAccountConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    DeleteInvestigationGroupPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#DeleteInvestigationGroupPolicyOutput", name: "DeleteInvestigationGroupPolicyOutput")
    DeleteInvestigationGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#DeleteInvestigationGroupPolicyRequest", name: "DeleteInvestigationGroupPolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    DeleteInvestigationGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#DeleteInvestigationGroupRequest", name: "DeleteInvestigationGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.aiops#EncryptionConfigurationType", name: "EncryptionConfigurationType")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetInvestigationGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#GetInvestigationGroupPolicyRequest", name: "GetInvestigationGroupPolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    GetInvestigationGroupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#GetInvestigationGroupPolicyResponse", name: "GetInvestigationGroupPolicyResponse")
    GetInvestigationGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#GetInvestigationGroupRequest", name: "GetInvestigationGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    GetInvestigationGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#GetInvestigationGroupResponse", name: "GetInvestigationGroupResponse")
    IdentifierStringWithPatternAndLengthLimits = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#IdentifierStringWithPatternAndLengthLimits", name: "IdentifierStringWithPatternAndLengthLimits", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\-_\\/A-Za-z0-9:\\.]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvestigationGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#InvestigationGroupArn", name: "InvestigationGroupArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):aiops:[a-zA-Z0-9-]*:[0-9]{12}:investigation-group\\/[A-Za-z0-9]{16}$"})
    InvestigationGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#InvestigationGroupIdentifier", name: "InvestigationGroupIdentifier", traits: {"smithy.api#pattern" => "^(?:[\\-_A-Za-z0-9]{1,512}|arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):aiops:[a-zA-Z0-9-]*:[0-9]{12}:investigation-group\\/[A-Za-z0-9]{16})$"})
    InvestigationGroupPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#InvestigationGroupPolicyDocument", name: "InvestigationGroupPolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    InvestigationGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.aiops#InvestigationGroups", name: "InvestigationGroups")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.*$"})
    ListInvestigationGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ListInvestigationGroupsInput", name: "ListInvestigationGroupsInput")
    ListInvestigationGroupsModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ListInvestigationGroupsModel", name: "ListInvestigationGroupsModel")
    ListInvestigationGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ListInvestigationGroupsOutput", name: "ListInvestigationGroupsOutput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    PutInvestigationGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#PutInvestigationGroupPolicyRequest", name: "PutInvestigationGroupPolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    PutInvestigationGroupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#PutInvestigationGroupPolicyResponse", name: "PutInvestigationGroupPolicyResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Retention = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.aiops#Retention", name: "Retention", traits: {"smithy.api#range" => {"min" => 7, "max" => 90}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    SNSTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#SNSTopicArn", name: "SNSTopicArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    SensitiveStringWithLengthLimits = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#SensitiveStringWithLengthLimits", name: "SensitiveStringWithLengthLimits", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringWithPatternAndLengthLimits = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#StringWithPatternAndLengthLimits", name: "StringWithPatternAndLengthLimits", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\-_A-Za-z0-9\\[\\]\\(\\)\\{\\}\\.: ]+$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeyBoundaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.aiops#TagKeyBoundaries", name: "TagKeyBoundaries")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.aiops#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.aiops#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.aiops#Tags", name: "Tags")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateInvestigationGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#UpdateInvestigationGroupOutput", name: "UpdateInvestigationGroupOutput")
    UpdateInvestigationGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#UpdateInvestigationGroupRequest", name: "UpdateInvestigationGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.aiops#InvestigationGroup", "ids" => {"identifier" => "identifier"}}, {"resource" => "com.amazonaws.aiops#InvestigationGroupPolicy", "ids" => {"identifier" => "identifier"}}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.aiops#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ChatConfigurationArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChatConfigurationArn)
    ChatbotNotificationChannel.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SNSTopicArn)
    ChatbotNotificationChannel.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ChatConfigurationArns)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateInvestigationGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithPatternAndLengthLimits, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateInvestigationGroupInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateInvestigationGroupInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateInvestigationGroupInput.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Retention, location_name: "retentionInDays"))
    CreateInvestigationGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    CreateInvestigationGroupInput.add_member(:tag_key_boundaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    CreateInvestigationGroupInput.add_member(:chatbot_notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    CreateInvestigationGroupInput.add_member(:is_cloud_trail_event_history_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    CreateInvestigationGroupInput.add_member(:cross_account_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    CreateInvestigationGroupInput.type = Types::CreateInvestigationGroupInput
    CreateInvestigationGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupArn, location_name: "arn"))
    CreateInvestigationGroupOutput.type = Types::CreateInvestigationGroupOutput
    CrossAccountConfiguration.add_member(:source_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "sourceRoleArn"))
    CrossAccountConfiguration.type = Types::CrossAccountConfiguration
    CrossAccountConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountConfiguration)
    DeleteInvestigationGroupPolicyOutput.type = Types::DeleteInvestigationGroupPolicyOutput
    DeleteInvestigationGroupPolicyRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInvestigationGroupPolicyRequest.type = Types::DeleteInvestigationGroupPolicyRequest
    DeleteInvestigationGroupRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInvestigationGroupRequest.type = Types::DeleteInvestigationGroupRequest
    EncryptionConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigurationType, location_name: "type"))
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationType.add_member(:aws_owned_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_OWNED_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    EncryptionConfigurationType.add_member(:customer_managed_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_MANAGED_KMS_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetInvestigationGroupPolicyRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationGroupPolicyRequest.type = Types::GetInvestigationGroupPolicyRequest
    GetInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupArn, location_name: "investigationGroupArn"))
    GetInvestigationGroupPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupPolicyDocument, location_name: "policy"))
    GetInvestigationGroupPolicyResponse.type = Types::GetInvestigationGroupPolicyResponse
    GetInvestigationGroupRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationGroupRequest.type = Types::GetInvestigationGroupRequest
    GetInvestigationGroupResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierStringWithPatternAndLengthLimits, location_name: "createdBy"))
    GetInvestigationGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "createdAt"))
    GetInvestigationGroupResponse.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierStringWithPatternAndLengthLimits, location_name: "lastModifiedBy"))
    GetInvestigationGroupResponse.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "lastModifiedAt"))
    GetInvestigationGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithPatternAndLengthLimits, location_name: "name"))
    GetInvestigationGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupArn, location_name: "arn"))
    GetInvestigationGroupResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    GetInvestigationGroupResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetInvestigationGroupResponse.add_member(:retention_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Retention, location_name: "retentionInDays"))
    GetInvestigationGroupResponse.add_member(:chatbot_notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    GetInvestigationGroupResponse.add_member(:tag_key_boundaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    GetInvestigationGroupResponse.add_member(:is_cloud_trail_event_history_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    GetInvestigationGroupResponse.add_member(:cross_account_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    GetInvestigationGroupResponse.type = Types::GetInvestigationGroupResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvestigationGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListInvestigationGroupsModel)
    ListInvestigationGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringWithLengthLimits, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInvestigationGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListInvestigationGroupsInput.type = Types::ListInvestigationGroupsInput
    ListInvestigationGroupsModel.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupArn, location_name: "arn"))
    ListInvestigationGroupsModel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithPatternAndLengthLimits, location_name: "name"))
    ListInvestigationGroupsModel.type = Types::ListInvestigationGroupsModel
    ListInvestigationGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringWithLengthLimits, location_name: "nextToken"))
    ListInvestigationGroupsOutput.add_member(:investigation_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroups, location_name: "investigationGroups"))
    ListInvestigationGroupsOutput.type = Types::ListInvestigationGroupsOutput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    PutInvestigationGroupPolicyRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutInvestigationGroupPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupPolicyDocument, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutInvestigationGroupPolicyRequest.type = Types::PutInvestigationGroupPolicyRequest
    PutInvestigationGroupPolicyResponse.add_member(:investigation_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupArn, location_name: "investigationGroupArn"))
    PutInvestigationGroupPolicyResponse.type = Types::PutInvestigationGroupPolicyResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyBoundaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateInvestigationGroupOutput.type = Types::UpdateInvestigationGroupOutput
    UpdateInvestigationGroupRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationGroupIdentifier, location_name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateInvestigationGroupRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    UpdateInvestigationGroupRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateInvestigationGroupRequest.add_member(:tag_key_boundaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyBoundaries, location_name: "tagKeyBoundaries"))
    UpdateInvestigationGroupRequest.add_member(:chatbot_notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatbotNotificationChannel, location_name: "chatbotNotificationChannel"))
    UpdateInvestigationGroupRequest.add_member(:is_cloud_trail_event_history_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isCloudTrailEventHistoryEnabled"))
    UpdateInvestigationGroupRequest.add_member(:cross_account_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountConfigurations, location_name: "crossAccountConfigurations"))
    UpdateInvestigationGroupRequest.type = Types::UpdateInvestigationGroupRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ValidationException.type = Types::ValidationException

    AIOps = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.aiops#AIOps"
      service.name = "AIOps"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "AIOps", "arnNamespace" => "aiops", "cloudTrailEventSource" => "aiops.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "aiops"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Amz-Requested-Operation"]}, "smithy.api#title" => "AWS AI Ops"}
      service.add_operation(:create_investigation_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#CreateInvestigationGroup"
        operation.name = "CreateInvestigationGroup"
        operation.input = CreateInvestigationGroupInput
        operation.output = CreateInvestigationGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/investigationGroups"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateInvestigationGroupUnauthorized", "params" => {"name" => "test-smoke", "roleArn" => "arn:aws:iam::123456789012:role/assistant-role"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:delete_investigation_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#DeleteInvestigationGroup"
        operation.name = "DeleteInvestigationGroup"
        operation.input = DeleteInvestigationGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_investigation_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#DeleteInvestigationGroupPolicy"
        operation.name = "DeleteInvestigationGroupPolicy"
        operation.input = DeleteInvestigationGroupPolicyRequest
        operation.output = DeleteInvestigationGroupPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_investigation_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#GetInvestigationGroup"
        operation.name = "GetInvestigationGroup"
        operation.input = GetInvestigationGroupRequest
        operation.output = GetInvestigationGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_investigation_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#GetInvestigationGroupPolicy"
        operation.name = "GetInvestigationGroupPolicy"
        operation.input = GetInvestigationGroupPolicyRequest
        operation.output = GetInvestigationGroupPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_investigation_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#ListInvestigationGroups"
        operation.name = "ListInvestigationGroups"
        operation.input = ListInvestigationGroupsInput
        operation.output = ListInvestigationGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/investigationGroups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInvestigationGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_investigation_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#PutInvestigationGroupPolicy"
        operation.name = "PutInvestigationGroupPolicy"
        operation.input = PutInvestigationGroupPolicyRequest
        operation.output = PutInvestigationGroupPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/investigationGroups/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_investigation_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.aiops#UpdateInvestigationGroup"
        operation.name = "UpdateInvestigationGroup"
        operation.input = UpdateInvestigationGroupRequest
        operation.output = UpdateInvestigationGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/investigationGroups/{identifier}"}, "smithy.api#idempotent" => {}}
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
