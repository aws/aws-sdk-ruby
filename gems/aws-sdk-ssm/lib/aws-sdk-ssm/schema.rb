# frozen_string_literal: true

# This is generated code!

module Aws::SSM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AccessKeyIdType", name: "AccessKeyIdType", traits: {"smithy.api#pattern" => "^\\w{16,128}$"})
    AccessKeySecretType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AccessKeySecretType", name: "AccessKeySecretType", traits: {"smithy.api#sensitive" => {}})
    AccessRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AccessRequestId", name: "AccessRequestId", traits: {"smithy.api#pattern" => "^(oi)-[0-9a-f]{12}$"})
    AccessRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AccessRequestStatus", name: "AccessRequestStatus")
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AccessType", name: "AccessType")
    Account = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Account", name: "Account")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^(?i)all|[0-9]{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AccountSharingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AccountSharingInfo", name: "AccountSharingInfo")
    AccountSharingInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AccountSharingInfoList", name: "AccountSharingInfoList")
    Accounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#Accounts", name: "Accounts", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Activation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Activation", name: "Activation")
    ActivationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ActivationCode", name: "ActivationCode", traits: {"smithy.api#length" => {"min" => 20, "max" => 250}})
    ActivationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ActivationDescription", name: "ActivationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ActivationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ActivationId", name: "ActivationId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ActivationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ActivationList", name: "ActivationList")
    AddTagsToResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AddTagsToResourceRequest", name: "AddTagsToResourceRequest")
    AddTagsToResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AddTagsToResourceResult", name: "AddTagsToResourceResult")
    AgentErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AgentErrorCode", name: "AgentErrorCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AgentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AgentType", name: "AgentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AgentVersion", name: "AgentVersion", traits: {"smithy.api#pattern" => "^[0-9]{1,6}(\\.[0-9]{1,6}){2,3}$"})
    AggregatorSchemaOnly = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#AggregatorSchemaOnly", name: "AggregatorSchemaOnly", traits: {"smithy.api#default" => false})
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Alarm", name: "Alarm")
    AlarmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AlarmConfiguration", name: "AlarmConfiguration")
    AlarmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AlarmList", name: "AlarmList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AlarmName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AlarmName", name: "AlarmName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    AlarmStateInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AlarmStateInformation", name: "AlarmStateInformation")
    AlarmStateInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AlarmStateInformationList", name: "AlarmStateInformationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AllowedPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AllowedPattern", name: "AllowedPattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AlreadyExistsException", name: "AlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ApplyOnlyAtCronInterval = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#ApplyOnlyAtCronInterval", name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false})
    ApproveAfterDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ApproveAfterDays", name: "ApproveAfterDays", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 360}})
    Architecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Architecture", name: "Architecture", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    AssociateOpsItemRelatedItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociateOpsItemRelatedItemRequest", name: "AssociateOpsItemRelatedItemRequest")
    AssociateOpsItemRelatedItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociateOpsItemRelatedItemResponse", name: "AssociateOpsItemRelatedItemResponse")
    AssociatedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociatedInstances", name: "AssociatedInstances", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociatedInstances", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Association", name: "Association")
    AssociationAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationAlreadyExists", name: "AssociationAlreadyExists", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    AssociationComplianceSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationComplianceSeverity", name: "AssociationComplianceSeverity")
    AssociationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationDescription", name: "AssociationDescription")
    AssociationDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationDescriptionList", name: "AssociationDescriptionList")
    AssociationDispatchAssumeRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationDispatchAssumeRoleArn", name: "AssociationDispatchAssumeRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    AssociationDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationDoesNotExist", name: "AssociationDoesNotExist", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationDoesNotExist", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AssociationExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationExecution", name: "AssociationExecution")
    AssociationExecutionDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationExecutionDoesNotExist", name: "AssociationExecutionDoesNotExist", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationExecutionDoesNotExist", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AssociationExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationExecutionFilter", name: "AssociationExecutionFilter")
    AssociationExecutionFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationExecutionFilterKey", name: "AssociationExecutionFilterKey")
    AssociationExecutionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationExecutionFilterList", name: "AssociationExecutionFilterList", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationExecutionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationExecutionFilterValue", name: "AssociationExecutionFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationExecutionId", name: "AssociationExecutionId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AssociationExecutionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationExecutionTarget", name: "AssociationExecutionTarget")
    AssociationExecutionTargetsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationExecutionTargetsFilter", name: "AssociationExecutionTargetsFilter")
    AssociationExecutionTargetsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationExecutionTargetsFilterKey", name: "AssociationExecutionTargetsFilterKey")
    AssociationExecutionTargetsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationExecutionTargetsFilterList", name: "AssociationExecutionTargetsFilterList", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationExecutionTargetsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationExecutionTargetsFilterValue", name: "AssociationExecutionTargetsFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationExecutionTargetsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationExecutionTargetsList", name: "AssociationExecutionTargetsList")
    AssociationExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationExecutionsList", name: "AssociationExecutionsList")
    AssociationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationFilter", name: "AssociationFilter")
    AssociationFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationFilterKey", name: "AssociationFilterKey")
    AssociationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationFilterList", name: "AssociationFilterList", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationFilterOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationFilterOperatorType", name: "AssociationFilterOperatorType")
    AssociationFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationFilterValue", name: "AssociationFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    AssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationId", name: "AssociationId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AssociationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationIdList", name: "AssociationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AssociationLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationLimitExceeded", name: "AssociationLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    AssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationList", name: "AssociationList")
    AssociationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationName", name: "AssociationName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    AssociationOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationOverview", name: "AssociationOverview")
    AssociationResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationResourceId", name: "AssociationResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AssociationResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationResourceType", name: "AssociationResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AssociationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationStatus", name: "AssociationStatus")
    AssociationStatusAggregatedCount = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#AssociationStatusAggregatedCount", name: "AssociationStatusAggregatedCount")
    AssociationStatusName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationStatusName", name: "AssociationStatusName")
    AssociationSyncCompliance = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AssociationSyncCompliance", name: "AssociationSyncCompliance")
    AssociationVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AssociationVersion", name: "AssociationVersion", traits: {"smithy.api#pattern" => "^(([$]LATEST)|([1-9][0-9]*))$"})
    AssociationVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationVersionInfo", name: "AssociationVersionInfo")
    AssociationVersionLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AssociationVersionLimitExceeded", name: "AssociationVersionLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "AssociationVersionLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    AssociationVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AssociationVersionList", name: "AssociationVersionList", traits: {"smithy.api#length" => {"min" => 1}})
    AttachmentContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AttachmentContent", name: "AttachmentContent")
    AttachmentContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AttachmentContentList", name: "AttachmentContentList")
    AttachmentHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttachmentHash", name: "AttachmentHash", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    AttachmentHashType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AttachmentHashType", name: "AttachmentHashType")
    AttachmentIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttachmentIdentifier", name: "AttachmentIdentifier", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    AttachmentInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AttachmentInformation", name: "AttachmentInformation")
    AttachmentInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AttachmentInformationList", name: "AttachmentInformationList")
    AttachmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttachmentName", name: "AttachmentName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    AttachmentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttachmentUrl", name: "AttachmentUrl")
    AttachmentsSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AttachmentsSource", name: "AttachmentsSource")
    AttachmentsSourceKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AttachmentsSourceKey", name: "AttachmentsSourceKey")
    AttachmentsSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AttachmentsSourceList", name: "AttachmentsSourceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AttachmentsSourceValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttachmentsSourceValue", name: "AttachmentsSourceValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AttachmentsSourceValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AttachmentsSourceValues", name: "AttachmentsSourceValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    AutomationActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationActionName", name: "AutomationActionName", traits: {"smithy.api#pattern" => "^aws:[a-zA-Z]{3,25}$"})
    AutomationDefinitionNotApprovedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationDefinitionNotApprovedException", name: "AutomationDefinitionNotApprovedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationDefinitionNotApproved", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    AutomationDefinitionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationDefinitionNotFoundException", name: "AutomationDefinitionNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationDefinitionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AutomationDefinitionVersionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationDefinitionVersionNotFoundException", name: "AutomationDefinitionVersionNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationDefinitionVersionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AutomationExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecution", name: "AutomationExecution")
    AutomationExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionFilter", name: "AutomationExecutionFilter")
    AutomationExecutionFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AutomationExecutionFilterKey", name: "AutomationExecutionFilterKey")
    AutomationExecutionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AutomationExecutionFilterList", name: "AutomationExecutionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutomationExecutionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationExecutionFilterValue", name: "AutomationExecutionFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    AutomationExecutionFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AutomationExecutionFilterValueList", name: "AutomationExecutionFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutomationExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationExecutionId", name: "AutomationExecutionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    AutomationExecutionInputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionInputs", name: "AutomationExecutionInputs")
    AutomationExecutionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionLimitExceededException", name: "AutomationExecutionLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationExecutionLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    AutomationExecutionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionMetadata", name: "AutomationExecutionMetadata")
    AutomationExecutionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AutomationExecutionMetadataList", name: "AutomationExecutionMetadataList")
    AutomationExecutionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionNotFoundException", name: "AutomationExecutionNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationExecutionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AutomationExecutionPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationExecutionPreview", name: "AutomationExecutionPreview")
    AutomationExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AutomationExecutionStatus", name: "AutomationExecutionStatus")
    AutomationParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationParameterKey", name: "AutomationParameterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AutomationParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#AutomationParameterMap", name: "AutomationParameterMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    AutomationParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationParameterValue", name: "AutomationParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    AutomationParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AutomationParameterValueList", name: "AutomationParameterValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AutomationStepNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AutomationStepNotFoundException", name: "AutomationStepNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AutomationStepNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    AutomationSubtype = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AutomationSubtype", name: "AutomationSubtype")
    AutomationTargetParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AutomationTargetParameterName", name: "AutomationTargetParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AutomationTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AutomationTargets", name: "AutomationTargets", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    AutomationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#AutomationType", name: "AutomationType")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AvailabilityZoneId", name: "AvailabilityZoneId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AzureApplicationDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureApplicationDisplayName", name: "AzureApplicationDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}\\p{P}\\p{M}]*)$"})
    AzureApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureApplicationId", name: "AzureApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AzureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AzureConfiguration", name: "AzureConfiguration")
    AzureSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#AzureSubscription", name: "AzureSubscription")
    AzureSubscriptionDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureSubscriptionDisplayName", name: "AzureSubscriptionDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}\\p{P}\\p{M}]*)$"})
    AzureSubscriptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureSubscriptionId", name: "AzureSubscriptionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AzureSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#AzureSubscriptionList", name: "AzureSubscriptionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 75}})
    AzureTenantDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureTenantDisplayName", name: "AzureTenantDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}\\p{P}\\p{M}]*)$"})
    AzureTenantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#AzureTenantId", name: "AzureTenantId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    BaselineDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#BaselineDescription", name: "BaselineDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    BaselineId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#BaselineId", name: "BaselineId", traits: {"smithy.api#length" => {"min" => 20, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-:/]{20,128}$"})
    BaselineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#BaselineName", name: "BaselineName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    BaselineOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#BaselineOverride", name: "BaselineOverride")
    BatchErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#BatchErrorMessage", name: "BatchErrorMessage")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CalendarNameOrARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CalendarNameOrARN", name: "CalendarNameOrARN")
    CalendarNameOrARNList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CalendarNameOrARNList", name: "CalendarNameOrARNList")
    CalendarState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CalendarState", name: "CalendarState")
    CancelCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CancelCommandRequest", name: "CancelCommandRequest")
    CancelCommandResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CancelCommandResult", name: "CancelCommandResult")
    CancelMaintenanceWindowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CancelMaintenanceWindowExecutionRequest", name: "CancelMaintenanceWindowExecutionRequest")
    CancelMaintenanceWindowExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CancelMaintenanceWindowExecutionResult", name: "CancelMaintenanceWindowExecutionResult")
    Category = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Category", name: "Category", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    CategoryEnumList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CategoryEnumList", name: "CategoryEnumList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CategoryList", name: "CategoryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    ChangeDetailsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ChangeDetailsValue", name: "ChangeDetailsValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    ChangeRequestName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ChangeRequestName", name: "ChangeRequestName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CloudConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudConnectorArn", name: "CloudConnectorArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:ssm:([^:]+):\\d{12}:cloud-connector/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CloudConnectorConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssm#CloudConnectorConfiguration", name: "CloudConnectorConfiguration")
    CloudConnectorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudConnectorDescription", name: "CloudConnectorDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}\\p{P}\\p{M}]*)$"})
    CloudConnectorFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CloudConnectorFilter", name: "CloudConnectorFilter")
    CloudConnectorFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CloudConnectorFilterKey", name: "CloudConnectorFilterKey")
    CloudConnectorFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CloudConnectorFilterList", name: "CloudConnectorFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    CloudConnectorFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudConnectorFilterValue", name: "CloudConnectorFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    CloudConnectorFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CloudConnectorFilterValues", name: "CloudConnectorFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CloudConnectorIamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudConnectorIamRoleArn", name: "CloudConnectorIamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z0-9-]*:iam::\\d{12}:role\\/[\\w-\\/.@+=,]{1,1017}$"})
    CloudConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudConnectorId", name: "CloudConnectorId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    CloudConnectorMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#CloudConnectorMaxResults", name: "CloudConnectorMaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    CloudConnectorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CloudConnectorSummary", name: "CloudConnectorSummary")
    CloudConnectorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CloudConnectorSummaryList", name: "CloudConnectorSummaryList")
    CloudWatchLogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CloudWatchLogGroupName", name: "CloudWatchLogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CloudWatchOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CloudWatchOutputConfig", name: "CloudWatchOutputConfig")
    CloudWatchOutputEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#CloudWatchOutputEnabled", name: "CloudWatchOutputEnabled", traits: {"smithy.api#default" => false})
    Command = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Command", name: "Command")
    CommandFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CommandFilter", name: "CommandFilter")
    CommandFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CommandFilterKey", name: "CommandFilterKey")
    CommandFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CommandFilterList", name: "CommandFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    CommandFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CommandFilterValue", name: "CommandFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    CommandId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CommandId", name: "CommandId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    CommandInvocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CommandInvocation", name: "CommandInvocation")
    CommandInvocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CommandInvocationList", name: "CommandInvocationList")
    CommandInvocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CommandInvocationStatus", name: "CommandInvocationStatus")
    CommandList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CommandList", name: "CommandList")
    CommandMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#CommandMaxResults", name: "CommandMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    CommandPlugin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CommandPlugin", name: "CommandPlugin")
    CommandPluginList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CommandPluginList", name: "CommandPluginList")
    CommandPluginName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CommandPluginName", name: "CommandPluginName", traits: {"smithy.api#length" => {"min" => 4}})
    CommandPluginOutput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#CommandPluginOutput", name: "CommandPluginOutput", traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    CommandPluginStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CommandPluginStatus", name: "CommandPluginStatus")
    CommandStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#CommandStatus", name: "CommandStatus")
    Comment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Comment", name: "Comment", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CompletedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#CompletedCount", name: "CompletedCount", traits: {"smithy.api#default" => 0})
    ComplianceExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceExecutionId", name: "ComplianceExecutionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ComplianceExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceExecutionSummary", name: "ComplianceExecutionSummary")
    ComplianceExecutionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceExecutionType", name: "ComplianceExecutionType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ComplianceFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceFilterValue", name: "ComplianceFilterValue")
    ComplianceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceItem", name: "ComplianceItem")
    ComplianceItemContentHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceItemContentHash", name: "ComplianceItemContentHash", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ComplianceItemDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#ComplianceItemDetails", name: "ComplianceItemDetails")
    ComplianceItemEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceItemEntry", name: "ComplianceItemEntry")
    ComplianceItemEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceItemEntryList", name: "ComplianceItemEntryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    ComplianceItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceItemId", name: "ComplianceItemId")
    ComplianceItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceItemList", name: "ComplianceItemList")
    ComplianceItemTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceItemTitle", name: "ComplianceItemTitle", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ComplianceQueryOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ComplianceQueryOperatorType", name: "ComplianceQueryOperatorType")
    ComplianceResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceResourceId", name: "ComplianceResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ComplianceResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceResourceIdList", name: "ComplianceResourceIdList", traits: {"smithy.api#length" => {"min" => 1}})
    ComplianceResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceResourceType", name: "ComplianceResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ComplianceResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceResourceTypeList", name: "ComplianceResourceTypeList", traits: {"smithy.api#length" => {"min" => 1}})
    ComplianceSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ComplianceSeverity", name: "ComplianceSeverity")
    ComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ComplianceStatus", name: "ComplianceStatus")
    ComplianceStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceStringFilter", name: "ComplianceStringFilter")
    ComplianceStringFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceStringFilterKey", name: "ComplianceStringFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ComplianceStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceStringFilterList", name: "ComplianceStringFilterList")
    ComplianceStringFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceStringFilterValueList", name: "ComplianceStringFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ComplianceSummaryCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ComplianceSummaryCount", name: "ComplianceSummaryCount", traits: {"smithy.api#default" => 0})
    ComplianceSummaryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceSummaryItem", name: "ComplianceSummaryItem")
    ComplianceSummaryItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ComplianceSummaryItemList", name: "ComplianceSummaryItemList")
    ComplianceTypeCountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ComplianceTypeCountLimitExceededException", name: "ComplianceTypeCountLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ComplianceTypeCountLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ComplianceTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComplianceTypeName", name: "ComplianceTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+)$"})
    ComplianceUploadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ComplianceUploadType", name: "ComplianceUploadType")
    CompliantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CompliantSummary", name: "CompliantSummary")
    ComputerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ComputerName", name: "ComputerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ConfigConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ConfigConnectorArn", name: "ConfigConnectorArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:config:([^:]+):\\d{12}:connector/.+$"})
    ConfigurationTargets = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssm#ConfigurationTargets", name: "ConfigurationTargets")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client"})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ConnectionStatus", name: "ConnectionStatus")
    ContentLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ContentLength", name: "ContentLength", traits: {"smithy.api#default" => 0})
    CreateActivationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateActivationRequest", name: "CreateActivationRequest")
    CreateActivationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateActivationResult", name: "CreateActivationResult")
    CreateAssociationBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateAssociationBatchRequest", name: "CreateAssociationBatchRequest")
    CreateAssociationBatchRequestEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#CreateAssociationBatchRequestEntries", name: "CreateAssociationBatchRequestEntries", traits: {"smithy.api#length" => {"min" => 1}})
    CreateAssociationBatchRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateAssociationBatchRequestEntry", name: "CreateAssociationBatchRequestEntry")
    CreateAssociationBatchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateAssociationBatchResult", name: "CreateAssociationBatchResult")
    CreateAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateAssociationRequest", name: "CreateAssociationRequest")
    CreateAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateAssociationResult", name: "CreateAssociationResult")
    CreateCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateCloudConnectorRequest", name: "CreateCloudConnectorRequest")
    CreateCloudConnectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateCloudConnectorResult", name: "CreateCloudConnectorResult")
    CreateDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateDocumentRequest", name: "CreateDocumentRequest")
    CreateDocumentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateDocumentResult", name: "CreateDocumentResult")
    CreateMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateMaintenanceWindowRequest", name: "CreateMaintenanceWindowRequest")
    CreateMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateMaintenanceWindowResult", name: "CreateMaintenanceWindowResult")
    CreateOpsItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateOpsItemRequest", name: "CreateOpsItemRequest")
    CreateOpsItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateOpsItemResponse", name: "CreateOpsItemResponse")
    CreateOpsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateOpsMetadataRequest", name: "CreateOpsMetadataRequest")
    CreateOpsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateOpsMetadataResult", name: "CreateOpsMetadataResult")
    CreatePatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreatePatchBaselineRequest", name: "CreatePatchBaselineRequest")
    CreatePatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreatePatchBaselineResult", name: "CreatePatchBaselineResult")
    CreateResourceDataSyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateResourceDataSyncRequest", name: "CreateResourceDataSyncRequest")
    CreateResourceDataSyncResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CreateResourceDataSyncResult", name: "CreateResourceDataSyncResult")
    CreatedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#CreatedDate", name: "CreatedDate")
    Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Credentials", name: "Credentials")
    CustomSchemaCountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#CustomSchemaCountLimitExceededException", name: "CustomSchemaCountLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomSchemaCountLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#DateTime", name: "DateTime")
    DefaultBaseline = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#DefaultBaseline", name: "DefaultBaseline", traits: {"smithy.api#default" => false})
    DefaultInstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DefaultInstanceName", name: "DefaultInstanceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    DeleteActivationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteActivationRequest", name: "DeleteActivationRequest")
    DeleteActivationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteActivationResult", name: "DeleteActivationResult")
    DeleteAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteAssociationRequest", name: "DeleteAssociationRequest")
    DeleteAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteAssociationResult", name: "DeleteAssociationResult")
    DeleteCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteCloudConnectorRequest", name: "DeleteCloudConnectorRequest")
    DeleteCloudConnectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteCloudConnectorResult", name: "DeleteCloudConnectorResult")
    DeleteDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteDocumentRequest", name: "DeleteDocumentRequest")
    DeleteDocumentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteDocumentResult", name: "DeleteDocumentResult")
    DeleteInventoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteInventoryRequest", name: "DeleteInventoryRequest")
    DeleteInventoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteInventoryResult", name: "DeleteInventoryResult")
    DeleteMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteMaintenanceWindowRequest", name: "DeleteMaintenanceWindowRequest")
    DeleteMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteMaintenanceWindowResult", name: "DeleteMaintenanceWindowResult")
    DeleteOpsItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteOpsItemRequest", name: "DeleteOpsItemRequest")
    DeleteOpsItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteOpsItemResponse", name: "DeleteOpsItemResponse")
    DeleteOpsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteOpsMetadataRequest", name: "DeleteOpsMetadataRequest")
    DeleteOpsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteOpsMetadataResult", name: "DeleteOpsMetadataResult")
    DeleteParameterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteParameterRequest", name: "DeleteParameterRequest")
    DeleteParameterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteParameterResult", name: "DeleteParameterResult")
    DeleteParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteParametersRequest", name: "DeleteParametersRequest")
    DeleteParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteParametersResult", name: "DeleteParametersResult")
    DeletePatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeletePatchBaselineRequest", name: "DeletePatchBaselineRequest")
    DeletePatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeletePatchBaselineResult", name: "DeletePatchBaselineResult")
    DeleteResourceDataSyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteResourceDataSyncRequest", name: "DeleteResourceDataSyncRequest")
    DeleteResourceDataSyncResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteResourceDataSyncResult", name: "DeleteResourceDataSyncResult")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeletionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DeletionMode", name: "DeletionMode")
    DeliveryTimedOutCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#DeliveryTimedOutCount", name: "DeliveryTimedOutCount", traits: {"smithy.api#default" => 0})
    DeregisterManagedInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterManagedInstanceRequest", name: "DeregisterManagedInstanceRequest")
    DeregisterManagedInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterManagedInstanceResult", name: "DeregisterManagedInstanceResult")
    DeregisterPatchBaselineForPatchGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterPatchBaselineForPatchGroupRequest", name: "DeregisterPatchBaselineForPatchGroupRequest")
    DeregisterPatchBaselineForPatchGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterPatchBaselineForPatchGroupResult", name: "DeregisterPatchBaselineForPatchGroupResult")
    DeregisterTargetFromMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterTargetFromMaintenanceWindowRequest", name: "DeregisterTargetFromMaintenanceWindowRequest")
    DeregisterTargetFromMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterTargetFromMaintenanceWindowResult", name: "DeregisterTargetFromMaintenanceWindowResult")
    DeregisterTaskFromMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterTaskFromMaintenanceWindowRequest", name: "DeregisterTaskFromMaintenanceWindowRequest")
    DeregisterTaskFromMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DeregisterTaskFromMaintenanceWindowResult", name: "DeregisterTaskFromMaintenanceWindowResult")
    DescribeActivationsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeActivationsFilter", name: "DescribeActivationsFilter")
    DescribeActivationsFilterKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DescribeActivationsFilterKeys", name: "DescribeActivationsFilterKeys")
    DescribeActivationsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DescribeActivationsFilterList", name: "DescribeActivationsFilterList")
    DescribeActivationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeActivationsRequest", name: "DescribeActivationsRequest")
    DescribeActivationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeActivationsResult", name: "DescribeActivationsResult")
    DescribeAssociationExecutionTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationExecutionTargetsRequest", name: "DescribeAssociationExecutionTargetsRequest")
    DescribeAssociationExecutionTargetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationExecutionTargetsResult", name: "DescribeAssociationExecutionTargetsResult")
    DescribeAssociationExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationExecutionsRequest", name: "DescribeAssociationExecutionsRequest")
    DescribeAssociationExecutionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationExecutionsResult", name: "DescribeAssociationExecutionsResult")
    DescribeAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationRequest", name: "DescribeAssociationRequest")
    DescribeAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAssociationResult", name: "DescribeAssociationResult")
    DescribeAutomationExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAutomationExecutionsRequest", name: "DescribeAutomationExecutionsRequest")
    DescribeAutomationExecutionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAutomationExecutionsResult", name: "DescribeAutomationExecutionsResult")
    DescribeAutomationStepExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAutomationStepExecutionsRequest", name: "DescribeAutomationStepExecutionsRequest")
    DescribeAutomationStepExecutionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAutomationStepExecutionsResult", name: "DescribeAutomationStepExecutionsResult")
    DescribeAvailablePatchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAvailablePatchesRequest", name: "DescribeAvailablePatchesRequest")
    DescribeAvailablePatchesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeAvailablePatchesResult", name: "DescribeAvailablePatchesResult")
    DescribeDocumentPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeDocumentPermissionRequest", name: "DescribeDocumentPermissionRequest")
    DescribeDocumentPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeDocumentPermissionResponse", name: "DescribeDocumentPermissionResponse")
    DescribeDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeDocumentRequest", name: "DescribeDocumentRequest")
    DescribeDocumentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeDocumentResult", name: "DescribeDocumentResult")
    DescribeEffectiveInstanceAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeEffectiveInstanceAssociationsRequest", name: "DescribeEffectiveInstanceAssociationsRequest")
    DescribeEffectiveInstanceAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeEffectiveInstanceAssociationsResult", name: "DescribeEffectiveInstanceAssociationsResult")
    DescribeEffectivePatchesForPatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeEffectivePatchesForPatchBaselineRequest", name: "DescribeEffectivePatchesForPatchBaselineRequest")
    DescribeEffectivePatchesForPatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeEffectivePatchesForPatchBaselineResult", name: "DescribeEffectivePatchesForPatchBaselineResult")
    DescribeInstanceAssociationsStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstanceAssociationsStatusRequest", name: "DescribeInstanceAssociationsStatusRequest")
    DescribeInstanceAssociationsStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstanceAssociationsStatusResult", name: "DescribeInstanceAssociationsStatusResult")
    DescribeInstanceInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstanceInformationRequest", name: "DescribeInstanceInformationRequest")
    DescribeInstanceInformationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstanceInformationResult", name: "DescribeInstanceInformationResult")
    DescribeInstancePatchStatesForPatchGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchStatesForPatchGroupRequest", name: "DescribeInstancePatchStatesForPatchGroupRequest")
    DescribeInstancePatchStatesForPatchGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchStatesForPatchGroupResult", name: "DescribeInstancePatchStatesForPatchGroupResult")
    DescribeInstancePatchStatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchStatesRequest", name: "DescribeInstancePatchStatesRequest")
    DescribeInstancePatchStatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchStatesResult", name: "DescribeInstancePatchStatesResult")
    DescribeInstancePatchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchesRequest", name: "DescribeInstancePatchesRequest")
    DescribeInstancePatchesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePatchesResult", name: "DescribeInstancePatchesResult")
    DescribeInstancePropertiesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#DescribeInstancePropertiesMaxResults", name: "DescribeInstancePropertiesMaxResults", traits: {"smithy.api#range" => {"min" => 5, "max" => 1000}})
    DescribeInstancePropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePropertiesRequest", name: "DescribeInstancePropertiesRequest")
    DescribeInstancePropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInstancePropertiesResult", name: "DescribeInstancePropertiesResult")
    DescribeInventoryDeletionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInventoryDeletionsRequest", name: "DescribeInventoryDeletionsRequest")
    DescribeInventoryDeletionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeInventoryDeletionsResult", name: "DescribeInventoryDeletionsResult")
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTaskInvocationsRequest", name: "DescribeMaintenanceWindowExecutionTaskInvocationsRequest")
    DescribeMaintenanceWindowExecutionTaskInvocationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTaskInvocationsResult", name: "DescribeMaintenanceWindowExecutionTaskInvocationsResult")
    DescribeMaintenanceWindowExecutionTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTasksRequest", name: "DescribeMaintenanceWindowExecutionTasksRequest")
    DescribeMaintenanceWindowExecutionTasksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTasksResult", name: "DescribeMaintenanceWindowExecutionTasksResult")
    DescribeMaintenanceWindowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionsRequest", name: "DescribeMaintenanceWindowExecutionsRequest")
    DescribeMaintenanceWindowExecutionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionsResult", name: "DescribeMaintenanceWindowExecutionsResult")
    DescribeMaintenanceWindowScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowScheduleRequest", name: "DescribeMaintenanceWindowScheduleRequest")
    DescribeMaintenanceWindowScheduleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowScheduleResult", name: "DescribeMaintenanceWindowScheduleResult")
    DescribeMaintenanceWindowTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowTargetsRequest", name: "DescribeMaintenanceWindowTargetsRequest")
    DescribeMaintenanceWindowTargetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowTargetsResult", name: "DescribeMaintenanceWindowTargetsResult")
    DescribeMaintenanceWindowTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowTasksRequest", name: "DescribeMaintenanceWindowTasksRequest")
    DescribeMaintenanceWindowTasksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowTasksResult", name: "DescribeMaintenanceWindowTasksResult")
    DescribeMaintenanceWindowsForTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowsForTargetRequest", name: "DescribeMaintenanceWindowsForTargetRequest")
    DescribeMaintenanceWindowsForTargetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowsForTargetResult", name: "DescribeMaintenanceWindowsForTargetResult")
    DescribeMaintenanceWindowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowsRequest", name: "DescribeMaintenanceWindowsRequest")
    DescribeMaintenanceWindowsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeMaintenanceWindowsResult", name: "DescribeMaintenanceWindowsResult")
    DescribeOpsItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeOpsItemsRequest", name: "DescribeOpsItemsRequest")
    DescribeOpsItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeOpsItemsResponse", name: "DescribeOpsItemsResponse")
    DescribeParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeParametersRequest", name: "DescribeParametersRequest")
    DescribeParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeParametersResult", name: "DescribeParametersResult")
    DescribePatchBaselinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchBaselinesRequest", name: "DescribePatchBaselinesRequest")
    DescribePatchBaselinesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchBaselinesResult", name: "DescribePatchBaselinesResult")
    DescribePatchGroupStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchGroupStateRequest", name: "DescribePatchGroupStateRequest")
    DescribePatchGroupStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchGroupStateResult", name: "DescribePatchGroupStateResult")
    DescribePatchGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchGroupsRequest", name: "DescribePatchGroupsRequest")
    DescribePatchGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchGroupsResult", name: "DescribePatchGroupsResult")
    DescribePatchPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchPropertiesRequest", name: "DescribePatchPropertiesRequest")
    DescribePatchPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribePatchPropertiesResult", name: "DescribePatchPropertiesResult")
    DescribeSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeSessionsRequest", name: "DescribeSessionsRequest")
    DescribeSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DescribeSessionsResponse", name: "DescribeSessionsResponse")
    DescriptionInDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DescriptionInDocument", name: "DescriptionInDocument")
    DisassociateOpsItemRelatedItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DisassociateOpsItemRelatedItemRequest", name: "DisassociateOpsItemRelatedItemRequest")
    DisassociateOpsItemRelatedItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DisassociateOpsItemRelatedItemResponse", name: "DisassociateOpsItemRelatedItemResponse")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}\\p{P}\\p{M}]*)$"})
    DocumentARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentARN", name: "DocumentARN", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.:/]{3,128}$"})
    DocumentAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentAlreadyExists", name: "DocumentAlreadyExists", traits: {"aws.protocols#awsQueryError" => {"code" => "DocumentAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DocumentAuthor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentAuthor", name: "DocumentAuthor")
    DocumentContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentContent", name: "DocumentContent", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentDefaultVersionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentDefaultVersionDescription", name: "DocumentDefaultVersionDescription")
    DocumentDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentDescription", name: "DocumentDescription")
    DocumentDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentDisplayName", name: "DocumentDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\w\\.\\-\\:\\/ ]*$"})
    DocumentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentFilter", name: "DocumentFilter")
    DocumentFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentFilterKey", name: "DocumentFilterKey")
    DocumentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentFilterList", name: "DocumentFilterList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentFilterValue", name: "DocumentFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentFormat", name: "DocumentFormat")
    DocumentHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentHash", name: "DocumentHash", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DocumentHashType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentHashType", name: "DocumentHashType")
    DocumentIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentIdentifier", name: "DocumentIdentifier")
    DocumentIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentIdentifierList", name: "DocumentIdentifierList")
    DocumentKeyValuesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentKeyValuesFilter", name: "DocumentKeyValuesFilter")
    DocumentKeyValuesFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentKeyValuesFilterKey", name: "DocumentKeyValuesFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DocumentKeyValuesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentKeyValuesFilterList", name: "DocumentKeyValuesFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    DocumentKeyValuesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentKeyValuesFilterValue", name: "DocumentKeyValuesFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DocumentKeyValuesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentKeyValuesFilterValues", name: "DocumentKeyValuesFilterValues")
    DocumentLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentLimitExceeded", name: "DocumentLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "DocumentLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DocumentMetadataEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentMetadataEnum", name: "DocumentMetadataEnum")
    DocumentMetadataResponseInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentMetadataResponseInfo", name: "DocumentMetadataResponseInfo")
    DocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentName", name: "DocumentName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    DocumentOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentOwner", name: "DocumentOwner")
    DocumentParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentParameter", name: "DocumentParameter")
    DocumentParameterDefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentParameterDefaultValue", name: "DocumentParameterDefaultValue")
    DocumentParameterDescrption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentParameterDescrption", name: "DocumentParameterDescrption")
    DocumentParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentParameterList", name: "DocumentParameterList")
    DocumentParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentParameterName", name: "DocumentParameterName")
    DocumentParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentParameterType", name: "DocumentParameterType")
    DocumentPermissionLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentPermissionLimit", name: "DocumentPermissionLimit", traits: {"aws.protocols#awsQueryError" => {"code" => "DocumentPermissionLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DocumentPermissionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#DocumentPermissionMaxResults", name: "DocumentPermissionMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    DocumentPermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentPermissionType", name: "DocumentPermissionType")
    DocumentRequires = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentRequires", name: "DocumentRequires")
    DocumentRequiresList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentRequiresList", name: "DocumentRequiresList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentReviewAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentReviewAction", name: "DocumentReviewAction")
    DocumentReviewComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentReviewComment", name: "DocumentReviewComment", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    DocumentReviewCommentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentReviewCommentList", name: "DocumentReviewCommentList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    DocumentReviewCommentSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentReviewCommentSource", name: "DocumentReviewCommentSource")
    DocumentReviewCommentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentReviewCommentType", name: "DocumentReviewCommentType")
    DocumentReviewerResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentReviewerResponseList", name: "DocumentReviewerResponseList")
    DocumentReviewerResponseSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentReviewerResponseSource", name: "DocumentReviewerResponseSource")
    DocumentReviews = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentReviews", name: "DocumentReviews")
    DocumentSchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentSchemaVersion", name: "DocumentSchemaVersion", traits: {"smithy.api#pattern" => "^([0-9]+)\\.([0-9]+)$"})
    DocumentSha1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentSha1", name: "DocumentSha1")
    DocumentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentStatus", name: "DocumentStatus")
    DocumentStatusInformation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentStatusInformation", name: "DocumentStatusInformation")
    DocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#DocumentType", name: "DocumentType")
    DocumentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentVersion", name: "DocumentVersion", traits: {"smithy.api#pattern" => "^([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)$"})
    DocumentVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentVersionInfo", name: "DocumentVersionInfo")
    DocumentVersionLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DocumentVersionLimitExceeded", name: "DocumentVersionLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "DocumentVersionLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DocumentVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#DocumentVersionList", name: "DocumentVersionList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentVersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentVersionName", name: "DocumentVersionName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{1,128}$"})
    DocumentVersionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#DocumentVersionNumber", name: "DocumentVersionNumber", traits: {"smithy.api#pattern" => "^(^[1-9][0-9]*$)$"})
    DoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DoesNotExistException", name: "DoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "DoesNotExistException", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#DryRun", name: "DryRun", traits: {"smithy.api#default" => false})
    DuplicateDocumentContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DuplicateDocumentContent", name: "DuplicateDocumentContent", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateDocumentContent", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DuplicateDocumentVersionName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DuplicateDocumentVersionName", name: "DuplicateDocumentVersionName", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateDocumentVersionName", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    DuplicateInstanceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#DuplicateInstanceId", name: "DuplicateInstanceId", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateInstanceId", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#Duration", name: "Duration", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    EffectiveInstanceAssociationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#EffectiveInstanceAssociationMaxResults", name: "EffectiveInstanceAssociationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    EffectivePatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#EffectivePatch", name: "EffectivePatch")
    EffectivePatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#EffectivePatchList", name: "EffectivePatchList")
    ErrorCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ErrorCount", name: "ErrorCount", traits: {"smithy.api#default" => 0})
    ExcludeAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ExcludeAccount", name: "ExcludeAccount", traits: {"smithy.api#length" => {"min" => 6, "max" => 68}, "smithy.api#pattern" => "^((ou-[a-z0-9]{4,32}-[a-z0-9]{8,32})|(\\d{12}))$"})
    ExcludeAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ExcludeAccounts", name: "ExcludeAccounts", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    ExecutionInputs = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssm#ExecutionInputs", name: "ExecutionInputs")
    ExecutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ExecutionMode", name: "ExecutionMode")
    ExecutionPreview = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssm#ExecutionPreview", name: "ExecutionPreview")
    ExecutionPreviewId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ExecutionPreviewId", name: "ExecutionPreviewId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    ExecutionPreviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ExecutionPreviewStatus", name: "ExecutionPreviewStatus")
    ExecutionRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ExecutionRoleName", name: "ExecutionRoleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@/-]+$"})
    ExpirationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#ExpirationDate", name: "ExpirationDate")
    ExternalAlarmState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ExternalAlarmState", name: "ExternalAlarmState")
    FailedCreateAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#FailedCreateAssociation", name: "FailedCreateAssociation")
    FailedCreateAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#FailedCreateAssociationList", name: "FailedCreateAssociationList")
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#FailureDetails", name: "FailureDetails")
    Fault = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#Fault", name: "Fault")
    FeatureNotAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#FeatureNotAvailableException", name: "FeatureNotAvailableException", traits: {"aws.protocols#awsQueryError" => {"code" => "FeatureNotAvailableException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    GetAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetAccessTokenRequest", name: "GetAccessTokenRequest")
    GetAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetAccessTokenResponse", name: "GetAccessTokenResponse")
    GetAutomationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetAutomationExecutionRequest", name: "GetAutomationExecutionRequest")
    GetAutomationExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetAutomationExecutionResult", name: "GetAutomationExecutionResult")
    GetCalendarStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCalendarStateRequest", name: "GetCalendarStateRequest")
    GetCalendarStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCalendarStateResponse", name: "GetCalendarStateResponse")
    GetCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCloudConnectorRequest", name: "GetCloudConnectorRequest")
    GetCloudConnectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCloudConnectorResult", name: "GetCloudConnectorResult")
    GetCommandInvocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCommandInvocationRequest", name: "GetCommandInvocationRequest")
    GetCommandInvocationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetCommandInvocationResult", name: "GetCommandInvocationResult")
    GetConnectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetConnectionStatusRequest", name: "GetConnectionStatusRequest")
    GetConnectionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetConnectionStatusResponse", name: "GetConnectionStatusResponse")
    GetDefaultPatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDefaultPatchBaselineRequest", name: "GetDefaultPatchBaselineRequest")
    GetDefaultPatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDefaultPatchBaselineResult", name: "GetDefaultPatchBaselineResult")
    GetDeployablePatchSnapshotForInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDeployablePatchSnapshotForInstanceRequest", name: "GetDeployablePatchSnapshotForInstanceRequest")
    GetDeployablePatchSnapshotForInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDeployablePatchSnapshotForInstanceResult", name: "GetDeployablePatchSnapshotForInstanceResult")
    GetDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDocumentRequest", name: "GetDocumentRequest")
    GetDocumentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetDocumentResult", name: "GetDocumentResult")
    GetExecutionPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetExecutionPreviewRequest", name: "GetExecutionPreviewRequest")
    GetExecutionPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetExecutionPreviewResponse", name: "GetExecutionPreviewResponse")
    GetInventoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetInventoryRequest", name: "GetInventoryRequest")
    GetInventoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetInventoryResult", name: "GetInventoryResult")
    GetInventorySchemaMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#GetInventorySchemaMaxResults", name: "GetInventorySchemaMaxResults", traits: {"smithy.api#range" => {"min" => 50, "max" => 200}})
    GetInventorySchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetInventorySchemaRequest", name: "GetInventorySchemaRequest")
    GetInventorySchemaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetInventorySchemaResult", name: "GetInventorySchemaResult")
    GetMaintenanceWindowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionRequest", name: "GetMaintenanceWindowExecutionRequest")
    GetMaintenanceWindowExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionResult", name: "GetMaintenanceWindowExecutionResult")
    GetMaintenanceWindowExecutionTaskInvocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionTaskInvocationRequest", name: "GetMaintenanceWindowExecutionTaskInvocationRequest")
    GetMaintenanceWindowExecutionTaskInvocationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionTaskInvocationResult", name: "GetMaintenanceWindowExecutionTaskInvocationResult")
    GetMaintenanceWindowExecutionTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionTaskRequest", name: "GetMaintenanceWindowExecutionTaskRequest")
    GetMaintenanceWindowExecutionTaskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowExecutionTaskResult", name: "GetMaintenanceWindowExecutionTaskResult")
    GetMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowRequest", name: "GetMaintenanceWindowRequest")
    GetMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowResult", name: "GetMaintenanceWindowResult")
    GetMaintenanceWindowTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowTaskRequest", name: "GetMaintenanceWindowTaskRequest")
    GetMaintenanceWindowTaskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetMaintenanceWindowTaskResult", name: "GetMaintenanceWindowTaskResult")
    GetOpsItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsItemRequest", name: "GetOpsItemRequest")
    GetOpsItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsItemResponse", name: "GetOpsItemResponse")
    GetOpsMetadataMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#GetOpsMetadataMaxResults", name: "GetOpsMetadataMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    GetOpsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsMetadataRequest", name: "GetOpsMetadataRequest")
    GetOpsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsMetadataResult", name: "GetOpsMetadataResult")
    GetOpsSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsSummaryRequest", name: "GetOpsSummaryRequest")
    GetOpsSummaryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetOpsSummaryResult", name: "GetOpsSummaryResult")
    GetParameterHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParameterHistoryRequest", name: "GetParameterHistoryRequest")
    GetParameterHistoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParameterHistoryResult", name: "GetParameterHistoryResult")
    GetParameterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParameterRequest", name: "GetParameterRequest")
    GetParameterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParameterResult", name: "GetParameterResult")
    GetParametersByPathMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#GetParametersByPathMaxResults", name: "GetParametersByPathMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    GetParametersByPathRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParametersByPathRequest", name: "GetParametersByPathRequest")
    GetParametersByPathResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParametersByPathResult", name: "GetParametersByPathResult")
    GetParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParametersRequest", name: "GetParametersRequest")
    GetParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetParametersResult", name: "GetParametersResult")
    GetPatchBaselineForPatchGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetPatchBaselineForPatchGroupRequest", name: "GetPatchBaselineForPatchGroupRequest")
    GetPatchBaselineForPatchGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetPatchBaselineForPatchGroupResult", name: "GetPatchBaselineForPatchGroupResult")
    GetPatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetPatchBaselineRequest", name: "GetPatchBaselineRequest")
    GetPatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetPatchBaselineResult", name: "GetPatchBaselineResult")
    GetResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetResourcePoliciesRequest", name: "GetResourcePoliciesRequest")
    GetResourcePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetResourcePoliciesResponse", name: "GetResourcePoliciesResponse")
    GetResourcePoliciesResponseEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#GetResourcePoliciesResponseEntries", name: "GetResourcePoliciesResponseEntries")
    GetResourcePoliciesResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetResourcePoliciesResponseEntry", name: "GetResourcePoliciesResponseEntry")
    GetServiceSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetServiceSettingRequest", name: "GetServiceSettingRequest")
    GetServiceSettingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#GetServiceSettingResult", name: "GetServiceSettingResult")
    HierarchyLevelLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#HierarchyLevelLimitExceededException", name: "HierarchyLevelLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "HierarchyLevelLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    HierarchyTypeMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#HierarchyTypeMismatchException", name: "HierarchyTypeMismatchException", traits: {"aws.protocols#awsQueryError" => {"code" => "HierarchyTypeMismatchException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#IPAddress", name: "IPAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 46}, "smithy.api#sensitive" => {}})
    ISO8601String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ISO8601String", name: "ISO8601String")
    IamRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#IamRole", name: "IamRole", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    IdempotentParameterMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#IdempotentParameterMismatch", name: "IdempotentParameterMismatch", traits: {"aws.protocols#awsQueryError" => {"code" => "IdempotentParameterMismatch", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ImpactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ImpactType", name: "ImpactType")
    IncompatiblePolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#IncompatiblePolicyException", name: "IncompatiblePolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatiblePolicyException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InstallOverrideList = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstallOverrideList", name: "InstallOverrideList", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^https://.+$|^s3://([^/]+)/(.*?([^/]+))$"})
    InstanceAggregatedAssociationOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceAggregatedAssociationOverview", name: "InstanceAggregatedAssociationOverview")
    InstanceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceAssociation", name: "InstanceAssociation")
    InstanceAssociationExecutionSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceAssociationExecutionSummary", name: "InstanceAssociationExecutionSummary", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    InstanceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceAssociationList", name: "InstanceAssociationList")
    InstanceAssociationOutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceAssociationOutputLocation", name: "InstanceAssociationOutputLocation")
    InstanceAssociationOutputUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceAssociationOutputUrl", name: "InstanceAssociationOutputUrl")
    InstanceAssociationStatusAggregatedCount = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#InstanceAssociationStatusAggregatedCount", name: "InstanceAssociationStatusAggregatedCount")
    InstanceAssociationStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceAssociationStatusInfo", name: "InstanceAssociationStatusInfo")
    InstanceAssociationStatusInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceAssociationStatusInfos", name: "InstanceAssociationStatusInfos")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#InstanceCount", name: "InstanceCount", traits: {"smithy.api#default" => 0})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceId", name: "InstanceId", traits: {"smithy.api#pattern" => "^(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)$"})
    InstanceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceIdList", name: "InstanceIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InstanceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceInfo", name: "InstanceInfo")
    InstanceInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceInformation", name: "InstanceInformation")
    InstanceInformationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceInformationFilter", name: "InstanceInformationFilter")
    InstanceInformationFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InstanceInformationFilterKey", name: "InstanceInformationFilterKey")
    InstanceInformationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceInformationFilterList", name: "InstanceInformationFilterList", traits: {"smithy.api#length" => {"min" => 0}})
    InstanceInformationFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceInformationFilterValue", name: "InstanceInformationFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    InstanceInformationFilterValueSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceInformationFilterValueSet", name: "InstanceInformationFilterValueSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InstanceInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceInformationList", name: "InstanceInformationList")
    InstanceInformationStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceInformationStringFilter", name: "InstanceInformationStringFilter")
    InstanceInformationStringFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceInformationStringFilterKey", name: "InstanceInformationStringFilterKey", traits: {"smithy.api#length" => {"min" => 1}})
    InstanceInformationStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceInformationStringFilterList", name: "InstanceInformationStringFilterList", traits: {"smithy.api#length" => {"min" => 0}})
    InstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceName", name: "InstanceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    InstancePatchState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstancePatchState", name: "InstancePatchState")
    InstancePatchStateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstancePatchStateFilter", name: "InstancePatchStateFilter")
    InstancePatchStateFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstancePatchStateFilterKey", name: "InstancePatchStateFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InstancePatchStateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePatchStateFilterList", name: "InstancePatchStateFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    InstancePatchStateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstancePatchStateFilterValue", name: "InstancePatchStateFilterValue")
    InstancePatchStateFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePatchStateFilterValues", name: "InstancePatchStateFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InstancePatchStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePatchStateList", name: "InstancePatchStateList")
    InstancePatchStateOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InstancePatchStateOperatorType", name: "InstancePatchStateOperatorType")
    InstancePatchStatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePatchStatesList", name: "InstancePatchStatesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    InstanceProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstanceProperties", name: "InstanceProperties")
    InstanceProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstanceProperty", name: "InstanceProperty")
    InstancePropertyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstancePropertyFilter", name: "InstancePropertyFilter")
    InstancePropertyFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InstancePropertyFilterKey", name: "InstancePropertyFilterKey")
    InstancePropertyFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePropertyFilterList", name: "InstancePropertyFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    InstancePropertyFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InstancePropertyFilterOperator", name: "InstancePropertyFilterOperator")
    InstancePropertyFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstancePropertyFilterValue", name: "InstancePropertyFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#pattern" => "^.{1,100000}$"})
    InstancePropertyFilterValueSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePropertyFilterValueSet", name: "InstancePropertyFilterValueSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    InstancePropertyStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InstancePropertyStringFilter", name: "InstancePropertyStringFilter")
    InstancePropertyStringFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstancePropertyStringFilterKey", name: "InstancePropertyStringFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#pattern" => "^.{1,100000}$"})
    InstancePropertyStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InstancePropertyStringFilterList", name: "InstancePropertyStringFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    InstanceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceRole", name: "InstanceRole", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    InstanceState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceState", name: "InstanceState", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    InstanceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceStatus", name: "InstanceStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InstanceTagName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceTagName", name: "InstanceTagName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InstanceType", name: "InstanceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    InstancesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#InstancesCount", name: "InstancesCount", traits: {"smithy.api#default" => 0})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InternalServerError", name: "InternalServerError", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerError", "httpResponseCode" => 500}, "smithy.api#error" => "server"})
    InvalidActivation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidActivation", name: "InvalidActivation", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidActivation", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidActivationId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidActivationId", name: "InvalidActivationId", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidActivationId", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidAggregatorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAggregatorException", name: "InvalidAggregatorException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAggregator", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAllowedPatternException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAllowedPatternException", name: "InvalidAllowedPatternException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAllowedPatternException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAssociation", name: "InvalidAssociation", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAssociation", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAssociationVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAssociationVersion", name: "InvalidAssociationVersion", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAssociationVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAutomationExecutionParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAutomationExecutionParametersException", name: "InvalidAutomationExecutionParametersException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAutomationExecutionParameters", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAutomationSignalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAutomationSignalException", name: "InvalidAutomationSignalException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAutomationSignalException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidAutomationStatusUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidAutomationStatusUpdateException", name: "InvalidAutomationStatusUpdateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAutomationStatusUpdateException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidCommandId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidCommandId", name: "InvalidCommandId", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCommandId", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidDeleteInventoryParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDeleteInventoryParametersException", name: "InvalidDeleteInventoryParametersException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDeleteInventoryParameters", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidDeletionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDeletionIdException", name: "InvalidDeletionIdException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDeletionId", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocument", name: "InvalidDocument", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocument", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidDocumentContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocumentContent", name: "InvalidDocumentContent", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocumentContent", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidDocumentOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocumentOperation", name: "InvalidDocumentOperation", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocumentOperation", "httpResponseCode" => 403}, "smithy.api#error" => "client"})
    InvalidDocumentSchemaVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocumentSchemaVersion", name: "InvalidDocumentSchemaVersion", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocumentSchemaVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidDocumentType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocumentType", name: "InvalidDocumentType", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocumentType", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidDocumentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidDocumentVersion", name: "InvalidDocumentVersion", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDocumentVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidFilter", name: "InvalidFilter", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFilter", "httpResponseCode" => 441}, "smithy.api#error" => "client"})
    InvalidFilterKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidFilterKey", name: "InvalidFilterKey", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFilterKey", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidFilterOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidFilterOption", name: "InvalidFilterOption", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFilterOption", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidFilterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidFilterValue", name: "InvalidFilterValue", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidFilterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidInstanceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInstanceId", name: "InvalidInstanceId", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInstanceId", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidInstanceInformationFilterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInstanceInformationFilterValue", name: "InvalidInstanceInformationFilterValue", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInstanceInformationFilterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidInstancePropertyFilterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInstancePropertyFilterValue", name: "InvalidInstancePropertyFilterValue", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInstancePropertyFilterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidInventoryGroupException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInventoryGroupException", name: "InvalidInventoryGroupException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInventoryGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidInventoryItemContextException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInventoryItemContextException", name: "InvalidInventoryItemContextException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInventoryItemContext", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidInventoryRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidInventoryRequestException", name: "InvalidInventoryRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInventoryRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidItemContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidItemContentException", name: "InvalidItemContentException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidItemContent", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidKeyId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidKeyId", name: "InvalidKeyId", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKeyId", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidNextToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidNextToken", name: "InvalidNextToken", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidNotificationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidNotificationConfig", name: "InvalidNotificationConfig", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNotificationConfig", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidOptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidOptionException", name: "InvalidOptionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOption", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidOutputFolder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidOutputFolder", name: "InvalidOutputFolder", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOutputFolder", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidOutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidOutputLocation", name: "InvalidOutputLocation", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOutputLocation", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidParameters", name: "InvalidParameters", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameters", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidPermissionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidPermissionType", name: "InvalidPermissionType", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPermissionType", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidPluginName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidPluginName", name: "InvalidPluginName", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPluginName", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    InvalidPolicyAttributeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidPolicyAttributeException", name: "InvalidPolicyAttributeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicyAttributeException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidPolicyTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidPolicyTypeException", name: "InvalidPolicyTypeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicyTypeException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidResourceId", name: "InvalidResourceId", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceId", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidResourceType", name: "InvalidResourceType", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceType", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidResultAttributeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidResultAttributeException", name: "InvalidResultAttributeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResultAttribute", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidRole", name: "InvalidRole", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRole", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidSchedule", name: "InvalidSchedule", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSchedule", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidTag", name: "InvalidTag", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTag", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidTarget", name: "InvalidTarget", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTarget", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidTargetMaps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidTargetMaps", name: "InvalidTargetMaps", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTargetMaps", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidTypeNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidTypeNameException", name: "InvalidTypeNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTypeName", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvalidUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvalidUpdate", name: "InvalidUpdate", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUpdate", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InventoryAggregator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryAggregator", name: "InventoryAggregator")
    InventoryAggregatorExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryAggregatorExpression", name: "InventoryAggregatorExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    InventoryAggregatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryAggregatorList", name: "InventoryAggregatorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    InventoryAttributeDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InventoryAttributeDataType", name: "InventoryAttributeDataType")
    InventoryDeletionLastStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryDeletionLastStatusMessage", name: "InventoryDeletionLastStatusMessage")
    InventoryDeletionLastStatusUpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#InventoryDeletionLastStatusUpdateTime", name: "InventoryDeletionLastStatusUpdateTime")
    InventoryDeletionStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#InventoryDeletionStartTime", name: "InventoryDeletionStartTime")
    InventoryDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InventoryDeletionStatus", name: "InventoryDeletionStatus")
    InventoryDeletionStatusItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryDeletionStatusItem", name: "InventoryDeletionStatusItem")
    InventoryDeletionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryDeletionSummary", name: "InventoryDeletionSummary")
    InventoryDeletionSummaryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryDeletionSummaryItem", name: "InventoryDeletionSummaryItem")
    InventoryDeletionSummaryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryDeletionSummaryItems", name: "InventoryDeletionSummaryItems")
    InventoryDeletionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryDeletionsList", name: "InventoryDeletionsList")
    InventoryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryFilter", name: "InventoryFilter")
    InventoryFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryFilterKey", name: "InventoryFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InventoryFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryFilterList", name: "InventoryFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    InventoryFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryFilterValue", name: "InventoryFilterValue")
    InventoryFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryFilterValueList", name: "InventoryFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    InventoryGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryGroup", name: "InventoryGroup")
    InventoryGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryGroupList", name: "InventoryGroupList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    InventoryGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryGroupName", name: "InventoryGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    InventoryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryItem", name: "InventoryItem")
    InventoryItemAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryItemAttribute", name: "InventoryItemAttribute")
    InventoryItemAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryItemAttributeList", name: "InventoryItemAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InventoryItemAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemAttributeName", name: "InventoryItemAttributeName")
    InventoryItemCaptureTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemCaptureTime", name: "InventoryItemCaptureTime", traits: {"smithy.api#pattern" => "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"})
    InventoryItemContentContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#InventoryItemContentContext", name: "InventoryItemContentContext", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InventoryItemContentHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemContentHash", name: "InventoryItemContentHash", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    InventoryItemEntry = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#InventoryItemEntry", name: "InventoryItemEntry", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InventoryItemEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryItemEntryList", name: "InventoryItemEntryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    InventoryItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryItemList", name: "InventoryItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    InventoryItemSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryItemSchema", name: "InventoryItemSchema")
    InventoryItemSchemaResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryItemSchemaResultList", name: "InventoryItemSchemaResultList")
    InventoryItemSchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemSchemaVersion", name: "InventoryItemSchemaVersion", traits: {"smithy.api#pattern" => "^([0-9]{1,6})(\\.[0-9]{1,6})$"})
    InventoryItemTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemTypeName", name: "InventoryItemTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(AWS|Custom):.*$"})
    InventoryItemTypeNameFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryItemTypeNameFilter", name: "InventoryItemTypeNameFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    InventoryQueryOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InventoryQueryOperatorType", name: "InventoryQueryOperatorType")
    InventoryResultEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryResultEntity", name: "InventoryResultEntity")
    InventoryResultEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryResultEntityId", name: "InventoryResultEntityId")
    InventoryResultEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#InventoryResultEntityList", name: "InventoryResultEntityList")
    InventoryResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InventoryResultItem", name: "InventoryResultItem")
    InventoryResultItemKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryResultItemKey", name: "InventoryResultItemKey")
    InventoryResultItemMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#InventoryResultItemMap", name: "InventoryResultItemMap")
    InventorySchemaDeleteOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#InventorySchemaDeleteOption", name: "InventorySchemaDeleteOption")
    InventoryTypeDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InventoryTypeDisplayName", name: "InventoryTypeDisplayName")
    InvocationDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#InvocationDoesNotExist", name: "InvocationDoesNotExist", traits: {"aws.protocols#awsQueryError" => {"code" => "InvocationDoesNotExist", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    InvocationTraceOutput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#InvocationTraceOutput", name: "InvocationTraceOutput", traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}})
    IsSubTypeSchema = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#IsSubTypeSchema", name: "IsSubTypeSchema", traits: {"smithy.api#default" => false})
    ItemContentMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ItemContentMismatchException", name: "ItemContentMismatchException", traits: {"aws.protocols#awsQueryError" => {"code" => "ItemContentMismatch", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ItemSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ItemSizeLimitExceededException", name: "ItemSizeLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ItemSizeLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#KeyList", name: "KeyList")
    KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#KeyName", name: "KeyName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    LabelParameterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#LabelParameterVersionRequest", name: "LabelParameterVersionRequest")
    LabelParameterVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#LabelParameterVersionResult", name: "LabelParameterVersionResult")
    LastResourceDataSyncMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#LastResourceDataSyncMessage", name: "LastResourceDataSyncMessage")
    LastResourceDataSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#LastResourceDataSyncStatus", name: "LastResourceDataSyncStatus")
    LastResourceDataSyncTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#LastResourceDataSyncTime", name: "LastResourceDataSyncTime")
    LastSuccessfulResourceDataSyncTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#LastSuccessfulResourceDataSyncTime", name: "LastSuccessfulResourceDataSyncTime")
    ListAssociationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListAssociationVersionsRequest", name: "ListAssociationVersionsRequest")
    ListAssociationVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListAssociationVersionsResult", name: "ListAssociationVersionsResult")
    ListAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListAssociationsRequest", name: "ListAssociationsRequest")
    ListAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListAssociationsResult", name: "ListAssociationsResult")
    ListCloudConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCloudConnectorsRequest", name: "ListCloudConnectorsRequest")
    ListCloudConnectorsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCloudConnectorsResult", name: "ListCloudConnectorsResult")
    ListCommandInvocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCommandInvocationsRequest", name: "ListCommandInvocationsRequest")
    ListCommandInvocationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCommandInvocationsResult", name: "ListCommandInvocationsResult")
    ListCommandsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCommandsRequest", name: "ListCommandsRequest")
    ListCommandsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListCommandsResult", name: "ListCommandsResult")
    ListComplianceItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListComplianceItemsRequest", name: "ListComplianceItemsRequest")
    ListComplianceItemsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListComplianceItemsResult", name: "ListComplianceItemsResult")
    ListComplianceSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListComplianceSummariesRequest", name: "ListComplianceSummariesRequest")
    ListComplianceSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListComplianceSummariesResult", name: "ListComplianceSummariesResult")
    ListDocumentMetadataHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentMetadataHistoryRequest", name: "ListDocumentMetadataHistoryRequest")
    ListDocumentMetadataHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentMetadataHistoryResponse", name: "ListDocumentMetadataHistoryResponse")
    ListDocumentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentVersionsRequest", name: "ListDocumentVersionsRequest")
    ListDocumentVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentVersionsResult", name: "ListDocumentVersionsResult")
    ListDocumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentsRequest", name: "ListDocumentsRequest")
    ListDocumentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListDocumentsResult", name: "ListDocumentsResult")
    ListInventoryEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListInventoryEntriesRequest", name: "ListInventoryEntriesRequest")
    ListInventoryEntriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListInventoryEntriesResult", name: "ListInventoryEntriesResult")
    ListNodesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListNodesRequest", name: "ListNodesRequest")
    ListNodesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListNodesResult", name: "ListNodesResult")
    ListNodesSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListNodesSummaryRequest", name: "ListNodesSummaryRequest")
    ListNodesSummaryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListNodesSummaryResult", name: "ListNodesSummaryResult")
    ListOpsItemEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsItemEventsRequest", name: "ListOpsItemEventsRequest")
    ListOpsItemEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsItemEventsResponse", name: "ListOpsItemEventsResponse")
    ListOpsItemRelatedItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsItemRelatedItemsRequest", name: "ListOpsItemRelatedItemsRequest")
    ListOpsItemRelatedItemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsItemRelatedItemsResponse", name: "ListOpsItemRelatedItemsResponse")
    ListOpsMetadataMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ListOpsMetadataMaxResults", name: "ListOpsMetadataMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListOpsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsMetadataRequest", name: "ListOpsMetadataRequest")
    ListOpsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListOpsMetadataResult", name: "ListOpsMetadataResult")
    ListResourceComplianceSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListResourceComplianceSummariesRequest", name: "ListResourceComplianceSummariesRequest")
    ListResourceComplianceSummariesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListResourceComplianceSummariesResult", name: "ListResourceComplianceSummariesResult")
    ListResourceDataSyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListResourceDataSyncRequest", name: "ListResourceDataSyncRequest")
    ListResourceDataSyncResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListResourceDataSyncResult", name: "ListResourceDataSyncResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    LoggingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#LoggingInfo", name: "LoggingInfo")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MaintenanceWindowAllowUnassociatedTargets = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#MaintenanceWindowAllowUnassociatedTargets", name: "MaintenanceWindowAllowUnassociatedTargets", traits: {"smithy.api#default" => false})
    MaintenanceWindowAutomationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowAutomationParameters", name: "MaintenanceWindowAutomationParameters")
    MaintenanceWindowCutoff = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowCutoff", name: "MaintenanceWindowCutoff", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 23}})
    MaintenanceWindowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowDescription", name: "MaintenanceWindowDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    MaintenanceWindowDurationHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowDurationHours", name: "MaintenanceWindowDurationHours", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    MaintenanceWindowEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#MaintenanceWindowEnabled", name: "MaintenanceWindowEnabled", traits: {"smithy.api#default" => false})
    MaintenanceWindowExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecution", name: "MaintenanceWindowExecution")
    MaintenanceWindowExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionId", name: "MaintenanceWindowExecutionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    MaintenanceWindowExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionList", name: "MaintenanceWindowExecutionList")
    MaintenanceWindowExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionStatus", name: "MaintenanceWindowExecutionStatus")
    MaintenanceWindowExecutionStatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionStatusDetails", name: "MaintenanceWindowExecutionStatusDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    MaintenanceWindowExecutionTaskExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskExecutionId", name: "MaintenanceWindowExecutionTaskExecutionId")
    MaintenanceWindowExecutionTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskId", name: "MaintenanceWindowExecutionTaskId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    MaintenanceWindowExecutionTaskIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskIdList", name: "MaintenanceWindowExecutionTaskIdList")
    MaintenanceWindowExecutionTaskIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskIdentity", name: "MaintenanceWindowExecutionTaskIdentity")
    MaintenanceWindowExecutionTaskIdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskIdentityList", name: "MaintenanceWindowExecutionTaskIdentityList")
    MaintenanceWindowExecutionTaskInvocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskInvocationId", name: "MaintenanceWindowExecutionTaskInvocationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    MaintenanceWindowExecutionTaskInvocationIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskInvocationIdentity", name: "MaintenanceWindowExecutionTaskInvocationIdentity")
    MaintenanceWindowExecutionTaskInvocationIdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskInvocationIdentityList", name: "MaintenanceWindowExecutionTaskInvocationIdentityList")
    MaintenanceWindowExecutionTaskInvocationParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowExecutionTaskInvocationParameters", name: "MaintenanceWindowExecutionTaskInvocationParameters", traits: {"smithy.api#sensitive" => {}})
    MaintenanceWindowFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowFilter", name: "MaintenanceWindowFilter")
    MaintenanceWindowFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowFilterKey", name: "MaintenanceWindowFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaintenanceWindowFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowFilterList", name: "MaintenanceWindowFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    MaintenanceWindowFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowFilterValue", name: "MaintenanceWindowFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MaintenanceWindowFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowFilterValues", name: "MaintenanceWindowFilterValues")
    MaintenanceWindowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowId", name: "MaintenanceWindowId", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^mw-[0-9a-f]{17}$"})
    MaintenanceWindowIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowIdentity", name: "MaintenanceWindowIdentity")
    MaintenanceWindowIdentityForTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowIdentityForTarget", name: "MaintenanceWindowIdentityForTarget")
    MaintenanceWindowIdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowIdentityList", name: "MaintenanceWindowIdentityList")
    MaintenanceWindowLambdaClientContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowLambdaClientContext", name: "MaintenanceWindowLambdaClientContext", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    MaintenanceWindowLambdaParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowLambdaParameters", name: "MaintenanceWindowLambdaParameters")
    MaintenanceWindowLambdaPayload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ssm#MaintenanceWindowLambdaPayload", name: "MaintenanceWindowLambdaPayload", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    MaintenanceWindowLambdaQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowLambdaQualifier", name: "MaintenanceWindowLambdaQualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaintenanceWindowMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowMaxResults", name: "MaintenanceWindowMaxResults", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    MaintenanceWindowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowName", name: "MaintenanceWindowName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,128}$"})
    MaintenanceWindowOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowOffset", name: "MaintenanceWindowOffset", traits: {"smithy.api#range" => {"min" => 1, "max" => 6}})
    MaintenanceWindowResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#MaintenanceWindowResourceType", name: "MaintenanceWindowResourceType")
    MaintenanceWindowRunCommandParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowRunCommandParameters", name: "MaintenanceWindowRunCommandParameters")
    MaintenanceWindowSchedule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowSchedule", name: "MaintenanceWindowSchedule", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MaintenanceWindowSearchMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowSearchMaxResults", name: "MaintenanceWindowSearchMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    MaintenanceWindowStepFunctionsInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowStepFunctionsInput", name: "MaintenanceWindowStepFunctionsInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    MaintenanceWindowStepFunctionsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowStepFunctionsName", name: "MaintenanceWindowStepFunctionsName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    MaintenanceWindowStepFunctionsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowStepFunctionsParameters", name: "MaintenanceWindowStepFunctionsParameters")
    MaintenanceWindowStringDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowStringDateTime", name: "MaintenanceWindowStringDateTime")
    MaintenanceWindowTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTarget", name: "MaintenanceWindowTarget")
    MaintenanceWindowTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTargetId", name: "MaintenanceWindowTargetId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    MaintenanceWindowTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTargetList", name: "MaintenanceWindowTargetList")
    MaintenanceWindowTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTask", name: "MaintenanceWindowTask")
    MaintenanceWindowTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskArn", name: "MaintenanceWindowTaskArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    MaintenanceWindowTaskCutoffBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskCutoffBehavior", name: "MaintenanceWindowTaskCutoffBehavior")
    MaintenanceWindowTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskId", name: "MaintenanceWindowTaskId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"})
    MaintenanceWindowTaskInvocationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskInvocationParameters", name: "MaintenanceWindowTaskInvocationParameters")
    MaintenanceWindowTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskList", name: "MaintenanceWindowTaskList")
    MaintenanceWindowTaskParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParameterName", name: "MaintenanceWindowTaskParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MaintenanceWindowTaskParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParameterValue", name: "MaintenanceWindowTaskParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    MaintenanceWindowTaskParameterValueExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParameterValueExpression", name: "MaintenanceWindowTaskParameterValueExpression", traits: {"smithy.api#sensitive" => {}})
    MaintenanceWindowTaskParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParameterValueList", name: "MaintenanceWindowTaskParameterValueList", traits: {"smithy.api#sensitive" => {}})
    MaintenanceWindowTaskParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParameters", name: "MaintenanceWindowTaskParameters", traits: {"smithy.api#sensitive" => {}})
    MaintenanceWindowTaskParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskParametersList", name: "MaintenanceWindowTaskParametersList", traits: {"smithy.api#sensitive" => {}})
    MaintenanceWindowTaskPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskPriority", name: "MaintenanceWindowTaskPriority", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MaintenanceWindowTaskTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskTargetId", name: "MaintenanceWindowTaskTargetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}})
    MaintenanceWindowTaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTaskType", name: "MaintenanceWindowTaskType")
    MaintenanceWindowTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaintenanceWindowTimezone", name: "MaintenanceWindowTimezone")
    MaintenanceWindowsForTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MaintenanceWindowsForTargetList", name: "MaintenanceWindowsForTargetList")
    MalformedResourcePolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MalformedResourcePolicyDocumentException", name: "MalformedResourcePolicyDocumentException", traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedResourcePolicyDocumentException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ManagedInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ManagedInstanceId", name: "ManagedInstanceId", traits: {"smithy.api#length" => {"min" => 20, "max" => 124}, "smithy.api#pattern" => "^(^mi-[0-9a-f]{17}$)|(^eks_c:[0-9A-Za-z][A-Za-z0-9\\-_]{0,99}_\\w{17}$)$"})
    ManagedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ManagedStatus", name: "ManagedStatus")
    MaxConcurrency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaxConcurrency", name: "MaxConcurrency", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#pattern" => "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"})
    MaxDocumentSizeExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MaxDocumentSizeExceeded", name: "MaxDocumentSizeExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "MaxDocumentSizeExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    MaxErrors = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaxErrors", name: "MaxErrors", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#pattern" => "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsEC2Compatible = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#MaxResultsEC2Compatible", name: "MaxResultsEC2Compatible", traits: {"smithy.api#range" => {"min" => 5, "max" => 50}})
    MaxSessionDuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MaxSessionDuration", name: "MaxSessionDuration", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|1[0-4][0-3][0-9]|1440)$"})
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MetadataKey", name: "MetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    MetadataKeysToDeleteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#MetadataKeysToDeleteList", name: "MetadataKeysToDeleteList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#MetadataMap", name: "MetadataMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MetadataValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#MetadataValue", name: "MetadataValue")
    MetadataValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#MetadataValueString", name: "MetadataValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ModifyDocumentPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ModifyDocumentPermissionRequest", name: "ModifyDocumentPermissionRequest")
    ModifyDocumentPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ModifyDocumentPermissionResponse", name: "ModifyDocumentPermissionResponse")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NextToken", name: "NextToken")
    NoLongerSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NoLongerSupportedException", name: "NoLongerSupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "NoLongerSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Node", name: "Node")
    NodeAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeAccountId", name: "NodeAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    NodeAggregator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NodeAggregator", name: "NodeAggregator")
    NodeAggregatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NodeAggregatorList", name: "NodeAggregatorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    NodeAggregatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NodeAggregatorType", name: "NodeAggregatorType")
    NodeAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NodeAttributeName", name: "NodeAttributeName")
    NodeCaptureTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#NodeCaptureTime", name: "NodeCaptureTime")
    NodeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NodeFilter", name: "NodeFilter")
    NodeFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NodeFilterKey", name: "NodeFilterKey")
    NodeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NodeFilterList", name: "NodeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    NodeFilterOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NodeFilterOperatorType", name: "NodeFilterOperatorType")
    NodeFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeFilterValue", name: "NodeFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    NodeFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NodeFilterValueList", name: "NodeFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    NodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeId", name: "NodeId", traits: {"smithy.api#pattern" => "^(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)$"})
    NodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NodeList", name: "NodeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NodeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeName", name: "NodeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    NodeOrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeOrganizationalUnitId", name: "NodeOrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 1, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    NodeOrganizationalUnitPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeOrganizationalUnitPath", name: "NodeOrganizationalUnitPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    NodeOwnerInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NodeOwnerInfo", name: "NodeOwnerInfo")
    NodeRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NodeRegion", name: "NodeRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    NodeSummary = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#NodeSummary", name: "NodeSummary", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    NodeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NodeSummaryList", name: "NodeSummaryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    NodeType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssm#NodeType", name: "NodeType")
    NodeTypeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NodeTypeName", name: "NodeTypeName")
    NonCompliantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NonCompliantSummary", name: "NonCompliantSummary")
    NormalStringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#NormalStringMap", name: "NormalStringMap")
    NotificationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#NotificationArn", name: "NotificationArn")
    NotificationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#NotificationConfig", name: "NotificationConfig")
    NotificationEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NotificationEvent", name: "NotificationEvent")
    NotificationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#NotificationEventList", name: "NotificationEventList")
    NotificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#NotificationType", name: "NotificationType")
    OperatingSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OperatingSystem", name: "OperatingSystem")
    OpsAggregator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsAggregator", name: "OpsAggregator")
    OpsAggregatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsAggregatorList", name: "OpsAggregatorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    OpsAggregatorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsAggregatorType", name: "OpsAggregatorType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(range|count|sum)$"})
    OpsAggregatorValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsAggregatorValue", name: "OpsAggregatorValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    OpsAggregatorValueKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsAggregatorValueKey", name: "OpsAggregatorValueKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    OpsAggregatorValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#OpsAggregatorValueMap", name: "OpsAggregatorValueMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    OpsDataAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsDataAttributeName", name: "OpsDataAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OpsDataTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsDataTypeName", name: "OpsDataTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(AWS|Custom):.*$"})
    OpsEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsEntity", name: "OpsEntity")
    OpsEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsEntityId", name: "OpsEntityId")
    OpsEntityItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsEntityItem", name: "OpsEntityItem")
    OpsEntityItemCaptureTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsEntityItemCaptureTime", name: "OpsEntityItemCaptureTime", traits: {"smithy.api#pattern" => "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"})
    OpsEntityItemEntry = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#OpsEntityItemEntry", name: "OpsEntityItemEntry", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    OpsEntityItemEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsEntityItemEntryList", name: "OpsEntityItemEntryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    OpsEntityItemKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsEntityItemKey", name: "OpsEntityItemKey")
    OpsEntityItemMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#OpsEntityItemMap", name: "OpsEntityItemMap")
    OpsEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsEntityList", name: "OpsEntityList")
    OpsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsFilter", name: "OpsFilter")
    OpsFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsFilterKey", name: "OpsFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    OpsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsFilterList", name: "OpsFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    OpsFilterOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsFilterOperatorType", name: "OpsFilterOperatorType")
    OpsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsFilterValue", name: "OpsFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    OpsFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsFilterValueList", name: "OpsFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    OpsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItem", name: "OpsItem")
    OpsItemAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemAccessDeniedException", name: "OpsItemAccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemAccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client"})
    OpsItemAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemAccountId", name: "OpsItemAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    OpsItemAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemAlreadyExistsException", name: "OpsItemAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemArn", name: "OpsItemArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:ssm:[a-z0-9-\\.]{0,63}:[0-9]{12}:opsitem"})
    OpsItemCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemCategory", name: "OpsItemCategory", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsItemConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemConflictException", name: "OpsItemConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client"})
    OpsItemDataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemDataKey", name: "OpsItemDataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsItemDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemDataType", name: "OpsItemDataType")
    OpsItemDataValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemDataValue", name: "OpsItemDataValue")
    OpsItemDataValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemDataValueString", name: "OpsItemDataValueString", traits: {"smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    OpsItemDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemDescription", name: "OpsItemDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    OpsItemEventFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemEventFilter", name: "OpsItemEventFilter")
    OpsItemEventFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemEventFilterKey", name: "OpsItemEventFilterKey")
    OpsItemEventFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemEventFilterOperator", name: "OpsItemEventFilterOperator")
    OpsItemEventFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemEventFilterValue", name: "OpsItemEventFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^(oi)-[0-9a-f]{12}$"})
    OpsItemEventFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemEventFilterValues", name: "OpsItemEventFilterValues")
    OpsItemEventFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemEventFilters", name: "OpsItemEventFilters")
    OpsItemEventMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#OpsItemEventMaxResults", name: "OpsItemEventMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    OpsItemEventSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemEventSummaries", name: "OpsItemEventSummaries")
    OpsItemEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemEventSummary", name: "OpsItemEventSummary")
    OpsItemFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemFilter", name: "OpsItemFilter")
    OpsItemFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemFilterKey", name: "OpsItemFilterKey")
    OpsItemFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemFilterOperator", name: "OpsItemFilterOperator")
    OpsItemFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemFilterValue", name: "OpsItemFilterValue")
    OpsItemFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemFilterValues", name: "OpsItemFilterValues")
    OpsItemFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemFilters", name: "OpsItemFilters")
    OpsItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemId", name: "OpsItemId", traits: {"smithy.api#pattern" => "^(oi)-[0-9a-f]{12}$"})
    OpsItemIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemIdentity", name: "OpsItemIdentity")
    OpsItemInvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemInvalidParameterException", name: "OpsItemInvalidParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemInvalidParameterException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemLimitExceededException", name: "OpsItemLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#OpsItemMaxResults", name: "OpsItemMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    OpsItemNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemNotFoundException", name: "OpsItemNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemNotification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemNotification", name: "OpsItemNotification")
    OpsItemNotifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemNotifications", name: "OpsItemNotifications")
    OpsItemOperationalData = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#OpsItemOperationalData", name: "OpsItemOperationalData")
    OpsItemOpsDataKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemOpsDataKeysList", name: "OpsItemOpsDataKeysList")
    OpsItemParameterNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemParameterNamesList", name: "OpsItemParameterNamesList")
    OpsItemPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#OpsItemPriority", name: "OpsItemPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    OpsItemRelatedItemAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAlreadyExistsException", name: "OpsItemRelatedItemAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemRelatedItemAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemRelatedItemAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAssociationId", name: "OpsItemRelatedItemAssociationId")
    OpsItemRelatedItemAssociationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAssociationNotFoundException", name: "OpsItemRelatedItemAssociationNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsItemRelatedItemAssociationNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsItemRelatedItemAssociationResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAssociationResourceType", name: "OpsItemRelatedItemAssociationResourceType")
    OpsItemRelatedItemAssociationResourceUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAssociationResourceUri", name: "OpsItemRelatedItemAssociationResourceUri")
    OpsItemRelatedItemAssociationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemAssociationType", name: "OpsItemRelatedItemAssociationType")
    OpsItemRelatedItemSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemSummaries", name: "OpsItemRelatedItemSummaries")
    OpsItemRelatedItemSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemSummary", name: "OpsItemRelatedItemSummary")
    OpsItemRelatedItemsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilter", name: "OpsItemRelatedItemsFilter")
    OpsItemRelatedItemsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilterKey", name: "OpsItemRelatedItemsFilterKey")
    OpsItemRelatedItemsFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilterOperator", name: "OpsItemRelatedItemsFilterOperator")
    OpsItemRelatedItemsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilterValue", name: "OpsItemRelatedItemsFilterValue")
    OpsItemRelatedItemsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilterValues", name: "OpsItemRelatedItemsFilterValues")
    OpsItemRelatedItemsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsFilters", name: "OpsItemRelatedItemsFilters")
    OpsItemRelatedItemsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#OpsItemRelatedItemsMaxResults", name: "OpsItemRelatedItemsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    OpsItemSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemSeverity", name: "OpsItemSeverity", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsItemSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemSource", name: "OpsItemSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#OpsItemStatus", name: "OpsItemStatus")
    OpsItemSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsItemSummaries", name: "OpsItemSummaries")
    OpsItemSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsItemSummary", name: "OpsItemSummary")
    OpsItemTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemTitle", name: "OpsItemTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsItemType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsItemType", name: "OpsItemType")
    OpsMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadata", name: "OpsMetadata")
    OpsMetadataAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataAlreadyExistsException", name: "OpsMetadataAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataAlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsMetadataArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsMetadataArn", name: "OpsMetadataArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:ssm:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:opsmetadata\\/([a-zA-Z0-9-_\\.\\/]*)$"})
    OpsMetadataFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataFilter", name: "OpsMetadataFilter")
    OpsMetadataFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsMetadataFilterKey", name: "OpsMetadataFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsMetadataFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsMetadataFilterList", name: "OpsMetadataFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    OpsMetadataFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsMetadataFilterValue", name: "OpsMetadataFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    OpsMetadataFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsMetadataFilterValueList", name: "OpsMetadataFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OpsMetadataInvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataInvalidArgumentException", name: "OpsMetadataInvalidArgumentException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataInvalidArgumentException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    OpsMetadataKeyLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataKeyLimitExceededException", name: "OpsMetadataKeyLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataKeyLimitExceededException", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    OpsMetadataLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataLimitExceededException", name: "OpsMetadataLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataLimitExceededException", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    OpsMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsMetadataList", name: "OpsMetadataList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OpsMetadataNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataNotFoundException", name: "OpsMetadataNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    OpsMetadataResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OpsMetadataResourceId", name: "OpsMetadataResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    OpsMetadataTooManyUpdatesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsMetadataTooManyUpdatesException", name: "OpsMetadataTooManyUpdatesException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpsMetadataTooManyUpdatesException", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    OpsResultAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OpsResultAttribute", name: "OpsResultAttribute")
    OpsResultAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#OpsResultAttributeList", name: "OpsResultAttributeList", traits: {"smithy.api#length" => {"min" => 1}})
    OutputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#OutputSource", name: "OutputSource")
    OutputSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OutputSourceId", name: "OutputSourceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    OutputSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OutputSourceType", name: "OutputSourceType")
    OwnerInformation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#OwnerInformation", name: "OwnerInformation", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    PSParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PSParameterName", name: "PSParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PSParameterSelector = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PSParameterSelector", name: "PSParameterSelector", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PSParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PSParameterValue", name: "PSParameterValue", traits: {"smithy.api#sensitive" => {}})
    PSParameterVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PSParameterVersion", name: "PSParameterVersion", traits: {"smithy.api#default" => 0})
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Parameter", name: "Parameter")
    ParameterAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterAlreadyExists", name: "ParameterAlreadyExists", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ParameterDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterDataType", name: "ParameterDataType", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterDescription", name: "ParameterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ParameterHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterHistory", name: "ParameterHistory")
    ParameterHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterHistoryList", name: "ParameterHistoryList")
    ParameterInlinePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterInlinePolicy", name: "ParameterInlinePolicy")
    ParameterKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterKeyId", name: "ParameterKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([a-zA-Z0-9:/_-]+)$"})
    ParameterLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterLabel", name: "ParameterLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ParameterLabelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterLabelList", name: "ParameterLabelList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ParameterLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterLimitExceeded", name: "ParameterLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    ParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterList", name: "ParameterList")
    ParameterMaxVersionLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterMaxVersionLimitExceeded", name: "ParameterMaxVersionLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterMaxVersionLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ParameterMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterMetadata", name: "ParameterMetadata")
    ParameterMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterMetadataList", name: "ParameterMetadataList")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterName", name: "ParameterName")
    ParameterNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterNameList", name: "ParameterNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ParameterNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterNotFound", name: "ParameterNotFound", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    ParameterPatternMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterPatternMismatchException", name: "ParameterPatternMismatchException", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterPatternMismatchException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ParameterPolicies = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterPolicies", name: "ParameterPolicies", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ParameterPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterPolicyList", name: "ParameterPolicyList")
    ParameterStringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterStringFilter", name: "ParameterStringFilter")
    ParameterStringFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterStringFilterKey", name: "ParameterStringFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 132}, "smithy.api#pattern" => "^(tag:.+|Name|Type|KeyId|Path|Label|Tier|DataType)$"})
    ParameterStringFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterStringFilterList", name: "ParameterStringFilterList")
    ParameterStringFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterStringFilterValue", name: "ParameterStringFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ParameterStringFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterStringFilterValueList", name: "ParameterStringFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ParameterStringQueryOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterStringQueryOption", name: "ParameterStringQueryOption", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ParameterTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ParameterTier", name: "ParameterTier")
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParameterValue", name: "ParameterValue")
    ParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParameterValueList", name: "ParameterValueList")
    ParameterVersionLabelLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterVersionLabelLimitExceeded", name: "ParameterVersionLabelLimitExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterVersionLabelLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ParameterVersionNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParameterVersionNotFound", name: "ParameterVersionNotFound", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterVersionNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    Parameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#Parameters", name: "Parameters", traits: {"smithy.api#sensitive" => {}})
    ParametersFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParametersFilter", name: "ParametersFilter")
    ParametersFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ParametersFilterKey", name: "ParametersFilterKey")
    ParametersFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParametersFilterList", name: "ParametersFilterList")
    ParametersFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ParametersFilterValue", name: "ParametersFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ParametersFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ParametersFilterValueList", name: "ParametersFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ParentStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ParentStepDetails", name: "ParentStepDetails")
    Patch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Patch", name: "Patch")
    PatchAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchAction", name: "PatchAction")
    PatchAdvisoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchAdvisoryId", name: "PatchAdvisoryId")
    PatchAdvisoryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchAdvisoryIdList", name: "PatchAdvisoryIdList")
    PatchArch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchArch", name: "PatchArch")
    PatchAvailableSecurityUpdateCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchAvailableSecurityUpdateCount", name: "PatchAvailableSecurityUpdateCount", traits: {"smithy.api#default" => 0})
    PatchBaselineIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchBaselineIdentity", name: "PatchBaselineIdentity")
    PatchBaselineIdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchBaselineIdentityList", name: "PatchBaselineIdentityList")
    PatchBaselineMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchBaselineMaxResults", name: "PatchBaselineMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PatchBugzillaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchBugzillaId", name: "PatchBugzillaId")
    PatchBugzillaIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchBugzillaIdList", name: "PatchBugzillaIdList")
    PatchCVEId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchCVEId", name: "PatchCVEId")
    PatchCVEIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchCVEIdList", name: "PatchCVEIdList")
    PatchCVEIds = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchCVEIds", name: "PatchCVEIds")
    PatchClassification = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchClassification", name: "PatchClassification")
    PatchComplianceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchComplianceData", name: "PatchComplianceData")
    PatchComplianceDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchComplianceDataList", name: "PatchComplianceDataList")
    PatchComplianceDataState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchComplianceDataState", name: "PatchComplianceDataState")
    PatchComplianceLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchComplianceLevel", name: "PatchComplianceLevel")
    PatchComplianceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchComplianceMaxResults", name: "PatchComplianceMaxResults", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    PatchComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchComplianceStatus", name: "PatchComplianceStatus")
    PatchContentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchContentUrl", name: "PatchContentUrl")
    PatchCriticalNonCompliantCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchCriticalNonCompliantCount", name: "PatchCriticalNonCompliantCount", traits: {"smithy.api#default" => 0})
    PatchDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchDeploymentStatus", name: "PatchDeploymentStatus")
    PatchDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchDescription", name: "PatchDescription")
    PatchEpoch = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchEpoch", name: "PatchEpoch", traits: {"smithy.api#default" => 0})
    PatchFailedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchFailedCount", name: "PatchFailedCount", traits: {"smithy.api#default" => 0})
    PatchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchFilter", name: "PatchFilter")
    PatchFilterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchFilterGroup", name: "PatchFilterGroup")
    PatchFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchFilterKey", name: "PatchFilterKey")
    PatchFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchFilterList", name: "PatchFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    PatchFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchFilterValue", name: "PatchFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PatchFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchFilterValueList", name: "PatchFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PatchGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchGroup", name: "PatchGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PatchGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchGroupList", name: "PatchGroupList")
    PatchGroupPatchBaselineMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchGroupPatchBaselineMapping", name: "PatchGroupPatchBaselineMapping")
    PatchGroupPatchBaselineMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchGroupPatchBaselineMappingList", name: "PatchGroupPatchBaselineMappingList")
    PatchId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchId", name: "PatchId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PatchIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchIdList", name: "PatchIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PatchInstalledCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchInstalledCount", name: "PatchInstalledCount", traits: {"smithy.api#default" => 0})
    PatchInstalledOtherCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchInstalledOtherCount", name: "PatchInstalledOtherCount", traits: {"smithy.api#default" => 0})
    PatchInstalledPendingRebootCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchInstalledPendingRebootCount", name: "PatchInstalledPendingRebootCount", traits: {"smithy.api#default" => 0})
    PatchInstalledRejectedCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchInstalledRejectedCount", name: "PatchInstalledRejectedCount", traits: {"smithy.api#default" => 0})
    PatchKbNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchKbNumber", name: "PatchKbNumber")
    PatchLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchLanguage", name: "PatchLanguage")
    PatchList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchList", name: "PatchList")
    PatchMissingCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchMissingCount", name: "PatchMissingCount", traits: {"smithy.api#default" => 0})
    PatchMsrcNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchMsrcNumber", name: "PatchMsrcNumber")
    PatchMsrcSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchMsrcSeverity", name: "PatchMsrcSeverity")
    PatchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchName", name: "PatchName")
    PatchNotApplicableCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchNotApplicableCount", name: "PatchNotApplicableCount", traits: {"smithy.api#default" => 0})
    PatchOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchOperationType", name: "PatchOperationType")
    PatchOrchestratorFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchOrchestratorFilter", name: "PatchOrchestratorFilter")
    PatchOrchestratorFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchOrchestratorFilterKey", name: "PatchOrchestratorFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PatchOrchestratorFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchOrchestratorFilterList", name: "PatchOrchestratorFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    PatchOrchestratorFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchOrchestratorFilterValue", name: "PatchOrchestratorFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PatchOrchestratorFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchOrchestratorFilterValues", name: "PatchOrchestratorFilterValues")
    PatchOtherNonCompliantCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchOtherNonCompliantCount", name: "PatchOtherNonCompliantCount", traits: {"smithy.api#default" => 0})
    PatchProduct = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchProduct", name: "PatchProduct")
    PatchProductFamily = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchProductFamily", name: "PatchProductFamily")
    PatchPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchPropertiesList", name: "PatchPropertiesList")
    PatchProperty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchProperty", name: "PatchProperty")
    PatchPropertyEntry = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#PatchPropertyEntry", name: "PatchPropertyEntry")
    PatchRelease = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchRelease", name: "PatchRelease")
    PatchRepository = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchRepository", name: "PatchRepository")
    PatchRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchRule", name: "PatchRule")
    PatchRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchRuleGroup", name: "PatchRuleGroup")
    PatchRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchRuleList", name: "PatchRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PatchSecurityNonCompliantCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchSecurityNonCompliantCount", name: "PatchSecurityNonCompliantCount", traits: {"smithy.api#default" => 0})
    PatchSet = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PatchSet", name: "PatchSet")
    PatchSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchSeverity", name: "PatchSeverity")
    PatchSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchSource", name: "PatchSource")
    PatchSourceConfiguration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchSourceConfiguration", name: "PatchSourceConfiguration", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    PatchSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchSourceList", name: "PatchSourceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    PatchSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchSourceName", name: "PatchSourceName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{3,50}$"})
    PatchSourceProduct = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchSourceProduct", name: "PatchSourceProduct", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PatchSourceProductList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PatchSourceProductList", name: "PatchSourceProductList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PatchStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PatchStatus", name: "PatchStatus")
    PatchStringDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchStringDateTime", name: "PatchStringDateTime", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PatchTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchTitle", name: "PatchTitle")
    PatchUnreportedNotApplicableCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#PatchUnreportedNotApplicableCount", name: "PatchUnreportedNotApplicableCount", traits: {"smithy.api#default" => 0})
    PatchVendor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchVendor", name: "PatchVendor")
    PatchVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PatchVersion", name: "PatchVersion")
    PingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PingStatus", name: "PingStatus")
    PlatformName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PlatformName", name: "PlatformName", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    PlatformType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#PlatformType", name: "PlatformType")
    PlatformTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#PlatformTypeList", name: "PlatformTypeList")
    PlatformVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PlatformVersion", name: "PlatformVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}})
    PoliciesLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PoliciesLimitExceededException", name: "PoliciesLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "PoliciesLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Policy", name: "Policy", traits: {"smithy.api#pattern" => "^(?!\\s*$).+$"})
    PolicyHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PolicyHash", name: "PolicyHash")
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PolicyId", name: "PolicyId")
    Product = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Product", name: "Product")
    ProgressCounters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ProgressCounters", name: "ProgressCounters")
    PutComplianceItemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutComplianceItemsRequest", name: "PutComplianceItemsRequest")
    PutComplianceItemsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutComplianceItemsResult", name: "PutComplianceItemsResult")
    PutInventoryMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#PutInventoryMessage", name: "PutInventoryMessage")
    PutInventoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutInventoryRequest", name: "PutInventoryRequest")
    PutInventoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutInventoryResult", name: "PutInventoryResult")
    PutParameterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutParameterRequest", name: "PutParameterRequest")
    PutParameterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutParameterResult", name: "PutParameterResult")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RebootOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#RebootOption", name: "RebootOption")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Region", name: "Region")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#RegionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#Regions", name: "Regions", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RegisterDefaultPatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterDefaultPatchBaselineRequest", name: "RegisterDefaultPatchBaselineRequest")
    RegisterDefaultPatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterDefaultPatchBaselineResult", name: "RegisterDefaultPatchBaselineResult")
    RegisterPatchBaselineForPatchGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterPatchBaselineForPatchGroupRequest", name: "RegisterPatchBaselineForPatchGroupRequest")
    RegisterPatchBaselineForPatchGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterPatchBaselineForPatchGroupResult", name: "RegisterPatchBaselineForPatchGroupResult")
    RegisterTargetWithMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterTargetWithMaintenanceWindowRequest", name: "RegisterTargetWithMaintenanceWindowRequest")
    RegisterTargetWithMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterTargetWithMaintenanceWindowResult", name: "RegisterTargetWithMaintenanceWindowResult")
    RegisterTaskWithMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterTaskWithMaintenanceWindowRequest", name: "RegisterTaskWithMaintenanceWindowRequest")
    RegisterTaskWithMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegisterTaskWithMaintenanceWindowResult", name: "RegisterTaskWithMaintenanceWindowResult")
    RegistrationLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#RegistrationLimit", name: "RegistrationLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    RegistrationMetadataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RegistrationMetadataItem", name: "RegistrationMetadataItem")
    RegistrationMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#RegistrationMetadataKey", name: "RegistrationMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    RegistrationMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#RegistrationMetadataList", name: "RegistrationMetadataList")
    RegistrationMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#RegistrationMetadataValue", name: "RegistrationMetadataValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    RegistrationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#RegistrationsCount", name: "RegistrationsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    RelatedOpsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RelatedOpsItem", name: "RelatedOpsItem")
    RelatedOpsItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#RelatedOpsItems", name: "RelatedOpsItems")
    RemainingCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#RemainingCount", name: "RemainingCount", traits: {"smithy.api#default" => 0})
    RemoveTagsFromResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RemoveTagsFromResourceRequest", name: "RemoveTagsFromResourceRequest")
    RemoveTagsFromResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#RemoveTagsFromResourceResult", name: "RemoveTagsFromResourceResult")
    RequireType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#RequireType", name: "RequireType", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{1,128}$"})
    ResetServiceSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResetServiceSettingRequest", name: "ResetServiceSettingRequest")
    ResetServiceSettingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResetServiceSettingResult", name: "ResetServiceSettingResult")
    ResolvedTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResolvedTargets", name: "ResolvedTargets")
    ResourceArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceArnString", name: "ResourceArnString", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    ResourceComplianceSummaryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceComplianceSummaryItem", name: "ResourceComplianceSummaryItem")
    ResourceComplianceSummaryItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResourceComplianceSummaryItemList", name: "ResourceComplianceSummaryItemList")
    ResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ResourceCount", name: "ResourceCount", traits: {"smithy.api#default" => 0})
    ResourceCountByStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceCountByStatus", name: "ResourceCountByStatus")
    ResourceDataSyncAWSKMSKeyARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncAWSKMSKeyARN", name: "ResourceDataSyncAWSKMSKeyARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:"})
    ResourceDataSyncAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncAlreadyExistsException", name: "ResourceDataSyncAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceDataSyncAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourceDataSyncAwsOrganizationsSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncAwsOrganizationsSource", name: "ResourceDataSyncAwsOrganizationsSource")
    ResourceDataSyncConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncConflictException", name: "ResourceDataSyncConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceDataSyncConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client"})
    ResourceDataSyncCountExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncCountExceededException", name: "ResourceDataSyncCountExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceDataSyncCountExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourceDataSyncCreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#ResourceDataSyncCreatedTime", name: "ResourceDataSyncCreatedTime")
    ResourceDataSyncDestinationDataSharing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncDestinationDataSharing", name: "ResourceDataSyncDestinationDataSharing")
    ResourceDataSyncDestinationDataSharingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncDestinationDataSharingType", name: "ResourceDataSyncDestinationDataSharingType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncEnableAllOpsDataSources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#ResourceDataSyncEnableAllOpsDataSources", name: "ResourceDataSyncEnableAllOpsDataSources", traits: {"smithy.api#default" => false})
    ResourceDataSyncIncludeFutureRegions = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssm#ResourceDataSyncIncludeFutureRegions", name: "ResourceDataSyncIncludeFutureRegions", traits: {"smithy.api#default" => false})
    ResourceDataSyncInvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncInvalidConfigurationException", name: "ResourceDataSyncInvalidConfigurationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceDataSyncInvalidConfiguration", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourceDataSyncItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncItem", name: "ResourceDataSyncItem")
    ResourceDataSyncItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResourceDataSyncItemList", name: "ResourceDataSyncItemList")
    ResourceDataSyncLastModifiedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssm#ResourceDataSyncLastModifiedTime", name: "ResourceDataSyncLastModifiedTime")
    ResourceDataSyncName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncName", name: "ResourceDataSyncName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncNotFoundException", name: "ResourceDataSyncNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceDataSyncNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    ResourceDataSyncOrganizationSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncOrganizationSourceType", name: "ResourceDataSyncOrganizationSourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncOrganizationalUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncOrganizationalUnit", name: "ResourceDataSyncOrganizationalUnit")
    ResourceDataSyncOrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncOrganizationalUnitId", name: "ResourceDataSyncOrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    ResourceDataSyncOrganizationalUnitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResourceDataSyncOrganizationalUnitList", name: "ResourceDataSyncOrganizationalUnitList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ResourceDataSyncS3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncS3BucketName", name: "ResourceDataSyncS3BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceDataSyncS3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncS3Destination", name: "ResourceDataSyncS3Destination")
    ResourceDataSyncS3Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ResourceDataSyncS3Format", name: "ResourceDataSyncS3Format")
    ResourceDataSyncS3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncS3Prefix", name: "ResourceDataSyncS3Prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceDataSyncS3Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncS3Region", name: "ResourceDataSyncS3Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncSource", name: "ResourceDataSyncSource")
    ResourceDataSyncSourceRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncSourceRegion", name: "ResourceDataSyncSourceRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncSourceRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResourceDataSyncSourceRegionList", name: "ResourceDataSyncSourceRegionList")
    ResourceDataSyncSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncSourceType", name: "ResourceDataSyncSourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncSourceWithState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceDataSyncSourceWithState", name: "ResourceDataSyncSourceWithState")
    ResourceDataSyncState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncState", name: "ResourceDataSyncState", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceDataSyncType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceDataSyncType", name: "ResourceDataSyncType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ResourceId", name: "ResourceId")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceInUseException", name: "ResourceInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    ResourcePolicyConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourcePolicyConflictException", name: "ResourcePolicyConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyConflictException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourcePolicyInvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourcePolicyInvalidParameterException", name: "ResourcePolicyInvalidParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyInvalidParameterException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourcePolicyLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourcePolicyLimitExceededException", name: "ResourcePolicyLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ResourcePolicyMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ResourcePolicyMaxResults", name: "ResourcePolicyMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ResourcePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResourcePolicyNotFoundException", name: "ResourcePolicyNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client"})
    ResourcePolicyParameterNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResourcePolicyParameterNamesList", name: "ResourcePolicyParameterNamesList")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ResourceType", name: "ResourceType")
    ResourceTypeForTagging = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ResourceTypeForTagging", name: "ResourceTypeForTagging")
    ResponseCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ResponseCode", name: "ResponseCode", traits: {"smithy.api#default" => 0})
    ResultAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResultAttribute", name: "ResultAttribute")
    ResultAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ResultAttributeList", name: "ResultAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResumeSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResumeSessionRequest", name: "ResumeSessionRequest")
    ResumeSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ResumeSessionResponse", name: "ResumeSessionResponse")
    ReviewInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ReviewInformation", name: "ReviewInformation")
    ReviewInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ReviewInformationList", name: "ReviewInformationList", traits: {"smithy.api#length" => {"min" => 1}})
    ReviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ReviewStatus", name: "ReviewStatus")
    Reviewer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Reviewer", name: "Reviewer", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]{1,128}$"})
    Runbook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Runbook", name: "Runbook")
    Runbooks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#Runbooks", name: "Runbooks", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#S3KeyPrefix", name: "S3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    S3OutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#S3OutputLocation", name: "S3OutputLocation")
    S3OutputUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#S3OutputUrl", name: "S3OutputUrl")
    S3Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#S3Region", name: "S3Region", traits: {"smithy.api#length" => {"min" => 3, "max" => 20}})
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ScheduleOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ScheduleOffset", name: "ScheduleOffset", traits: {"smithy.api#range" => {"min" => 1, "max" => 6}})
    ScheduledWindowExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ScheduledWindowExecution", name: "ScheduledWindowExecution")
    ScheduledWindowExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ScheduledWindowExecutionList", name: "ScheduledWindowExecutionList")
    SendAutomationSignalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SendAutomationSignalRequest", name: "SendAutomationSignalRequest")
    SendAutomationSignalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SendAutomationSignalResult", name: "SendAutomationSignalResult")
    SendCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SendCommandRequest", name: "SendCommandRequest")
    SendCommandResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SendCommandResult", name: "SendCommandResult")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    ServiceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ServiceRole", name: "ServiceRole")
    ServiceSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ServiceSetting", name: "ServiceSetting")
    ServiceSettingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ServiceSettingId", name: "ServiceSettingId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ServiceSettingNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ServiceSettingNotFound", name: "ServiceSettingNotFound", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceSettingNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ServiceSettingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ServiceSettingValue", name: "ServiceSettingValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Session", name: "Session")
    SessionDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionDetails", name: "SessionDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SessionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SessionFilter", name: "SessionFilter")
    SessionFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#SessionFilterKey", name: "SessionFilterKey")
    SessionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#SessionFilterList", name: "SessionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    SessionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionFilterValue", name: "SessionFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 96}})
    SessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#SessionList", name: "SessionList")
    SessionManagerCloudWatchOutputUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionManagerCloudWatchOutputUrl", name: "SessionManagerCloudWatchOutputUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2083}})
    SessionManagerOutputUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SessionManagerOutputUrl", name: "SessionManagerOutputUrl")
    SessionManagerParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionManagerParameterName", name: "SessionManagerParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SessionManagerParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionManagerParameterValue", name: "SessionManagerParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    SessionManagerParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#SessionManagerParameterValueList", name: "SessionManagerParameterValueList")
    SessionManagerParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#SessionManagerParameters", name: "SessionManagerParameters")
    SessionManagerS3OutputUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionManagerS3OutputUrl", name: "SessionManagerS3OutputUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2083}})
    SessionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#SessionMaxResults", name: "SessionMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    SessionOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionOwner", name: "SessionOwner", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SessionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionReason", name: "SessionReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.{1,256}$"})
    SessionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#SessionState", name: "SessionState")
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#SessionStatus", name: "SessionStatus")
    SessionTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionTarget", name: "SessionTarget", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    SessionTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SessionTokenType", name: "SessionTokenType", traits: {"smithy.api#sensitive" => {}})
    SeveritySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SeveritySummary", name: "SeveritySummary")
    SharedDocumentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SharedDocumentVersion", name: "SharedDocumentVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}, "smithy.api#pattern" => "^([$]LATEST|[$]DEFAULT|[$]ALL)$"})
    SignalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#SignalType", name: "SignalType")
    SnapshotDownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SnapshotDownloadUrl", name: "SnapshotDownloadUrl")
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SnapshotId", name: "SnapshotId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    SourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SourceId", name: "SourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]*$"})
    SourceLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#SourceLocation", name: "SourceLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.{1,128}$"})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#SourceType", name: "SourceType")
    StandardErrorContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StandardErrorContent", name: "StandardErrorContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 8000}})
    StandardOutputContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StandardOutputContent", name: "StandardOutputContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 24000}})
    StartAccessRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAccessRequestRequest", name: "StartAccessRequestRequest")
    StartAccessRequestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAccessRequestResponse", name: "StartAccessRequestResponse")
    StartAssociationsOnceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAssociationsOnceRequest", name: "StartAssociationsOnceRequest")
    StartAssociationsOnceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAssociationsOnceResult", name: "StartAssociationsOnceResult")
    StartAutomationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAutomationExecutionRequest", name: "StartAutomationExecutionRequest")
    StartAutomationExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartAutomationExecutionResult", name: "StartAutomationExecutionResult")
    StartChangeRequestExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartChangeRequestExecutionRequest", name: "StartChangeRequestExecutionRequest")
    StartChangeRequestExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartChangeRequestExecutionResult", name: "StartChangeRequestExecutionResult")
    StartExecutionPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartExecutionPreviewRequest", name: "StartExecutionPreviewRequest")
    StartExecutionPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartExecutionPreviewResponse", name: "StartExecutionPreviewResponse")
    StartSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartSessionRequest", name: "StartSessionRequest")
    StartSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StartSessionResponse", name: "StartSessionResponse")
    StatusAdditionalInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StatusAdditionalInfo", name: "StatusAdditionalInfo", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    StatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StatusDetails", name: "StatusDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StatusName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StatusName", name: "StatusName")
    StatusUnchanged = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StatusUnchanged", name: "StatusUnchanged", traits: {"aws.protocols#awsQueryError" => {"code" => "StatusUnchanged", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    StepExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StepExecution", name: "StepExecution")
    StepExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StepExecutionFilter", name: "StepExecutionFilter")
    StepExecutionFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#StepExecutionFilterKey", name: "StepExecutionFilterKey")
    StepExecutionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#StepExecutionFilterList", name: "StepExecutionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    StepExecutionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StepExecutionFilterValue", name: "StepExecutionFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    StepExecutionFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#StepExecutionFilterValueList", name: "StepExecutionFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StepExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#StepExecutionList", name: "StepExecutionList")
    StepPreviewMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#StepPreviewMap", name: "StepPreviewMap")
    StopAutomationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StopAutomationExecutionRequest", name: "StopAutomationExecutionRequest")
    StopAutomationExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#StopAutomationExecutionResult", name: "StopAutomationExecutionResult")
    StopType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#StopType", name: "StopType")
    StreamUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StreamUrl", name: "StreamUrl")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#String", name: "String")
    String1to256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#String1to256", name: "String1to256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    StringDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#StringDateTime", name: "StringDateTime", traits: {"smithy.api#pattern" => "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#StringList", name: "StringList")
    SubTypeCountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#SubTypeCountLimitExceededException", name: "SubTypeCountLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "SubTypeCountLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#Target", name: "Target")
    TargetCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#TargetCount", name: "TargetCount", traits: {"smithy.api#default" => 0})
    TargetInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TargetInUseException", name: "TargetInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "TargetInUseException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    TargetKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetKey", name: "TargetKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 163}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$|resource-groups:ResourceTypeFilters|resource-groups:Name$"})
    TargetLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TargetLocation", name: "TargetLocation")
    TargetLocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetLocations", name: "TargetLocations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetLocationsURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetLocationsURL", name: "TargetLocationsURL", traits: {"smithy.api#pattern" => "^https:\\/\\/[-a-zA-Z0-9@:%._\\+~#=]{1,253}\\.s3(\\.[a-z\\d-]{9,16})?\\.amazonaws\\.com\\/.{1,2000}$"})
    TargetMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssm#TargetMap", name: "TargetMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    TargetMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetMapKey", name: "TargetMapKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TargetMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetMapValue", name: "TargetMapValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TargetMapValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetMapValueList", name: "TargetMapValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    TargetMaps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetMaps", name: "TargetMaps", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    TargetNotConnected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TargetNotConnected", name: "TargetNotConnected", traits: {"aws.protocols#awsQueryError" => {"code" => "TargetNotConnected", "httpResponseCode" => 430}, "smithy.api#error" => "client"})
    TargetParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetParameterList", name: "TargetParameterList")
    TargetPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TargetPreview", name: "TargetPreview")
    TargetPreviewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetPreviewList", name: "TargetPreviewList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetType", name: "TargetType", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\/[\\w\\.\\-\\:\\/]*$"})
    TargetValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TargetValue", name: "TargetValue")
    TargetValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#TargetValues", name: "TargetValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Targets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#Targets", name: "Targets", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TerminateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TerminateSessionRequest", name: "TerminateSessionRequest")
    TerminateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TerminateSessionResponse", name: "TerminateSessionResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    TimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#TimeoutSeconds", name: "TimeoutSeconds", traits: {"smithy.api#range" => {"min" => 30, "max" => 2592000}})
    TokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#TokenValue", name: "TokenValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    TooManyTagsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TooManyTagsError", name: "TooManyTagsError", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTagsError", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    TooManyUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TooManyUpdates", name: "TooManyUpdates", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyUpdates", "httpResponseCode" => 429}, "smithy.api#error" => "client"})
    TotalCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#TotalCount", name: "TotalCount", traits: {"smithy.api#default" => 0})
    TotalSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#TotalSizeLimitExceededException", name: "TotalSizeLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "TotalSizeLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UnlabelParameterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnlabelParameterVersionRequest", name: "UnlabelParameterVersionRequest")
    UnlabelParameterVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnlabelParameterVersionResult", name: "UnlabelParameterVersionResult")
    UnsupportedCalendarException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedCalendarException", name: "UnsupportedCalendarException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedCalendarException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedFeatureRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedFeatureRequiredException", name: "UnsupportedFeatureRequiredException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedFeatureRequiredException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedInventoryItemContextException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedInventoryItemContextException", name: "UnsupportedInventoryItemContextException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedInventoryItemContext", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedInventorySchemaVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedInventorySchemaVersionException", name: "UnsupportedInventorySchemaVersionException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedInventorySchemaVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedOperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedOperatingSystem", name: "UnsupportedOperatingSystem", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperatingSystem", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedParameterType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedParameterType", name: "UnsupportedParameterType", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedParameterType", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UnsupportedPlatformType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UnsupportedPlatformType", name: "UnsupportedPlatformType", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedPlatformType", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    UpdateAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateAssociationRequest", name: "UpdateAssociationRequest")
    UpdateAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateAssociationResult", name: "UpdateAssociationResult")
    UpdateAssociationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateAssociationStatusRequest", name: "UpdateAssociationStatusRequest")
    UpdateAssociationStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateAssociationStatusResult", name: "UpdateAssociationStatusResult")
    UpdateCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateCloudConnectorRequest", name: "UpdateCloudConnectorRequest")
    UpdateCloudConnectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateCloudConnectorResult", name: "UpdateCloudConnectorResult")
    UpdateDocumentDefaultVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentDefaultVersionRequest", name: "UpdateDocumentDefaultVersionRequest")
    UpdateDocumentDefaultVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentDefaultVersionResult", name: "UpdateDocumentDefaultVersionResult")
    UpdateDocumentMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentMetadataRequest", name: "UpdateDocumentMetadataRequest")
    UpdateDocumentMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentMetadataResponse", name: "UpdateDocumentMetadataResponse")
    UpdateDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentRequest", name: "UpdateDocumentRequest")
    UpdateDocumentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateDocumentResult", name: "UpdateDocumentResult")
    UpdateMaintenanceWindowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowRequest", name: "UpdateMaintenanceWindowRequest")
    UpdateMaintenanceWindowResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowResult", name: "UpdateMaintenanceWindowResult")
    UpdateMaintenanceWindowTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowTargetRequest", name: "UpdateMaintenanceWindowTargetRequest")
    UpdateMaintenanceWindowTargetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowTargetResult", name: "UpdateMaintenanceWindowTargetResult")
    UpdateMaintenanceWindowTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowTaskRequest", name: "UpdateMaintenanceWindowTaskRequest")
    UpdateMaintenanceWindowTaskResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateMaintenanceWindowTaskResult", name: "UpdateMaintenanceWindowTaskResult")
    UpdateManagedInstanceRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateManagedInstanceRoleRequest", name: "UpdateManagedInstanceRoleRequest")
    UpdateManagedInstanceRoleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateManagedInstanceRoleResult", name: "UpdateManagedInstanceRoleResult")
    UpdateOpsItemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateOpsItemRequest", name: "UpdateOpsItemRequest")
    UpdateOpsItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateOpsItemResponse", name: "UpdateOpsItemResponse")
    UpdateOpsMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateOpsMetadataRequest", name: "UpdateOpsMetadataRequest")
    UpdateOpsMetadataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateOpsMetadataResult", name: "UpdateOpsMetadataResult")
    UpdatePatchBaselineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdatePatchBaselineRequest", name: "UpdatePatchBaselineRequest")
    UpdatePatchBaselineResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdatePatchBaselineResult", name: "UpdatePatchBaselineResult")
    UpdateResourceDataSyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateResourceDataSyncRequest", name: "UpdateResourceDataSyncRequest")
    UpdateResourceDataSyncResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateResourceDataSyncResult", name: "UpdateResourceDataSyncResult")
    UpdateServiceSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateServiceSettingRequest", name: "UpdateServiceSettingRequest")
    UpdateServiceSettingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#UpdateServiceSettingResult", name: "UpdateServiceSettingResult")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Url", name: "Url")
    ValidNextStep = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#ValidNextStep", name: "ValidNextStep", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    ValidNextStepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ValidNextStepList", name: "ValidNextStepList")
    ValidateCloudConnectorMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssm#ValidateCloudConnectorMaxResults", name: "ValidateCloudConnectorMaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 75}})
    ValidateCloudConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ValidateCloudConnectorRequest", name: "ValidateCloudConnectorRequest")
    ValidateCloudConnectorResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ValidateCloudConnectorResult", name: "ValidateCloudConnectorResult")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ValidationFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ValidationFinding", name: "ValidationFinding")
    ValidationFindingCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ValidationFindingCode", name: "ValidationFindingCode")
    ValidationFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssm#ValidationFindingList", name: "ValidationFindingList")
    ValidationFindingScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssm#ValidationFindingScope", name: "ValidationFindingScope")
    ValidationFindingScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ValidationFindingScopeType", name: "ValidationFindingScopeType")
    ValidationFindingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssm#ValidationFindingType", name: "ValidationFindingType")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssm#Version", name: "Version", traits: {"smithy.api#pattern" => "^[0-9]{1,6}(\\.[0-9]{1,6}){2,3}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessRequestStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "Approved"}))
    AccessRequestStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    AccessRequestStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "Revoked"}))
    AccessRequestStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "Expired"}))
    AccessRequestStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    AccessType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    AccessType.add_member(:justintime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JUSTINTIME", traits: {"smithy.api#enumValue" => "JustInTime"}))
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member", traits: {"smithy.api#xmlName" => "AccountId"}))
    AccountSharingInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AccountSharingInfo.add_member(:shared_document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDocumentVersion, name: "SharedDocumentVersion"))
    AccountSharingInfo.type = Types::AccountSharingInfo
    AccountSharingInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSharingInfo, name: "member", traits: {"smithy.api#xmlName" => "AccountSharingInfo"}))
    Accounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member"))
    Activation.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationId, name: "ActivationId"))
    Activation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationDescription, name: "Description"))
    Activation.add_member(:default_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultInstanceName, name: "DefaultInstanceName"))
    Activation.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "IamRole"))
    Activation.add_member(:registration_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationLimit, name: "RegistrationLimit"))
    Activation.add_member(:registrations_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationsCount, name: "RegistrationsCount"))
    Activation.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDate, name: "ExpirationDate"))
    Activation.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Expired", traits: {"smithy.api#default" => false}))
    Activation.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, name: "CreatedDate"))
    Activation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Activation.type = Types::Activation
    ActivationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Activation, name: "member"))
    AddTagsToResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeForTagging, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceRequest.type = Types::AddTagsToResourceRequest
    AddTagsToResourceResult.type = Types::AddTagsToResourceResult
    Alarm.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "Name", traits: {"smithy.api#required" => {}}))
    Alarm.type = Types::Alarm
    AlarmConfiguration.add_member(:ignore_poll_alarm_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IgnorePollAlarmFailure", traits: {"smithy.api#default" => false}))
    AlarmConfiguration.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmList, name: "Alarms", traits: {"smithy.api#required" => {}}))
    AlarmConfiguration.type = Types::AlarmConfiguration
    AlarmList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "member"))
    AlarmStateInformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "Name", traits: {"smithy.api#required" => {}}))
    AlarmStateInformation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalAlarmState, name: "State", traits: {"smithy.api#required" => {}}))
    AlarmStateInformation.type = Types::AlarmStateInformation
    AlarmStateInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformation, name: "member"))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    AssociateOpsItemRelatedItemRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    AssociateOpsItemRelatedItemRequest.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationType, name: "AssociationType", traits: {"smithy.api#required" => {}}))
    AssociateOpsItemRelatedItemRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    AssociateOpsItemRelatedItemRequest.add_member(:resource_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationResourceUri, name: "ResourceUri", traits: {"smithy.api#required" => {}}))
    AssociateOpsItemRelatedItemRequest.type = Types::AssociateOpsItemRelatedItemRequest
    AssociateOpsItemRelatedItemResponse.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationId, name: "AssociationId"))
    AssociateOpsItemRelatedItemResponse.type = Types::AssociateOpsItemRelatedItemResponse
    AssociatedInstances.type = Types::AssociatedInstances
    Association.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    Association.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    Association.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    Association.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    Association.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    Association.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    Association.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastExecutionDate"))
    Association.add_member(:overview, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationOverview, name: "Overview"))
    Association.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    Association.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    Association.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    Association.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    Association.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    Association.type = Types::Association
    AssociationAlreadyExists.type = Types::AssociationAlreadyExists
    AssociationComplianceSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Critical", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    AssociationComplianceSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "High", traits: {"smithy.api#enumValue" => "HIGH"}))
    AssociationComplianceSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Medium", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    AssociationComplianceSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Low", traits: {"smithy.api#enumValue" => "LOW"}))
    AssociationComplianceSeverity.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unspecified", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    AssociationDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    AssociationDescription.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    AssociationDescription.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    AssociationDescription.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "Date"))
    AssociationDescription.add_member(:last_update_association_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastUpdateAssociationDate"))
    AssociationDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatus, name: "Status"))
    AssociationDescription.add_member(:overview, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationOverview, name: "Overview"))
    AssociationDescription.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    AssociationDescription.add_member(:automation_target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargetParameterName, name: "AutomationTargetParameterName"))
    AssociationDescription.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    AssociationDescription.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    AssociationDescription.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    AssociationDescription.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    AssociationDescription.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputLocation, name: "OutputLocation"))
    AssociationDescription.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastExecutionDate"))
    AssociationDescription.add_member(:last_successful_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastSuccessfulExecutionDate"))
    AssociationDescription.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    AssociationDescription.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    AssociationDescription.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    AssociationDescription.add_member(:compliance_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationComplianceSeverity, name: "ComplianceSeverity"))
    AssociationDescription.add_member(:sync_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncCompliance, name: "SyncCompliance"))
    AssociationDescription.add_member(:apply_only_at_cron_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnlyAtCronInterval, name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false}))
    AssociationDescription.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames"))
    AssociationDescription.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    AssociationDescription.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    AssociationDescription.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    AssociationDescription.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    AssociationDescription.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    AssociationDescription.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    AssociationDescription.add_member(:association_dispatch_assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDispatchAssumeRoleArn, name: "AssociationDispatchAssumeRole"))
    AssociationDescription.type = Types::AssociationDescription
    AssociationDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescription, name: "member", traits: {"smithy.api#xmlName" => "AssociationDescription"}))
    AssociationDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AssociationDoesNotExist.type = Types::AssociationDoesNotExist
    AssociationExecution.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    AssociationExecution.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    AssociationExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionId, name: "ExecutionId"))
    AssociationExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "Status"))
    AssociationExecution.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "DetailedStatus"))
    AssociationExecution.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedTime"))
    AssociationExecution.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastExecutionDate"))
    AssociationExecution.add_member(:resource_count_by_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCountByStatus, name: "ResourceCountByStatus"))
    AssociationExecution.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    AssociationExecution.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    AssociationExecution.type = Types::AssociationExecution
    AssociationExecutionDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AssociationExecutionDoesNotExist.type = Types::AssociationExecutionDoesNotExist
    AssociationExecutionFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    AssociationExecutionFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionFilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AssociationExecutionFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationFilterOperatorType, name: "Type", traits: {"smithy.api#required" => {}}))
    AssociationExecutionFilter.type = Types::AssociationExecutionFilter
    AssociationExecutionFilterKey.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionId", traits: {"smithy.api#enumValue" => "ExecutionId"}))
    AssociationExecutionFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Status", traits: {"smithy.api#enumValue" => "Status"}))
    AssociationExecutionFilterKey.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreatedTime", traits: {"smithy.api#enumValue" => "CreatedTime"}))
    AssociationExecutionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionFilter, name: "member", traits: {"smithy.api#xmlName" => "AssociationExecutionFilter"}))
    AssociationExecutionTarget.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    AssociationExecutionTarget.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    AssociationExecutionTarget.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionId, name: "ExecutionId"))
    AssociationExecutionTarget.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationResourceId, name: "ResourceId"))
    AssociationExecutionTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationResourceType, name: "ResourceType"))
    AssociationExecutionTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "Status"))
    AssociationExecutionTarget.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "DetailedStatus"))
    AssociationExecutionTarget.add_member(:last_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastExecutionDate"))
    AssociationExecutionTarget.add_member(:output_source, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSource, name: "OutputSource"))
    AssociationExecutionTarget.type = Types::AssociationExecutionTarget
    AssociationExecutionTargetsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTargetsFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    AssociationExecutionTargetsFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTargetsFilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AssociationExecutionTargetsFilter.type = Types::AssociationExecutionTargetsFilter
    AssociationExecutionTargetsFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Status", traits: {"smithy.api#enumValue" => "Status"}))
    AssociationExecutionTargetsFilterKey.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceId", traits: {"smithy.api#enumValue" => "ResourceId"}))
    AssociationExecutionTargetsFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceType", traits: {"smithy.api#enumValue" => "ResourceType"}))
    AssociationExecutionTargetsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTargetsFilter, name: "member", traits: {"smithy.api#xmlName" => "AssociationExecutionTargetsFilter"}))
    AssociationExecutionTargetsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTarget, name: "member", traits: {"smithy.api#xmlName" => "AssociationExecutionTarget"}))
    AssociationExecutionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecution, name: "member", traits: {"smithy.api#xmlName" => "AssociationExecution"}))
    AssociationFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    AssociationFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationFilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    AssociationFilter.type = Types::AssociationFilter
    AssociationFilterKey.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceId", traits: {"smithy.api#enumValue" => "InstanceId"}))
    AssociationFilterKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "Name"}))
    AssociationFilterKey.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssociationId", traits: {"smithy.api#enumValue" => "AssociationId"}))
    AssociationFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Status", traits: {"smithy.api#enumValue" => "AssociationStatusName"}))
    AssociationFilterKey.add_member(:last_executed_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastExecutedBefore", traits: {"smithy.api#enumValue" => "LastExecutedBefore"}))
    AssociationFilterKey.add_member(:last_executed_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastExecutedAfter", traits: {"smithy.api#enumValue" => "LastExecutedAfter"}))
    AssociationFilterKey.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssociationName", traits: {"smithy.api#enumValue" => "AssociationName"}))
    AssociationFilterKey.add_member(:resource_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceGroupName", traits: {"smithy.api#enumValue" => "ResourceGroupName"}))
    AssociationFilterKey.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudConnectorId", traits: {"smithy.api#enumValue" => "CloudConnectorId"}))
    AssociationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationFilter, name: "member", traits: {"smithy.api#xmlName" => "AssociationFilter"}))
    AssociationFilterOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equal", traits: {"smithy.api#enumValue" => "EQUAL"}))
    AssociationFilterOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThan", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    AssociationFilterOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThan", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    AssociationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "member"))
    AssociationLimitExceeded.type = Types::AssociationLimitExceeded
    AssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "member", traits: {"smithy.api#xmlName" => "Association"}))
    AssociationOverview.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "Status"))
    AssociationOverview.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "DetailedStatus"))
    AssociationOverview.add_member(:association_status_aggregated_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatusAggregatedCount, name: "AssociationStatusAggregatedCount"))
    AssociationOverview.type = Types::AssociationOverview
    AssociationStatus.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "Date", traits: {"smithy.api#required" => {}}))
    AssociationStatus.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatusName, name: "Name", traits: {"smithy.api#required" => {}}))
    AssociationStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    AssociationStatus.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusAdditionalInfo, name: "AdditionalInfo"))
    AssociationStatus.type = Types::AssociationStatus
    AssociationStatusAggregatedCount.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "key"))
    AssociationStatusAggregatedCount.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "value"))
    AssociationStatusName.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    AssociationStatusName.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    AssociationStatusName.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    AssociationSyncCompliance.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "AUTO"}))
    AssociationSyncCompliance.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Manual", traits: {"smithy.api#enumValue" => "MANUAL"}))
    AssociationVersionInfo.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    AssociationVersionInfo.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    AssociationVersionInfo.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    AssociationVersionInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    AssociationVersionInfo.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    AssociationVersionInfo.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    AssociationVersionInfo.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    AssociationVersionInfo.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    AssociationVersionInfo.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputLocation, name: "OutputLocation"))
    AssociationVersionInfo.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    AssociationVersionInfo.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    AssociationVersionInfo.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    AssociationVersionInfo.add_member(:compliance_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationComplianceSeverity, name: "ComplianceSeverity"))
    AssociationVersionInfo.add_member(:sync_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncCompliance, name: "SyncCompliance"))
    AssociationVersionInfo.add_member(:apply_only_at_cron_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnlyAtCronInterval, name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false}))
    AssociationVersionInfo.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames"))
    AssociationVersionInfo.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    AssociationVersionInfo.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    AssociationVersionInfo.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    AssociationVersionInfo.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    AssociationVersionInfo.add_member(:association_dispatch_assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDispatchAssumeRoleArn, name: "AssociationDispatchAssumeRole"))
    AssociationVersionInfo.type = Types::AssociationVersionInfo
    AssociationVersionLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AssociationVersionLimitExceeded.type = Types::AssociationVersionLimitExceeded
    AssociationVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersionInfo, name: "member"))
    AttachmentContent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, name: "Name"))
    AttachmentContent.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "Size", traits: {"smithy.api#default" => 0}))
    AttachmentContent.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentHash, name: "Hash"))
    AttachmentContent.add_member(:hash_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentHashType, name: "HashType"))
    AttachmentContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUrl, name: "Url"))
    AttachmentContent.type = Types::AttachmentContent
    AttachmentContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContent, name: "member", traits: {"smithy.api#xmlName" => "AttachmentContent"}))
    AttachmentHashType.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "Sha256"}))
    AttachmentInformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, name: "Name"))
    AttachmentInformation.type = Types::AttachmentInformation
    AttachmentInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentInformation, name: "member", traits: {"smithy.api#xmlName" => "AttachmentInformation"}))
    AttachmentsSource.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSourceKey, name: "Key"))
    AttachmentsSource.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSourceValues, name: "Values"))
    AttachmentsSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentIdentifier, name: "Name"))
    AttachmentsSource.type = Types::AttachmentsSource
    AttachmentsSourceKey.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SourceUrl", traits: {"smithy.api#enumValue" => "SourceUrl"}))
    AttachmentsSourceKey.add_member(:s3_file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3FileUrl", traits: {"smithy.api#enumValue" => "S3FileUrl"}))
    AttachmentsSourceKey.add_member(:attachment_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachmentReference", traits: {"smithy.api#enumValue" => "AttachmentReference"}))
    AttachmentsSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSource, name: "member"))
    AttachmentsSourceValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSourceValue, name: "member"))
    AutomationDefinitionNotApprovedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationDefinitionNotApprovedException.type = Types::AutomationDefinitionNotApprovedException
    AutomationDefinitionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationDefinitionNotFoundException.type = Types::AutomationDefinitionNotFoundException
    AutomationDefinitionVersionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationDefinitionVersionNotFoundException.type = Types::AutomationDefinitionVersionNotFoundException
    AutomationExecution.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId"))
    AutomationExecution.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    AutomationExecution.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    AutomationExecution.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionStartTime"))
    AutomationExecution.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionEndTime"))
    AutomationExecution.add_member(:automation_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionStatus, name: "AutomationExecutionStatus"))
    AutomationExecution.add_member(:step_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionList, name: "StepExecutions"))
    AutomationExecution.add_member(:step_executions_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StepExecutionsTruncated", traits: {"smithy.api#default" => false}))
    AutomationExecution.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    AutomationExecution.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Outputs"))
    AutomationExecution.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    AutomationExecution.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    AutomationExecution.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "Mode"))
    AutomationExecution.add_member(:parent_automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "ParentAutomationExecutionId"))
    AutomationExecution.add_member(:executed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutedBy"))
    AutomationExecution.add_member(:current_step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentStepName"))
    AutomationExecution.add_member(:current_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentAction"))
    AutomationExecution.add_member(:target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "TargetParameterName"))
    AutomationExecution.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    AutomationExecution.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    AutomationExecution.add_member(:resolved_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargets, name: "ResolvedTargets"))
    AutomationExecution.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    AutomationExecution.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    AutomationExecution.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Target"))
    AutomationExecution.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    AutomationExecution.add_member(:progress_counters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressCounters, name: "ProgressCounters"))
    AutomationExecution.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    AutomationExecution.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    AutomationExecution.add_member(:target_locations_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocationsURL, name: "TargetLocationsURL"))
    AutomationExecution.add_member(:automation_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationSubtype, name: "AutomationSubtype"))
    AutomationExecution.add_member(:scheduled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ScheduledTime"))
    AutomationExecution.add_member(:runbooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Runbooks, name: "Runbooks"))
    AutomationExecution.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId"))
    AutomationExecution.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociationId"))
    AutomationExecution.add_member(:change_request_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestName, name: "ChangeRequestName"))
    AutomationExecution.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Variables"))
    AutomationExecution.type = Types::AutomationExecution
    AutomationExecutionFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    AutomationExecutionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    AutomationExecutionFilter.type = Types::AutomationExecutionFilter
    AutomationExecutionFilterKey.add_member(:document_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_NAME_PREFIX", traits: {"smithy.api#enumValue" => "DocumentNamePrefix"}))
    AutomationExecutionFilterKey.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_STATUS", traits: {"smithy.api#enumValue" => "ExecutionStatus"}))
    AutomationExecutionFilterKey.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ID", traits: {"smithy.api#enumValue" => "ExecutionId"}))
    AutomationExecutionFilterKey.add_member(:parent_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_EXECUTION_ID", traits: {"smithy.api#enumValue" => "ParentExecutionId"}))
    AutomationExecutionFilterKey.add_member(:current_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_ACTION", traits: {"smithy.api#enumValue" => "CurrentAction"}))
    AutomationExecutionFilterKey.add_member(:start_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_BEFORE", traits: {"smithy.api#enumValue" => "StartTimeBefore"}))
    AutomationExecutionFilterKey.add_member(:start_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_AFTER", traits: {"smithy.api#enumValue" => "StartTimeAfter"}))
    AutomationExecutionFilterKey.add_member(:automation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATION_TYPE", traits: {"smithy.api#enumValue" => "AutomationType"}))
    AutomationExecutionFilterKey.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_KEY", traits: {"smithy.api#enumValue" => "TagKey"}))
    AutomationExecutionFilterKey.add_member(:target_resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_RESOURCE_GROUP", traits: {"smithy.api#enumValue" => "TargetResourceGroup"}))
    AutomationExecutionFilterKey.add_member(:automation_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATION_SUBTYPE", traits: {"smithy.api#enumValue" => "AutomationSubtype"}))
    AutomationExecutionFilterKey.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPS_ITEM_ID", traits: {"smithy.api#enumValue" => "OpsItemId"}))
    AutomationExecutionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionFilter, name: "member"))
    AutomationExecutionFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionFilterValue, name: "member"))
    AutomationExecutionInputs.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    AutomationExecutionInputs.add_member(:target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "TargetParameterName"))
    AutomationExecutionInputs.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargets, name: "Targets"))
    AutomationExecutionInputs.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    AutomationExecutionInputs.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    AutomationExecutionInputs.add_member(:target_locations_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocationsURL, name: "TargetLocationsURL"))
    AutomationExecutionInputs.type = Types::AutomationExecutionInputs
    AutomationExecutionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationExecutionLimitExceededException.type = Types::AutomationExecutionLimitExceededException
    AutomationExecutionMetadata.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    AutomationExecutionMetadata.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    AutomationExecutionMetadata.add_member(:automation_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionStatus, name: "AutomationExecutionStatus"))
    AutomationExecutionMetadata.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionStartTime"))
    AutomationExecutionMetadata.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionEndTime"))
    AutomationExecutionMetadata.add_member(:executed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutedBy"))
    AutomationExecutionMetadata.add_member(:log_file, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogFile"))
    AutomationExecutionMetadata.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Outputs"))
    AutomationExecutionMetadata.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "Mode"))
    AutomationExecutionMetadata.add_member(:parent_automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "ParentAutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:current_step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentStepName"))
    AutomationExecutionMetadata.add_member(:current_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentAction"))
    AutomationExecutionMetadata.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    AutomationExecutionMetadata.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    AutomationExecutionMetadata.add_member(:target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "TargetParameterName"))
    AutomationExecutionMetadata.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    AutomationExecutionMetadata.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    AutomationExecutionMetadata.add_member(:resolved_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargets, name: "ResolvedTargets"))
    AutomationExecutionMetadata.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    AutomationExecutionMetadata.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    AutomationExecutionMetadata.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Target"))
    AutomationExecutionMetadata.add_member(:automation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationType, name: "AutomationType"))
    AutomationExecutionMetadata.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    AutomationExecutionMetadata.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    AutomationExecutionMetadata.add_member(:target_locations_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocationsURL, name: "TargetLocationsURL"))
    AutomationExecutionMetadata.add_member(:automation_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationSubtype, name: "AutomationSubtype"))
    AutomationExecutionMetadata.add_member(:scheduled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ScheduledTime"))
    AutomationExecutionMetadata.add_member(:runbooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Runbooks, name: "Runbooks"))
    AutomationExecutionMetadata.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId"))
    AutomationExecutionMetadata.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociationId"))
    AutomationExecutionMetadata.add_member(:change_request_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestName, name: "ChangeRequestName"))
    AutomationExecutionMetadata.type = Types::AutomationExecutionMetadata
    AutomationExecutionMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionMetadata, name: "member"))
    AutomationExecutionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationExecutionNotFoundException.type = Types::AutomationExecutionNotFoundException
    AutomationExecutionPreview.add_member(:step_previews, ::Smithy::Schema::Shapes::MemberShape.new(target: StepPreviewMap, name: "StepPreviews"))
    AutomationExecutionPreview.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions"))
    AutomationExecutionPreview.add_member(:target_previews, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPreviewList, name: "TargetPreviews"))
    AutomationExecutionPreview.add_member(:total_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalAccounts", traits: {"smithy.api#default" => 0}))
    AutomationExecutionPreview.type = Types::AutomationExecutionPreview
    AutomationExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    AutomationExecutionStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AutomationExecutionStatus.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING", traits: {"smithy.api#enumValue" => "Waiting"}))
    AutomationExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    AutomationExecutionStatus.add_member(:timedout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEDOUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    AutomationExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "Cancelling"}))
    AutomationExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    AutomationExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    AutomationExecutionStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PendingApproval"}))
    AutomationExecutionStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "Approved"}))
    AutomationExecutionStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    AutomationExecutionStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "Scheduled"}))
    AutomationExecutionStatus.add_member(:runbook_inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNBOOK_INPROGRESS", traits: {"smithy.api#enumValue" => "RunbookInProgress"}))
    AutomationExecutionStatus.add_member(:pending_change_calendar_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CHANGE_CALENDAR_OVERRIDE", traits: {"smithy.api#enumValue" => "PendingChangeCalendarOverride"}))
    AutomationExecutionStatus.add_member(:change_calendar_override_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_CALENDAR_OVERRIDE_APPROVED", traits: {"smithy.api#enumValue" => "ChangeCalendarOverrideApproved"}))
    AutomationExecutionStatus.add_member(:change_calendar_override_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_CALENDAR_OVERRIDE_REJECTED", traits: {"smithy.api#enumValue" => "ChangeCalendarOverrideRejected"}))
    AutomationExecutionStatus.add_member(:completed_with_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_SUCCESS", traits: {"smithy.api#enumValue" => "CompletedWithSuccess"}))
    AutomationExecutionStatus.add_member(:completed_with_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_FAILURE", traits: {"smithy.api#enumValue" => "CompletedWithFailure"}))
    AutomationExecutionStatus.add_member(:exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXITED", traits: {"smithy.api#enumValue" => "Exited"}))
    AutomationParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "key"))
    AutomationParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterValueList, name: "value"))
    AutomationParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterValue, name: "member"))
    AutomationStepNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutomationStepNotFoundException.type = Types::AutomationStepNotFoundException
    AutomationSubtype.add_member(:change_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChangeRequest", traits: {"smithy.api#enumValue" => "ChangeRequest"}))
    AutomationSubtype.add_member(:access_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessRequest", traits: {"smithy.api#enumValue" => "AccessRequest"}))
    AutomationTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    AutomationType.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CrossAccount", traits: {"smithy.api#enumValue" => "CrossAccount"}))
    AutomationType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Local", traits: {"smithy.api#enumValue" => "Local"}))
    AzureConfiguration.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureTenantId, name: "TenantId", traits: {"smithy.api#required" => {}}))
    AzureConfiguration.add_member(:tenant_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureTenantDisplayName, name: "TenantDisplayName"))
    AzureConfiguration.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureApplicationId, name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    AzureConfiguration.add_member(:application_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureApplicationDisplayName, name: "ApplicationDisplayName"))
    AzureConfiguration.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTargets, name: "Targets"))
    AzureConfiguration.type = Types::AzureConfiguration
    AzureSubscription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureSubscriptionId, name: "Id", traits: {"smithy.api#required" => {}}))
    AzureSubscription.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureSubscriptionDisplayName, name: "DisplayName"))
    AzureSubscription.type = Types::AzureSubscription
    AzureSubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureSubscription, name: "member"))
    BaselineOverride.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    BaselineOverride.add_member(:global_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "GlobalFilters"))
    BaselineOverride.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleGroup, name: "ApprovalRules"))
    BaselineOverride.add_member(:approved_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "ApprovedPatches"))
    BaselineOverride.add_member(:approved_patches_compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ApprovedPatchesComplianceLevel"))
    BaselineOverride.add_member(:rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "RejectedPatches"))
    BaselineOverride.add_member(:rejected_patches_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAction, name: "RejectedPatchesAction"))
    BaselineOverride.add_member(:approved_patches_enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApprovedPatchesEnableNonSecurity", traits: {"smithy.api#default" => false}))
    BaselineOverride.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceList, name: "Sources"))
    BaselineOverride.add_member(:available_security_updates_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceStatus, name: "AvailableSecurityUpdatesComplianceStatus"))
    BaselineOverride.type = Types::BaselineOverride
    CalendarNameOrARNList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARN, name: "member"))
    CalendarState.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    CalendarState.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    CancelCommandRequest.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId", traits: {"smithy.api#required" => {}}))
    CancelCommandRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "InstanceIds"))
    CancelCommandRequest.type = Types::CancelCommandRequest
    CancelCommandResult.type = Types::CancelCommandResult
    CancelMaintenanceWindowExecutionRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    CancelMaintenanceWindowExecutionRequest.type = Types::CancelMaintenanceWindowExecutionRequest
    CancelMaintenanceWindowExecutionResult.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    CancelMaintenanceWindowExecutionResult.type = Types::CancelMaintenanceWindowExecutionResult
    CategoryEnumList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    CategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    CloudConnectorConfiguration.add_member(:azure_configuration, Types::CloudConnectorConfiguration::AzureConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureConfiguration, name: "AzureConfiguration"))
    CloudConnectorConfiguration.add_member(:unknown, Types::CloudConnectorConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CloudConnectorConfiguration.type = Types::CloudConnectorConfiguration
    CloudConnectorFilter.add_member(:filter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorFilterKey, name: "FilterKey"))
    CloudConnectorFilter.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorFilterValues, name: "FilterValues"))
    CloudConnectorFilter.type = Types::CloudConnectorFilter
    CloudConnectorFilterKey.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubscriptionId", traits: {"smithy.api#enumValue" => "SubscriptionId"}))
    CloudConnectorFilterKey.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TenantId", traits: {"smithy.api#enumValue" => "TenantId"}))
    CloudConnectorFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorFilter, name: "member"))
    CloudConnectorFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorFilterValue, name: "member"))
    CloudConnectorSummary.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId"))
    CloudConnectorSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CloudConnectorSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, name: "Description"))
    CloudConnectorSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorIamRoleArn, name: "RoleArn"))
    CloudConnectorSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    CloudConnectorSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt"))
    CloudConnectorSummary.type = Types::CloudConnectorSummary
    CloudConnectorSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorSummary, name: "member"))
    CloudWatchOutputConfig.add_member(:cloud_watch_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "CloudWatchLogGroupName"))
    CloudWatchOutputConfig.add_member(:cloud_watch_output_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputEnabled, name: "CloudWatchOutputEnabled", traits: {"smithy.api#default" => false}))
    CloudWatchOutputConfig.type = Types::CloudWatchOutputConfig
    Command.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId"))
    Command.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    Command.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    Command.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    Command.add_member(:expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAfter"))
    Command.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    Command.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "InstanceIds"))
    Command.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    Command.add_member(:requested_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RequestedDateTime"))
    Command.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandStatus, name: "Status"))
    Command.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetails, name: "StatusDetails"))
    Command.add_member(:output_s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Region, name: "OutputS3Region"))
    Command.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "OutputS3BucketName"))
    Command.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "OutputS3KeyPrefix"))
    Command.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    Command.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    Command.add_member(:target_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetCount, name: "TargetCount", traits: {"smithy.api#default" => 0}))
    Command.add_member(:completed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedCount, name: "CompletedCount", traits: {"smithy.api#default" => 0}))
    Command.add_member(:error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCount, name: "ErrorCount", traits: {"smithy.api#default" => 0}))
    Command.add_member(:delivery_timed_out_count, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryTimedOutCount, name: "DeliveryTimedOutCount", traits: {"smithy.api#default" => 0}))
    Command.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRole"))
    Command.add_member(:notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfig, name: "NotificationConfig"))
    Command.add_member(:cloud_watch_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "CloudWatchOutputConfig"))
    Command.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSeconds, name: "TimeoutSeconds"))
    Command.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    Command.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    Command.type = Types::Command
    CommandFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    CommandFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandFilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    CommandFilter.type = Types::CommandFilter
    CommandFilterKey.add_member(:invoked_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOKED_AFTER", traits: {"smithy.api#enumValue" => "InvokedAfter"}))
    CommandFilterKey.add_member(:invoked_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOKED_BEFORE", traits: {"smithy.api#enumValue" => "InvokedBefore"}))
    CommandFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    CommandFilterKey.add_member(:execution_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_STAGE", traits: {"smithy.api#enumValue" => "ExecutionStage"}))
    CommandFilterKey.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_NAME", traits: {"smithy.api#enumValue" => "DocumentName"}))
    CommandFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandFilter, name: "member"))
    CommandInvocation.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId"))
    CommandInvocation.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    CommandInvocation.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTagName, name: "InstanceName"))
    CommandInvocation.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    CommandInvocation.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    CommandInvocation.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    CommandInvocation.add_member(:requested_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RequestedDateTime"))
    CommandInvocation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandInvocationStatus, name: "Status"))
    CommandInvocation.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetails, name: "StatusDetails"))
    CommandInvocation.add_member(:trace_output, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationTraceOutput, name: "TraceOutput"))
    CommandInvocation.add_member(:standard_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardOutputUrl"))
    CommandInvocation.add_member(:standard_error_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardErrorUrl"))
    CommandInvocation.add_member(:command_plugins, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginList, name: "CommandPlugins"))
    CommandInvocation.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRole"))
    CommandInvocation.add_member(:notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfig, name: "NotificationConfig"))
    CommandInvocation.add_member(:cloud_watch_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "CloudWatchOutputConfig"))
    CommandInvocation.type = Types::CommandInvocation
    CommandInvocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandInvocation, name: "member"))
    CommandInvocationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    CommandInvocationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    CommandInvocationStatus.add_member(:delayed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELAYED", traits: {"smithy.api#enumValue" => "Delayed"}))
    CommandInvocationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    CommandInvocationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    CommandInvocationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    CommandInvocationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    CommandInvocationStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "Cancelling"}))
    CommandList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Command, name: "member"))
    CommandPlugin.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginName, name: "Name"))
    CommandPlugin.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginStatus, name: "Status"))
    CommandPlugin.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetails, name: "StatusDetails"))
    CommandPlugin.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCode, name: "ResponseCode", traits: {"smithy.api#default" => 0}))
    CommandPlugin.add_member(:response_start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ResponseStartDateTime"))
    CommandPlugin.add_member(:response_finish_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ResponseFinishDateTime"))
    CommandPlugin.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginOutput, name: "Output"))
    CommandPlugin.add_member(:standard_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardOutputUrl"))
    CommandPlugin.add_member(:standard_error_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardErrorUrl"))
    CommandPlugin.add_member(:output_s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Region, name: "OutputS3Region"))
    CommandPlugin.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "OutputS3BucketName"))
    CommandPlugin.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "OutputS3KeyPrefix"))
    CommandPlugin.type = Types::CommandPlugin
    CommandPluginList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPlugin, name: "member"))
    CommandPluginStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    CommandPluginStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    CommandPluginStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    CommandPluginStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    CommandPluginStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    CommandPluginStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    CommandStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    CommandStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    CommandStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    CommandStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    CommandStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    CommandStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    CommandStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "Cancelling"}))
    ComplianceExecutionSummary.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionTime", traits: {"smithy.api#required" => {}}))
    ComplianceExecutionSummary.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceExecutionId, name: "ExecutionId"))
    ComplianceExecutionSummary.add_member(:execution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceExecutionType, name: "ExecutionType"))
    ComplianceExecutionSummary.type = Types::ComplianceExecutionSummary
    ComplianceItem.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypeName, name: "ComplianceType"))
    ComplianceItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceType, name: "ResourceType"))
    ComplianceItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceId, name: "ResourceId"))
    ComplianceItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemId, name: "Id"))
    ComplianceItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemTitle, name: "Title"))
    ComplianceItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "Status"))
    ComplianceItem.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSeverity, name: "Severity"))
    ComplianceItem.add_member(:execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceExecutionSummary, name: "ExecutionSummary"))
    ComplianceItem.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemDetails, name: "Details"))
    ComplianceItem.type = Types::ComplianceItem
    ComplianceItemDetails.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    ComplianceItemDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    ComplianceItemEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemId, name: "Id"))
    ComplianceItemEntry.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemTitle, name: "Title"))
    ComplianceItemEntry.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSeverity, name: "Severity", traits: {"smithy.api#required" => {}}))
    ComplianceItemEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ComplianceItemEntry.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemDetails, name: "Details"))
    ComplianceItemEntry.type = Types::ComplianceItemEntry
    ComplianceItemEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemEntry, name: "member"))
    ComplianceItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItem, name: "member", traits: {"smithy.api#xmlName" => "Item"}))
    ComplianceQueryOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equal", traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComplianceQueryOperatorType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotEqual", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    ComplianceQueryOperatorType.add_member(:begin_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BeginWith", traits: {"smithy.api#enumValue" => "BEGIN_WITH"}))
    ComplianceQueryOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThan", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ComplianceQueryOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThan", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComplianceResourceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceId, name: "member"))
    ComplianceResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceType, name: "member"))
    ComplianceSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Critical", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    ComplianceSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "High", traits: {"smithy.api#enumValue" => "HIGH"}))
    ComplianceSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Medium", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ComplianceSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Low", traits: {"smithy.api#enumValue" => "LOW"}))
    ComplianceSeverity.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Informational", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    ComplianceSeverity.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unspecified", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    ComplianceStatus.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Compliant", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    ComplianceStatus.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NonCompliant", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    ComplianceStringFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilterKey, name: "Key"))
    ComplianceStringFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilterValueList, name: "Values"))
    ComplianceStringFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceQueryOperatorType, name: "Type"))
    ComplianceStringFilter.type = Types::ComplianceStringFilter
    ComplianceStringFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilter, name: "member", traits: {"smithy.api#xmlName" => "ComplianceFilter"}))
    ComplianceStringFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceFilterValue, name: "member", traits: {"smithy.api#xmlName" => "FilterValue"}))
    ComplianceSummaryItem.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypeName, name: "ComplianceType"))
    ComplianceSummaryItem.add_member(:compliant_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CompliantSummary, name: "CompliantSummary"))
    ComplianceSummaryItem.add_member(:non_compliant_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: NonCompliantSummary, name: "NonCompliantSummary"))
    ComplianceSummaryItem.type = Types::ComplianceSummaryItem
    ComplianceSummaryItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryItem, name: "member", traits: {"smithy.api#xmlName" => "Item"}))
    ComplianceTypeCountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ComplianceTypeCountLimitExceededException.type = Types::ComplianceTypeCountLimitExceededException
    ComplianceUploadType.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Complete", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ComplianceUploadType.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Partial", traits: {"smithy.api#enumValue" => "PARTIAL"}))
    CompliantSummary.add_member(:compliant_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "CompliantCount", traits: {"smithy.api#default" => 0}))
    CompliantSummary.add_member(:severity_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SeveritySummary, name: "SeveritySummary"))
    CompliantSummary.type = Types::CompliantSummary
    ConfigurationTargets.add_member(:subscriptions, Types::ConfigurationTargets::Subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureSubscriptionList, name: "Subscriptions"))
    ConfigurationTargets.add_member(:unknown, Types::ConfigurationTargets::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigurationTargets.type = Types::ConfigurationTargets
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "connected"}))
    ConnectionStatus.add_member(:not_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONNECTED", traits: {"smithy.api#enumValue" => "notconnected"}))
    CreateActivationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationDescription, name: "Description"))
    CreateActivationRequest.add_member(:default_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultInstanceName, name: "DefaultInstanceName"))
    CreateActivationRequest.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "IamRole", traits: {"smithy.api#required" => {}}))
    CreateActivationRequest.add_member(:registration_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationLimit, name: "RegistrationLimit"))
    CreateActivationRequest.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDate, name: "ExpirationDate"))
    CreateActivationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateActivationRequest.add_member(:registration_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationMetadataList, name: "RegistrationMetadata"))
    CreateActivationRequest.type = Types::CreateActivationRequest
    CreateActivationResult.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationId, name: "ActivationId"))
    CreateActivationResult.add_member(:activation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationCode, name: "ActivationCode"))
    CreateActivationResult.type = Types::CreateActivationResult
    CreateAssociationBatchRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAssociationBatchRequestEntries, name: "Entries", traits: {"smithy.api#required" => {}}))
    CreateAssociationBatchRequest.add_member(:association_dispatch_assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDispatchAssumeRoleArn, name: "AssociationDispatchAssumeRole"))
    CreateAssociationBatchRequest.type = Types::CreateAssociationBatchRequest
    CreateAssociationBatchRequestEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAssociationBatchRequestEntry, name: "member", traits: {"smithy.api#xmlName" => "entries"}))
    CreateAssociationBatchRequestEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAssociationBatchRequestEntry.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    CreateAssociationBatchRequestEntry.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateAssociationBatchRequestEntry.add_member(:automation_target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargetParameterName, name: "AutomationTargetParameterName"))
    CreateAssociationBatchRequestEntry.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    CreateAssociationBatchRequestEntry.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    CreateAssociationBatchRequestEntry.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputLocation, name: "OutputLocation"))
    CreateAssociationBatchRequestEntry.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    CreateAssociationBatchRequestEntry.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    CreateAssociationBatchRequestEntry.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    CreateAssociationBatchRequestEntry.add_member(:compliance_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationComplianceSeverity, name: "ComplianceSeverity"))
    CreateAssociationBatchRequestEntry.add_member(:sync_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncCompliance, name: "SyncCompliance"))
    CreateAssociationBatchRequestEntry.add_member(:apply_only_at_cron_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnlyAtCronInterval, name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false}))
    CreateAssociationBatchRequestEntry.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames"))
    CreateAssociationBatchRequestEntry.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    CreateAssociationBatchRequestEntry.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    CreateAssociationBatchRequestEntry.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    CreateAssociationBatchRequestEntry.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    CreateAssociationBatchRequestEntry.type = Types::CreateAssociationBatchRequestEntry
    CreateAssociationBatchResult.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescriptionList, name: "Successful"))
    CreateAssociationBatchResult.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateAssociationList, name: "Failed"))
    CreateAssociationBatchResult.type = Types::CreateAssociationBatchResult
    CreateAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAssociationRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    CreateAssociationRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    CreateAssociationRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateAssociationRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    CreateAssociationRequest.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    CreateAssociationRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputLocation, name: "OutputLocation"))
    CreateAssociationRequest.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    CreateAssociationRequest.add_member(:automation_target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargetParameterName, name: "AutomationTargetParameterName"))
    CreateAssociationRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    CreateAssociationRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    CreateAssociationRequest.add_member(:compliance_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationComplianceSeverity, name: "ComplianceSeverity"))
    CreateAssociationRequest.add_member(:sync_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncCompliance, name: "SyncCompliance"))
    CreateAssociationRequest.add_member(:apply_only_at_cron_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnlyAtCronInterval, name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false}))
    CreateAssociationRequest.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames"))
    CreateAssociationRequest.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    CreateAssociationRequest.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    CreateAssociationRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    CreateAssociationRequest.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    CreateAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAssociationRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    CreateAssociationRequest.add_member(:association_dispatch_assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDispatchAssumeRoleArn, name: "AssociationDispatchAssumeRole"))
    CreateAssociationRequest.type = Types::CreateAssociationRequest
    CreateAssociationResult.add_member(:association_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescription, name: "AssociationDescription"))
    CreateAssociationResult.type = Types::CreateAssociationResult
    CreateCloudConnectorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorIamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, name: "Description"))
    CreateCloudConnectorRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:config_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigConnectorArn, name: "ConfigConnectorArn", traits: {"smithy.api#required" => {}}))
    CreateCloudConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCloudConnectorRequest.type = Types::CreateCloudConnectorRequest
    CreateCloudConnectorResult.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId"))
    CreateCloudConnectorResult.type = Types::CreateCloudConnectorResult
    CreateDocumentRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContent, name: "Content", traits: {"smithy.api#required" => {}}))
    CreateDocumentRequest.add_member(:requires, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRequiresList, name: "Requires"))
    CreateDocumentRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSourceList, name: "Attachments"))
    CreateDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDocumentRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    CreateDocumentRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    CreateDocumentRequest.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, name: "DocumentType"))
    CreateDocumentRequest.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    CreateDocumentRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    CreateDocumentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDocumentRequest.type = Types::CreateDocumentRequest
    CreateDocumentResult.add_member(:document_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDescription, name: "DocumentDescription"))
    CreateDocumentResult.type = Types::CreateDocumentResult
    CreateMaintenanceWindowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateMaintenanceWindowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    CreateMaintenanceWindowRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "StartDate"))
    CreateMaintenanceWindowRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "EndDate"))
    CreateMaintenanceWindowRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSchedule, name: "Schedule", traits: {"smithy.api#required" => {}}))
    CreateMaintenanceWindowRequest.add_member(:schedule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTimezone, name: "ScheduleTimezone"))
    CreateMaintenanceWindowRequest.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowOffset, name: "ScheduleOffset"))
    CreateMaintenanceWindowRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDurationHours, name: "Duration", traits: {"smithy.api#required" => {}}))
    CreateMaintenanceWindowRequest.add_member(:cutoff, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowCutoff, name: "Cutoff", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowAllowUnassociatedTargets, name: "AllowUnassociatedTargets", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateMaintenanceWindowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMaintenanceWindowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMaintenanceWindowRequest.type = Types::CreateMaintenanceWindowRequest
    CreateMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    CreateMaintenanceWindowResult.type = Types::CreateMaintenanceWindowResult
    CreateOpsItemRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDescription, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateOpsItemRequest.add_member(:ops_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemType, name: "OpsItemType"))
    CreateOpsItemRequest.add_member(:operational_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemOperationalData, name: "OperationalData"))
    CreateOpsItemRequest.add_member(:notifications, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemNotifications, name: "Notifications"))
    CreateOpsItemRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemPriority, name: "Priority"))
    CreateOpsItemRequest.add_member(:related_ops_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedOpsItems, name: "RelatedOpsItems"))
    CreateOpsItemRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSource, name: "Source", traits: {"smithy.api#required" => {}}))
    CreateOpsItemRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemTitle, name: "Title", traits: {"smithy.api#required" => {}}))
    CreateOpsItemRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOpsItemRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemCategory, name: "Category"))
    CreateOpsItemRequest.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSeverity, name: "Severity"))
    CreateOpsItemRequest.add_member(:actual_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualStartTime"))
    CreateOpsItemRequest.add_member(:actual_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualEndTime"))
    CreateOpsItemRequest.add_member(:planned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedStartTime"))
    CreateOpsItemRequest.add_member(:planned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedEndTime"))
    CreateOpsItemRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemAccountId, name: "AccountId"))
    CreateOpsItemRequest.type = Types::CreateOpsItemRequest
    CreateOpsItemResponse.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId"))
    CreateOpsItemResponse.add_member(:ops_item_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemArn, name: "OpsItemArn"))
    CreateOpsItemResponse.type = Types::CreateOpsItemResponse
    CreateOpsMetadataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    CreateOpsMetadataRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "Metadata"))
    CreateOpsMetadataRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOpsMetadataRequest.type = Types::CreateOpsMetadataRequest
    CreateOpsMetadataResult.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn"))
    CreateOpsMetadataResult.type = Types::CreateOpsMetadataResult
    CreatePatchBaselineRequest.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    CreatePatchBaselineRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePatchBaselineRequest.add_member(:global_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "GlobalFilters"))
    CreatePatchBaselineRequest.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleGroup, name: "ApprovalRules"))
    CreatePatchBaselineRequest.add_member(:approved_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "ApprovedPatches"))
    CreatePatchBaselineRequest.add_member(:approved_patches_compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ApprovedPatchesComplianceLevel"))
    CreatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApprovedPatchesEnableNonSecurity", traits: {"smithy.api#default" => nil}))
    CreatePatchBaselineRequest.add_member(:rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "RejectedPatches"))
    CreatePatchBaselineRequest.add_member(:rejected_patches_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAction, name: "RejectedPatchesAction"))
    CreatePatchBaselineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineDescription, name: "Description"))
    CreatePatchBaselineRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceList, name: "Sources"))
    CreatePatchBaselineRequest.add_member(:available_security_updates_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceStatus, name: "AvailableSecurityUpdatesComplianceStatus"))
    CreatePatchBaselineRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePatchBaselineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePatchBaselineRequest.type = Types::CreatePatchBaselineRequest
    CreatePatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    CreatePatchBaselineResult.type = Types::CreatePatchBaselineResult
    CreateResourceDataSyncRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName", traits: {"smithy.api#required" => {}}))
    CreateResourceDataSyncRequest.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3Destination, name: "S3Destination"))
    CreateResourceDataSyncRequest.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType"))
    CreateResourceDataSyncRequest.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSource, name: "SyncSource"))
    CreateResourceDataSyncRequest.type = Types::CreateResourceDataSyncRequest
    CreateResourceDataSyncResult.type = Types::CreateResourceDataSyncResult
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeySecretType, name: "SecretAccessKey", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTokenType, name: "SessionToken", traits: {"smithy.api#required" => {}}))
    Credentials.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpirationTime", traits: {"smithy.api#required" => {}}))
    Credentials.type = Types::Credentials
    CustomSchemaCountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CustomSchemaCountLimitExceededException.type = Types::CustomSchemaCountLimitExceededException
    DeleteActivationRequest.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationId, name: "ActivationId", traits: {"smithy.api#required" => {}}))
    DeleteActivationRequest.type = Types::DeleteActivationRequest
    DeleteActivationResult.type = Types::DeleteActivationResult
    DeleteAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    DeleteAssociationRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    DeleteAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    DeleteAssociationRequest.type = Types::DeleteAssociationRequest
    DeleteAssociationResult.type = Types::DeleteAssociationResult
    DeleteCloudConnectorRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId", traits: {"smithy.api#required" => {}}))
    DeleteCloudConnectorRequest.type = Types::DeleteCloudConnectorRequest
    DeleteCloudConnectorResult.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId"))
    DeleteCloudConnectorResult.type = Types::DeleteCloudConnectorResult
    DeleteDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteDocumentRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    DeleteDocumentRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DeleteDocumentRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force", traits: {"smithy.api#default" => false}))
    DeleteDocumentRequest.type = Types::DeleteDocumentRequest
    DeleteDocumentResult.type = Types::DeleteDocumentResult
    DeleteInventoryRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    DeleteInventoryRequest.add_member(:schema_delete_option, ::Smithy::Schema::Shapes::MemberShape.new(target: InventorySchemaDeleteOption, name: "SchemaDeleteOption"))
    DeleteInventoryRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DryRun, name: "DryRun", traits: {"smithy.api#default" => false}))
    DeleteInventoryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteInventoryRequest.type = Types::DeleteInventoryRequest
    DeleteInventoryResult.add_member(:deletion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "DeletionId"))
    DeleteInventoryResult.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    DeleteInventoryResult.add_member(:deletion_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionSummary, name: "DeletionSummary"))
    DeleteInventoryResult.type = Types::DeleteInventoryResult
    DeleteMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DeleteMaintenanceWindowRequest.type = Types::DeleteMaintenanceWindowRequest
    DeleteMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    DeleteMaintenanceWindowResult.type = Types::DeleteMaintenanceWindowResult
    DeleteOpsItemRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    DeleteOpsItemRequest.type = Types::DeleteOpsItemRequest
    DeleteOpsItemResponse.type = Types::DeleteOpsItemResponse
    DeleteOpsMetadataRequest.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn", traits: {"smithy.api#required" => {}}))
    DeleteOpsMetadataRequest.type = Types::DeleteOpsMetadataRequest
    DeleteOpsMetadataResult.type = Types::DeleteOpsMetadataResult
    DeleteParameterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteParameterRequest.type = Types::DeleteParameterRequest
    DeleteParameterResult.type = Types::DeleteParameterResult
    DeleteParametersRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, name: "Names", traits: {"smithy.api#required" => {}}))
    DeleteParametersRequest.type = Types::DeleteParametersRequest
    DeleteParametersResult.add_member(:deleted_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, name: "DeletedParameters"))
    DeleteParametersResult.add_member(:invalid_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, name: "InvalidParameters"))
    DeleteParametersResult.type = Types::DeleteParametersResult
    DeletePatchBaselineRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    DeletePatchBaselineRequest.type = Types::DeletePatchBaselineRequest
    DeletePatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    DeletePatchBaselineResult.type = Types::DeletePatchBaselineResult
    DeleteResourceDataSyncRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName", traits: {"smithy.api#required" => {}}))
    DeleteResourceDataSyncRequest.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType"))
    DeleteResourceDataSyncRequest.type = Types::DeleteResourceDataSyncRequest
    DeleteResourceDataSyncResult.type = Types::DeleteResourceDataSyncResult
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:policy_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyHash, name: "PolicyHash", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, name: "DeletionMode"))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeletionMode.add_member(:remove_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RemoveSharing", traits: {"smithy.api#enumValue" => "RemoveSharing"}))
    DeletionMode.add_member(:rollback_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RollbackMigration", traits: {"smithy.api#enumValue" => "RollbackMigration"}))
    DeregisterManagedInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    DeregisterManagedInstanceRequest.type = Types::DeregisterManagedInstanceRequest
    DeregisterManagedInstanceResult.type = Types::DeregisterManagedInstanceResult
    DeregisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    DeregisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    DeregisterPatchBaselineForPatchGroupRequest.type = Types::DeregisterPatchBaselineForPatchGroupRequest
    DeregisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    DeregisterPatchBaselineForPatchGroupResult.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup"))
    DeregisterPatchBaselineForPatchGroupResult.type = Types::DeregisterPatchBaselineForPatchGroupResult
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId", traits: {"smithy.api#required" => {}}))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:safe, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Safe", traits: {"smithy.api#default" => nil}))
    DeregisterTargetFromMaintenanceWindowRequest.type = Types::DeregisterTargetFromMaintenanceWindowRequest
    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowResult.type = Types::DeregisterTargetFromMaintenanceWindowResult
    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId", traits: {"smithy.api#required" => {}}))
    DeregisterTaskFromMaintenanceWindowRequest.type = Types::DeregisterTaskFromMaintenanceWindowRequest
    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId"))
    DeregisterTaskFromMaintenanceWindowResult.type = Types::DeregisterTaskFromMaintenanceWindowResult
    DescribeActivationsFilter.add_member(:filter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeActivationsFilterKeys, name: "FilterKey"))
    DescribeActivationsFilter.add_member(:filter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "FilterValues"))
    DescribeActivationsFilter.type = Types::DescribeActivationsFilter
    DescribeActivationsFilterKeys.add_member(:activation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATION_IDS", traits: {"smithy.api#enumValue" => "ActivationIds"}))
    DescribeActivationsFilterKeys.add_member(:default_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_INSTANCE_NAME", traits: {"smithy.api#enumValue" => "DefaultInstanceName"}))
    DescribeActivationsFilterKeys.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IamRole"}))
    DescribeActivationsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeActivationsFilter, name: "member"))
    DescribeActivationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeActivationsFilterList, name: "Filters"))
    DescribeActivationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeActivationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeActivationsRequest.type = Types::DescribeActivationsRequest
    DescribeActivationsResult.add_member(:activation_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationList, name: "ActivationList"))
    DescribeActivationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeActivationsResult.type = Types::DescribeActivationsResult
    DescribeAssociationExecutionTargetsRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    DescribeAssociationExecutionTargetsRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionId, name: "ExecutionId", traits: {"smithy.api#required" => {}}))
    DescribeAssociationExecutionTargetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTargetsFilterList, name: "Filters"))
    DescribeAssociationExecutionTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAssociationExecutionTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAssociationExecutionTargetsRequest.type = Types::DescribeAssociationExecutionTargetsRequest
    DescribeAssociationExecutionTargetsResult.add_member(:association_execution_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionTargetsList, name: "AssociationExecutionTargets"))
    DescribeAssociationExecutionTargetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAssociationExecutionTargetsResult.type = Types::DescribeAssociationExecutionTargetsResult
    DescribeAssociationExecutionsRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    DescribeAssociationExecutionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionFilterList, name: "Filters"))
    DescribeAssociationExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAssociationExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAssociationExecutionsRequest.type = Types::DescribeAssociationExecutionsRequest
    DescribeAssociationExecutionsResult.add_member(:association_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationExecutionsList, name: "AssociationExecutions"))
    DescribeAssociationExecutionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAssociationExecutionsResult.type = Types::DescribeAssociationExecutionsResult
    DescribeAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    DescribeAssociationRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    DescribeAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    DescribeAssociationRequest.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    DescribeAssociationRequest.type = Types::DescribeAssociationRequest
    DescribeAssociationResult.add_member(:association_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescription, name: "AssociationDescription"))
    DescribeAssociationResult.type = Types::DescribeAssociationResult
    DescribeAutomationExecutionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionFilterList, name: "Filters"))
    DescribeAutomationExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAutomationExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAutomationExecutionsRequest.type = Types::DescribeAutomationExecutionsRequest
    DescribeAutomationExecutionsResult.add_member(:automation_execution_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionMetadataList, name: "AutomationExecutionMetadataList"))
    DescribeAutomationExecutionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAutomationExecutionsResult.type = Types::DescribeAutomationExecutionsResult
    DescribeAutomationStepExecutionsRequest.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId", traits: {"smithy.api#required" => {}}))
    DescribeAutomationStepExecutionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionFilterList, name: "Filters"))
    DescribeAutomationStepExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAutomationStepExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAutomationStepExecutionsRequest.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReverseOrder", traits: {"smithy.api#default" => nil}))
    DescribeAutomationStepExecutionsRequest.type = Types::DescribeAutomationStepExecutionsRequest
    DescribeAutomationStepExecutionsResult.add_member(:step_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionList, name: "StepExecutions"))
    DescribeAutomationStepExecutionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAutomationStepExecutionsResult.type = Types::DescribeAutomationStepExecutionsResult
    DescribeAvailablePatchesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterList, name: "Filters"))
    DescribeAvailablePatchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineMaxResults, name: "MaxResults"))
    DescribeAvailablePatchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAvailablePatchesRequest.type = Types::DescribeAvailablePatchesRequest
    DescribeAvailablePatchesResult.add_member(:patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchList, name: "Patches"))
    DescribeAvailablePatchesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAvailablePatchesResult.type = Types::DescribeAvailablePatchesResult
    DescribeDocumentPermissionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeDocumentPermissionRequest.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentPermissionType, name: "PermissionType", traits: {"smithy.api#required" => {}}))
    DescribeDocumentPermissionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentPermissionMaxResults, name: "MaxResults"))
    DescribeDocumentPermissionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDocumentPermissionRequest.type = Types::DescribeDocumentPermissionRequest
    DescribeDocumentPermissionResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    DescribeDocumentPermissionResponse.add_member(:account_sharing_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSharingInfoList, name: "AccountSharingInfoList"))
    DescribeDocumentPermissionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeDocumentPermissionResponse.type = Types::DescribeDocumentPermissionResponse
    DescribeDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeDocumentRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    DescribeDocumentRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DescribeDocumentRequest.type = Types::DescribeDocumentRequest
    DescribeDocumentResult.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDescription, name: "Document"))
    DescribeDocumentResult.type = Types::DescribeDocumentResult
    DescribeEffectiveInstanceAssociationsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveInstanceAssociationMaxResults, name: "MaxResults"))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeEffectiveInstanceAssociationsRequest.type = Types::DescribeEffectiveInstanceAssociationsRequest
    DescribeEffectiveInstanceAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationList, name: "Associations"))
    DescribeEffectiveInstanceAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeEffectiveInstanceAssociationsResult.type = Types::DescribeEffectiveInstanceAssociationsResult
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineMaxResults, name: "MaxResults"))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineRequest.type = Types::DescribeEffectivePatchesForPatchBaselineRequest
    DescribeEffectivePatchesForPatchBaselineResult.add_member(:effective_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePatchList, name: "EffectivePatches"))
    DescribeEffectivePatchesForPatchBaselineResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineResult.type = Types::DescribeEffectivePatchesForPatchBaselineResult
    DescribeInstanceAssociationsStatusRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    DescribeInstanceAssociationsStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeInstanceAssociationsStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstanceAssociationsStatusRequest.type = Types::DescribeInstanceAssociationsStatusRequest
    DescribeInstanceAssociationsStatusResult.add_member(:instance_association_status_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationStatusInfos, name: "InstanceAssociationStatusInfos"))
    DescribeInstanceAssociationsStatusResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstanceAssociationsStatusResult.type = Types::DescribeInstanceAssociationsStatusResult
    DescribeInstanceInformationRequest.add_member(:instance_information_filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilterList, name: "InstanceInformationFilterList"))
    DescribeInstanceInformationRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationStringFilterList, name: "Filters"))
    DescribeInstanceInformationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsEC2Compatible, name: "MaxResults"))
    DescribeInstanceInformationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstanceInformationRequest.type = Types::DescribeInstanceInformationRequest
    DescribeInstanceInformationResult.add_member(:instance_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationList, name: "InstanceInformationList"))
    DescribeInstanceInformationResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstanceInformationResult.type = Types::DescribeInstanceInformationResult
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateFilterList, name: "Filters"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceMaxResults, name: "MaxResults"))
    DescribeInstancePatchStatesForPatchGroupRequest.type = Types::DescribeInstancePatchStatesForPatchGroupRequest
    DescribeInstancePatchStatesForPatchGroupResult.add_member(:instance_patch_states, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStatesList, name: "InstancePatchStates"))
    DescribeInstancePatchStatesForPatchGroupResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupResult.type = Types::DescribeInstancePatchStatesForPatchGroupResult
    DescribeInstancePatchStatesRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "InstanceIds", traits: {"smithy.api#required" => {}}))
    DescribeInstancePatchStatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchStatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceMaxResults, name: "MaxResults"))
    DescribeInstancePatchStatesRequest.type = Types::DescribeInstancePatchStatesRequest
    DescribeInstancePatchStatesResult.add_member(:instance_patch_states, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateList, name: "InstancePatchStates"))
    DescribeInstancePatchStatesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchStatesResult.type = Types::DescribeInstancePatchStatesResult
    DescribeInstancePatchesRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    DescribeInstancePatchesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterList, name: "Filters"))
    DescribeInstancePatchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceMaxResults, name: "MaxResults"))
    DescribeInstancePatchesRequest.type = Types::DescribeInstancePatchesRequest
    DescribeInstancePatchesResult.add_member(:patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceDataList, name: "Patches"))
    DescribeInstancePatchesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePatchesResult.type = Types::DescribeInstancePatchesResult
    DescribeInstancePropertiesRequest.add_member(:instance_property_filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterList, name: "InstancePropertyFilterList"))
    DescribeInstancePropertiesRequest.add_member(:filters_with_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyStringFilterList, name: "FiltersWithOperator"))
    DescribeInstancePropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeInstancePropertiesMaxResults, name: "MaxResults"))
    DescribeInstancePropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePropertiesRequest.type = Types::DescribeInstancePropertiesRequest
    DescribeInstancePropertiesResult.add_member(:instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProperties, name: "InstanceProperties"))
    DescribeInstancePropertiesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInstancePropertiesResult.type = Types::DescribeInstancePropertiesResult
    DescribeInventoryDeletionsRequest.add_member(:deletion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "DeletionId"))
    DescribeInventoryDeletionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInventoryDeletionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeInventoryDeletionsRequest.type = Types::DescribeInventoryDeletionsRequest
    DescribeInventoryDeletionsResult.add_member(:inventory_deletions, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionsList, name: "InventoryDeletions"))
    DescribeInventoryDeletionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeInventoryDeletionsResult.type = Types::DescribeInventoryDeletionsResult
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.type = Types::DescribeMaintenanceWindowExecutionTaskInvocationsRequest
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:window_execution_task_invocation_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationIdentityList, name: "WindowExecutionTaskInvocationIdentities"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.type = Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksRequest.type = Types::DescribeMaintenanceWindowExecutionTasksRequest
    DescribeMaintenanceWindowExecutionTasksResult.add_member(:window_execution_task_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskIdentityList, name: "WindowExecutionTaskIdentities"))
    DescribeMaintenanceWindowExecutionTasksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksResult.type = Types::DescribeMaintenanceWindowExecutionTasksResult
    DescribeMaintenanceWindowExecutionsRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionsRequest.type = Types::DescribeMaintenanceWindowExecutionsRequest
    DescribeMaintenanceWindowExecutionsResult.add_member(:window_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionList, name: "WindowExecutions"))
    DescribeMaintenanceWindowExecutionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowExecutionsResult.type = Types::DescribeMaintenanceWindowExecutionsResult
    DescribeMaintenanceWindowScheduleRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowResourceType, name: "ResourceType"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterList, name: "Filters"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSearchMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowScheduleRequest.type = Types::DescribeMaintenanceWindowScheduleRequest
    DescribeMaintenanceWindowScheduleResult.add_member(:scheduled_window_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledWindowExecutionList, name: "ScheduledWindowExecutions"))
    DescribeMaintenanceWindowScheduleResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowScheduleResult.type = Types::DescribeMaintenanceWindowScheduleResult
    DescribeMaintenanceWindowTargetsRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowTargetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowTargetsRequest.type = Types::DescribeMaintenanceWindowTargetsRequest
    DescribeMaintenanceWindowTargetsResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetList, name: "Targets"))
    DescribeMaintenanceWindowTargetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowTargetsResult.type = Types::DescribeMaintenanceWindowTargetsResult
    DescribeMaintenanceWindowTasksRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowTasksRequest.type = Types::DescribeMaintenanceWindowTasksRequest
    DescribeMaintenanceWindowTasksResult.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskList, name: "Tasks"))
    DescribeMaintenanceWindowTasksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowTasksResult.type = Types::DescribeMaintenanceWindowTasksResult
    DescribeMaintenanceWindowsForTargetRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSearchMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowsForTargetRequest.type = Types::DescribeMaintenanceWindowsForTargetRequest
    DescribeMaintenanceWindowsForTargetResult.add_member(:window_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowsForTargetList, name: "WindowIdentities"))
    DescribeMaintenanceWindowsForTargetResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowsForTargetResult.type = Types::DescribeMaintenanceWindowsForTargetResult
    DescribeMaintenanceWindowsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterList, name: "Filters"))
    DescribeMaintenanceWindowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowMaxResults, name: "MaxResults"))
    DescribeMaintenanceWindowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowsRequest.type = Types::DescribeMaintenanceWindowsRequest
    DescribeMaintenanceWindowsResult.add_member(:window_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowIdentityList, name: "WindowIdentities"))
    DescribeMaintenanceWindowsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeMaintenanceWindowsResult.type = Types::DescribeMaintenanceWindowsResult
    DescribeOpsItemsRequest.add_member(:ops_item_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilters, name: "OpsItemFilters"))
    DescribeOpsItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemMaxResults, name: "MaxResults"))
    DescribeOpsItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOpsItemsRequest.type = Types::DescribeOpsItemsRequest
    DescribeOpsItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOpsItemsResponse.add_member(:ops_item_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSummaries, name: "OpsItemSummaries"))
    DescribeOpsItemsResponse.type = Types::DescribeOpsItemsResponse
    DescribeParametersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersFilterList, name: "Filters"))
    DescribeParametersRequest.add_member(:parameter_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilterList, name: "ParameterFilters"))
    DescribeParametersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeParametersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeParametersRequest.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Shared", traits: {"smithy.api#default" => nil}))
    DescribeParametersRequest.type = Types::DescribeParametersRequest
    DescribeParametersResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMetadataList, name: "Parameters"))
    DescribeParametersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeParametersResult.type = Types::DescribeParametersResult
    DescribePatchBaselinesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterList, name: "Filters"))
    DescribePatchBaselinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineMaxResults, name: "MaxResults"))
    DescribePatchBaselinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchBaselinesRequest.type = Types::DescribePatchBaselinesRequest
    DescribePatchBaselinesResult.add_member(:baseline_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineIdentityList, name: "BaselineIdentities"))
    DescribePatchBaselinesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchBaselinesResult.type = Types::DescribePatchBaselinesResult
    DescribePatchGroupStateRequest.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    DescribePatchGroupStateRequest.type = Types::DescribePatchGroupStateRequest
    DescribePatchGroupStateResult.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Instances", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithInstalledPatches", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_other_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithInstalledOtherPatches", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_pending_reboot_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesCount, name: "InstancesWithInstalledPendingRebootPatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesCount, name: "InstancesWithInstalledRejectedPatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_missing_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithMissingPatches", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_failed_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithFailedPatches", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_not_applicable_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithNotApplicablePatches", traits: {"smithy.api#default" => 0}))
    DescribePatchGroupStateResult.add_member(:instances_with_unreported_not_applicable_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithUnreportedNotApplicablePatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_critical_non_compliant_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesCount, name: "InstancesWithCriticalNonCompliantPatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_security_non_compliant_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesCount, name: "InstancesWithSecurityNonCompliantPatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_other_non_compliant_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesCount, name: "InstancesWithOtherNonCompliantPatches", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.add_member(:instances_with_available_security_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstancesWithAvailableSecurityUpdates", traits: {"smithy.api#default" => nil}))
    DescribePatchGroupStateResult.type = Types::DescribePatchGroupStateResult
    DescribePatchGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineMaxResults, name: "MaxResults"))
    DescribePatchGroupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterList, name: "Filters"))
    DescribePatchGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchGroupsRequest.type = Types::DescribePatchGroupsRequest
    DescribePatchGroupsResult.add_member(:mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroupPatchBaselineMappingList, name: "Mappings"))
    DescribePatchGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchGroupsResult.type = Types::DescribePatchGroupsResult
    DescribePatchPropertiesRequest.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem", traits: {"smithy.api#required" => {}}))
    DescribePatchPropertiesRequest.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchProperty, name: "Property", traits: {"smithy.api#required" => {}}))
    DescribePatchPropertiesRequest.add_member(:patch_set, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSet, name: "PatchSet"))
    DescribePatchPropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribePatchPropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchPropertiesRequest.type = Types::DescribePatchPropertiesRequest
    DescribePatchPropertiesResult.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchPropertiesList, name: "Properties"))
    DescribePatchPropertiesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePatchPropertiesResult.type = Types::DescribePatchPropertiesResult
    DescribeSessionsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "State", traits: {"smithy.api#required" => {}}))
    DescribeSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMaxResults, name: "MaxResults"))
    DescribeSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSessionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilterList, name: "Filters"))
    DescribeSessionsRequest.type = Types::DescribeSessionsRequest
    DescribeSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionList, name: "Sessions"))
    DescribeSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSessionsResponse.type = Types::DescribeSessionsResponse
    DisassociateOpsItemRelatedItemRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    DisassociateOpsItemRelatedItemRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationId, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    DisassociateOpsItemRelatedItemRequest.type = Types::DisassociateOpsItemRelatedItemRequest
    DisassociateOpsItemRelatedItemResponse.type = Types::DisassociateOpsItemRelatedItemResponse
    DocumentAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DocumentAlreadyExists.type = Types::DocumentAlreadyExists
    DocumentDefaultVersionDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name"))
    DocumentDefaultVersionDescription.add_member(:default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DefaultVersion"))
    DocumentDefaultVersionDescription.add_member(:default_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "DefaultVersionName"))
    DocumentDefaultVersionDescription.type = Types::DocumentDefaultVersionDescription
    DocumentDescription.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSha1, name: "Sha1"))
    DocumentDescription.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHash, name: "Hash"))
    DocumentDescription.add_member(:hash_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHashType, name: "HashType"))
    DocumentDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    DocumentDescription.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    DocumentDescription.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DocumentDescription.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOwner, name: "Owner"))
    DocumentDescription.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    DocumentDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatus, name: "Status"))
    DocumentDescription.add_member(:status_information, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatusInformation, name: "StatusInformation"))
    DocumentDescription.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    DocumentDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionInDocument, name: "Description"))
    DocumentDescription.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameterList, name: "Parameters"))
    DocumentDescription.add_member(:platform_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformTypeList, name: "PlatformTypes"))
    DocumentDescription.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, name: "DocumentType"))
    DocumentDescription.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSchemaVersion, name: "SchemaVersion"))
    DocumentDescription.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "LatestVersion"))
    DocumentDescription.add_member(:default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DefaultVersion"))
    DocumentDescription.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    DocumentDescription.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    DocumentDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DocumentDescription.add_member(:attachments_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentInformationList, name: "AttachmentsInformation"))
    DocumentDescription.add_member(:requires, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRequiresList, name: "Requires"))
    DocumentDescription.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAuthor, name: "Author"))
    DocumentDescription.add_member(:review_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewInformationList, name: "ReviewInformation"))
    DocumentDescription.add_member(:approved_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "ApprovedVersion"))
    DocumentDescription.add_member(:pending_review_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "PendingReviewVersion"))
    DocumentDescription.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    DocumentDescription.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "Category"))
    DocumentDescription.add_member(:category_enum, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryEnumList, name: "CategoryEnum"))
    DocumentDescription.type = Types::DocumentDescription
    DocumentFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    DocumentFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    DocumentFilter.type = Types::DocumentFilter
    DocumentFilterKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "Name"}))
    DocumentFilterKey.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Owner", traits: {"smithy.api#enumValue" => "Owner"}))
    DocumentFilterKey.add_member(:platform_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PlatformTypes", traits: {"smithy.api#enumValue" => "PlatformTypes"}))
    DocumentFilterKey.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DocumentType", traits: {"smithy.api#enumValue" => "DocumentType"}))
    DocumentFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFilter, name: "member", traits: {"smithy.api#xmlName" => "DocumentFilter"}))
    DocumentFormat.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    DocumentFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    DocumentFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    DocumentHashType.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "Sha256"}))
    DocumentHashType.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "Sha1"}))
    DocumentIdentifier.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    DocumentIdentifier.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    DocumentIdentifier.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    DocumentIdentifier.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOwner, name: "Owner"))
    DocumentIdentifier.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DocumentIdentifier.add_member(:platform_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformTypeList, name: "PlatformTypes"))
    DocumentIdentifier.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    DocumentIdentifier.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, name: "DocumentType"))
    DocumentIdentifier.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSchemaVersion, name: "SchemaVersion"))
    DocumentIdentifier.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    DocumentIdentifier.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    DocumentIdentifier.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DocumentIdentifier.add_member(:requires, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRequiresList, name: "Requires"))
    DocumentIdentifier.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    DocumentIdentifier.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAuthor, name: "Author"))
    DocumentIdentifier.type = Types::DocumentIdentifier
    DocumentIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdentifier, name: "member", traits: {"smithy.api#xmlName" => "DocumentIdentifier"}))
    DocumentKeyValuesFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentKeyValuesFilterKey, name: "Key"))
    DocumentKeyValuesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentKeyValuesFilterValues, name: "Values"))
    DocumentKeyValuesFilter.type = Types::DocumentKeyValuesFilter
    DocumentKeyValuesFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentKeyValuesFilter, name: "member"))
    DocumentKeyValuesFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentKeyValuesFilterValue, name: "member"))
    DocumentLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DocumentLimitExceeded.type = Types::DocumentLimitExceeded
    DocumentMetadataEnum.add_member(:document_reviews, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DocumentReviews", traits: {"smithy.api#enumValue" => "DocumentReviews"}))
    DocumentMetadataResponseInfo.add_member(:reviewer_response, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewerResponseList, name: "ReviewerResponse"))
    DocumentMetadataResponseInfo.type = Types::DocumentMetadataResponseInfo
    DocumentParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameterName, name: "Name"))
    DocumentParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameterType, name: "Type"))
    DocumentParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameterDescrption, name: "Description"))
    DocumentParameter.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameterDefaultValue, name: "DefaultValue"))
    DocumentParameter.type = Types::DocumentParameter
    DocumentParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentParameter, name: "member", traits: {"smithy.api#xmlName" => "DocumentParameter"}))
    DocumentParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "String", traits: {"smithy.api#enumValue" => "String"}))
    DocumentParameterType.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StringList", traits: {"smithy.api#enumValue" => "StringList"}))
    DocumentPermissionLimit.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DocumentPermissionLimit.type = Types::DocumentPermissionLimit
    DocumentPermissionType.add_member(:share, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARE", traits: {"smithy.api#enumValue" => "Share"}))
    DocumentRequires.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    DocumentRequires.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "Version"))
    DocumentRequires.add_member(:require_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RequireType, name: "RequireType"))
    DocumentRequires.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DocumentRequires.type = Types::DocumentRequires
    DocumentRequiresList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRequires, name: "member"))
    DocumentReviewAction.add_member(:send_for_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SendForReview", traits: {"smithy.api#enumValue" => "SendForReview"}))
    DocumentReviewAction.add_member(:update_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateReview", traits: {"smithy.api#enumValue" => "UpdateReview"}))
    DocumentReviewAction.add_member(:approve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Approve", traits: {"smithy.api#enumValue" => "Approve"}))
    DocumentReviewAction.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reject", traits: {"smithy.api#enumValue" => "Reject"}))
    DocumentReviewCommentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewCommentSource, name: "member"))
    DocumentReviewCommentSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewCommentType, name: "Type"))
    DocumentReviewCommentSource.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewComment, name: "Content"))
    DocumentReviewCommentSource.type = Types::DocumentReviewCommentSource
    DocumentReviewCommentType.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Comment", traits: {"smithy.api#enumValue" => "Comment"}))
    DocumentReviewerResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewerResponseSource, name: "member"))
    DocumentReviewerResponseSource.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreateTime"))
    DocumentReviewerResponseSource.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedTime"))
    DocumentReviewerResponseSource.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    DocumentReviewerResponseSource.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewCommentList, name: "Comment"))
    DocumentReviewerResponseSource.add_member(:reviewer, ::Smithy::Schema::Shapes::MemberShape.new(target: Reviewer, name: "Reviewer"))
    DocumentReviewerResponseSource.type = Types::DocumentReviewerResponseSource
    DocumentReviews.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewAction, name: "Action", traits: {"smithy.api#required" => {}}))
    DocumentReviews.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviewCommentList, name: "Comment"))
    DocumentReviews.type = Types::DocumentReviews
    DocumentStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    DocumentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    DocumentStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "Updating"}))
    DocumentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting"}))
    DocumentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    DocumentType.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Command", traits: {"smithy.api#enumValue" => "Command"}))
    DocumentType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Policy", traits: {"smithy.api#enumValue" => "Policy"}))
    DocumentType.add_member(:automation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Automation", traits: {"smithy.api#enumValue" => "Automation"}))
    DocumentType.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Session", traits: {"smithy.api#enumValue" => "Session"}))
    DocumentType.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Package", traits: {"smithy.api#enumValue" => "Package"}))
    DocumentType.add_member(:application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ApplicationConfiguration", traits: {"smithy.api#enumValue" => "ApplicationConfiguration"}))
    DocumentType.add_member(:application_configuration_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ApplicationConfigurationSchema", traits: {"smithy.api#enumValue" => "ApplicationConfigurationSchema"}))
    DocumentType.add_member(:deployment_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeploymentStrategy", traits: {"smithy.api#enumValue" => "DeploymentStrategy"}))
    DocumentType.add_member(:change_calendar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChangeCalendar", traits: {"smithy.api#enumValue" => "ChangeCalendar"}))
    DocumentType.add_member(:change_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChangeTemplate", traits: {"smithy.api#enumValue" => "Automation.ChangeTemplate"}))
    DocumentType.add_member(:problem_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProblemAnalysis", traits: {"smithy.api#enumValue" => "ProblemAnalysis"}))
    DocumentType.add_member(:problem_analysis_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProblemAnalysisTemplate", traits: {"smithy.api#enumValue" => "ProblemAnalysisTemplate"}))
    DocumentType.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormation", traits: {"smithy.api#enumValue" => "CloudFormation"}))
    DocumentType.add_member(:conformance_pack_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConformancePackTemplate", traits: {"smithy.api#enumValue" => "ConformancePackTemplate"}))
    DocumentType.add_member(:quick_setup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QuickSetup", traits: {"smithy.api#enumValue" => "QuickSetup"}))
    DocumentType.add_member(:manual_approval_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManualApprovalPolicy", traits: {"smithy.api#enumValue" => "ManualApprovalPolicy"}))
    DocumentType.add_member(:auto_approval_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoApprovalPolicy", traits: {"smithy.api#enumValue" => "AutoApprovalPolicy"}))
    DocumentVersionInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name"))
    DocumentVersionInfo.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    DocumentVersionInfo.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    DocumentVersionInfo.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    DocumentVersionInfo.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    DocumentVersionInfo.add_member(:is_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefaultVersion", traits: {"smithy.api#default" => false}))
    DocumentVersionInfo.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    DocumentVersionInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatus, name: "Status"))
    DocumentVersionInfo.add_member(:status_information, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatusInformation, name: "StatusInformation"))
    DocumentVersionInfo.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    DocumentVersionInfo.type = Types::DocumentVersionInfo
    DocumentVersionLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DocumentVersionLimitExceeded.type = Types::DocumentVersionLimitExceeded
    DocumentVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionInfo, name: "member"))
    DoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DoesNotExistException.type = Types::DoesNotExistException
    DuplicateDocumentContent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DuplicateDocumentContent.type = Types::DuplicateDocumentContent
    DuplicateDocumentVersionName.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DuplicateDocumentVersionName.type = Types::DuplicateDocumentVersionName
    DuplicateInstanceId.type = Types::DuplicateInstanceId
    EffectivePatch.add_member(:patch, ::Smithy::Schema::Shapes::MemberShape.new(target: Patch, name: "Patch"))
    EffectivePatch.add_member(:patch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchStatus, name: "PatchStatus"))
    EffectivePatch.type = Types::EffectivePatch
    EffectivePatchList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePatch, name: "member"))
    ExcludeAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeAccount, name: "member"))
    ExecutionInputs.add_member(:automation, Types::ExecutionInputs::Automation, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionInputs, name: "Automation"))
    ExecutionInputs.add_member(:unknown, Types::ExecutionInputs::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExecutionInputs.type = Types::ExecutionInputs
    ExecutionMode.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "Auto"}))
    ExecutionMode.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Interactive", traits: {"smithy.api#enumValue" => "Interactive"}))
    ExecutionPreview.add_member(:automation, Types::ExecutionPreview::Automation, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionPreview, name: "Automation"))
    ExecutionPreview.add_member(:unknown, Types::ExecutionPreview::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExecutionPreview.type = Types::ExecutionPreview
    ExecutionPreviewStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ExecutionPreviewStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ExecutionPreviewStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    ExecutionPreviewStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ExternalAlarmState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ExternalAlarmState.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    FailedCreateAssociation.add_member(:entry, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAssociationBatchRequestEntry, name: "Entry"))
    FailedCreateAssociation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchErrorMessage, name: "Message"))
    FailedCreateAssociation.add_member(:fault, ::Smithy::Schema::Shapes::MemberShape.new(target: Fault, name: "Fault"))
    FailedCreateAssociation.type = Types::FailedCreateAssociation
    FailedCreateAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateAssociation, name: "member", traits: {"smithy.api#xmlName" => "FailedCreateAssociationEntry"}))
    FailureDetails.add_member(:failure_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureStage"))
    FailureDetails.add_member(:failure_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureType"))
    FailureDetails.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Details"))
    FailureDetails.type = Types::FailureDetails
    Fault.add_member(:client, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Client", traits: {"smithy.api#enumValue" => "Client"}))
    Fault.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Server", traits: {"smithy.api#enumValue" => "Server"}))
    Fault.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "Unknown"}))
    FeatureNotAvailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FeatureNotAvailableException.type = Types::FeatureNotAvailableException
    GetAccessTokenRequest.add_member(:access_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRequestId, name: "AccessRequestId", traits: {"smithy.api#required" => {}}))
    GetAccessTokenRequest.type = Types::GetAccessTokenRequest
    GetAccessTokenResponse.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    GetAccessTokenResponse.add_member(:access_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRequestStatus, name: "AccessRequestStatus"))
    GetAccessTokenResponse.type = Types::GetAccessTokenResponse
    GetAutomationExecutionRequest.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId", traits: {"smithy.api#required" => {}}))
    GetAutomationExecutionRequest.type = Types::GetAutomationExecutionRequest
    GetAutomationExecutionResult.add_member(:automation_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecution, name: "AutomationExecution"))
    GetAutomationExecutionResult.type = Types::GetAutomationExecutionResult
    GetCalendarStateRequest.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames", traits: {"smithy.api#required" => {}}))
    GetCalendarStateRequest.add_member(:at_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601String, name: "AtTime"))
    GetCalendarStateRequest.type = Types::GetCalendarStateRequest
    GetCalendarStateResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarState, name: "State"))
    GetCalendarStateResponse.add_member(:at_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601String, name: "AtTime"))
    GetCalendarStateResponse.add_member(:next_transition_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601String, name: "NextTransitionTime"))
    GetCalendarStateResponse.type = Types::GetCalendarStateResponse
    GetCloudConnectorRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId", traits: {"smithy.api#required" => {}}))
    GetCloudConnectorRequest.type = Types::GetCloudConnectorRequest
    GetCloudConnectorResult.add_member(:cloud_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorArn, name: "CloudConnectorArn"))
    GetCloudConnectorResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    GetCloudConnectorResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, name: "Description"))
    GetCloudConnectorResult.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorIamRoleArn, name: "RoleArn"))
    GetCloudConnectorResult.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorConfiguration, name: "Configuration"))
    GetCloudConnectorResult.add_member(:config_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigConnectorArn, name: "ConfigConnectorArn"))
    GetCloudConnectorResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    GetCloudConnectorResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt"))
    GetCloudConnectorResult.type = Types::GetCloudConnectorResult
    GetCommandInvocationRequest.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId", traits: {"smithy.api#required" => {}}))
    GetCommandInvocationRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    GetCommandInvocationRequest.add_member(:plugin_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginName, name: "PluginName"))
    GetCommandInvocationRequest.type = Types::GetCommandInvocationRequest
    GetCommandInvocationResult.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId"))
    GetCommandInvocationResult.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    GetCommandInvocationResult.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    GetCommandInvocationResult.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    GetCommandInvocationResult.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    GetCommandInvocationResult.add_member(:plugin_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandPluginName, name: "PluginName"))
    GetCommandInvocationResult.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCode, name: "ResponseCode", traits: {"smithy.api#default" => 0}))
    GetCommandInvocationResult.add_member(:execution_start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StringDateTime, name: "ExecutionStartDateTime"))
    GetCommandInvocationResult.add_member(:execution_elapsed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StringDateTime, name: "ExecutionElapsedTime"))
    GetCommandInvocationResult.add_member(:execution_end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StringDateTime, name: "ExecutionEndDateTime"))
    GetCommandInvocationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandInvocationStatus, name: "Status"))
    GetCommandInvocationResult.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetails, name: "StatusDetails"))
    GetCommandInvocationResult.add_member(:standard_output_content, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputContent, name: "StandardOutputContent"))
    GetCommandInvocationResult.add_member(:standard_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardOutputUrl"))
    GetCommandInvocationResult.add_member(:standard_error_content, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardErrorContent, name: "StandardErrorContent"))
    GetCommandInvocationResult.add_member(:standard_error_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "StandardErrorUrl"))
    GetCommandInvocationResult.add_member(:cloud_watch_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "CloudWatchOutputConfig"))
    GetCommandInvocationResult.type = Types::GetCommandInvocationResult
    GetConnectionStatusRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTarget, name: "Target", traits: {"smithy.api#required" => {}}))
    GetConnectionStatusRequest.type = Types::GetConnectionStatusRequest
    GetConnectionStatusResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTarget, name: "Target"))
    GetConnectionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, name: "Status"))
    GetConnectionStatusResponse.type = Types::GetConnectionStatusResponse
    GetDefaultPatchBaselineRequest.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    GetDefaultPatchBaselineRequest.type = Types::GetDefaultPatchBaselineRequest
    GetDefaultPatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    GetDefaultPatchBaselineResult.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    GetDefaultPatchBaselineResult.type = Types::GetDefaultPatchBaselineResult
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId", traits: {"smithy.api#required" => {}}))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:baseline_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineOverride, name: "BaselineOverride"))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:use_s3_dual_stack_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseS3DualStackEndpoint", traits: {"smithy.api#default" => false}))
    GetDeployablePatchSnapshotForInstanceRequest.type = Types::GetDeployablePatchSnapshotForInstanceRequest
    GetDeployablePatchSnapshotForInstanceResult.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotDownloadUrl, name: "SnapshotDownloadUrl"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: Product, name: "Product"))
    GetDeployablePatchSnapshotForInstanceResult.type = Types::GetDeployablePatchSnapshotForInstanceResult
    GetDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    GetDocumentRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    GetDocumentRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    GetDocumentRequest.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    GetDocumentRequest.type = Types::GetDocumentRequest
    GetDocumentResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    GetDocumentResult.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    GetDocumentResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    GetDocumentResult.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    GetDocumentResult.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    GetDocumentResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatus, name: "Status"))
    GetDocumentResult.add_member(:status_information, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatusInformation, name: "StatusInformation"))
    GetDocumentResult.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContent, name: "Content"))
    GetDocumentResult.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentType, name: "DocumentType"))
    GetDocumentResult.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    GetDocumentResult.add_member(:requires, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRequiresList, name: "Requires"))
    GetDocumentResult.add_member(:attachments_content, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentList, name: "AttachmentsContent"))
    GetDocumentResult.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    GetDocumentResult.type = Types::GetDocumentResult
    GetExecutionPreviewRequest.add_member(:execution_preview_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPreviewId, name: "ExecutionPreviewId", traits: {"smithy.api#required" => {}}))
    GetExecutionPreviewRequest.type = Types::GetExecutionPreviewRequest
    GetExecutionPreviewResponse.add_member(:execution_preview_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPreviewId, name: "ExecutionPreviewId"))
    GetExecutionPreviewResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    GetExecutionPreviewResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPreviewStatus, name: "Status"))
    GetExecutionPreviewResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    GetExecutionPreviewResponse.add_member(:execution_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPreview, name: "ExecutionPreview"))
    GetExecutionPreviewResponse.type = Types::GetExecutionPreviewResponse
    GetInventoryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterList, name: "Filters"))
    GetInventoryRequest.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryAggregatorList, name: "Aggregators"))
    GetInventoryRequest.add_member(:result_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultAttributeList, name: "ResultAttributes"))
    GetInventoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInventoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetInventoryRequest.type = Types::GetInventoryRequest
    GetInventoryResult.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultEntityList, name: "Entities"))
    GetInventoryResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInventoryResult.type = Types::GetInventoryResult
    GetInventorySchemaRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeNameFilter, name: "TypeName"))
    GetInventorySchemaRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInventorySchemaRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetInventorySchemaMaxResults, name: "MaxResults"))
    GetInventorySchemaRequest.add_member(:aggregator, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorSchemaOnly, name: "Aggregator", traits: {"smithy.api#default" => false}))
    GetInventorySchemaRequest.add_member(:sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSubTypeSchema, name: "SubType", traits: {"smithy.api#default" => nil}))
    GetInventorySchemaRequest.type = Types::GetInventorySchemaRequest
    GetInventorySchemaResult.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaResultList, name: "Schemas"))
    GetInventorySchemaResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInventorySchemaResult.type = Types::GetInventorySchemaResult
    GetMaintenanceWindowExecutionRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionRequest.type = Types::GetMaintenanceWindowExecutionRequest
    GetMaintenanceWindowExecutionResult.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionResult.add_member(:task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskIdList, name: "TaskIds"))
    GetMaintenanceWindowExecutionResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    GetMaintenanceWindowExecutionResult.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    GetMaintenanceWindowExecutionResult.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    GetMaintenanceWindowExecutionResult.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    GetMaintenanceWindowExecutionResult.type = Types::GetMaintenanceWindowExecutionResult
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationId, name: "InvocationId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionTaskInvocationRequest.type = Types::GetMaintenanceWindowExecutionTaskInvocationRequest
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationId, name: "InvocationId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskExecutionId, name: "ExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "TaskType"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationParameters, name: "Parameters"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskTargetId, name: "WindowTargetId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.type = Types::GetMaintenanceWindowExecutionTaskInvocationResult
    GetMaintenanceWindowExecutionTaskRequest.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowExecutionTaskRequest.type = Types::GetMaintenanceWindowExecutionTaskRequest
    GetMaintenanceWindowExecutionTaskResult.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRole"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "Type"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParametersList, name: "TaskParameters"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    GetMaintenanceWindowExecutionTaskResult.type = Types::GetMaintenanceWindowExecutionTaskResult
    GetMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowRequest.type = Types::GetMaintenanceWindowRequest
    GetMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    GetMaintenanceWindowResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    GetMaintenanceWindowResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    GetMaintenanceWindowResult.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "StartDate"))
    GetMaintenanceWindowResult.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "EndDate"))
    GetMaintenanceWindowResult.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSchedule, name: "Schedule"))
    GetMaintenanceWindowResult.add_member(:schedule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTimezone, name: "ScheduleTimezone"))
    GetMaintenanceWindowResult.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowOffset, name: "ScheduleOffset"))
    GetMaintenanceWindowResult.add_member(:next_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "NextExecutionTime"))
    GetMaintenanceWindowResult.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDurationHours, name: "Duration"))
    GetMaintenanceWindowResult.add_member(:cutoff, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowCutoff, name: "Cutoff", traits: {"smithy.api#default" => 0}))
    GetMaintenanceWindowResult.add_member(:allow_unassociated_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowAllowUnassociatedTargets, name: "AllowUnassociatedTargets", traits: {"smithy.api#default" => false}))
    GetMaintenanceWindowResult.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowEnabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    GetMaintenanceWindowResult.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    GetMaintenanceWindowResult.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ModifiedDate"))
    GetMaintenanceWindowResult.type = Types::GetMaintenanceWindowResult
    GetMaintenanceWindowTaskRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowTaskRequest.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId", traits: {"smithy.api#required" => {}}))
    GetMaintenanceWindowTaskRequest.type = Types::GetMaintenanceWindowTaskRequest
    GetMaintenanceWindowTaskResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    GetMaintenanceWindowTaskResult.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId"))
    GetMaintenanceWindowTaskResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    GetMaintenanceWindowTaskResult.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    GetMaintenanceWindowTaskResult.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    GetMaintenanceWindowTaskResult.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "TaskType"))
    GetMaintenanceWindowTaskResult.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "TaskParameters"))
    GetMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskInvocationParameters, name: "TaskInvocationParameters"))
    GetMaintenanceWindowTaskResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    GetMaintenanceWindowTaskResult.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    GetMaintenanceWindowTaskResult.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    GetMaintenanceWindowTaskResult.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo"))
    GetMaintenanceWindowTaskResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    GetMaintenanceWindowTaskResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    GetMaintenanceWindowTaskResult.add_member(:cutoff_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskCutoffBehavior, name: "CutoffBehavior"))
    GetMaintenanceWindowTaskResult.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    GetMaintenanceWindowTaskResult.type = Types::GetMaintenanceWindowTaskResult
    GetOpsItemRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    GetOpsItemRequest.add_member(:ops_item_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemArn, name: "OpsItemArn"))
    GetOpsItemRequest.type = Types::GetOpsItemRequest
    GetOpsItemResponse.add_member(:ops_item, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItem, name: "OpsItem"))
    GetOpsItemResponse.type = Types::GetOpsItemResponse
    GetOpsMetadataRequest.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn", traits: {"smithy.api#required" => {}}))
    GetOpsMetadataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetOpsMetadataMaxResults, name: "MaxResults"))
    GetOpsMetadataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetOpsMetadataRequest.type = Types::GetOpsMetadataRequest
    GetOpsMetadataResult.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataResourceId, name: "ResourceId"))
    GetOpsMetadataResult.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "Metadata"))
    GetOpsMetadataResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetOpsMetadataResult.type = Types::GetOpsMetadataResult
    GetOpsSummaryRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    GetOpsSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterList, name: "Filters"))
    GetOpsSummaryRequest.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorList, name: "Aggregators"))
    GetOpsSummaryRequest.add_member(:result_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsResultAttributeList, name: "ResultAttributes"))
    GetOpsSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetOpsSummaryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetOpsSummaryRequest.type = Types::GetOpsSummaryRequest
    GetOpsSummaryResult.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityList, name: "Entities"))
    GetOpsSummaryResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetOpsSummaryResult.type = Types::GetOpsSummaryResult
    GetParameterHistoryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetParameterHistoryRequest.add_member(:with_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithDecryption", traits: {"smithy.api#default" => nil}))
    GetParameterHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetParameterHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetParameterHistoryRequest.type = Types::GetParameterHistoryRequest
    GetParameterHistoryResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterHistoryList, name: "Parameters"))
    GetParameterHistoryResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetParameterHistoryResult.type = Types::GetParameterHistoryResult
    GetParameterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetParameterRequest.add_member(:with_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithDecryption", traits: {"smithy.api#default" => nil}))
    GetParameterRequest.type = Types::GetParameterRequest
    GetParameterResult.add_member(:parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "Parameter"))
    GetParameterResult.type = Types::GetParameterResult
    GetParametersByPathRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Path", traits: {"smithy.api#required" => {}}))
    GetParametersByPathRequest.add_member(:recursive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Recursive", traits: {"smithy.api#default" => nil}))
    GetParametersByPathRequest.add_member(:parameter_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilterList, name: "ParameterFilters"))
    GetParametersByPathRequest.add_member(:with_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithDecryption", traits: {"smithy.api#default" => nil}))
    GetParametersByPathRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: GetParametersByPathMaxResults, name: "MaxResults"))
    GetParametersByPathRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetParametersByPathRequest.type = Types::GetParametersByPathRequest
    GetParametersByPathResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, name: "Parameters"))
    GetParametersByPathResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetParametersByPathResult.type = Types::GetParametersByPathResult
    GetParametersRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, name: "Names", traits: {"smithy.api#required" => {}}))
    GetParametersRequest.add_member(:with_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "WithDecryption", traits: {"smithy.api#default" => nil}))
    GetParametersRequest.type = Types::GetParametersRequest
    GetParametersResult.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, name: "Parameters"))
    GetParametersResult.add_member(:invalid_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, name: "InvalidParameters"))
    GetParametersResult.type = Types::GetParametersResult
    GetPatchBaselineForPatchGroupRequest.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    GetPatchBaselineForPatchGroupRequest.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupRequest.type = Types::GetPatchBaselineForPatchGroupRequest
    GetPatchBaselineForPatchGroupResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    GetPatchBaselineForPatchGroupResult.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup"))
    GetPatchBaselineForPatchGroupResult.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupResult.type = Types::GetPatchBaselineForPatchGroupResult
    GetPatchBaselineRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    GetPatchBaselineRequest.type = Types::GetPatchBaselineRequest
    GetPatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    GetPatchBaselineResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineName, name: "Name"))
    GetPatchBaselineResult.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    GetPatchBaselineResult.add_member(:global_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "GlobalFilters"))
    GetPatchBaselineResult.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleGroup, name: "ApprovalRules"))
    GetPatchBaselineResult.add_member(:approved_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "ApprovedPatches"))
    GetPatchBaselineResult.add_member(:approved_patches_compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ApprovedPatchesComplianceLevel"))
    GetPatchBaselineResult.add_member(:approved_patches_enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApprovedPatchesEnableNonSecurity", traits: {"smithy.api#default" => nil}))
    GetPatchBaselineResult.add_member(:rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "RejectedPatches"))
    GetPatchBaselineResult.add_member(:rejected_patches_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAction, name: "RejectedPatchesAction"))
    GetPatchBaselineResult.add_member(:patch_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroupList, name: "PatchGroups"))
    GetPatchBaselineResult.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    GetPatchBaselineResult.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ModifiedDate"))
    GetPatchBaselineResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineDescription, name: "Description"))
    GetPatchBaselineResult.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceList, name: "Sources"))
    GetPatchBaselineResult.add_member(:available_security_updates_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceStatus, name: "AvailableSecurityUpdatesComplianceStatus"))
    GetPatchBaselineResult.type = Types::GetPatchBaselineResult
    GetResourcePoliciesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetResourcePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyMaxResults, name: "MaxResults"))
    GetResourcePoliciesRequest.type = Types::GetResourcePoliciesRequest
    GetResourcePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetResourcePoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: GetResourcePoliciesResponseEntries, name: "Policies"))
    GetResourcePoliciesResponse.type = Types::GetResourcePoliciesResponse
    GetResourcePoliciesResponseEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GetResourcePoliciesResponseEntry, name: "member"))
    GetResourcePoliciesResponseEntry.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    GetResourcePoliciesResponseEntry.add_member(:policy_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyHash, name: "PolicyHash"))
    GetResourcePoliciesResponseEntry.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetResourcePoliciesResponseEntry.type = Types::GetResourcePoliciesResponseEntry
    GetServiceSettingRequest.add_member(:setting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingId, name: "SettingId", traits: {"smithy.api#required" => {}}))
    GetServiceSettingRequest.type = Types::GetServiceSettingRequest
    GetServiceSettingResult.add_member(:service_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSetting, name: "ServiceSetting"))
    GetServiceSettingResult.type = Types::GetServiceSettingResult
    HierarchyLevelLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    HierarchyLevelLimitExceededException.type = Types::HierarchyLevelLimitExceededException
    HierarchyTypeMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    HierarchyTypeMismatchException.type = Types::HierarchyTypeMismatchException
    IdempotentParameterMismatch.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IdempotentParameterMismatch.type = Types::IdempotentParameterMismatch
    ImpactType.add_member(:mutating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTATING", traits: {"smithy.api#enumValue" => "Mutating"}))
    ImpactType.add_member(:non_mutating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_MUTATING", traits: {"smithy.api#enumValue" => "NonMutating"}))
    ImpactType.add_member(:undetermined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDETERMINED", traits: {"smithy.api#enumValue" => "Undetermined"}))
    IncompatiblePolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    IncompatiblePolicyException.type = Types::IncompatiblePolicyException
    InstanceAggregatedAssociationOverview.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "DetailedStatus"))
    InstanceAggregatedAssociationOverview.add_member(:instance_association_status_aggregated_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationStatusAggregatedCount, name: "InstanceAssociationStatusAggregatedCount"))
    InstanceAggregatedAssociationOverview.type = Types::InstanceAggregatedAssociationOverview
    InstanceAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    InstanceAssociation.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    InstanceAssociation.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContent, name: "Content"))
    InstanceAssociation.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    InstanceAssociation.type = Types::InstanceAssociation
    InstanceAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociation, name: "member"))
    InstanceAssociationOutputLocation.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputLocation, name: "S3Location"))
    InstanceAssociationOutputLocation.type = Types::InstanceAssociationOutputLocation
    InstanceAssociationOutputUrl.add_member(:s3_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputUrl, name: "S3OutputUrl"))
    InstanceAssociationOutputUrl.type = Types::InstanceAssociationOutputUrl
    InstanceAssociationStatusAggregatedCount.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "key"))
    InstanceAssociationStatusAggregatedCount.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "value"))
    InstanceAssociationStatusInfo.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId"))
    InstanceAssociationStatusInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    InstanceAssociationStatusInfo.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    InstanceAssociationStatusInfo.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    InstanceAssociationStatusInfo.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    InstanceAssociationStatusInfo.add_member(:execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionDate"))
    InstanceAssociationStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "Status"))
    InstanceAssociationStatusInfo.add_member(:detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "DetailedStatus"))
    InstanceAssociationStatusInfo.add_member(:execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationExecutionSummary, name: "ExecutionSummary"))
    InstanceAssociationStatusInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentErrorCode, name: "ErrorCode"))
    InstanceAssociationStatusInfo.add_member(:output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputUrl, name: "OutputUrl"))
    InstanceAssociationStatusInfo.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    InstanceAssociationStatusInfo.type = Types::InstanceAssociationStatusInfo
    InstanceAssociationStatusInfos.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationStatusInfo, name: "member"))
    InstanceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member"))
    InstanceInfo.add_member(:agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentType, name: "AgentType"))
    InstanceInfo.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "AgentVersion"))
    InstanceInfo.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, name: "ComputerName"))
    InstanceInfo.add_member(:instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "InstanceStatus"))
    InstanceInfo.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IpAddress"))
    InstanceInfo.add_member(:managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedStatus, name: "ManagedStatus"))
    InstanceInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "Name"))
    InstanceInfo.add_member(:platform_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "PlatformType"))
    InstanceInfo.add_member(:platform_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformName, name: "PlatformName"))
    InstanceInfo.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformVersion, name: "PlatformVersion"))
    InstanceInfo.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    InstanceInfo.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    InstanceInfo.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceId, name: "SourceId"))
    InstanceInfo.add_member(:source_location, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLocation, name: "SourceLocation"))
    InstanceInfo.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    InstanceInfo.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    InstanceInfo.type = Types::InstanceInfo
    InstanceInformation.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    InstanceInformation.add_member(:ping_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PingStatus, name: "PingStatus"))
    InstanceInformation.add_member(:last_ping_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastPingDateTime"))
    InstanceInformation.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "AgentVersion"))
    InstanceInformation.add_member(:is_latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsLatestVersion", traits: {"smithy.api#default" => nil}))
    InstanceInformation.add_member(:platform_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "PlatformType"))
    InstanceInformation.add_member(:platform_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformName"))
    InstanceInformation.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformVersion"))
    InstanceInformation.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationId, name: "ActivationId"))
    InstanceInformation.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "IamRole"))
    InstanceInformation.add_member(:registration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RegistrationDate"))
    InstanceInformation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    InstanceInformation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    InstanceInformation.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IPAddress"))
    InstanceInformation.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, name: "ComputerName"))
    InstanceInformation.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "AssociationStatus"))
    InstanceInformation.add_member(:last_association_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastAssociationExecutionDate"))
    InstanceInformation.add_member(:last_successful_association_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastSuccessfulAssociationExecutionDate"))
    InstanceInformation.add_member(:association_overview, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAggregatedAssociationOverview, name: "AssociationOverview"))
    InstanceInformation.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceId, name: "SourceId"))
    InstanceInformation.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    InstanceInformation.add_member(:source_location, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLocation, name: "SourceLocation"))
    InstanceInformation.type = Types::InstanceInformation
    InstanceInformationFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    InstanceInformationFilter.add_member(:value_set, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilterValueSet, name: "valueSet", traits: {"smithy.api#required" => {}}))
    InstanceInformationFilter.type = Types::InstanceInformationFilter
    InstanceInformationFilterKey.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_IDS", traits: {"smithy.api#enumValue" => "InstanceIds"}))
    InstanceInformationFilterKey.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_VERSION", traits: {"smithy.api#enumValue" => "AgentVersion"}))
    InstanceInformationFilterKey.add_member(:ping_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PING_STATUS", traits: {"smithy.api#enumValue" => "PingStatus"}))
    InstanceInformationFilterKey.add_member(:platform_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_TYPES", traits: {"smithy.api#enumValue" => "PlatformTypes"}))
    InstanceInformationFilterKey.add_member(:activation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATION_IDS", traits: {"smithy.api#enumValue" => "ActivationIds"}))
    InstanceInformationFilterKey.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IamRole"}))
    InstanceInformationFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    InstanceInformationFilterKey.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATION_STATUS", traits: {"smithy.api#enumValue" => "AssociationStatus"}))
    InstanceInformationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilter, name: "member", traits: {"smithy.api#xmlName" => "InstanceInformationFilter"}))
    InstanceInformationFilterValueSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilterValue, name: "member", traits: {"smithy.api#xmlName" => "InstanceInformationFilterValue"}))
    InstanceInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformation, name: "member", traits: {"smithy.api#xmlName" => "InstanceInformation"}))
    InstanceInformationStringFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationStringFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    InstanceInformationStringFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationFilterValueSet, name: "Values", traits: {"smithy.api#required" => {}}))
    InstanceInformationStringFilter.type = Types::InstanceInformationStringFilter
    InstanceInformationStringFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInformationStringFilter, name: "member", traits: {"smithy.api#xmlName" => "InstanceInformationStringFilter"}))
    InstancePatchState.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    InstancePatchState.add_member(:install_override_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstallOverrideList, name: "InstallOverrideList"))
    InstancePatchState.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    InstancePatchState.add_member(:installed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchInstalledCount, name: "InstalledCount", traits: {"smithy.api#default" => 0}))
    InstancePatchState.add_member(:installed_other_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchInstalledOtherCount, name: "InstalledOtherCount", traits: {"smithy.api#default" => 0}))
    InstancePatchState.add_member(:installed_pending_reboot_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchInstalledPendingRebootCount, name: "InstalledPendingRebootCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:installed_rejected_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchInstalledRejectedCount, name: "InstalledRejectedCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:missing_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchMissingCount, name: "MissingCount", traits: {"smithy.api#default" => 0}))
    InstancePatchState.add_member(:failed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFailedCount, name: "FailedCount", traits: {"smithy.api#default" => 0}))
    InstancePatchState.add_member(:unreported_not_applicable_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchUnreportedNotApplicableCount, name: "UnreportedNotApplicableCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:not_applicable_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchNotApplicableCount, name: "NotApplicableCount", traits: {"smithy.api#default" => 0}))
    InstancePatchState.add_member(:available_security_update_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAvailableSecurityUpdateCount, name: "AvailableSecurityUpdateCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:operation_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "OperationStartTime", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:operation_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "OperationEndTime", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOperationType, name: "Operation", traits: {"smithy.api#required" => {}}))
    InstancePatchState.add_member(:last_no_reboot_install_operation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastNoRebootInstallOperationTime"))
    InstancePatchState.add_member(:reboot_option, ::Smithy::Schema::Shapes::MemberShape.new(target: RebootOption, name: "RebootOption"))
    InstancePatchState.add_member(:critical_non_compliant_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchCriticalNonCompliantCount, name: "CriticalNonCompliantCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:security_non_compliant_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSecurityNonCompliantCount, name: "SecurityNonCompliantCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.add_member(:other_non_compliant_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOtherNonCompliantCount, name: "OtherNonCompliantCount", traits: {"smithy.api#default" => nil}))
    InstancePatchState.type = Types::InstancePatchState
    InstancePatchStateFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    InstancePatchStateFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateFilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    InstancePatchStateFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateOperatorType, name: "Type", traits: {"smithy.api#required" => {}}))
    InstancePatchStateFilter.type = Types::InstancePatchStateFilter
    InstancePatchStateFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateFilter, name: "member"))
    InstancePatchStateFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchStateFilterValue, name: "member"))
    InstancePatchStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchState, name: "member"))
    InstancePatchStateOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    InstancePatchStateOperatorType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    InstancePatchStateOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    InstancePatchStateOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    InstancePatchStatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePatchState, name: "member"))
    InstanceProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProperty, name: "member", traits: {"smithy.api#xmlName" => "InstanceProperty"}))
    InstanceProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "Name"))
    InstanceProperty.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    InstanceProperty.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    InstanceProperty.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRole, name: "InstanceRole"))
    InstanceProperty.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyName, name: "KeyName"))
    InstanceProperty.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "InstanceState"))
    InstanceProperty.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "Architecture"))
    InstanceProperty.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IPAddress"))
    InstanceProperty.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LaunchTime"))
    InstanceProperty.add_member(:ping_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PingStatus, name: "PingStatus"))
    InstanceProperty.add_member(:last_ping_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastPingDateTime"))
    InstanceProperty.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "AgentVersion"))
    InstanceProperty.add_member(:platform_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "PlatformType"))
    InstanceProperty.add_member(:platform_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformName, name: "PlatformName"))
    InstanceProperty.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformVersion, name: "PlatformVersion"))
    InstanceProperty.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationId, name: "ActivationId"))
    InstanceProperty.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "IamRole"))
    InstanceProperty.add_member(:registration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RegistrationDate"))
    InstanceProperty.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    InstanceProperty.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, name: "ComputerName"))
    InstanceProperty.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusName, name: "AssociationStatus"))
    InstanceProperty.add_member(:last_association_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastAssociationExecutionDate"))
    InstanceProperty.add_member(:last_successful_association_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastSuccessfulAssociationExecutionDate"))
    InstanceProperty.add_member(:association_overview, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAggregatedAssociationOverview, name: "AssociationOverview"))
    InstanceProperty.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceId, name: "SourceId"))
    InstanceProperty.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    InstanceProperty.add_member(:source_location, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLocation, name: "SourceLocation"))
    InstanceProperty.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    InstanceProperty.type = Types::InstanceProperty
    InstancePropertyFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    InstancePropertyFilter.add_member(:value_set, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterValueSet, name: "valueSet", traits: {"smithy.api#required" => {}}))
    InstancePropertyFilter.type = Types::InstancePropertyFilter
    InstancePropertyFilterKey.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_IDS", traits: {"smithy.api#enumValue" => "InstanceIds"}))
    InstancePropertyFilterKey.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_VERSION", traits: {"smithy.api#enumValue" => "AgentVersion"}))
    InstancePropertyFilterKey.add_member(:ping_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PING_STATUS", traits: {"smithy.api#enumValue" => "PingStatus"}))
    InstancePropertyFilterKey.add_member(:platform_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_TYPES", traits: {"smithy.api#enumValue" => "PlatformTypes"}))
    InstancePropertyFilterKey.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_NAME", traits: {"smithy.api#enumValue" => "DocumentName"}))
    InstancePropertyFilterKey.add_member(:activation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATION_IDS", traits: {"smithy.api#enumValue" => "ActivationIds"}))
    InstancePropertyFilterKey.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IamRole"}))
    InstancePropertyFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    InstancePropertyFilterKey.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATION_STATUS", traits: {"smithy.api#enumValue" => "AssociationStatus"}))
    InstancePropertyFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilter, name: "member", traits: {"smithy.api#xmlName" => "InstancePropertyFilter"}))
    InstancePropertyFilterOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    InstancePropertyFilterOperator.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    InstancePropertyFilterOperator.add_member(:begin_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGIN_WITH", traits: {"smithy.api#enumValue" => "BeginWith"}))
    InstancePropertyFilterOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    InstancePropertyFilterOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    InstancePropertyFilterValueSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterValue, name: "member", traits: {"smithy.api#xmlName" => "InstancePropertyFilterValue"}))
    InstancePropertyStringFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyStringFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    InstancePropertyStringFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterValueSet, name: "Values", traits: {"smithy.api#required" => {}}))
    InstancePropertyStringFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyFilterOperator, name: "Operator"))
    InstancePropertyStringFilter.type = Types::InstancePropertyStringFilter
    InstancePropertyStringFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePropertyStringFilter, name: "member", traits: {"smithy.api#xmlName" => "InstancePropertyStringFilter"}))
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidActivation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidActivation.type = Types::InvalidActivation
    InvalidActivationId.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidActivationId.type = Types::InvalidActivationId
    InvalidAggregatorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAggregatorException.type = Types::InvalidAggregatorException
    InvalidAllowedPatternException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidAllowedPatternException.type = Types::InvalidAllowedPatternException
    InvalidAssociation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAssociation.type = Types::InvalidAssociation
    InvalidAssociationVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAssociationVersion.type = Types::InvalidAssociationVersion
    InvalidAutomationExecutionParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAutomationExecutionParametersException.type = Types::InvalidAutomationExecutionParametersException
    InvalidAutomationSignalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAutomationSignalException.type = Types::InvalidAutomationSignalException
    InvalidAutomationStatusUpdateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAutomationStatusUpdateException.type = Types::InvalidAutomationStatusUpdateException
    InvalidCommandId.type = Types::InvalidCommandId
    InvalidDeleteInventoryParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDeleteInventoryParametersException.type = Types::InvalidDeleteInventoryParametersException
    InvalidDeletionIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDeletionIdException.type = Types::InvalidDeletionIdException
    InvalidDocument.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocument.type = Types::InvalidDocument
    InvalidDocumentContent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocumentContent.type = Types::InvalidDocumentContent
    InvalidDocumentOperation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocumentOperation.type = Types::InvalidDocumentOperation
    InvalidDocumentSchemaVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocumentSchemaVersion.type = Types::InvalidDocumentSchemaVersion
    InvalidDocumentType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocumentType.type = Types::InvalidDocumentType
    InvalidDocumentVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDocumentVersion.type = Types::InvalidDocumentVersion
    InvalidFilter.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidFilter.type = Types::InvalidFilter
    InvalidFilterKey.type = Types::InvalidFilterKey
    InvalidFilterOption.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidFilterOption.type = Types::InvalidFilterOption
    InvalidFilterValue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidFilterValue.type = Types::InvalidFilterValue
    InvalidInstanceId.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidInstanceId.type = Types::InvalidInstanceId
    InvalidInstanceInformationFilterValue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidInstanceInformationFilterValue.type = Types::InvalidInstanceInformationFilterValue
    InvalidInstancePropertyFilterValue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidInstancePropertyFilterValue.type = Types::InvalidInstancePropertyFilterValue
    InvalidInventoryGroupException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidInventoryGroupException.type = Types::InvalidInventoryGroupException
    InvalidInventoryItemContextException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidInventoryItemContextException.type = Types::InvalidInventoryItemContextException
    InvalidInventoryRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidInventoryRequestException.type = Types::InvalidInventoryRequestException
    InvalidItemContentException.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    InvalidItemContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidItemContentException.type = Types::InvalidItemContentException
    InvalidKeyId.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidKeyId.type = Types::InvalidKeyId
    InvalidNextToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidNextToken.type = Types::InvalidNextToken
    InvalidNotificationConfig.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidNotificationConfig.type = Types::InvalidNotificationConfig
    InvalidOptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOptionException.type = Types::InvalidOptionException
    InvalidOutputFolder.type = Types::InvalidOutputFolder
    InvalidOutputLocation.type = Types::InvalidOutputLocation
    InvalidParameters.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidParameters.type = Types::InvalidParameters
    InvalidPermissionType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidPermissionType.type = Types::InvalidPermissionType
    InvalidPluginName.type = Types::InvalidPluginName
    InvalidPolicyAttributeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidPolicyAttributeException.type = Types::InvalidPolicyAttributeException
    InvalidPolicyTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidPolicyTypeException.type = Types::InvalidPolicyTypeException
    InvalidResourceId.type = Types::InvalidResourceId
    InvalidResourceType.type = Types::InvalidResourceType
    InvalidResultAttributeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidResultAttributeException.type = Types::InvalidResultAttributeException
    InvalidRole.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRole.type = Types::InvalidRole
    InvalidSchedule.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidSchedule.type = Types::InvalidSchedule
    InvalidTag.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTag.type = Types::InvalidTag
    InvalidTarget.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTarget.type = Types::InvalidTarget
    InvalidTargetMaps.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTargetMaps.type = Types::InvalidTargetMaps
    InvalidTypeNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTypeNameException.type = Types::InvalidTypeNameException
    InvalidUpdate.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidUpdate.type = Types::InvalidUpdate
    InventoryAggregator.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryAggregatorExpression, name: "Expression"))
    InventoryAggregator.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryAggregatorList, name: "Aggregators"))
    InventoryAggregator.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryGroupList, name: "Groups"))
    InventoryAggregator.type = Types::InventoryAggregator
    InventoryAggregatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryAggregator, name: "member", traits: {"smithy.api#xmlName" => "Aggregator"}))
    InventoryAttributeDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    InventoryAttributeDataType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER", traits: {"smithy.api#enumValue" => "number"}))
    InventoryDeletionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    InventoryDeletionStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    InventoryDeletionStatusItem.add_member(:deletion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "DeletionId"))
    InventoryDeletionStatusItem.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    InventoryDeletionStatusItem.add_member(:deletion_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionStartTime, name: "DeletionStartTime"))
    InventoryDeletionStatusItem.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionStatus, name: "LastStatus"))
    InventoryDeletionStatusItem.add_member(:last_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionLastStatusMessage, name: "LastStatusMessage"))
    InventoryDeletionStatusItem.add_member(:deletion_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionSummary, name: "DeletionSummary"))
    InventoryDeletionStatusItem.add_member(:last_status_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionLastStatusUpdateTime, name: "LastStatusUpdateTime"))
    InventoryDeletionStatusItem.type = Types::InventoryDeletionStatusItem
    InventoryDeletionSummary.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalCount, name: "TotalCount", traits: {"smithy.api#default" => 0}))
    InventoryDeletionSummary.add_member(:remaining_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingCount, name: "RemainingCount", traits: {"smithy.api#default" => 0}))
    InventoryDeletionSummary.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionSummaryItems, name: "SummaryItems"))
    InventoryDeletionSummary.type = Types::InventoryDeletionSummary
    InventoryDeletionSummaryItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaVersion, name: "Version"))
    InventoryDeletionSummaryItem.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "Count", traits: {"smithy.api#default" => 0}))
    InventoryDeletionSummaryItem.add_member(:remaining_count, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingCount, name: "RemainingCount", traits: {"smithy.api#default" => 0}))
    InventoryDeletionSummaryItem.type = Types::InventoryDeletionSummaryItem
    InventoryDeletionSummaryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionSummaryItem, name: "member"))
    InventoryDeletionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDeletionStatusItem, name: "member"))
    InventoryFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    InventoryFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    InventoryFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryQueryOperatorType, name: "Type"))
    InventoryFilter.type = Types::InventoryFilter
    InventoryFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilter, name: "member", traits: {"smithy.api#xmlName" => "InventoryFilter"}))
    InventoryFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterValue, name: "member", traits: {"smithy.api#xmlName" => "FilterValue"}))
    InventoryGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    InventoryGroup.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterList, name: "Filters", traits: {"smithy.api#required" => {}}))
    InventoryGroup.type = Types::InventoryGroup
    InventoryGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryGroup, name: "member", traits: {"smithy.api#xmlName" => "InventoryGroup"}))
    InventoryItem.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    InventoryItem.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaVersion, name: "SchemaVersion", traits: {"smithy.api#required" => {}}))
    InventoryItem.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemCaptureTime, name: "CaptureTime", traits: {"smithy.api#required" => {}}))
    InventoryItem.add_member(:content_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemContentHash, name: "ContentHash"))
    InventoryItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemEntryList, name: "Content"))
    InventoryItem.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemContentContext, name: "Context"))
    InventoryItem.type = Types::InventoryItem
    InventoryItemAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemAttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    InventoryItemAttribute.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryAttributeDataType, name: "DataType", traits: {"smithy.api#required" => {}}))
    InventoryItemAttribute.type = Types::InventoryItemAttribute
    InventoryItemAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemAttribute, name: "member", traits: {"smithy.api#xmlName" => "Attribute"}))
    InventoryItemContentContext.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    InventoryItemContentContext.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    InventoryItemEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    InventoryItemEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    InventoryItemEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemEntry, name: "member"))
    InventoryItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItem, name: "member", traits: {"smithy.api#xmlName" => "Item"}))
    InventoryItemSchema.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    InventoryItemSchema.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaVersion, name: "Version"))
    InventoryItemSchema.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemAttributeList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    InventoryItemSchema.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryTypeDisplayName, name: "DisplayName"))
    InventoryItemSchema.type = Types::InventoryItemSchema
    InventoryItemSchemaResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchema, name: "member"))
    InventoryQueryOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    InventoryQueryOperatorType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    InventoryQueryOperatorType.add_member(:begin_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGIN_WITH", traits: {"smithy.api#enumValue" => "BeginWith"}))
    InventoryQueryOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    InventoryQueryOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    InventoryQueryOperatorType.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "Exists"}))
    InventoryResultEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultEntityId, name: "Id"))
    InventoryResultEntity.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultItemMap, name: "Data"))
    InventoryResultEntity.type = Types::InventoryResultEntity
    InventoryResultEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultEntity, name: "member", traits: {"smithy.api#xmlName" => "Entity"}))
    InventoryResultItem.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    InventoryResultItem.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaVersion, name: "SchemaVersion", traits: {"smithy.api#required" => {}}))
    InventoryResultItem.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemCaptureTime, name: "CaptureTime"))
    InventoryResultItem.add_member(:content_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemContentHash, name: "ContentHash"))
    InventoryResultItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemEntryList, name: "Content", traits: {"smithy.api#required" => {}}))
    InventoryResultItem.type = Types::InventoryResultItem
    InventoryResultItemMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultItemKey, name: "key"))
    InventoryResultItemMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryResultItem, name: "value"))
    InventorySchemaDeleteOption.add_member(:disable_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE_SCHEMA", traits: {"smithy.api#enumValue" => "DisableSchema"}))
    InventorySchemaDeleteOption.add_member(:delete_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SCHEMA", traits: {"smithy.api#enumValue" => "DeleteSchema"}))
    InvocationDoesNotExist.type = Types::InvocationDoesNotExist
    ItemContentMismatchException.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    ItemContentMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ItemContentMismatchException.type = Types::ItemContentMismatchException
    ItemSizeLimitExceededException.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    ItemSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ItemSizeLimitExceededException.type = Types::ItemSizeLimitExceededException
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    LabelParameterVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    LabelParameterVersionRequest.add_member(:parameter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "ParameterVersion", traits: {"smithy.api#default" => nil}))
    LabelParameterVersionRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "Labels", traits: {"smithy.api#required" => {}}))
    LabelParameterVersionRequest.type = Types::LabelParameterVersionRequest
    LabelParameterVersionResult.add_member(:invalid_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "InvalidLabels"))
    LabelParameterVersionResult.add_member(:parameter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "ParameterVersion", traits: {"smithy.api#default" => 0}))
    LabelParameterVersionResult.type = Types::LabelParameterVersionResult
    LastResourceDataSyncStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    LastResourceDataSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    LastResourceDataSyncStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ListAssociationVersionsRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    ListAssociationVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAssociationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAssociationVersionsRequest.type = Types::ListAssociationVersionsRequest
    ListAssociationVersionsResult.add_member(:association_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersionList, name: "AssociationVersions"))
    ListAssociationVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAssociationVersionsResult.type = Types::ListAssociationVersionsResult
    ListAssociationsRequest.add_member(:association_filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationFilterList, name: "AssociationFilterList"))
    ListAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAssociationsRequest.type = Types::ListAssociationsRequest
    ListAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationList, name: "Associations"))
    ListAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAssociationsResult.type = Types::ListAssociationsResult
    ListCloudConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListCloudConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCloudConnectorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorFilterList, name: "Filters"))
    ListCloudConnectorsRequest.type = Types::ListCloudConnectorsRequest
    ListCloudConnectorsResult.add_member(:cloud_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorSummaryList, name: "CloudConnectors"))
    ListCloudConnectorsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCloudConnectorsResult.type = Types::ListCloudConnectorsResult
    ListCommandInvocationsRequest.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId"))
    ListCommandInvocationsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    ListCommandInvocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandMaxResults, name: "MaxResults"))
    ListCommandInvocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCommandInvocationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandFilterList, name: "Filters"))
    ListCommandInvocationsRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Details", traits: {"smithy.api#default" => false}))
    ListCommandInvocationsRequest.type = Types::ListCommandInvocationsRequest
    ListCommandInvocationsResult.add_member(:command_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandInvocationList, name: "CommandInvocations"))
    ListCommandInvocationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCommandInvocationsResult.type = Types::ListCommandInvocationsResult
    ListCommandsRequest.add_member(:command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandId, name: "CommandId"))
    ListCommandsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    ListCommandsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandMaxResults, name: "MaxResults"))
    ListCommandsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCommandsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandFilterList, name: "Filters"))
    ListCommandsRequest.type = Types::ListCommandsRequest
    ListCommandsResult.add_member(:commands, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandList, name: "Commands"))
    ListCommandsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCommandsResult.type = Types::ListCommandsResult
    ListComplianceItemsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilterList, name: "Filters"))
    ListComplianceItemsRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceIdList, name: "ResourceIds"))
    ListComplianceItemsRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceTypeList, name: "ResourceTypes"))
    ListComplianceItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComplianceItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListComplianceItemsRequest.type = Types::ListComplianceItemsRequest
    ListComplianceItemsResult.add_member(:compliance_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemList, name: "ComplianceItems"))
    ListComplianceItemsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComplianceItemsResult.type = Types::ListComplianceItemsResult
    ListComplianceSummariesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilterList, name: "Filters"))
    ListComplianceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComplianceSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListComplianceSummariesRequest.type = Types::ListComplianceSummariesRequest
    ListComplianceSummariesResult.add_member(:compliance_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryItemList, name: "ComplianceSummaryItems"))
    ListComplianceSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListComplianceSummariesResult.type = Types::ListComplianceSummariesResult
    ListDocumentMetadataHistoryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListDocumentMetadataHistoryRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    ListDocumentMetadataHistoryRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataEnum, name: "Metadata", traits: {"smithy.api#required" => {}}))
    ListDocumentMetadataHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentMetadataHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDocumentMetadataHistoryRequest.type = Types::ListDocumentMetadataHistoryRequest
    ListDocumentMetadataHistoryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name"))
    ListDocumentMetadataHistoryResponse.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    ListDocumentMetadataHistoryResponse.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAuthor, name: "Author"))
    ListDocumentMetadataHistoryResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataResponseInfo, name: "Metadata"))
    ListDocumentMetadataHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentMetadataHistoryResponse.type = Types::ListDocumentMetadataHistoryResponse
    ListDocumentVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    ListDocumentVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDocumentVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentVersionsRequest.type = Types::ListDocumentVersionsRequest
    ListDocumentVersionsResult.add_member(:document_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionList, name: "DocumentVersions"))
    ListDocumentVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentVersionsResult.type = Types::ListDocumentVersionsResult
    ListDocumentsRequest.add_member(:document_filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFilterList, name: "DocumentFilterList"))
    ListDocumentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentKeyValuesFilterList, name: "Filters"))
    ListDocumentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListDocumentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentsRequest.type = Types::ListDocumentsRequest
    ListDocumentsResult.add_member(:document_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdentifierList, name: "DocumentIdentifiers"))
    ListDocumentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDocumentsResult.type = Types::ListDocumentsResult
    ListInventoryEntriesRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    ListInventoryEntriesRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    ListInventoryEntriesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterList, name: "Filters"))
    ListInventoryEntriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInventoryEntriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInventoryEntriesRequest.type = Types::ListInventoryEntriesRequest
    ListInventoryEntriesResult.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    ListInventoryEntriesResult.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId"))
    ListInventoryEntriesResult.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemSchemaVersion, name: "SchemaVersion"))
    ListInventoryEntriesResult.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemCaptureTime, name: "CaptureTime"))
    ListInventoryEntriesResult.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemEntryList, name: "Entries"))
    ListInventoryEntriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInventoryEntriesResult.type = Types::ListInventoryEntriesResult
    ListNodesRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    ListNodesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterList, name: "Filters"))
    ListNodesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNodesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListNodesRequest.type = Types::ListNodesRequest
    ListNodesResult.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeList, name: "Nodes"))
    ListNodesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNodesResult.type = Types::ListNodesResult
    ListNodesSummaryRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    ListNodesSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterList, name: "Filters"))
    ListNodesSummaryRequest.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAggregatorList, name: "Aggregators", traits: {"smithy.api#required" => {}}))
    ListNodesSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNodesSummaryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListNodesSummaryRequest.type = Types::ListNodesSummaryRequest
    ListNodesSummaryResult.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSummaryList, name: "Summary"))
    ListNodesSummaryResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNodesSummaryResult.type = Types::ListNodesSummaryResult
    ListOpsItemEventsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilters, name: "Filters"))
    ListOpsItemEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventMaxResults, name: "MaxResults"))
    ListOpsItemEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListOpsItemEventsRequest.type = Types::ListOpsItemEventsRequest
    ListOpsItemEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListOpsItemEventsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventSummaries, name: "Summaries"))
    ListOpsItemEventsResponse.type = Types::ListOpsItemEventsResponse
    ListOpsItemRelatedItemsRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId"))
    ListOpsItemRelatedItemsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilters, name: "Filters"))
    ListOpsItemRelatedItemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsMaxResults, name: "MaxResults"))
    ListOpsItemRelatedItemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListOpsItemRelatedItemsRequest.type = Types::ListOpsItemRelatedItemsRequest
    ListOpsItemRelatedItemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListOpsItemRelatedItemsResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemSummaries, name: "Summaries"))
    ListOpsItemRelatedItemsResponse.type = Types::ListOpsItemRelatedItemsResponse
    ListOpsMetadataRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataFilterList, name: "Filters"))
    ListOpsMetadataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOpsMetadataMaxResults, name: "MaxResults"))
    ListOpsMetadataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOpsMetadataRequest.type = Types::ListOpsMetadataRequest
    ListOpsMetadataResult.add_member(:ops_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataList, name: "OpsMetadataList"))
    ListOpsMetadataResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOpsMetadataResult.type = Types::ListOpsMetadataResult
    ListResourceComplianceSummariesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStringFilterList, name: "Filters"))
    ListResourceComplianceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceComplianceSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResourceComplianceSummariesRequest.type = Types::ListResourceComplianceSummariesRequest
    ListResourceComplianceSummariesResult.add_member(:resource_compliance_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceComplianceSummaryItemList, name: "ResourceComplianceSummaryItems"))
    ListResourceComplianceSummariesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceComplianceSummariesResult.type = Types::ListResourceComplianceSummariesResult
    ListResourceDataSyncRequest.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType"))
    ListResourceDataSyncRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceDataSyncRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResourceDataSyncRequest.type = Types::ListResourceDataSyncRequest
    ListResourceDataSyncResult.add_member(:resource_data_sync_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncItemList, name: "ResourceDataSyncItems"))
    ListResourceDataSyncResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceDataSyncResult.type = Types::ListResourceDataSyncResult
    ListTagsForResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeForTagging, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    LoggingInfo.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    LoggingInfo.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "S3KeyPrefix"))
    LoggingInfo.add_member(:s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Region, name: "S3Region", traits: {"smithy.api#required" => {}}))
    LoggingInfo.type = Types::LoggingInfo
    MaintenanceWindowAutomationParameters.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    MaintenanceWindowAutomationParameters.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    MaintenanceWindowAutomationParameters.type = Types::MaintenanceWindowAutomationParameters
    MaintenanceWindowExecution.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    MaintenanceWindowExecution.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    MaintenanceWindowExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    MaintenanceWindowExecution.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    MaintenanceWindowExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    MaintenanceWindowExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    MaintenanceWindowExecution.type = Types::MaintenanceWindowExecution
    MaintenanceWindowExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecution, name: "member"))
    MaintenanceWindowExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    MaintenanceWindowExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MaintenanceWindowExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MaintenanceWindowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    MaintenanceWindowExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimedOut", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    MaintenanceWindowExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelling", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    MaintenanceWindowExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    MaintenanceWindowExecutionStatus.add_member(:skipped_overlapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SkippedOverlapping", traits: {"smithy.api#enumValue" => "SKIPPED_OVERLAPPING"}))
    MaintenanceWindowExecutionTaskIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "member"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "TaskType"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    MaintenanceWindowExecutionTaskIdentity.type = Types::MaintenanceWindowExecutionTaskIdentity
    MaintenanceWindowExecutionTaskIdentityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskIdentity, name: "member"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionId, name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskId, name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationId, name: "InvocationId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskExecutionId, name: "ExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "TaskType"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationParameters, name: "Parameters"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatus, name: "Status"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionStatusDetails, name: "StatusDetails"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskTargetId, name: "WindowTargetId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.type = Types::MaintenanceWindowExecutionTaskInvocationIdentity
    MaintenanceWindowExecutionTaskInvocationIdentityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowExecutionTaskInvocationIdentity, name: "member"))
    MaintenanceWindowFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterKey, name: "Key"))
    MaintenanceWindowFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterValues, name: "Values"))
    MaintenanceWindowFilter.type = Types::MaintenanceWindowFilter
    MaintenanceWindowFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilter, name: "member"))
    MaintenanceWindowFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowFilterValue, name: "member"))
    MaintenanceWindowIdentity.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    MaintenanceWindowIdentity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    MaintenanceWindowIdentity.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    MaintenanceWindowIdentity.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowEnabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    MaintenanceWindowIdentity.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDurationHours, name: "Duration"))
    MaintenanceWindowIdentity.add_member(:cutoff, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowCutoff, name: "Cutoff", traits: {"smithy.api#default" => 0}))
    MaintenanceWindowIdentity.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSchedule, name: "Schedule"))
    MaintenanceWindowIdentity.add_member(:schedule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTimezone, name: "ScheduleTimezone"))
    MaintenanceWindowIdentity.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowOffset, name: "ScheduleOffset"))
    MaintenanceWindowIdentity.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "EndDate"))
    MaintenanceWindowIdentity.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "StartDate"))
    MaintenanceWindowIdentity.add_member(:next_execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "NextExecutionTime"))
    MaintenanceWindowIdentity.type = Types::MaintenanceWindowIdentity
    MaintenanceWindowIdentityForTarget.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    MaintenanceWindowIdentityForTarget.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    MaintenanceWindowIdentityForTarget.type = Types::MaintenanceWindowIdentityForTarget
    MaintenanceWindowIdentityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowIdentity, name: "member"))
    MaintenanceWindowLambdaParameters.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowLambdaClientContext, name: "ClientContext"))
    MaintenanceWindowLambdaParameters.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowLambdaQualifier, name: "Qualifier"))
    MaintenanceWindowLambdaParameters.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowLambdaPayload, name: "Payload"))
    MaintenanceWindowLambdaParameters.type = Types::MaintenanceWindowLambdaParameters
    MaintenanceWindowResourceType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instance", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    MaintenanceWindowResourceType.add_member(:resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceGroup", traits: {"smithy.api#enumValue" => "RESOURCE_GROUP"}))
    MaintenanceWindowRunCommandParameters.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    MaintenanceWindowRunCommandParameters.add_member(:cloud_watch_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "CloudWatchOutputConfig"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHash, name: "DocumentHash"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHashType, name: "DocumentHashType"))
    MaintenanceWindowRunCommandParameters.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    MaintenanceWindowRunCommandParameters.add_member(:notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfig, name: "NotificationConfig"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "OutputS3BucketName"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "OutputS3KeyPrefix"))
    MaintenanceWindowRunCommandParameters.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    MaintenanceWindowRunCommandParameters.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    MaintenanceWindowRunCommandParameters.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSeconds, name: "TimeoutSeconds"))
    MaintenanceWindowRunCommandParameters.type = Types::MaintenanceWindowRunCommandParameters
    MaintenanceWindowStepFunctionsParameters.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStepFunctionsInput, name: "Input"))
    MaintenanceWindowStepFunctionsParameters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStepFunctionsName, name: "Name"))
    MaintenanceWindowStepFunctionsParameters.type = Types::MaintenanceWindowStepFunctionsParameters
    MaintenanceWindowTarget.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    MaintenanceWindowTarget.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId"))
    MaintenanceWindowTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowResourceType, name: "ResourceType"))
    MaintenanceWindowTarget.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    MaintenanceWindowTarget.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    MaintenanceWindowTarget.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    MaintenanceWindowTarget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    MaintenanceWindowTarget.type = Types::MaintenanceWindowTarget
    MaintenanceWindowTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTarget, name: "member"))
    MaintenanceWindowTask.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    MaintenanceWindowTask.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId"))
    MaintenanceWindowTask.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    MaintenanceWindowTask.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "Type"))
    MaintenanceWindowTask.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    MaintenanceWindowTask.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "TaskParameters"))
    MaintenanceWindowTask.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    MaintenanceWindowTask.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo"))
    MaintenanceWindowTask.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    MaintenanceWindowTask.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    MaintenanceWindowTask.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    MaintenanceWindowTask.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    MaintenanceWindowTask.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    MaintenanceWindowTask.add_member(:cutoff_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskCutoffBehavior, name: "CutoffBehavior"))
    MaintenanceWindowTask.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    MaintenanceWindowTask.type = Types::MaintenanceWindowTask
    MaintenanceWindowTaskCutoffBehavior.add_member(:continue_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContinueTask", traits: {"smithy.api#enumValue" => "CONTINUE_TASK"}))
    MaintenanceWindowTaskCutoffBehavior.add_member(:cancel_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelTask", traits: {"smithy.api#enumValue" => "CANCEL_TASK"}))
    MaintenanceWindowTaskInvocationParameters.add_member(:run_command, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowRunCommandParameters, name: "RunCommand"))
    MaintenanceWindowTaskInvocationParameters.add_member(:automation, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowAutomationParameters, name: "Automation"))
    MaintenanceWindowTaskInvocationParameters.add_member(:step_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStepFunctionsParameters, name: "StepFunctions"))
    MaintenanceWindowTaskInvocationParameters.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowLambdaParameters, name: "Lambda"))
    MaintenanceWindowTaskInvocationParameters.type = Types::MaintenanceWindowTaskInvocationParameters
    MaintenanceWindowTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTask, name: "member"))
    MaintenanceWindowTaskParameterValueExpression.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameterValueList, name: "Values"))
    MaintenanceWindowTaskParameterValueExpression.type = Types::MaintenanceWindowTaskParameterValueExpression
    MaintenanceWindowTaskParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameterValue, name: "member"))
    MaintenanceWindowTaskParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameterName, name: "key"))
    MaintenanceWindowTaskParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameterValueExpression, name: "value"))
    MaintenanceWindowTaskParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "member"))
    MaintenanceWindowTaskType.add_member(:run_command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RunCommand", traits: {"smithy.api#enumValue" => "RUN_COMMAND"}))
    MaintenanceWindowTaskType.add_member(:automation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Automation", traits: {"smithy.api#enumValue" => "AUTOMATION"}))
    MaintenanceWindowTaskType.add_member(:step_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepFunctions", traits: {"smithy.api#enumValue" => "STEP_FUNCTIONS"}))
    MaintenanceWindowTaskType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lambda", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    MaintenanceWindowsForTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowIdentityForTarget, name: "member"))
    MalformedResourcePolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    MalformedResourcePolicyDocumentException.type = Types::MalformedResourcePolicyDocumentException
    ManagedStatus.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "All"}))
    ManagedStatus.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "Managed"}))
    ManagedStatus.add_member(:unmanaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNMANAGED", traits: {"smithy.api#enumValue" => "Unmanaged"}))
    MaxDocumentSizeExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    MaxDocumentSizeExceeded.type = Types::MaxDocumentSizeExceeded
    MetadataKeysToDeleteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "member"))
    MetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key"))
    MetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "value"))
    MetadataValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValueString, name: "Value"))
    MetadataValue.type = Types::MetadataValue
    ModifyDocumentPermissionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    ModifyDocumentPermissionRequest.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentPermissionType, name: "PermissionType", traits: {"smithy.api#required" => {}}))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIdsToAdd"))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIdsToRemove"))
    ModifyDocumentPermissionRequest.add_member(:shared_document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDocumentVersion, name: "SharedDocumentVersion"))
    ModifyDocumentPermissionRequest.type = Types::ModifyDocumentPermissionRequest
    ModifyDocumentPermissionResponse.type = Types::ModifyDocumentPermissionResponse
    NoLongerSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoLongerSupportedException.type = Types::NoLongerSupportedException
    Node.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCaptureTime, name: "CaptureTime"))
    Node.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, name: "Id"))
    Node.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOwnerInfo, name: "Owner"))
    Node.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRegion, name: "Region"))
    Node.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "NodeType"))
    Node.type = Types::Node
    NodeAggregator.add_member(:aggregator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAggregatorType, name: "AggregatorType", traits: {"smithy.api#required" => {}}))
    NodeAggregator.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    NodeAggregator.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    NodeAggregator.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAggregatorList, name: "Aggregators"))
    NodeAggregator.type = Types::NodeAggregator
    NodeAggregatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAggregator, name: "member", traits: {"smithy.api#xmlName" => "NodeAggregator"}))
    NodeAggregatorType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    NodeAttributeName.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_VERSION", traits: {"smithy.api#enumValue" => "AgentVersion"}))
    NodeAttributeName.add_member(:platform_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_NAME", traits: {"smithy.api#enumValue" => "PlatformName"}))
    NodeAttributeName.add_member(:platform_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_TYPE", traits: {"smithy.api#enumValue" => "PlatformType"}))
    NodeAttributeName.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_VERSION", traits: {"smithy.api#enumValue" => "PlatformVersion"}))
    NodeAttributeName.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "Region"}))
    NodeAttributeName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    NodeAttributeName.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_TYPE", traits: {"smithy.api#enumValue" => "SourceType"}))
    NodeAttributeName.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_ZONE", traits: {"smithy.api#enumValue" => "AvailabilityZone"}))
    NodeFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    NodeFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    NodeFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterOperatorType, name: "Type"))
    NodeFilter.type = Types::NodeFilter
    NodeFilterKey.add_member(:agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_TYPE", traits: {"smithy.api#enumValue" => "AgentType"}))
    NodeFilterKey.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_VERSION", traits: {"smithy.api#enumValue" => "AgentVersion"}))
    NodeFilterKey.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTER_NAME", traits: {"smithy.api#enumValue" => "ComputerName"}))
    NodeFilterKey.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_ID", traits: {"smithy.api#enumValue" => "InstanceId"}))
    NodeFilterKey.add_member(:instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_STATUS", traits: {"smithy.api#enumValue" => "InstanceStatus"}))
    NodeFilterKey.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IpAddress"}))
    NodeFilterKey.add_member(:managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_STATUS", traits: {"smithy.api#enumValue" => "ManagedStatus"}))
    NodeFilterKey.add_member(:platform_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_NAME", traits: {"smithy.api#enumValue" => "PlatformName"}))
    NodeFilterKey.add_member(:platform_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_TYPE", traits: {"smithy.api#enumValue" => "PlatformType"}))
    NodeFilterKey.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_VERSION", traits: {"smithy.api#enumValue" => "PlatformVersion"}))
    NodeFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    NodeFilterKey.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT_ID", traits: {"smithy.api#enumValue" => "OrganizationalUnitId"}))
    NodeFilterKey.add_member(:organizational_unit_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT_PATH", traits: {"smithy.api#enumValue" => "OrganizationalUnitPath"}))
    NodeFilterKey.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "Region"}))
    NodeFilterKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    NodeFilterKey.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_TYPE", traits: {"smithy.api#enumValue" => "SourceType"}))
    NodeFilterKey.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_ID", traits: {"smithy.api#enumValue" => "SourceId"}))
    NodeFilterKey.add_member(:source_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_LOCATION", traits: {"smithy.api#enumValue" => "SourceLocation"}))
    NodeFilterKey.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_ZONE", traits: {"smithy.api#enumValue" => "AvailabilityZone"}))
    NodeFilterKey.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_ZONE_ID", traits: {"smithy.api#enumValue" => "AvailabilityZoneId"}))
    NodeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilter, name: "member", traits: {"smithy.api#xmlName" => "NodeFilter"}))
    NodeFilterOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    NodeFilterOperatorType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    NodeFilterOperatorType.add_member(:begin_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGIN_WITH", traits: {"smithy.api#enumValue" => "BeginWith"}))
    NodeFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilterValue, name: "member", traits: {"smithy.api#xmlName" => "FilterValue"}))
    NodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Node, name: "member"))
    NodeOwnerInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAccountId, name: "AccountId"))
    NodeOwnerInfo.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOrganizationalUnitId, name: "OrganizationalUnitId"))
    NodeOwnerInfo.add_member(:organizational_unit_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOrganizationalUnitPath, name: "OrganizationalUnitPath"))
    NodeOwnerInfo.type = Types::NodeOwnerInfo
    NodeSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    NodeSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    NodeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSummary, name: "member"))
    NodeType.add_member(:instance, Types::NodeType::Instance, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInfo, name: "Instance"))
    NodeType.add_member(:unknown, Types::NodeType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NodeType.type = Types::NodeType
    NodeTypeName.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "Instance"}))
    NonCompliantSummary.add_member(:non_compliant_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "NonCompliantCount", traits: {"smithy.api#default" => 0}))
    NonCompliantSummary.add_member(:severity_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SeveritySummary, name: "SeveritySummary"))
    NonCompliantSummary.type = Types::NonCompliantSummary
    NormalStringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    NormalStringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    NotificationConfig.add_member(:notification_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationArn, name: "NotificationArn"))
    NotificationConfig.add_member(:notification_events, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEventList, name: "NotificationEvents"))
    NotificationConfig.add_member(:notification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationType, name: "NotificationType"))
    NotificationConfig.type = Types::NotificationConfig
    NotificationEvent.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "All"}))
    NotificationEvent.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    NotificationEvent.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    NotificationEvent.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    NotificationEvent.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    NotificationEvent.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    NotificationEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEvent, name: "member"))
    NotificationType.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Command", traits: {"smithy.api#enumValue" => "Command"}))
    NotificationType.add_member(:invocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Invocation", traits: {"smithy.api#enumValue" => "Invocation"}))
    OperatingSystem.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Windows", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    OperatingSystem.add_member(:amazon_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonLinux", traits: {"smithy.api#enumValue" => "AMAZON_LINUX"}))
    OperatingSystem.add_member(:amazon_linux2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonLinux2", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2"}))
    OperatingSystem.add_member(:amazon_linux2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonLinux2022", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2022"}))
    OperatingSystem.add_member(:ubuntu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ubuntu", traits: {"smithy.api#enumValue" => "UBUNTU"}))
    OperatingSystem.add_member(:redhat_enterprise_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RedhatEnterpriseLinux", traits: {"smithy.api#enumValue" => "REDHAT_ENTERPRISE_LINUX"}))
    OperatingSystem.add_member(:suse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suse", traits: {"smithy.api#enumValue" => "SUSE"}))
    OperatingSystem.add_member(:cent_os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CentOS", traits: {"smithy.api#enumValue" => "CENTOS"}))
    OperatingSystem.add_member(:oracle_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OracleLinux", traits: {"smithy.api#enumValue" => "ORACLE_LINUX"}))
    OperatingSystem.add_member(:debian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debian", traits: {"smithy.api#enumValue" => "DEBIAN"}))
    OperatingSystem.add_member(:mac_os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MacOS", traits: {"smithy.api#enumValue" => "MACOS"}))
    OperatingSystem.add_member(:raspbian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Raspbian", traits: {"smithy.api#enumValue" => "RASPBIAN"}))
    OperatingSystem.add_member(:rocky_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rocky_Linux", traits: {"smithy.api#enumValue" => "ROCKY_LINUX"}))
    OperatingSystem.add_member(:alma_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AlmaLinux", traits: {"smithy.api#enumValue" => "ALMA_LINUX"}))
    OperatingSystem.add_member(:amazon_linux2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonLinux2023", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2023"}))
    OpsAggregator.add_member(:aggregator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorType, name: "AggregatorType"))
    OpsAggregator.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsDataTypeName, name: "TypeName"))
    OpsAggregator.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsDataAttributeName, name: "AttributeName"))
    OpsAggregator.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorValueMap, name: "Values"))
    OpsAggregator.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterList, name: "Filters"))
    OpsAggregator.add_member(:aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorList, name: "Aggregators"))
    OpsAggregator.type = Types::OpsAggregator
    OpsAggregatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregator, name: "member", traits: {"smithy.api#xmlName" => "Aggregator"}))
    OpsAggregatorValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorValueKey, name: "key"))
    OpsAggregatorValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsAggregatorValue, name: "value"))
    OpsEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityId, name: "Id"))
    OpsEntity.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItemMap, name: "Data"))
    OpsEntity.type = Types::OpsEntity
    OpsEntityItem.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItemCaptureTime, name: "CaptureTime"))
    OpsEntityItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItemEntryList, name: "Content"))
    OpsEntityItem.type = Types::OpsEntityItem
    OpsEntityItemEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    OpsEntityItemEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    OpsEntityItemEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItemEntry, name: "member"))
    OpsEntityItemMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItemKey, name: "key"))
    OpsEntityItemMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntityItem, name: "value"))
    OpsEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsEntity, name: "member", traits: {"smithy.api#xmlName" => "Entity"}))
    OpsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    OpsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    OpsFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterOperatorType, name: "Type"))
    OpsFilter.type = Types::OpsFilter
    OpsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilter, name: "member", traits: {"smithy.api#xmlName" => "OpsFilter"}))
    OpsFilterOperatorType.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    OpsFilterOperatorType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    OpsFilterOperatorType.add_member(:begin_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGIN_WITH", traits: {"smithy.api#enumValue" => "BeginWith"}))
    OpsFilterOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    OpsFilterOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    OpsFilterOperatorType.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "Exists"}))
    OpsFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsFilterValue, name: "member", traits: {"smithy.api#xmlName" => "FilterValue"}))
    OpsItem.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedBy"))
    OpsItem.add_member(:ops_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemType, name: "OpsItemType"))
    OpsItem.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedTime"))
    OpsItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDescription, name: "Description"))
    OpsItem.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedBy"))
    OpsItem.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedTime"))
    OpsItem.add_member(:notifications, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemNotifications, name: "Notifications"))
    OpsItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemPriority, name: "Priority"))
    OpsItem.add_member(:related_ops_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedOpsItems, name: "RelatedOpsItems"))
    OpsItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemStatus, name: "Status"))
    OpsItem.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId"))
    OpsItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    OpsItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemTitle, name: "Title"))
    OpsItem.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSource, name: "Source"))
    OpsItem.add_member(:operational_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemOperationalData, name: "OperationalData"))
    OpsItem.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemCategory, name: "Category"))
    OpsItem.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSeverity, name: "Severity"))
    OpsItem.add_member(:actual_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualStartTime"))
    OpsItem.add_member(:actual_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualEndTime"))
    OpsItem.add_member(:planned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedStartTime"))
    OpsItem.add_member(:planned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedEndTime"))
    OpsItem.add_member(:ops_item_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemArn, name: "OpsItemArn"))
    OpsItem.type = Types::OpsItem
    OpsItemAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemAccessDeniedException.type = Types::OpsItemAccessDeniedException
    OpsItemAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemAlreadyExistsException.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId"))
    OpsItemAlreadyExistsException.type = Types::OpsItemAlreadyExistsException
    OpsItemConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemConflictException.type = Types::OpsItemConflictException
    OpsItemDataType.add_member(:searchable_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEARCHABLE_STRING", traits: {"smithy.api#enumValue" => "SearchableString"}))
    OpsItemDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "String"}))
    OpsItemDataValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDataValueString, name: "Value"))
    OpsItemDataValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDataType, name: "Type"))
    OpsItemDataValue.type = Types::OpsItemDataValue
    OpsItemEventFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    OpsItemEventFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    OpsItemEventFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilterOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    OpsItemEventFilter.type = Types::OpsItemEventFilter
    OpsItemEventFilterKey.add_member(:opsitem_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPSITEM_ID", traits: {"smithy.api#enumValue" => "OpsItemId"}))
    OpsItemEventFilterOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    OpsItemEventFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilterValue, name: "member"))
    OpsItemEventFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventFilter, name: "member"))
    OpsItemEventSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemEventSummary, name: "member"))
    OpsItemEventSummary.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId"))
    OpsItemEventSummary.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventId"))
    OpsItemEventSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    OpsItemEventSummary.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetailType"))
    OpsItemEventSummary.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Detail"))
    OpsItemEventSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemIdentity, name: "CreatedBy"))
    OpsItemEventSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedTime"))
    OpsItemEventSummary.type = Types::OpsItemEventSummary
    OpsItemFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    OpsItemFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    OpsItemFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilterOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    OpsItemFilter.type = Types::OpsItemFilter
    OpsItemFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    OpsItemFilterKey.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_BY", traits: {"smithy.api#enumValue" => "CreatedBy"}))
    OpsItemFilterKey.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "Source"}))
    OpsItemFilterKey.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITY", traits: {"smithy.api#enumValue" => "Priority"}))
    OpsItemFilterKey.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TITLE", traits: {"smithy.api#enumValue" => "Title"}))
    OpsItemFilterKey.add_member(:opsitem_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPSITEM_ID", traits: {"smithy.api#enumValue" => "OpsItemId"}))
    OpsItemFilterKey.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CreatedTime"}))
    OpsItemFilterKey.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LastModifiedTime"}))
    OpsItemFilterKey.add_member(:actual_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTUAL_START_TIME", traits: {"smithy.api#enumValue" => "ActualStartTime"}))
    OpsItemFilterKey.add_member(:actual_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTUAL_END_TIME", traits: {"smithy.api#enumValue" => "ActualEndTime"}))
    OpsItemFilterKey.add_member(:planned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNED_START_TIME", traits: {"smithy.api#enumValue" => "PlannedStartTime"}))
    OpsItemFilterKey.add_member(:planned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLANNED_END_TIME", traits: {"smithy.api#enumValue" => "PlannedEndTime"}))
    OpsItemFilterKey.add_member(:operational_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL_DATA", traits: {"smithy.api#enumValue" => "OperationalData"}))
    OpsItemFilterKey.add_member(:operational_data_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL_DATA_KEY", traits: {"smithy.api#enumValue" => "OperationalDataKey"}))
    OpsItemFilterKey.add_member(:operational_data_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL_DATA_VALUE", traits: {"smithy.api#enumValue" => "OperationalDataValue"}))
    OpsItemFilterKey.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ID", traits: {"smithy.api#enumValue" => "ResourceId"}))
    OpsItemFilterKey.add_member(:automation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATION_ID", traits: {"smithy.api#enumValue" => "AutomationId"}))
    OpsItemFilterKey.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATEGORY", traits: {"smithy.api#enumValue" => "Category"}))
    OpsItemFilterKey.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVERITY", traits: {"smithy.api#enumValue" => "Severity"}))
    OpsItemFilterKey.add_member(:opsitem_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPSITEM_TYPE", traits: {"smithy.api#enumValue" => "OpsItemType"}))
    OpsItemFilterKey.add_member(:access_request_requester_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_REQUESTER_ARN", traits: {"smithy.api#enumValue" => "AccessRequestByRequesterArn"}))
    OpsItemFilterKey.add_member(:access_request_requester_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_REQUESTER_ID", traits: {"smithy.api#enumValue" => "AccessRequestByRequesterId"}))
    OpsItemFilterKey.add_member(:access_request_approver_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_APPROVER_ARN", traits: {"smithy.api#enumValue" => "AccessRequestByApproverArn"}))
    OpsItemFilterKey.add_member(:access_request_approver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_APPROVER_ID", traits: {"smithy.api#enumValue" => "AccessRequestByApproverId"}))
    OpsItemFilterKey.add_member(:access_request_source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_SOURCE_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccessRequestBySourceAccountId"}))
    OpsItemFilterKey.add_member(:access_request_source_ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_SOURCE_OPS_ITEM_ID", traits: {"smithy.api#enumValue" => "AccessRequestBySourceOpsItemId"}))
    OpsItemFilterKey.add_member(:access_request_source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_SOURCE_REGION", traits: {"smithy.api#enumValue" => "AccessRequestBySourceRegion"}))
    OpsItemFilterKey.add_member(:access_request_is_replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_IS_REPLICA", traits: {"smithy.api#enumValue" => "AccessRequestByIsReplica"}))
    OpsItemFilterKey.add_member(:access_request_target_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_REQUEST_TARGET_RESOURCE_ID", traits: {"smithy.api#enumValue" => "AccessRequestByTargetResourceId"}))
    OpsItemFilterKey.add_member(:change_request_requester_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_REQUESTER_ARN", traits: {"smithy.api#enumValue" => "ChangeRequestByRequesterArn"}))
    OpsItemFilterKey.add_member(:change_request_requester_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_REQUESTER_NAME", traits: {"smithy.api#enumValue" => "ChangeRequestByRequesterName"}))
    OpsItemFilterKey.add_member(:change_request_approver_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_APPROVER_ARN", traits: {"smithy.api#enumValue" => "ChangeRequestByApproverArn"}))
    OpsItemFilterKey.add_member(:change_request_approver_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_APPROVER_NAME", traits: {"smithy.api#enumValue" => "ChangeRequestByApproverName"}))
    OpsItemFilterKey.add_member(:change_request_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_TEMPLATE", traits: {"smithy.api#enumValue" => "ChangeRequestByTemplate"}))
    OpsItemFilterKey.add_member(:change_request_targets_resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_REQUEST_TARGETS_RESOURCE_GROUP", traits: {"smithy.api#enumValue" => "ChangeRequestByTargetsResourceGroup"}))
    OpsItemFilterKey.add_member(:insight_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSIGHT_TYPE", traits: {"smithy.api#enumValue" => "InsightByType"}))
    OpsItemFilterKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    OpsItemFilterOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    OpsItemFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "Contains"}))
    OpsItemFilterOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    OpsItemFilterOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    OpsItemFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilterValue, name: "member"))
    OpsItemFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemFilter, name: "member"))
    OpsItemIdentity.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    OpsItemIdentity.type = Types::OpsItemIdentity
    OpsItemInvalidParameterException.add_member(:parameter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemParameterNamesList, name: "ParameterNames"))
    OpsItemInvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemInvalidParameterException.type = Types::OpsItemInvalidParameterException
    OpsItemLimitExceededException.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemParameterNamesList, name: "ResourceTypes"))
    OpsItemLimitExceededException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#default" => 0}))
    OpsItemLimitExceededException.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LimitType"))
    OpsItemLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemLimitExceededException.type = Types::OpsItemLimitExceededException
    OpsItemNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemNotFoundException.type = Types::OpsItemNotFoundException
    OpsItemNotification.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    OpsItemNotification.type = Types::OpsItemNotification
    OpsItemNotifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemNotification, name: "member"))
    OpsItemOperationalData.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDataKey, name: "key"))
    OpsItemOperationalData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDataValue, name: "value"))
    OpsItemOpsDataKeysList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    OpsItemParameterNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    OpsItemRelatedItemAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemRelatedItemAlreadyExistsException.add_member(:resource_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationResourceUri, name: "ResourceUri"))
    OpsItemRelatedItemAlreadyExistsException.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId"))
    OpsItemRelatedItemAlreadyExistsException.type = Types::OpsItemRelatedItemAlreadyExistsException
    OpsItemRelatedItemAssociationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OpsItemRelatedItemAssociationNotFoundException.type = Types::OpsItemRelatedItemAssociationNotFoundException
    OpsItemRelatedItemSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemSummary, name: "member"))
    OpsItemRelatedItemSummary.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId"))
    OpsItemRelatedItemSummary.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationId, name: "AssociationId"))
    OpsItemRelatedItemSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationResourceType, name: "ResourceType"))
    OpsItemRelatedItemSummary.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationType, name: "AssociationType"))
    OpsItemRelatedItemSummary.add_member(:resource_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemAssociationResourceUri, name: "ResourceUri"))
    OpsItemRelatedItemSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemIdentity, name: "CreatedBy"))
    OpsItemRelatedItemSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedTime"))
    OpsItemRelatedItemSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemIdentity, name: "LastModifiedBy"))
    OpsItemRelatedItemSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedTime"))
    OpsItemRelatedItemSummary.type = Types::OpsItemRelatedItemSummary
    OpsItemRelatedItemsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    OpsItemRelatedItemsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    OpsItemRelatedItemsFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilterOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    OpsItemRelatedItemsFilter.type = Types::OpsItemRelatedItemsFilter
    OpsItemRelatedItemsFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    OpsItemRelatedItemsFilterKey.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATION_ID", traits: {"smithy.api#enumValue" => "AssociationId"}))
    OpsItemRelatedItemsFilterKey.add_member(:resource_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_URI", traits: {"smithy.api#enumValue" => "ResourceUri"}))
    OpsItemRelatedItemsFilterOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    OpsItemRelatedItemsFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilterValue, name: "member"))
    OpsItemRelatedItemsFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemRelatedItemsFilter, name: "member"))
    OpsItemStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "Open"}))
    OpsItemStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    OpsItemStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "Resolved"}))
    OpsItemStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    OpsItemStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TimedOut"}))
    OpsItemStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "Cancelling"}))
    OpsItemStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    OpsItemStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    OpsItemStatus.add_member(:completed_with_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_SUCCESS", traits: {"smithy.api#enumValue" => "CompletedWithSuccess"}))
    OpsItemStatus.add_member(:completed_with_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_FAILURE", traits: {"smithy.api#enumValue" => "CompletedWithFailure"}))
    OpsItemStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "Scheduled"}))
    OpsItemStatus.add_member(:runbook_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNBOOK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "RunbookInProgress"}))
    OpsItemStatus.add_member(:pending_change_calendar_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CHANGE_CALENDAR_OVERRIDE", traits: {"smithy.api#enumValue" => "PendingChangeCalendarOverride"}))
    OpsItemStatus.add_member(:change_calendar_override_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_CALENDAR_OVERRIDE_APPROVED", traits: {"smithy.api#enumValue" => "ChangeCalendarOverrideApproved"}))
    OpsItemStatus.add_member(:change_calendar_override_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_CALENDAR_OVERRIDE_REJECTED", traits: {"smithy.api#enumValue" => "ChangeCalendarOverrideRejected"}))
    OpsItemStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PendingApproval"}))
    OpsItemStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "Approved"}))
    OpsItemStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "Revoked"}))
    OpsItemStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    OpsItemStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "Closed"}))
    OpsItemSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSummary, name: "member"))
    OpsItemSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedBy"))
    OpsItemSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedTime"))
    OpsItemSummary.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedBy"))
    OpsItemSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedTime"))
    OpsItemSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemPriority, name: "Priority"))
    OpsItemSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSource, name: "Source"))
    OpsItemSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemStatus, name: "Status"))
    OpsItemSummary.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId"))
    OpsItemSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemTitle, name: "Title"))
    OpsItemSummary.add_member(:operational_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemOperationalData, name: "OperationalData"))
    OpsItemSummary.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemCategory, name: "Category"))
    OpsItemSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSeverity, name: "Severity"))
    OpsItemSummary.add_member(:ops_item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemType, name: "OpsItemType"))
    OpsItemSummary.add_member(:actual_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualStartTime"))
    OpsItemSummary.add_member(:actual_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualEndTime"))
    OpsItemSummary.add_member(:planned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedStartTime"))
    OpsItemSummary.add_member(:planned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedEndTime"))
    OpsItemSummary.type = Types::OpsItemSummary
    OpsMetadata.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataResourceId, name: "ResourceId"))
    OpsMetadata.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn"))
    OpsMetadata.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    OpsMetadata.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedUser"))
    OpsMetadata.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationDate"))
    OpsMetadata.type = Types::OpsMetadata
    OpsMetadataAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataAlreadyExistsException.type = Types::OpsMetadataAlreadyExistsException
    OpsMetadataFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    OpsMetadataFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    OpsMetadataFilter.type = Types::OpsMetadataFilter
    OpsMetadataFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataFilter, name: "member"))
    OpsMetadataFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataFilterValue, name: "member"))
    OpsMetadataInvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataInvalidArgumentException.type = Types::OpsMetadataInvalidArgumentException
    OpsMetadataKeyLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataKeyLimitExceededException.type = Types::OpsMetadataKeyLimitExceededException
    OpsMetadataLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataLimitExceededException.type = Types::OpsMetadataLimitExceededException
    OpsMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadata, name: "member"))
    OpsMetadataNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataNotFoundException.type = Types::OpsMetadataNotFoundException
    OpsMetadataTooManyUpdatesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OpsMetadataTooManyUpdatesException.type = Types::OpsMetadataTooManyUpdatesException
    OpsResultAttribute.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsDataTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    OpsResultAttribute.type = Types::OpsResultAttribute
    OpsResultAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsResultAttribute, name: "member", traits: {"smithy.api#xmlName" => "OpsResultAttribute"}))
    OutputSource.add_member(:output_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSourceId, name: "OutputSourceId"))
    OutputSource.add_member(:output_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSourceType, name: "OutputSourceType"))
    OutputSource.type = Types::OutputSource
    Parameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name"))
    Parameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "Type"))
    Parameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterValue, name: "Value"))
    Parameter.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "Version", traits: {"smithy.api#default" => 0}))
    Parameter.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterSelector, name: "Selector"))
    Parameter.add_member(:source_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceResult"))
    Parameter.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    Parameter.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDataType, name: "DataType"))
    Parameter.type = Types::Parameter
    ParameterAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterAlreadyExists.type = Types::ParameterAlreadyExists
    ParameterHistory.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name"))
    ParameterHistory.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "Type"))
    ParameterHistory.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKeyId, name: "KeyId"))
    ParameterHistory.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    ParameterHistory.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedUser"))
    ParameterHistory.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDescription, name: "Description"))
    ParameterHistory.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterValue, name: "Value"))
    ParameterHistory.add_member(:allowed_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPattern, name: "AllowedPattern"))
    ParameterHistory.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "Version", traits: {"smithy.api#default" => 0}))
    ParameterHistory.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "Labels"))
    ParameterHistory.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTier, name: "Tier"))
    ParameterHistory.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterPolicyList, name: "Policies"))
    ParameterHistory.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDataType, name: "DataType"))
    ParameterHistory.type = Types::ParameterHistory
    ParameterHistoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterHistory, name: "member"))
    ParameterInlinePolicy.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PolicyText"))
    ParameterInlinePolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PolicyType"))
    ParameterInlinePolicy.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PolicyStatus"))
    ParameterInlinePolicy.type = Types::ParameterInlinePolicy
    ParameterLabelList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabel, name: "member"))
    ParameterLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterLimitExceeded.type = Types::ParameterLimitExceeded
    ParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member"))
    ParameterMaxVersionLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterMaxVersionLimitExceeded.type = Types::ParameterMaxVersionLimitExceeded
    ParameterMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name"))
    ParameterMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ParameterMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "Type"))
    ParameterMetadata.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKeyId, name: "KeyId"))
    ParameterMetadata.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    ParameterMetadata.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedUser"))
    ParameterMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDescription, name: "Description"))
    ParameterMetadata.add_member(:allowed_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPattern, name: "AllowedPattern"))
    ParameterMetadata.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "Version", traits: {"smithy.api#default" => 0}))
    ParameterMetadata.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTier, name: "Tier"))
    ParameterMetadata.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterPolicyList, name: "Policies"))
    ParameterMetadata.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDataType, name: "DataType"))
    ParameterMetadata.type = Types::ParameterMetadata
    ParameterMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMetadata, name: "member"))
    ParameterNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "member"))
    ParameterNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterNotFound.type = Types::ParameterNotFound
    ParameterPatternMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterPatternMismatchException.type = Types::ParameterPatternMismatchException
    ParameterPolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterInlinePolicy, name: "member"))
    ParameterStringFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ParameterStringFilter.add_member(:option, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringQueryOption, name: "Option"))
    ParameterStringFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilterValueList, name: "Values"))
    ParameterStringFilter.type = Types::ParameterStringFilter
    ParameterStringFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilter, name: "member"))
    ParameterStringFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterStringFilterValue, name: "member"))
    ParameterTier.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    ParameterTier.add_member(:advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADVANCED", traits: {"smithy.api#enumValue" => "Advanced"}))
    ParameterTier.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "Intelligent-Tiering"}))
    ParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "String"}))
    ParameterType.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIST", traits: {"smithy.api#enumValue" => "StringList"}))
    ParameterType.add_member(:secure_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURE_STRING", traits: {"smithy.api#enumValue" => "SecureString"}))
    ParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "member"))
    ParameterVersionLabelLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterVersionLabelLimitExceeded.type = Types::ParameterVersionLabelLimitExceeded
    ParameterVersionNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ParameterVersionNotFound.type = Types::ParameterVersionNotFound
    Parameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "key"))
    Parameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueList, name: "value"))
    ParametersFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ParametersFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ParametersFilter.type = Types::ParametersFilter
    ParametersFilterKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    ParametersFilterKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "Type"}))
    ParametersFilterKey.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_ID", traits: {"smithy.api#enumValue" => "KeyId"}))
    ParametersFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersFilter, name: "member"))
    ParametersFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersFilterValue, name: "member"))
    ParentStepDetails.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepExecutionId"))
    ParentStepDetails.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepName"))
    ParentStepDetails.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationActionName, name: "Action"))
    ParentStepDetails.add_member(:iteration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Iteration", traits: {"smithy.api#default" => nil}))
    ParentStepDetails.add_member(:iterator_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IteratorValue"))
    ParentStepDetails.type = Types::ParentStepDetails
    Patch.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchId, name: "Id"))
    Patch.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ReleaseDate"))
    Patch.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchTitle, name: "Title"))
    Patch.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchDescription, name: "Description"))
    Patch.add_member(:content_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchContentUrl, name: "ContentUrl"))
    Patch.add_member(:vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchVendor, name: "Vendor"))
    Patch.add_member(:product_family, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchProductFamily, name: "ProductFamily"))
    Patch.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchProduct, name: "Product"))
    Patch.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchClassification, name: "Classification"))
    Patch.add_member(:msrc_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchMsrcSeverity, name: "MsrcSeverity"))
    Patch.add_member(:kb_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchKbNumber, name: "KbNumber"))
    Patch.add_member(:msrc_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchMsrcNumber, name: "MsrcNumber"))
    Patch.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchLanguage, name: "Language"))
    Patch.add_member(:advisory_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAdvisoryIdList, name: "AdvisoryIds"))
    Patch.add_member(:bugzilla_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBugzillaIdList, name: "BugzillaIds"))
    Patch.add_member(:cve_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchCVEIdList, name: "CVEIds"))
    Patch.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchName, name: "Name"))
    Patch.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchEpoch, name: "Epoch", traits: {"smithy.api#default" => 0}))
    Patch.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchVersion, name: "Version"))
    Patch.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRelease, name: "Release"))
    Patch.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchArch, name: "Arch"))
    Patch.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSeverity, name: "Severity"))
    Patch.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRepository, name: "Repository"))
    Patch.type = Types::Patch
    PatchAction.add_member(:allow_as_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllowAsDependency", traits: {"smithy.api#enumValue" => "ALLOW_AS_DEPENDENCY"}))
    PatchAction.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Block", traits: {"smithy.api#enumValue" => "BLOCK"}))
    PatchAdvisoryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAdvisoryId, name: "member"))
    PatchBaselineIdentity.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    PatchBaselineIdentity.add_member(:baseline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineName, name: "BaselineName"))
    PatchBaselineIdentity.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    PatchBaselineIdentity.add_member(:baseline_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineDescription, name: "BaselineDescription"))
    PatchBaselineIdentity.add_member(:default_baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultBaseline, name: "DefaultBaseline", traits: {"smithy.api#default" => false}))
    PatchBaselineIdentity.type = Types::PatchBaselineIdentity
    PatchBaselineIdentityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineIdentity, name: "member"))
    PatchBugzillaIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBugzillaId, name: "member"))
    PatchCVEIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchCVEId, name: "member"))
    PatchComplianceData.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchTitle, name: "Title", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:kb_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchKbNumber, name: "KBId", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchClassification, name: "Classification", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSeverity, name: "Severity", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceDataState, name: "State", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:installed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "InstalledTime", traits: {"smithy.api#required" => {}}))
    PatchComplianceData.add_member(:cve_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchCVEIds, name: "CVEIds"))
    PatchComplianceData.type = Types::PatchComplianceData
    PatchComplianceDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceData, name: "member"))
    PatchComplianceDataState.add_member(:installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Installed", traits: {"smithy.api#enumValue" => "INSTALLED"}))
    PatchComplianceDataState.add_member(:installed_other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstalledOther", traits: {"smithy.api#enumValue" => "INSTALLED_OTHER"}))
    PatchComplianceDataState.add_member(:installed_pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstalledPendingReboot", traits: {"smithy.api#enumValue" => "INSTALLED_PENDING_REBOOT"}))
    PatchComplianceDataState.add_member(:installed_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstalledRejected", traits: {"smithy.api#enumValue" => "INSTALLED_REJECTED"}))
    PatchComplianceDataState.add_member(:missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Missing", traits: {"smithy.api#enumValue" => "MISSING"}))
    PatchComplianceDataState.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotApplicable", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    PatchComplianceDataState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    PatchComplianceDataState.add_member(:available_security_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AvailableSecurityUpdate", traits: {"smithy.api#enumValue" => "AVAILABLE_SECURITY_UPDATE"}))
    PatchComplianceLevel.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Critical", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    PatchComplianceLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "High", traits: {"smithy.api#enumValue" => "HIGH"}))
    PatchComplianceLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Medium", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    PatchComplianceLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Low", traits: {"smithy.api#enumValue" => "LOW"}))
    PatchComplianceLevel.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Informational", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    PatchComplianceLevel.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unspecified", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    PatchComplianceStatus.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Compliant", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    PatchComplianceStatus.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NonCompliant", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    PatchDeploymentStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Approved", traits: {"smithy.api#enumValue" => "APPROVED"}))
    PatchDeploymentStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingApproval", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    PatchDeploymentStatus.add_member(:explicit_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExplicitApproved", traits: {"smithy.api#enumValue" => "EXPLICIT_APPROVED"}))
    PatchDeploymentStatus.add_member(:explicit_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExplicitRejected", traits: {"smithy.api#enumValue" => "EXPLICIT_REJECTED"}))
    PatchFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    PatchFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    PatchFilter.type = Types::PatchFilter
    PatchFilterGroup.add_member(:patch_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterList, name: "PatchFilters", traits: {"smithy.api#required" => {}}))
    PatchFilterGroup.type = Types::PatchFilterGroup
    PatchFilterKey.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Arch", traits: {"smithy.api#enumValue" => "ARCH"}))
    PatchFilterKey.add_member(:advisory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AdvisoryId", traits: {"smithy.api#enumValue" => "ADVISORY_ID"}))
    PatchFilterKey.add_member(:bugzilla_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BugzillaId", traits: {"smithy.api#enumValue" => "BUGZILLA_ID"}))
    PatchFilterKey.add_member(:patch_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchSet", traits: {"smithy.api#enumValue" => "PATCH_SET"}))
    PatchFilterKey.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Product", traits: {"smithy.api#enumValue" => "PRODUCT"}))
    PatchFilterKey.add_member(:product_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductFamily", traits: {"smithy.api#enumValue" => "PRODUCT_FAMILY"}))
    PatchFilterKey.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Classification", traits: {"smithy.api#enumValue" => "CLASSIFICATION"}))
    PatchFilterKey.add_member(:cve_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CVEId", traits: {"smithy.api#enumValue" => "CVE_ID"}))
    PatchFilterKey.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Epoch", traits: {"smithy.api#enumValue" => "EPOCH"}))
    PatchFilterKey.add_member(:msrc_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MsrcSeverity", traits: {"smithy.api#enumValue" => "MSRC_SEVERITY"}))
    PatchFilterKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "NAME"}))
    PatchFilterKey.add_member(:patch_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchId", traits: {"smithy.api#enumValue" => "PATCH_ID"}))
    PatchFilterKey.add_member(:section, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Section", traits: {"smithy.api#enumValue" => "SECTION"}))
    PatchFilterKey.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Priority", traits: {"smithy.api#enumValue" => "PRIORITY"}))
    PatchFilterKey.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Repository", traits: {"smithy.api#enumValue" => "REPOSITORY"}))
    PatchFilterKey.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Release", traits: {"smithy.api#enumValue" => "RELEASE"}))
    PatchFilterKey.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Severity", traits: {"smithy.api#enumValue" => "SEVERITY"}))
    PatchFilterKey.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Security", traits: {"smithy.api#enumValue" => "SECURITY"}))
    PatchFilterKey.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Version", traits: {"smithy.api#enumValue" => "VERSION"}))
    PatchFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilter, name: "member"))
    PatchFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterValue, name: "member"))
    PatchGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "member"))
    PatchGroupPatchBaselineMapping.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup"))
    PatchGroupPatchBaselineMapping.add_member(:baseline_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchBaselineIdentity, name: "BaselineIdentity"))
    PatchGroupPatchBaselineMapping.type = Types::PatchGroupPatchBaselineMapping
    PatchGroupPatchBaselineMappingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroupPatchBaselineMapping, name: "member"))
    PatchIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchId, name: "member"))
    PatchList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Patch, name: "member"))
    PatchOperationType.add_member(:scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN", traits: {"smithy.api#enumValue" => "Scan"}))
    PatchOperationType.add_member(:install, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALL", traits: {"smithy.api#enumValue" => "Install"}))
    PatchOrchestratorFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterKey, name: "Key"))
    PatchOrchestratorFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterValues, name: "Values"))
    PatchOrchestratorFilter.type = Types::PatchOrchestratorFilter
    PatchOrchestratorFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilter, name: "member"))
    PatchOrchestratorFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchOrchestratorFilterValue, name: "member"))
    PatchPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchPropertyEntry, name: "member"))
    PatchProperty.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Product", traits: {"smithy.api#enumValue" => "PRODUCT"}))
    PatchProperty.add_member(:patch_product_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchProductFamily", traits: {"smithy.api#enumValue" => "PRODUCT_FAMILY"}))
    PatchProperty.add_member(:patch_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchClassification", traits: {"smithy.api#enumValue" => "CLASSIFICATION"}))
    PatchProperty.add_member(:patch_msrc_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchMsrcSeverity", traits: {"smithy.api#enumValue" => "MSRC_SEVERITY"}))
    PatchProperty.add_member(:patch_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchPriority", traits: {"smithy.api#enumValue" => "PRIORITY"}))
    PatchProperty.add_member(:patch_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchSeverity", traits: {"smithy.api#enumValue" => "SEVERITY"}))
    PatchPropertyEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    PatchPropertyEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    PatchRule.add_member(:patch_filter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "PatchFilterGroup", traits: {"smithy.api#required" => {}}))
    PatchRule.add_member(:compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ComplianceLevel"))
    PatchRule.add_member(:approve_after_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ApproveAfterDays, name: "ApproveAfterDays", traits: {"smithy.api#default" => nil}))
    PatchRule.add_member(:approve_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchStringDateTime, name: "ApproveUntilDate"))
    PatchRule.add_member(:enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableNonSecurity", traits: {"smithy.api#default" => nil}))
    PatchRule.type = Types::PatchRule
    PatchRuleGroup.add_member(:patch_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleList, name: "PatchRules", traits: {"smithy.api#required" => {}}))
    PatchRuleGroup.type = Types::PatchRuleGroup
    PatchRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRule, name: "member"))
    PatchSet.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Os", traits: {"smithy.api#enumValue" => "OS"}))
    PatchSet.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Application", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    PatchSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    PatchSource.add_member(:products, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceProductList, name: "Products", traits: {"smithy.api#required" => {}}))
    PatchSource.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    PatchSource.type = Types::PatchSource
    PatchSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSource, name: "member"))
    PatchSourceProductList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceProduct, name: "member"))
    PatchStatus.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchDeploymentStatus, name: "DeploymentStatus"))
    PatchStatus.add_member(:compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ComplianceLevel"))
    PatchStatus.add_member(:approval_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ApprovalDate"))
    PatchStatus.type = Types::PatchStatus
    PingStatus.add_member(:online, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLINE", traits: {"smithy.api#enumValue" => "Online"}))
    PingStatus.add_member(:connection_lost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_LOST", traits: {"smithy.api#enumValue" => "ConnectionLost"}))
    PingStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    PlatformType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "Windows"}))
    PlatformType.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "Linux"}))
    PlatformType.add_member(:macos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MACOS", traits: {"smithy.api#enumValue" => "MacOS"}))
    PlatformTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "member", traits: {"smithy.api#xmlName" => "PlatformType"}))
    PoliciesLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PoliciesLimitExceededException.type = Types::PoliciesLimitExceededException
    ProgressCounters.add_member(:total_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalSteps", traits: {"smithy.api#default" => 0}))
    ProgressCounters.add_member(:success_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SuccessSteps", traits: {"smithy.api#default" => 0}))
    ProgressCounters.add_member(:failed_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedSteps", traits: {"smithy.api#default" => 0}))
    ProgressCounters.add_member(:cancelled_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CancelledSteps", traits: {"smithy.api#default" => 0}))
    ProgressCounters.add_member(:timed_out_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TimedOutSteps", traits: {"smithy.api#default" => 0}))
    ProgressCounters.type = Types::ProgressCounters
    PutComplianceItemsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    PutComplianceItemsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    PutComplianceItemsRequest.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypeName, name: "ComplianceType", traits: {"smithy.api#required" => {}}))
    PutComplianceItemsRequest.add_member(:execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceExecutionSummary, name: "ExecutionSummary", traits: {"smithy.api#required" => {}}))
    PutComplianceItemsRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemEntryList, name: "Items", traits: {"smithy.api#required" => {}}))
    PutComplianceItemsRequest.add_member(:item_content_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceItemContentHash, name: "ItemContentHash"))
    PutComplianceItemsRequest.add_member(:upload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceUploadType, name: "UploadType"))
    PutComplianceItemsRequest.type = Types::PutComplianceItemsRequest
    PutComplianceItemsResult.type = Types::PutComplianceItemsResult
    PutInventoryRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    PutInventoryRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemList, name: "Items", traits: {"smithy.api#required" => {}}))
    PutInventoryRequest.type = Types::PutInventoryRequest
    PutInventoryResult.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: PutInventoryMessage, name: "Message"))
    PutInventoryResult.type = Types::PutInventoryResult
    PutParameterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    PutParameterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDescription, name: "Description"))
    PutParameterRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    PutParameterRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "Type"))
    PutParameterRequest.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKeyId, name: "KeyId"))
    PutParameterRequest.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Overwrite", traits: {"smithy.api#default" => nil}))
    PutParameterRequest.add_member(:allowed_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPattern, name: "AllowedPattern"))
    PutParameterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutParameterRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTier, name: "Tier"))
    PutParameterRequest.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterPolicies, name: "Policies"))
    PutParameterRequest.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDataType, name: "DataType"))
    PutParameterRequest.type = Types::PutParameterRequest
    PutParameterResult.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "Version", traits: {"smithy.api#default" => 0}))
    PutParameterResult.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTier, name: "Tier"))
    PutParameterResult.type = Types::PutParameterResult
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    PutResourcePolicyRequest.add_member(:policy_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyHash, name: "PolicyHash"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    PutResourcePolicyResponse.add_member(:policy_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyHash, name: "PolicyHash"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RebootOption.add_member(:reboot_if_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOT_IF_NEEDED", traits: {"smithy.api#enumValue" => "RebootIfNeeded"}))
    RebootOption.add_member(:no_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_REBOOT", traits: {"smithy.api#enumValue" => "NoReboot"}))
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    RegisterDefaultPatchBaselineRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    RegisterDefaultPatchBaselineRequest.type = Types::RegisterDefaultPatchBaselineRequest
    RegisterDefaultPatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    RegisterDefaultPatchBaselineResult.type = Types::RegisterDefaultPatchBaselineResult
    RegisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    RegisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup", traits: {"smithy.api#required" => {}}))
    RegisterPatchBaselineForPatchGroupRequest.type = Types::RegisterPatchBaselineForPatchGroupRequest
    RegisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    RegisterPatchBaselineForPatchGroupResult.add_member(:patch_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchGroup, name: "PatchGroup"))
    RegisterPatchBaselineForPatchGroupResult.type = Types::RegisterPatchBaselineForPatchGroupResult
    RegisterTargetWithMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets", traits: {"smithy.api#required" => {}}))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterTargetWithMaintenanceWindowRequest.type = Types::RegisterTargetWithMaintenanceWindowRequest
    RegisterTargetWithMaintenanceWindowResult.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId"))
    RegisterTargetWithMaintenanceWindowResult.type = Types::RegisterTargetWithMaintenanceWindowResult
    RegisterTaskWithMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn", traits: {"smithy.api#required" => {}}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskType, name: "TaskType", traits: {"smithy.api#required" => {}}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "TaskParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_invocation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskInvocationParameters, name: "TaskInvocationParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => nil}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:cutoff_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskCutoffBehavior, name: "CutoffBehavior"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    RegisterTaskWithMaintenanceWindowRequest.type = Types::RegisterTaskWithMaintenanceWindowRequest
    RegisterTaskWithMaintenanceWindowResult.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId"))
    RegisterTaskWithMaintenanceWindowResult.type = Types::RegisterTaskWithMaintenanceWindowResult
    RegistrationMetadataItem.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationMetadataKey, name: "Key", traits: {"smithy.api#required" => {}}))
    RegistrationMetadataItem.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationMetadataValue, name: "Value", traits: {"smithy.api#required" => {}}))
    RegistrationMetadataItem.type = Types::RegistrationMetadataItem
    RegistrationMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationMetadataItem, name: "member"))
    RelatedOpsItem.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    RelatedOpsItem.type = Types::RelatedOpsItem
    RelatedOpsItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedOpsItem, name: "member"))
    RemoveTagsFromResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeForTagging, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.type = Types::RemoveTagsFromResourceRequest
    RemoveTagsFromResourceResult.type = Types::RemoveTagsFromResourceResult
    ResetServiceSettingRequest.add_member(:setting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingId, name: "SettingId", traits: {"smithy.api#required" => {}}))
    ResetServiceSettingRequest.type = Types::ResetServiceSettingRequest
    ResetServiceSettingResult.add_member(:service_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSetting, name: "ServiceSetting"))
    ResetServiceSettingResult.type = Types::ResetServiceSettingResult
    ResolvedTargets.add_member(:parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetParameterList, name: "ParameterValues"))
    ResolvedTargets.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Truncated", traits: {"smithy.api#default" => false}))
    ResolvedTargets.type = Types::ResolvedTargets
    ResourceComplianceSummaryItem.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypeName, name: "ComplianceType"))
    ResourceComplianceSummaryItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceType, name: "ResourceType"))
    ResourceComplianceSummaryItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceId, name: "ResourceId"))
    ResourceComplianceSummaryItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "Status"))
    ResourceComplianceSummaryItem.add_member(:overall_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSeverity, name: "OverallSeverity"))
    ResourceComplianceSummaryItem.add_member(:execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceExecutionSummary, name: "ExecutionSummary"))
    ResourceComplianceSummaryItem.add_member(:compliant_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CompliantSummary, name: "CompliantSummary"))
    ResourceComplianceSummaryItem.add_member(:non_compliant_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: NonCompliantSummary, name: "NonCompliantSummary"))
    ResourceComplianceSummaryItem.type = Types::ResourceComplianceSummaryItem
    ResourceComplianceSummaryItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceComplianceSummaryItem, name: "member", traits: {"smithy.api#xmlName" => "Item"}))
    ResourceDataSyncAlreadyExistsException.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    ResourceDataSyncAlreadyExistsException.type = Types::ResourceDataSyncAlreadyExistsException
    ResourceDataSyncAwsOrganizationsSource.add_member(:organization_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncOrganizationSourceType, name: "OrganizationSourceType", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncAwsOrganizationsSource.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncOrganizationalUnitList, name: "OrganizationalUnits"))
    ResourceDataSyncAwsOrganizationsSource.type = Types::ResourceDataSyncAwsOrganizationsSource
    ResourceDataSyncConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceDataSyncConflictException.type = Types::ResourceDataSyncConflictException
    ResourceDataSyncCountExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceDataSyncCountExceededException.type = Types::ResourceDataSyncCountExceededException
    ResourceDataSyncDestinationDataSharing.add_member(:destination_data_sharing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncDestinationDataSharingType, name: "DestinationDataSharingType"))
    ResourceDataSyncDestinationDataSharing.type = Types::ResourceDataSyncDestinationDataSharing
    ResourceDataSyncInvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceDataSyncInvalidConfigurationException.type = Types::ResourceDataSyncInvalidConfigurationException
    ResourceDataSyncItem.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    ResourceDataSyncItem.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType"))
    ResourceDataSyncItem.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceWithState, name: "SyncSource"))
    ResourceDataSyncItem.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3Destination, name: "S3Destination"))
    ResourceDataSyncItem.add_member(:last_sync_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastResourceDataSyncTime, name: "LastSyncTime"))
    ResourceDataSyncItem.add_member(:last_successful_sync_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSuccessfulResourceDataSyncTime, name: "LastSuccessfulSyncTime"))
    ResourceDataSyncItem.add_member(:sync_last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncLastModifiedTime, name: "SyncLastModifiedTime"))
    ResourceDataSyncItem.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastResourceDataSyncStatus, name: "LastStatus"))
    ResourceDataSyncItem.add_member(:sync_created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncCreatedTime, name: "SyncCreatedTime"))
    ResourceDataSyncItem.add_member(:last_sync_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LastResourceDataSyncMessage, name: "LastSyncStatusMessage"))
    ResourceDataSyncItem.type = Types::ResourceDataSyncItem
    ResourceDataSyncItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncItem, name: "member"))
    ResourceDataSyncNotFoundException.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName"))
    ResourceDataSyncNotFoundException.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType"))
    ResourceDataSyncNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceDataSyncNotFoundException.type = Types::ResourceDataSyncNotFoundException
    ResourceDataSyncOrganizationalUnit.add_member(:organizational_unit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncOrganizationalUnitId, name: "OrganizationalUnitId"))
    ResourceDataSyncOrganizationalUnit.type = Types::ResourceDataSyncOrganizationalUnit
    ResourceDataSyncOrganizationalUnitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncOrganizationalUnit, name: "member"))
    ResourceDataSyncS3Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncS3Destination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3Prefix, name: "Prefix"))
    ResourceDataSyncS3Destination.add_member(:sync_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3Format, name: "SyncFormat", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncS3Destination.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncS3Region, name: "Region", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncS3Destination.add_member(:awskms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncAWSKMSKeyARN, name: "AWSKMSKeyARN"))
    ResourceDataSyncS3Destination.add_member(:destination_data_sharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncDestinationDataSharing, name: "DestinationDataSharing"))
    ResourceDataSyncS3Destination.type = Types::ResourceDataSyncS3Destination
    ResourceDataSyncS3Format.add_member(:json_serde, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_SERDE", traits: {"smithy.api#enumValue" => "JsonSerDe"}))
    ResourceDataSyncSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceType, name: "SourceType", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncSource.add_member(:aws_organizations_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncAwsOrganizationsSource, name: "AwsOrganizationsSource"))
    ResourceDataSyncSource.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceRegionList, name: "SourceRegions", traits: {"smithy.api#required" => {}}))
    ResourceDataSyncSource.add_member(:include_future_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncIncludeFutureRegions, name: "IncludeFutureRegions", traits: {"smithy.api#default" => false}))
    ResourceDataSyncSource.add_member(:enable_all_ops_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncEnableAllOpsDataSources, name: "EnableAllOpsDataSources", traits: {"smithy.api#default" => false}))
    ResourceDataSyncSource.type = Types::ResourceDataSyncSource
    ResourceDataSyncSourceRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceRegion, name: "member"))
    ResourceDataSyncSourceWithState.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceType, name: "SourceType"))
    ResourceDataSyncSourceWithState.add_member(:aws_organizations_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncAwsOrganizationsSource, name: "AwsOrganizationsSource"))
    ResourceDataSyncSourceWithState.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSourceRegionList, name: "SourceRegions"))
    ResourceDataSyncSourceWithState.add_member(:include_future_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncIncludeFutureRegions, name: "IncludeFutureRegions", traits: {"smithy.api#default" => false}))
    ResourceDataSyncSourceWithState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncState, name: "State"))
    ResourceDataSyncSourceWithState.add_member(:enable_all_ops_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncEnableAllOpsDataSources, name: "EnableAllOpsDataSources", traits: {"smithy.api#default" => false}))
    ResourceDataSyncSourceWithState.type = Types::ResourceDataSyncSourceWithState
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicyConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourcePolicyConflictException.type = Types::ResourcePolicyConflictException
    ResourcePolicyInvalidParameterException.add_member(:parameter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyParameterNamesList, name: "ParameterNames"))
    ResourcePolicyInvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourcePolicyInvalidParameterException.type = Types::ResourcePolicyInvalidParameterException
    ResourcePolicyLimitExceededException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#default" => 0}))
    ResourcePolicyLimitExceededException.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LimitType"))
    ResourcePolicyLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourcePolicyLimitExceededException.type = Types::ResourcePolicyLimitExceededException
    ResourcePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicyParameterNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ResourceType.add_member(:managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCE", traits: {"smithy.api#enumValue" => "ManagedInstance"}))
    ResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2Instance"}))
    ResourceTypeForTagging.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "Document"}))
    ResourceTypeForTagging.add_member(:managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCE", traits: {"smithy.api#enumValue" => "ManagedInstance"}))
    ResourceTypeForTagging.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE_WINDOW", traits: {"smithy.api#enumValue" => "MaintenanceWindow"}))
    ResourceTypeForTagging.add_member(:parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARAMETER", traits: {"smithy.api#enumValue" => "Parameter"}))
    ResourceTypeForTagging.add_member(:patch_baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCH_BASELINE", traits: {"smithy.api#enumValue" => "PatchBaseline"}))
    ResourceTypeForTagging.add_member(:ops_item, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPS_ITEM", traits: {"smithy.api#enumValue" => "OpsItem"}))
    ResourceTypeForTagging.add_member(:opsmetadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPSMETADATA", traits: {"smithy.api#enumValue" => "OpsMetadata"}))
    ResourceTypeForTagging.add_member(:automation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATION", traits: {"smithy.api#enumValue" => "Automation"}))
    ResourceTypeForTagging.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATION", traits: {"smithy.api#enumValue" => "Association"}))
    ResourceTypeForTagging.add_member(:cloud_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_CONNECTOR", traits: {"smithy.api#enumValue" => "CloudConnector"}))
    ResultAttribute.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    ResultAttribute.type = Types::ResultAttribute
    ResultAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultAttribute, name: "member", traits: {"smithy.api#xmlName" => "ResultAttribute"}))
    ResumeSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    ResumeSessionRequest.type = Types::ResumeSessionRequest
    ResumeSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    ResumeSessionResponse.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue, name: "TokenValue"))
    ResumeSessionResponse.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrl, name: "StreamUrl"))
    ResumeSessionResponse.type = Types::ResumeSessionResponse
    ReviewInformation.add_member(:reviewed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ReviewedTime"))
    ReviewInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "Status"))
    ReviewInformation.add_member(:reviewer, ::Smithy::Schema::Shapes::MemberShape.new(target: Reviewer, name: "Reviewer"))
    ReviewInformation.type = Types::ReviewInformation
    ReviewInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewInformation, name: "member", traits: {"smithy.api#xmlName" => "ReviewInformation"}))
    ReviewStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ReviewStatus.add_member(:not_reviewed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REVIEWED", traits: {"smithy.api#enumValue" => "NOT_REVIEWED"}))
    ReviewStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReviewStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    Runbook.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    Runbook.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    Runbook.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    Runbook.add_member(:target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "TargetParameterName"))
    Runbook.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    Runbook.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    Runbook.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    Runbook.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    Runbook.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    Runbook.type = Types::Runbook
    Runbooks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Runbook, name: "member"))
    S3OutputLocation.add_member(:output_s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Region, name: "OutputS3Region"))
    S3OutputLocation.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "OutputS3BucketName"))
    S3OutputLocation.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "OutputS3KeyPrefix"))
    S3OutputLocation.type = Types::S3OutputLocation
    S3OutputUrl.add_member(:output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "OutputUrl"))
    S3OutputUrl.type = Types::S3OutputUrl
    ScheduledWindowExecution.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    ScheduledWindowExecution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    ScheduledWindowExecution.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "ExecutionTime"))
    ScheduledWindowExecution.type = Types::ScheduledWindowExecution
    ScheduledWindowExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledWindowExecution, name: "member"))
    SendAutomationSignalRequest.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId", traits: {"smithy.api#required" => {}}))
    SendAutomationSignalRequest.add_member(:signal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalType, name: "SignalType", traits: {"smithy.api#required" => {}}))
    SendAutomationSignalRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Payload"))
    SendAutomationSignalRequest.type = Types::SendAutomationSignalRequest
    SendAutomationSignalResult.type = Types::SendAutomationSignalResult
    SendCommandRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "InstanceIds"))
    SendCommandRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    SendCommandRequest.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    SendCommandRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    SendCommandRequest.add_member(:document_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHash, name: "DocumentHash"))
    SendCommandRequest.add_member(:document_hash_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentHashType, name: "DocumentHashType"))
    SendCommandRequest.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSeconds, name: "TimeoutSeconds"))
    SendCommandRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "Comment"))
    SendCommandRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    SendCommandRequest.add_member(:output_s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Region, name: "OutputS3Region"))
    SendCommandRequest.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "OutputS3BucketName"))
    SendCommandRequest.add_member(:output_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefix, name: "OutputS3KeyPrefix"))
    SendCommandRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    SendCommandRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    SendCommandRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    SendCommandRequest.add_member(:notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfig, name: "NotificationConfig"))
    SendCommandRequest.add_member(:cloud_watch_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "CloudWatchOutputConfig"))
    SendCommandRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    SendCommandRequest.type = Types::SendCommandRequest
    SendCommandResult.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: Command, name: "Command"))
    SendCommandResult.type = Types::SendCommandResult
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSetting.add_member(:setting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingId, name: "SettingId"))
    ServiceSetting.add_member(:setting_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingValue, name: "SettingValue"))
    ServiceSetting.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    ServiceSetting.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastModifiedUser"))
    ServiceSetting.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ServiceSetting.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ServiceSetting.type = Types::ServiceSetting
    ServiceSettingNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceSettingNotFound.type = Types::ServiceSettingNotFound
    Session.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    Session.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTarget, name: "Target"))
    Session.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "Status"))
    Session.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartDate"))
    Session.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndDate"))
    Session.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName"))
    Session.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionOwner, name: "Owner"))
    Session.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionReason, name: "Reason"))
    Session.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDetails, name: "Details"))
    Session.add_member(:output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerOutputUrl, name: "OutputUrl"))
    Session.add_member(:max_session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSessionDuration, name: "MaxSessionDuration"))
    Session.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "AccessType"))
    Session.type = Types::Session
    SessionFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    SessionFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    SessionFilter.type = Types::SessionFilter
    SessionFilterKey.add_member(:invoked_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOKED_AFTER", traits: {"smithy.api#enumValue" => "InvokedAfter"}))
    SessionFilterKey.add_member(:invoked_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOKED_BEFORE", traits: {"smithy.api#enumValue" => "InvokedBefore"}))
    SessionFilterKey.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_ID", traits: {"smithy.api#enumValue" => "Target"}))
    SessionFilterKey.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER", traits: {"smithy.api#enumValue" => "Owner"}))
    SessionFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    SessionFilterKey.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_ID", traits: {"smithy.api#enumValue" => "SessionId"}))
    SessionFilterKey.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_TYPE", traits: {"smithy.api#enumValue" => "AccessType"}))
    SessionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilter, name: "member"))
    SessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "member"))
    SessionManagerOutputUrl.add_member(:s3_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerS3OutputUrl, name: "S3OutputUrl"))
    SessionManagerOutputUrl.add_member(:cloud_watch_output_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerCloudWatchOutputUrl, name: "CloudWatchOutputUrl"))
    SessionManagerOutputUrl.type = Types::SessionManagerOutputUrl
    SessionManagerParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerParameterValue, name: "member"))
    SessionManagerParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerParameterName, name: "key"))
    SessionManagerParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerParameterValueList, name: "value"))
    SessionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    SessionState.add_member(:history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HISTORY", traits: {"smithy.api#enumValue" => "History"}))
    SessionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "Connected"}))
    SessionStatus.add_member(:connecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTING", traits: {"smithy.api#enumValue" => "Connecting"}))
    SessionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "Disconnected"}))
    SessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "Terminated"}))
    SessionStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "Terminating"}))
    SessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    SeveritySummary.add_member(:critical_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "CriticalCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.add_member(:high_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "HighCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.add_member(:medium_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "MediumCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.add_member(:low_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "LowCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.add_member(:informational_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "InformationalCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.add_member(:unspecified_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryCount, name: "UnspecifiedCount", traits: {"smithy.api#default" => 0}))
    SeveritySummary.type = Types::SeveritySummary
    SignalType.add_member(:approve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVE", traits: {"smithy.api#enumValue" => "Approve"}))
    SignalType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "Reject"}))
    SignalType.add_member(:start_step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_STEP", traits: {"smithy.api#enumValue" => "StartStep"}))
    SignalType.add_member(:stop_step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_STEP", traits: {"smithy.api#enumValue" => "StopStep"}))
    SignalType.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUME", traits: {"smithy.api#enumValue" => "Resume"}))
    SignalType.add_member(:revoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE", traits: {"smithy.api#enumValue" => "Revoke"}))
    SourceType.add_member(:aws_ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EC2_INSTANCE", traits: {"smithy.api#enumValue" => "AWS::EC2::Instance"}))
    SourceType.add_member(:aws_iot_thing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IOT_THING", traits: {"smithy.api#enumValue" => "AWS::IoT::Thing"}))
    SourceType.add_member(:aws_ssm_managedinstance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SSM_MANAGEDINSTANCE", traits: {"smithy.api#enumValue" => "AWS::SSM::ManagedInstance"}))
    SourceType.add_member(:azure_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_INSTANCE", traits: {"smithy.api#enumValue" => "Microsoft.Compute/virtualMachines"}))
    StartAccessRequestRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String1to256, name: "Reason", traits: {"smithy.api#required" => {}}))
    StartAccessRequestRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets", traits: {"smithy.api#required" => {}}))
    StartAccessRequestRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartAccessRequestRequest.type = Types::StartAccessRequestRequest
    StartAccessRequestResponse.add_member(:access_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessRequestId, name: "AccessRequestId"))
    StartAccessRequestResponse.type = Types::StartAccessRequestResponse
    StartAssociationsOnceRequest.add_member(:association_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationIdList, name: "AssociationIds", traits: {"smithy.api#required" => {}}))
    StartAssociationsOnceRequest.type = Types::StartAssociationsOnceRequest
    StartAssociationsOnceResult.type = Types::StartAssociationsOnceResult
    StartAutomationExecutionRequest.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    StartAutomationExecutionRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    StartAutomationExecutionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    StartAutomationExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken"))
    StartAutomationExecutionRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "Mode"))
    StartAutomationExecutionRequest.add_member(:target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterKey, name: "TargetParameterName"))
    StartAutomationExecutionRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargets, name: "Targets"))
    StartAutomationExecutionRequest.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    StartAutomationExecutionRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    StartAutomationExecutionRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    StartAutomationExecutionRequest.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    StartAutomationExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartAutomationExecutionRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    StartAutomationExecutionRequest.add_member(:target_locations_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocationsURL, name: "TargetLocationsURL"))
    StartAutomationExecutionRequest.type = Types::StartAutomationExecutionRequest
    StartAutomationExecutionResult.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId"))
    StartAutomationExecutionResult.type = Types::StartAutomationExecutionResult
    StartChangeRequestExecutionRequest.add_member(:scheduled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ScheduledTime"))
    StartChangeRequestExecutionRequest.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    StartChangeRequestExecutionRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    StartChangeRequestExecutionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Parameters"))
    StartChangeRequestExecutionRequest.add_member(:change_request_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeRequestName, name: "ChangeRequestName"))
    StartChangeRequestExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientToken"))
    StartChangeRequestExecutionRequest.add_member(:auto_approve, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoApprove", traits: {"smithy.api#default" => false}))
    StartChangeRequestExecutionRequest.add_member(:runbooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Runbooks, name: "Runbooks", traits: {"smithy.api#required" => {}}))
    StartChangeRequestExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartChangeRequestExecutionRequest.add_member(:scheduled_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ScheduledEndTime"))
    StartChangeRequestExecutionRequest.add_member(:change_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDetailsValue, name: "ChangeDetails"))
    StartChangeRequestExecutionRequest.type = Types::StartChangeRequestExecutionRequest
    StartChangeRequestExecutionResult.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId"))
    StartChangeRequestExecutionResult.type = Types::StartChangeRequestExecutionResult
    StartExecutionPreviewRequest.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    StartExecutionPreviewRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    StartExecutionPreviewRequest.add_member(:execution_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionInputs, name: "ExecutionInputs"))
    StartExecutionPreviewRequest.type = Types::StartExecutionPreviewRequest
    StartExecutionPreviewResponse.add_member(:execution_preview_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPreviewId, name: "ExecutionPreviewId"))
    StartExecutionPreviewResponse.type = Types::StartExecutionPreviewResponse
    StartSessionRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTarget, name: "Target", traits: {"smithy.api#required" => {}}))
    StartSessionRequest.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "DocumentName"))
    StartSessionRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionReason, name: "Reason"))
    StartSessionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerParameters, name: "Parameters"))
    StartSessionRequest.type = Types::StartSessionRequest
    StartSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    StartSessionResponse.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue, name: "TokenValue"))
    StartSessionResponse.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrl, name: "StreamUrl"))
    StartSessionResponse.type = Types::StartSessionResponse
    StatusUnchanged.type = Types::StatusUnchanged
    StepExecution.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepName"))
    StepExecution.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationActionName, name: "Action"))
    StepExecution.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TimeoutSeconds", traits: {"smithy.api#default" => nil}))
    StepExecution.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OnFailure"))
    StepExecution.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxAttempts", traits: {"smithy.api#default" => nil}))
    StepExecution.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionStartTime"))
    StepExecution.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExecutionEndTime"))
    StepExecution.add_member(:step_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionStatus, name: "StepStatus"))
    StepExecution.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseCode"))
    StepExecution.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: NormalStringMap, name: "Inputs"))
    StepExecution.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "Outputs"))
    StepExecution.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Response"))
    StepExecution.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    StepExecution.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    StepExecution.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "FailureDetails"))
    StepExecution.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepExecutionId"))
    StepExecution.add_member(:overridden_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationParameterMap, name: "OverriddenParameters"))
    StepExecution.add_member(:is_end, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsEnd", traits: {"smithy.api#default" => nil}))
    StepExecution.add_member(:next_step, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextStep"))
    StepExecution.add_member(:is_critical, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsCritical", traits: {"smithy.api#default" => nil}))
    StepExecution.add_member(:valid_next_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidNextStepList, name: "ValidNextSteps"))
    StepExecution.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    StepExecution.add_member(:target_location, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocation, name: "TargetLocation"))
    StepExecution.add_member(:triggered_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateInformationList, name: "TriggeredAlarms"))
    StepExecution.add_member(:parent_step_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentStepDetails, name: "ParentStepDetails"))
    StepExecution.type = Types::StepExecution
    StepExecutionFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionFilterKey, name: "Key", traits: {"smithy.api#required" => {}}))
    StepExecutionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionFilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    StepExecutionFilter.type = Types::StepExecutionFilter
    StepExecutionFilterKey.add_member(:start_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_BEFORE", traits: {"smithy.api#enumValue" => "StartTimeBefore"}))
    StepExecutionFilterKey.add_member(:start_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME_AFTER", traits: {"smithy.api#enumValue" => "StartTimeAfter"}))
    StepExecutionFilterKey.add_member(:step_execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_EXECUTION_STATUS", traits: {"smithy.api#enumValue" => "StepExecutionStatus"}))
    StepExecutionFilterKey.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_EXECUTION_ID", traits: {"smithy.api#enumValue" => "StepExecutionId"}))
    StepExecutionFilterKey.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_NAME", traits: {"smithy.api#enumValue" => "StepName"}))
    StepExecutionFilterKey.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION", traits: {"smithy.api#enumValue" => "Action"}))
    StepExecutionFilterKey.add_member(:parent_step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_STEP_EXECUTION_ID", traits: {"smithy.api#enumValue" => "ParentStepExecutionId"}))
    StepExecutionFilterKey.add_member(:parent_step_iteration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_STEP_ITERATION", traits: {"smithy.api#enumValue" => "ParentStepIteration"}))
    StepExecutionFilterKey.add_member(:parent_step_iterator_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_STEP_ITERATOR_VALUE", traits: {"smithy.api#enumValue" => "ParentStepIteratorValue"}))
    StepExecutionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionFilter, name: "member"))
    StepExecutionFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionFilterValue, name: "member"))
    StepExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecution, name: "member"))
    StepPreviewMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpactType, name: "key"))
    StepPreviewMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value"))
    StopAutomationExecutionRequest.add_member(:automation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionId, name: "AutomationExecutionId", traits: {"smithy.api#required" => {}}))
    StopAutomationExecutionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StopType, name: "Type"))
    StopAutomationExecutionRequest.type = Types::StopAutomationExecutionRequest
    StopAutomationExecutionResult.type = Types::StopAutomationExecutionResult
    StopType.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    StopType.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL", traits: {"smithy.api#enumValue" => "Cancel"}))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubTypeCountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    SubTypeCountLimitExceededException.type = Types::SubTypeCountLimitExceededException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    Target.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetKey, name: "Key"))
    Target.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetValues, name: "Values"))
    Target.type = Types::Target
    TargetInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TargetInUseException.type = Types::TargetInUseException
    TargetLocation.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, name: "Accounts"))
    TargetLocation.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    TargetLocation.add_member(:target_location_max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "TargetLocationMaxConcurrency"))
    TargetLocation.add_member(:target_location_max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "TargetLocationMaxErrors"))
    TargetLocation.add_member(:execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleName, name: "ExecutionRoleName"))
    TargetLocation.add_member(:target_location_alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "TargetLocationAlarmConfiguration"))
    TargetLocation.add_member(:include_child_organization_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeChildOrganizationUnits", traits: {"smithy.api#default" => false}))
    TargetLocation.add_member(:exclude_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeAccounts, name: "ExcludeAccounts"))
    TargetLocation.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargets, name: "Targets"))
    TargetLocation.add_member(:targets_max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "TargetsMaxConcurrency"))
    TargetLocation.add_member(:targets_max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "TargetsMaxErrors"))
    TargetLocation.type = Types::TargetLocation
    TargetLocations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocation, name: "member"))
    TargetMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMapKey, name: "key"))
    TargetMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMapValueList, name: "value"))
    TargetMapValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMapValue, name: "member"))
    TargetMaps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMap, name: "member"))
    TargetNotConnected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TargetNotConnected.type = Types::TargetNotConnected
    TargetParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "member"))
    TargetPreview.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    TargetPreview.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetType"))
    TargetPreview.type = Types::TargetPreview
    TargetPreviewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPreview, name: "member"))
    TargetValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetValue, name: "member"))
    Targets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    TerminateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    TerminateSessionRequest.type = Types::TerminateSessionRequest
    TerminateSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    TerminateSessionResponse.type = Types::TerminateSessionResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsError.type = Types::TooManyTagsError
    TooManyUpdates.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyUpdates.type = Types::TooManyUpdates
    TotalSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TotalSizeLimitExceededException.type = Types::TotalSizeLimitExceededException
    UnlabelParameterVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    UnlabelParameterVersionRequest.add_member(:parameter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PSParameterVersion, name: "ParameterVersion", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    UnlabelParameterVersionRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "Labels", traits: {"smithy.api#required" => {}}))
    UnlabelParameterVersionRequest.type = Types::UnlabelParameterVersionRequest
    UnlabelParameterVersionResult.add_member(:removed_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "RemovedLabels"))
    UnlabelParameterVersionResult.add_member(:invalid_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterLabelList, name: "InvalidLabels"))
    UnlabelParameterVersionResult.type = Types::UnlabelParameterVersionResult
    UnsupportedCalendarException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedCalendarException.type = Types::UnsupportedCalendarException
    UnsupportedFeatureRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedFeatureRequiredException.type = Types::UnsupportedFeatureRequiredException
    UnsupportedInventoryItemContextException.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryItemTypeName, name: "TypeName"))
    UnsupportedInventoryItemContextException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedInventoryItemContextException.type = Types::UnsupportedInventoryItemContextException
    UnsupportedInventorySchemaVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedInventorySchemaVersionException.type = Types::UnsupportedInventorySchemaVersionException
    UnsupportedOperatingSystem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedOperatingSystem.type = Types::UnsupportedOperatingSystem
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedParameterType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnsupportedParameterType.type = Types::UnsupportedParameterType
    UnsupportedPlatformType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedPlatformType.type = Types::UnsupportedPlatformType
    UpdateAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    UpdateAssociationRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    UpdateAssociationRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    UpdateAssociationRequest.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "ScheduleExpression"))
    UpdateAssociationRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAssociationOutputLocation, name: "OutputLocation"))
    UpdateAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name"))
    UpdateAssociationRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateAssociationRequest.add_member(:association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationName, name: "AssociationName"))
    UpdateAssociationRequest.add_member(:association_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationVersion, name: "AssociationVersion"))
    UpdateAssociationRequest.add_member(:automation_target_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationTargetParameterName, name: "AutomationTargetParameterName"))
    UpdateAssociationRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    UpdateAssociationRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    UpdateAssociationRequest.add_member(:compliance_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationComplianceSeverity, name: "ComplianceSeverity"))
    UpdateAssociationRequest.add_member(:sync_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncCompliance, name: "SyncCompliance"))
    UpdateAssociationRequest.add_member(:apply_only_at_cron_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyOnlyAtCronInterval, name: "ApplyOnlyAtCronInterval", traits: {"smithy.api#default" => false}))
    UpdateAssociationRequest.add_member(:calendar_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CalendarNameOrARNList, name: "CalendarNames"))
    UpdateAssociationRequest.add_member(:target_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLocations, name: "TargetLocations"))
    UpdateAssociationRequest.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleOffset, name: "ScheduleOffset"))
    UpdateAssociationRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    UpdateAssociationRequest.add_member(:target_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetMaps, name: "TargetMaps"))
    UpdateAssociationRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    UpdateAssociationRequest.add_member(:association_dispatch_assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDispatchAssumeRoleArn, name: "AssociationDispatchAssumeRole"))
    UpdateAssociationRequest.type = Types::UpdateAssociationRequest
    UpdateAssociationResult.add_member(:association_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescription, name: "AssociationDescription"))
    UpdateAssociationResult.type = Types::UpdateAssociationResult
    UpdateAssociationStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentARN, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateAssociationStatusRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    UpdateAssociationStatusRequest.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatus, name: "AssociationStatus", traits: {"smithy.api#required" => {}}))
    UpdateAssociationStatusRequest.type = Types::UpdateAssociationStatusRequest
    UpdateAssociationStatusResult.add_member(:association_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDescription, name: "AssociationDescription"))
    UpdateAssociationStatusResult.type = Types::UpdateAssociationStatusResult
    UpdateCloudConnectorRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId", traits: {"smithy.api#required" => {}}))
    UpdateCloudConnectorRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateCloudConnectorRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorConfiguration, name: "Configuration"))
    UpdateCloudConnectorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorDescription, name: "Description"))
    UpdateCloudConnectorRequest.type = Types::UpdateCloudConnectorRequest
    UpdateCloudConnectorResult.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId"))
    UpdateCloudConnectorResult.type = Types::UpdateCloudConnectorResult
    UpdateDocumentDefaultVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateDocumentDefaultVersionRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionNumber, name: "DocumentVersion", traits: {"smithy.api#required" => {}}))
    UpdateDocumentDefaultVersionRequest.type = Types::UpdateDocumentDefaultVersionRequest
    UpdateDocumentDefaultVersionResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDefaultVersionDescription, name: "Description"))
    UpdateDocumentDefaultVersionResult.type = Types::UpdateDocumentDefaultVersionResult
    UpdateDocumentMetadataRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateDocumentMetadataRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    UpdateDocumentMetadataRequest.add_member(:document_reviews, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentReviews, name: "DocumentReviews", traits: {"smithy.api#required" => {}}))
    UpdateDocumentMetadataRequest.type = Types::UpdateDocumentMetadataRequest
    UpdateDocumentMetadataResponse.type = Types::UpdateDocumentMetadataResponse
    UpdateDocumentRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContent, name: "Content", traits: {"smithy.api#required" => {}}))
    UpdateDocumentRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentsSourceList, name: "Attachments"))
    UpdateDocumentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateDocumentRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDisplayName, name: "DisplayName"))
    UpdateDocumentRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersionName, name: "VersionName"))
    UpdateDocumentRequest.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "DocumentVersion"))
    UpdateDocumentRequest.add_member(:document_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "DocumentFormat"))
    UpdateDocumentRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    UpdateDocumentRequest.type = Types::UpdateDocumentRequest
    UpdateDocumentResult.add_member(:document_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDescription, name: "DocumentDescription"))
    UpdateDocumentResult.type = Types::UpdateDocumentResult
    UpdateMaintenanceWindowRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceWindowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "StartDate"))
    UpdateMaintenanceWindowRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "EndDate"))
    UpdateMaintenanceWindowRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSchedule, name: "Schedule"))
    UpdateMaintenanceWindowRequest.add_member(:schedule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTimezone, name: "ScheduleTimezone"))
    UpdateMaintenanceWindowRequest.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowOffset, name: "ScheduleOffset"))
    UpdateMaintenanceWindowRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDurationHours, name: "Duration"))
    UpdateMaintenanceWindowRequest.add_member(:cutoff, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowCutoff, name: "Cutoff", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowAllowUnassociatedTargets, name: "AllowUnassociatedTargets", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowEnabled, name: "Enabled", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowRequest.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Replace", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowRequest.type = Types::UpdateMaintenanceWindowRequest
    UpdateMaintenanceWindowResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    UpdateMaintenanceWindowResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowResult.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "StartDate"))
    UpdateMaintenanceWindowResult.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowStringDateTime, name: "EndDate"))
    UpdateMaintenanceWindowResult.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowSchedule, name: "Schedule"))
    UpdateMaintenanceWindowResult.add_member(:schedule_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTimezone, name: "ScheduleTimezone"))
    UpdateMaintenanceWindowResult.add_member(:schedule_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowOffset, name: "ScheduleOffset"))
    UpdateMaintenanceWindowResult.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDurationHours, name: "Duration"))
    UpdateMaintenanceWindowResult.add_member(:cutoff, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowCutoff, name: "Cutoff", traits: {"smithy.api#default" => 0}))
    UpdateMaintenanceWindowResult.add_member(:allow_unassociated_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowAllowUnassociatedTargets, name: "AllowUnassociatedTargets", traits: {"smithy.api#default" => false}))
    UpdateMaintenanceWindowResult.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowEnabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    UpdateMaintenanceWindowResult.type = Types::UpdateMaintenanceWindowResult
    UpdateMaintenanceWindowTargetRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceWindowTargetRequest.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceWindowTargetRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateMaintenanceWindowTargetRequest.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowTargetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowTargetRequest.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Replace", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowTargetRequest.type = Types::UpdateMaintenanceWindowTargetRequest
    UpdateMaintenanceWindowTargetResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    UpdateMaintenanceWindowTargetResult.add_member(:window_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTargetId, name: "WindowTargetId"))
    UpdateMaintenanceWindowTargetResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateMaintenanceWindowTargetResult.add_member(:owner_information, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerInformation, name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowTargetResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowTargetResult.type = Types::UpdateMaintenanceWindowTargetResult
    UpdateMaintenanceWindowTaskRequest.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceWindowTaskRequest.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceWindowTaskRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "TaskParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_invocation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskInvocationParameters, name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    UpdateMaintenanceWindowTaskRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowTaskRequest.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Replace", traits: {"smithy.api#default" => nil}))
    UpdateMaintenanceWindowTaskRequest.add_member(:cutoff_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskCutoffBehavior, name: "CutoffBehavior"))
    UpdateMaintenanceWindowTaskRequest.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    UpdateMaintenanceWindowTaskRequest.type = Types::UpdateMaintenanceWindowTaskRequest
    UpdateMaintenanceWindowTaskResult.add_member(:window_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowId, name: "WindowId"))
    UpdateMaintenanceWindowTaskResult.add_member(:window_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskId, name: "WindowTaskId"))
    UpdateMaintenanceWindowTaskResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskArn, name: "TaskArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskParameters, name: "TaskParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskInvocationParameters, name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    UpdateMaintenanceWindowTaskResult.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrency, name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskResult.add_member(:max_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxErrors, name: "MaxErrors"))
    UpdateMaintenanceWindowTaskResult.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowName, name: "Name"))
    UpdateMaintenanceWindowTaskResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowDescription, name: "Description"))
    UpdateMaintenanceWindowTaskResult.add_member(:cutoff_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindowTaskCutoffBehavior, name: "CutoffBehavior"))
    UpdateMaintenanceWindowTaskResult.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "AlarmConfiguration"))
    UpdateMaintenanceWindowTaskResult.type = Types::UpdateMaintenanceWindowTaskResult
    UpdateManagedInstanceRoleRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstanceRoleRequest.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRole, name: "IamRole", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstanceRoleRequest.type = Types::UpdateManagedInstanceRoleRequest
    UpdateManagedInstanceRoleResult.type = Types::UpdateManagedInstanceRoleResult
    UpdateOpsItemRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemDescription, name: "Description"))
    UpdateOpsItemRequest.add_member(:operational_data, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemOperationalData, name: "OperationalData"))
    UpdateOpsItemRequest.add_member(:operational_data_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemOpsDataKeysList, name: "OperationalDataToDelete"))
    UpdateOpsItemRequest.add_member(:notifications, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemNotifications, name: "Notifications"))
    UpdateOpsItemRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemPriority, name: "Priority"))
    UpdateOpsItemRequest.add_member(:related_ops_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedOpsItems, name: "RelatedOpsItems"))
    UpdateOpsItemRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemStatus, name: "Status"))
    UpdateOpsItemRequest.add_member(:ops_item_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemId, name: "OpsItemId", traits: {"smithy.api#required" => {}}))
    UpdateOpsItemRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemTitle, name: "Title"))
    UpdateOpsItemRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemCategory, name: "Category"))
    UpdateOpsItemRequest.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemSeverity, name: "Severity"))
    UpdateOpsItemRequest.add_member(:actual_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualStartTime"))
    UpdateOpsItemRequest.add_member(:actual_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ActualEndTime"))
    UpdateOpsItemRequest.add_member(:planned_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedStartTime"))
    UpdateOpsItemRequest.add_member(:planned_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "PlannedEndTime"))
    UpdateOpsItemRequest.add_member(:ops_item_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsItemArn, name: "OpsItemArn"))
    UpdateOpsItemRequest.type = Types::UpdateOpsItemRequest
    UpdateOpsItemResponse.type = Types::UpdateOpsItemResponse
    UpdateOpsMetadataRequest.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn", traits: {"smithy.api#required" => {}}))
    UpdateOpsMetadataRequest.add_member(:metadata_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "MetadataToUpdate"))
    UpdateOpsMetadataRequest.add_member(:keys_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKeysToDeleteList, name: "KeysToDelete"))
    UpdateOpsMetadataRequest.type = Types::UpdateOpsMetadataRequest
    UpdateOpsMetadataResult.add_member(:ops_metadata_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpsMetadataArn, name: "OpsMetadataArn"))
    UpdateOpsMetadataResult.type = Types::UpdateOpsMetadataResult
    UpdatePatchBaselineRequest.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId", traits: {"smithy.api#required" => {}}))
    UpdatePatchBaselineRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineName, name: "Name"))
    UpdatePatchBaselineRequest.add_member(:global_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "GlobalFilters"))
    UpdatePatchBaselineRequest.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleGroup, name: "ApprovalRules"))
    UpdatePatchBaselineRequest.add_member(:approved_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "ApprovedPatches"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApprovedPatchesEnableNonSecurity", traits: {"smithy.api#default" => nil}))
    UpdatePatchBaselineRequest.add_member(:rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "RejectedPatches"))
    UpdatePatchBaselineRequest.add_member(:rejected_patches_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAction, name: "RejectedPatchesAction"))
    UpdatePatchBaselineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineDescription, name: "Description"))
    UpdatePatchBaselineRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceList, name: "Sources"))
    UpdatePatchBaselineRequest.add_member(:available_security_updates_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceStatus, name: "AvailableSecurityUpdatesComplianceStatus"))
    UpdatePatchBaselineRequest.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Replace", traits: {"smithy.api#default" => nil}))
    UpdatePatchBaselineRequest.type = Types::UpdatePatchBaselineRequest
    UpdatePatchBaselineResult.add_member(:baseline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineId, name: "BaselineId"))
    UpdatePatchBaselineResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineName, name: "Name"))
    UpdatePatchBaselineResult.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "OperatingSystem"))
    UpdatePatchBaselineResult.add_member(:global_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchFilterGroup, name: "GlobalFilters"))
    UpdatePatchBaselineResult.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchRuleGroup, name: "ApprovalRules"))
    UpdatePatchBaselineResult.add_member(:approved_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "ApprovedPatches"))
    UpdatePatchBaselineResult.add_member(:approved_patches_compliance_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceLevel, name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineResult.add_member(:approved_patches_enable_non_security, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApprovedPatchesEnableNonSecurity", traits: {"smithy.api#default" => nil}))
    UpdatePatchBaselineResult.add_member(:rejected_patches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchIdList, name: "RejectedPatches"))
    UpdatePatchBaselineResult.add_member(:rejected_patches_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchAction, name: "RejectedPatchesAction"))
    UpdatePatchBaselineResult.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    UpdatePatchBaselineResult.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ModifiedDate"))
    UpdatePatchBaselineResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineDescription, name: "Description"))
    UpdatePatchBaselineResult.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchSourceList, name: "Sources"))
    UpdatePatchBaselineResult.add_member(:available_security_updates_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchComplianceStatus, name: "AvailableSecurityUpdatesComplianceStatus"))
    UpdatePatchBaselineResult.type = Types::UpdatePatchBaselineResult
    UpdateResourceDataSyncRequest.add_member(:sync_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncName, name: "SyncName", traits: {"smithy.api#required" => {}}))
    UpdateResourceDataSyncRequest.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    UpdateResourceDataSyncRequest.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDataSyncSource, name: "SyncSource", traits: {"smithy.api#required" => {}}))
    UpdateResourceDataSyncRequest.type = Types::UpdateResourceDataSyncRequest
    UpdateResourceDataSyncResult.type = Types::UpdateResourceDataSyncResult
    UpdateServiceSettingRequest.add_member(:setting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingId, name: "SettingId", traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingRequest.add_member(:setting_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettingValue, name: "SettingValue", traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingRequest.type = Types::UpdateServiceSettingRequest
    UpdateServiceSettingResult.type = Types::UpdateServiceSettingResult
    ValidNextStepList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidNextStep, name: "member"))
    ValidateCloudConnectorRequest.add_member(:cloud_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudConnectorId, name: "CloudConnectorId", traits: {"smithy.api#required" => {}}))
    ValidateCloudConnectorRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateCloudConnectorMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ValidateCloudConnectorRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ValidateCloudConnectorRequest.type = Types::ValidateCloudConnectorRequest
    ValidateCloudConnectorResult.add_member(:validation_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFindingList, name: "ValidationFindings"))
    ValidateCloudConnectorResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ValidateCloudConnectorResult.type = Types::ValidateCloudConnectorResult
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationException.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReasonCode"))
    ValidationException.type = Types::ValidationException
    ValidationFinding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFindingType, name: "Type"))
    ValidationFinding.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFindingCode, name: "Code"))
    ValidationFinding.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationFinding.add_member(:provider_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProviderMessage"))
    ValidationFinding.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFindingScope, name: "Scope"))
    ValidationFinding.type = Types::ValidationFinding
    ValidationFindingCode.add_member(:target_inaccessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_INACCESSIBLE", traits: {"smithy.api#enumValue" => "TargetInaccessible"}))
    ValidationFindingCode.add_member(:target_unusable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_UNUSABLE", traits: {"smithy.api#enumValue" => "TargetUnusable"}))
    ValidationFindingCode.add_member(:target_state_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATE_WARNING", traits: {"smithy.api#enumValue" => "TargetStateWarning"}))
    ValidationFindingCode.add_member(:aws_role_assumption_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ROLE_ASSUMPTION_FAILED", traits: {"smithy.api#enumValue" => "AwsRoleAssumptionFailed"}))
    ValidationFindingCode.add_member(:web_identity_token_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_IDENTITY_TOKEN_FAILED", traits: {"smithy.api#enumValue" => "WebIdentityTokenFailed"}))
    ValidationFindingCode.add_member(:outbound_web_identity_federation_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTBOUND_WEB_IDENTITY_FEDERATION_DISABLED", traits: {"smithy.api#enumValue" => "OutboundWebIdentityFederationDisabled"}))
    ValidationFindingCode.add_member(:provider_credential_creation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVIDER_CREDENTIAL_CREATION_FAILED", traits: {"smithy.api#enumValue" => "ProviderCredentialCreationFailed"}))
    ValidationFindingCode.add_member(:tenant_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT_SUMMARY", traits: {"smithy.api#enumValue" => "TenantSummary"}))
    ValidationFindingCode.add_member(:subscription_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIPTION_ACCESSIBLE", traits: {"smithy.api#enumValue" => "SubscriptionAccessible"}))
    ValidationFindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFinding, name: "member"))
    ValidationFindingScope.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationFindingScopeType, name: "Type"))
    ValidationFindingScope.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    ValidationFindingScope.type = Types::ValidationFindingScope
    ValidationFindingScopeType.add_member(:azure_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_TENANT", traits: {"smithy.api#enumValue" => "azure:tenant"}))
    ValidationFindingScopeType.add_member(:azure_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_SUBSCRIPTION", traits: {"smithy.api#enumValue" => "azure:subscription"}))
    ValidationFindingType.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    ValidationFindingType.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    ValidationFindingType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))

    AmazonSSM = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssm#AmazonSSM"
      service.name = "AmazonSSM"
      service.version = "2014-11-06"
      service.traits = {"aws.api#service" => {"sdkId" => "SSM", "arnNamespace" => "ssm", "cloudFormationName" => "SSM", "cloudTrailEventSource" => "ssm.amazonaws.com", "endpointPrefix" => "ssm"}, "aws.auth#sigv4" => {"name" => "ssm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Simple Systems Manager (SSM)", "smithy.api#xmlNamespace" => {"uri" => "http://ssm.amazonaws.com/doc/2014-11-06/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://ssm-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ssm.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://ssm-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ssm.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ssm.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceRequest
        operation.output = AddTagsToResourceResult
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.errors << InvalidResourceType
        operation.errors << TooManyTagsError
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:associate_ops_item_related_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#AssociateOpsItemRelatedItem"
        operation.name = "AssociateOpsItemRelatedItem"
        operation.input = AssociateOpsItemRelatedItemRequest
        operation.output = AssociateOpsItemRelatedItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemConflictException
        operation.errors << OpsItemInvalidParameterException
        operation.errors << OpsItemLimitExceededException
        operation.errors << OpsItemNotFoundException
        operation.errors << OpsItemRelatedItemAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:cancel_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CancelCommand"
        operation.name = "CancelCommand"
        operation.input = CancelCommandRequest
        operation.output = CancelCommandResult
        operation.errors << DuplicateInstanceId
        operation.errors << InternalServerError
        operation.errors << InvalidCommandId
        operation.errors << InvalidInstanceId
        operation.traits = {}
      end)
      service.add_operation(:cancel_maintenance_window_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CancelMaintenanceWindowExecution"
        operation.name = "CancelMaintenanceWindowExecution"
        operation.input = CancelMaintenanceWindowExecutionRequest
        operation.output = CancelMaintenanceWindowExecutionResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:create_activation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateActivation"
        operation.name = "CreateActivation"
        operation.input = CreateActivationRequest
        operation.output = CreateActivationResult
        operation.errors << InternalServerError
        operation.errors << InvalidParameters
        operation.traits = {}
      end)
      service.add_operation(:create_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateAssociation"
        operation.name = "CreateAssociation"
        operation.input = CreateAssociationRequest
        operation.output = CreateAssociationResult
        operation.errors << AssociationAlreadyExists
        operation.errors << AssociationLimitExceeded
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.errors << InvalidInstanceId
        operation.errors << InvalidOutputLocation
        operation.errors << InvalidParameters
        operation.errors << InvalidSchedule
        operation.errors << InvalidTag
        operation.errors << InvalidTarget
        operation.errors << InvalidTargetMaps
        operation.errors << UnsupportedPlatformType
        operation.traits = {}
      end)
      service.add_operation(:create_association_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateAssociationBatch"
        operation.name = "CreateAssociationBatch"
        operation.input = CreateAssociationBatchRequest
        operation.output = CreateAssociationBatchResult
        operation.errors << AssociationLimitExceeded
        operation.errors << DuplicateInstanceId
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.errors << InvalidInstanceId
        operation.errors << InvalidOutputLocation
        operation.errors << InvalidParameters
        operation.errors << InvalidSchedule
        operation.errors << InvalidTarget
        operation.errors << InvalidTargetMaps
        operation.errors << UnsupportedPlatformType
        operation.traits = {}
      end)
      service.add_operation(:create_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateCloudConnector"
        operation.name = "CreateCloudConnector"
        operation.input = CreateCloudConnectorRequest
        operation.output = CreateCloudConnectorResult
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << ServiceQuotaExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateDocument"
        operation.name = "CreateDocument"
        operation.input = CreateDocumentRequest
        operation.output = CreateDocumentResult
        operation.errors << DocumentAlreadyExists
        operation.errors << DocumentLimitExceeded
        operation.errors << InternalServerError
        operation.errors << InvalidDocumentContent
        operation.errors << InvalidDocumentSchemaVersion
        operation.errors << MaxDocumentSizeExceeded
        operation.errors << NoLongerSupportedException
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:create_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateMaintenanceWindow"
        operation.name = "CreateMaintenanceWindow"
        operation.input = CreateMaintenanceWindowRequest
        operation.output = CreateMaintenanceWindowResult
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_ops_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateOpsItem"
        operation.name = "CreateOpsItem"
        operation.input = CreateOpsItemRequest
        operation.output = CreateOpsItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemAccessDeniedException
        operation.errors << OpsItemAlreadyExistsException
        operation.errors << OpsItemInvalidParameterException
        operation.errors << OpsItemLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_ops_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateOpsMetadata"
        operation.name = "CreateOpsMetadata"
        operation.input = CreateOpsMetadataRequest
        operation.output = CreateOpsMetadataResult
        operation.errors << InternalServerError
        operation.errors << OpsMetadataAlreadyExistsException
        operation.errors << OpsMetadataInvalidArgumentException
        operation.errors << OpsMetadataLimitExceededException
        operation.errors << OpsMetadataTooManyUpdatesException
        operation.traits = {}
      end)
      service.add_operation(:create_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreatePatchBaseline"
        operation.name = "CreatePatchBaseline"
        operation.input = CreatePatchBaselineRequest
        operation.output = CreatePatchBaselineResult
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_resource_data_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#CreateResourceDataSync"
        operation.name = "CreateResourceDataSync"
        operation.input = CreateResourceDataSyncRequest
        operation.output = CreateResourceDataSyncResult
        operation.errors << InternalServerError
        operation.errors << ResourceDataSyncAlreadyExistsException
        operation.errors << ResourceDataSyncCountExceededException
        operation.errors << ResourceDataSyncInvalidConfigurationException
        operation.traits = {}
      end)
      service.add_operation(:delete_activation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteActivation"
        operation.name = "DeleteActivation"
        operation.input = DeleteActivationRequest
        operation.output = DeleteActivationResult
        operation.errors << InternalServerError
        operation.errors << InvalidActivation
        operation.errors << InvalidActivationId
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:delete_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteAssociation"
        operation.name = "DeleteAssociation"
        operation.input = DeleteAssociationRequest
        operation.output = DeleteAssociationResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidInstanceId
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:delete_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteCloudConnector"
        operation.name = "DeleteCloudConnector"
        operation.input = DeleteCloudConnectorRequest
        operation.output = DeleteCloudConnectorResult
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteDocument"
        operation.name = "DeleteDocument"
        operation.input = DeleteDocumentRequest
        operation.output = DeleteDocumentResult
        operation.errors << AssociatedInstances
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentOperation
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:delete_inventory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteInventory"
        operation.name = "DeleteInventory"
        operation.input = DeleteInventoryRequest
        operation.output = DeleteInventoryResult
        operation.errors << InternalServerError
        operation.errors << InvalidDeleteInventoryParametersException
        operation.errors << InvalidInventoryRequestException
        operation.errors << InvalidOptionException
        operation.errors << InvalidTypeNameException
        operation.traits = {}
      end)
      service.add_operation(:delete_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteMaintenanceWindow"
        operation.name = "DeleteMaintenanceWindow"
        operation.input = DeleteMaintenanceWindowRequest
        operation.output = DeleteMaintenanceWindowResult
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:delete_ops_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteOpsItem"
        operation.name = "DeleteOpsItem"
        operation.input = DeleteOpsItemRequest
        operation.output = DeleteOpsItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemInvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:delete_ops_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteOpsMetadata"
        operation.name = "DeleteOpsMetadata"
        operation.input = DeleteOpsMetadataRequest
        operation.output = DeleteOpsMetadataResult
        operation.errors << InternalServerError
        operation.errors << OpsMetadataInvalidArgumentException
        operation.errors << OpsMetadataNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_parameter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteParameter"
        operation.name = "DeleteParameter"
        operation.input = DeleteParameterRequest
        operation.output = DeleteParameterResult
        operation.errors << InternalServerError
        operation.errors << ParameterNotFound
        operation.traits = {}
      end)
      service.add_operation(:delete_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteParameters"
        operation.name = "DeleteParameters"
        operation.input = DeleteParametersRequest
        operation.output = DeleteParametersResult
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:delete_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeletePatchBaseline"
        operation.name = "DeletePatchBaseline"
        operation.input = DeletePatchBaselineRequest
        operation.output = DeletePatchBaselineResult
        operation.errors << InternalServerError
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_data_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteResourceDataSync"
        operation.name = "DeleteResourceDataSync"
        operation.input = DeleteResourceDataSyncRequest
        operation.output = DeleteResourceDataSyncResult
        operation.errors << InternalServerError
        operation.errors << ResourceDataSyncInvalidConfigurationException
        operation.errors << ResourceDataSyncNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServerError
        operation.errors << MalformedResourcePolicyDocumentException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyConflictException
        operation.errors << ResourcePolicyInvalidParameterException
        operation.errors << ResourcePolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:deregister_managed_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeregisterManagedInstance"
        operation.name = "DeregisterManagedInstance"
        operation.input = DeregisterManagedInstanceRequest
        operation.output = DeregisterManagedInstanceResult
        operation.errors << InternalServerError
        operation.errors << InvalidInstanceId
        operation.traits = {}
      end)
      service.add_operation(:deregister_patch_baseline_for_patch_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeregisterPatchBaselineForPatchGroup"
        operation.name = "DeregisterPatchBaselineForPatchGroup"
        operation.input = DeregisterPatchBaselineForPatchGroupRequest
        operation.output = DeregisterPatchBaselineForPatchGroupResult
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.traits = {}
      end)
      service.add_operation(:deregister_target_from_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeregisterTargetFromMaintenanceWindow"
        operation.name = "DeregisterTargetFromMaintenanceWindow"
        operation.input = DeregisterTargetFromMaintenanceWindowRequest
        operation.output = DeregisterTargetFromMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.errors << TargetInUseException
        operation.traits = {}
      end)
      service.add_operation(:deregister_task_from_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DeregisterTaskFromMaintenanceWindow"
        operation.name = "DeregisterTaskFromMaintenanceWindow"
        operation.input = DeregisterTaskFromMaintenanceWindowRequest
        operation.output = DeregisterTaskFromMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_activations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeActivations"
        operation.name = "DescribeActivations"
        operation.input = DescribeActivationsRequest
        operation.output = DescribeActivationsResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeActivations.new
      end)
      service.add_operation(:describe_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAssociation"
        operation.name = "DescribeAssociation"
        operation.input = DescribeAssociationRequest
        operation.output = DescribeAssociationResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidAssociationVersion
        operation.errors << InvalidDocument
        operation.errors << InvalidInstanceId
        operation.traits = {}
      end)
      service.add_operation(:describe_association_execution_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAssociationExecutionTargets"
        operation.name = "DescribeAssociationExecutionTargets"
        operation.input = DescribeAssociationExecutionTargetsRequest
        operation.output = DescribeAssociationExecutionTargetsResult
        operation.errors << AssociationDoesNotExist
        operation.errors << AssociationExecutionDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAssociationExecutionTargets.new
      end)
      service.add_operation(:describe_association_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAssociationExecutions"
        operation.name = "DescribeAssociationExecutions"
        operation.input = DescribeAssociationExecutionsRequest
        operation.output = DescribeAssociationExecutionsResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAssociationExecutions.new
      end)
      service.add_operation(:describe_automation_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAutomationExecutions"
        operation.name = "DescribeAutomationExecutions"
        operation.input = DescribeAutomationExecutionsRequest
        operation.output = DescribeAutomationExecutionsResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidFilterValue
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAutomationExecutions.new
      end)
      service.add_operation(:describe_automation_step_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAutomationStepExecutions"
        operation.name = "DescribeAutomationStepExecutions"
        operation.input = DescribeAutomationStepExecutionsRequest
        operation.output = DescribeAutomationStepExecutionsResult
        operation.errors << AutomationExecutionNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidFilterValue
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAutomationStepExecutions.new
      end)
      service.add_operation(:describe_available_patches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeAvailablePatches"
        operation.name = "DescribeAvailablePatches"
        operation.input = DescribeAvailablePatchesRequest
        operation.output = DescribeAvailablePatchesResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAvailablePatches.new
      end)
      service.add_operation(:describe_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeDocument"
        operation.name = "DescribeDocument"
        operation.input = DescribeDocumentRequest
        operation.output = DescribeDocumentResult
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.traits = {}
      end)
      service.add_operation(:describe_document_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeDocumentPermission"
        operation.name = "DescribeDocumentPermission"
        operation.input = DescribeDocumentPermissionRequest
        operation.output = DescribeDocumentPermissionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentOperation
        operation.errors << InvalidNextToken
        operation.errors << InvalidPermissionType
        operation.traits = {}
      end)
      service.add_operation(:describe_effective_instance_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeEffectiveInstanceAssociations"
        operation.name = "DescribeEffectiveInstanceAssociations"
        operation.input = DescribeEffectiveInstanceAssociationsRequest
        operation.output = DescribeEffectiveInstanceAssociationsResult
        operation.errors << InternalServerError
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEffectiveInstanceAssociations.new
      end)
      service.add_operation(:describe_effective_patches_for_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeEffectivePatchesForPatchBaseline"
        operation.name = "DescribeEffectivePatchesForPatchBaseline"
        operation.input = DescribeEffectivePatchesForPatchBaselineRequest
        operation.output = DescribeEffectivePatchesForPatchBaselineResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.errors << UnsupportedOperatingSystem
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEffectivePatchesForPatchBaseline.new
      end)
      service.add_operation(:describe_instance_associations_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstanceAssociationsStatus"
        operation.name = "DescribeInstanceAssociationsStatus"
        operation.input = DescribeInstanceAssociationsStatusRequest
        operation.output = DescribeInstanceAssociationsStatusResult
        operation.errors << InternalServerError
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceAssociationsStatus.new
      end)
      service.add_operation(:describe_instance_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstanceInformation"
        operation.name = "DescribeInstanceInformation"
        operation.input = DescribeInstanceInformationRequest
        operation.output = DescribeInstanceInformationResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidInstanceId
        operation.errors << InvalidInstanceInformationFilterValue
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceInformation.new
      end)
      service.add_operation(:describe_instance_patch_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstancePatchStates"
        operation.name = "DescribeInstancePatchStates"
        operation.input = DescribeInstancePatchStatesRequest
        operation.output = DescribeInstancePatchStatesResult
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstancePatchStates.new
      end)
      service.add_operation(:describe_instance_patch_states_for_patch_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstancePatchStatesForPatchGroup"
        operation.name = "DescribeInstancePatchStatesForPatchGroup"
        operation.input = DescribeInstancePatchStatesForPatchGroupRequest
        operation.output = DescribeInstancePatchStatesForPatchGroupResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstancePatchStatesForPatchGroup.new
      end)
      service.add_operation(:describe_instance_patches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstancePatches"
        operation.name = "DescribeInstancePatches"
        operation.input = DescribeInstancePatchesRequest
        operation.output = DescribeInstancePatchesResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstancePatches.new
      end)
      service.add_operation(:describe_instance_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInstanceProperties"
        operation.name = "DescribeInstanceProperties"
        operation.input = DescribeInstancePropertiesRequest
        operation.output = DescribeInstancePropertiesResult
        operation.errors << InternalServerError
        operation.errors << InvalidActivationId
        operation.errors << InvalidDocument
        operation.errors << InvalidFilterKey
        operation.errors << InvalidInstanceId
        operation.errors << InvalidInstancePropertyFilterValue
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceProperties.new
      end)
      service.add_operation(:describe_inventory_deletions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeInventoryDeletions"
        operation.name = "DescribeInventoryDeletions"
        operation.input = DescribeInventoryDeletionsRequest
        operation.output = DescribeInventoryDeletionsResult
        operation.errors << InternalServerError
        operation.errors << InvalidDeletionIdException
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInventoryDeletions.new
      end)
      service.add_operation(:describe_maintenance_window_execution_task_invocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTaskInvocations"
        operation.name = "DescribeMaintenanceWindowExecutionTaskInvocations"
        operation.input = DescribeMaintenanceWindowExecutionTaskInvocationsRequest
        operation.output = DescribeMaintenanceWindowExecutionTaskInvocationsResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowExecutionTaskInvocations.new
      end)
      service.add_operation(:describe_maintenance_window_execution_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowExecutionTasks"
        operation.name = "DescribeMaintenanceWindowExecutionTasks"
        operation.input = DescribeMaintenanceWindowExecutionTasksRequest
        operation.output = DescribeMaintenanceWindowExecutionTasksResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowExecutionTasks.new
      end)
      service.add_operation(:describe_maintenance_window_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowExecutions"
        operation.name = "DescribeMaintenanceWindowExecutions"
        operation.input = DescribeMaintenanceWindowExecutionsRequest
        operation.output = DescribeMaintenanceWindowExecutionsResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowExecutions.new
      end)
      service.add_operation(:describe_maintenance_window_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowSchedule"
        operation.name = "DescribeMaintenanceWindowSchedule"
        operation.input = DescribeMaintenanceWindowScheduleRequest
        operation.output = DescribeMaintenanceWindowScheduleResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowSchedule.new
      end)
      service.add_operation(:describe_maintenance_window_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowTargets"
        operation.name = "DescribeMaintenanceWindowTargets"
        operation.input = DescribeMaintenanceWindowTargetsRequest
        operation.output = DescribeMaintenanceWindowTargetsResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowTargets.new
      end)
      service.add_operation(:describe_maintenance_window_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowTasks"
        operation.name = "DescribeMaintenanceWindowTasks"
        operation.input = DescribeMaintenanceWindowTasksRequest
        operation.output = DescribeMaintenanceWindowTasksResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowTasks.new
      end)
      service.add_operation(:describe_maintenance_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindows"
        operation.name = "DescribeMaintenanceWindows"
        operation.input = DescribeMaintenanceWindowsRequest
        operation.output = DescribeMaintenanceWindowsResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindows.new
      end)
      service.add_operation(:describe_maintenance_windows_for_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeMaintenanceWindowsForTarget"
        operation.name = "DescribeMaintenanceWindowsForTarget"
        operation.input = DescribeMaintenanceWindowsForTargetRequest
        operation.output = DescribeMaintenanceWindowsForTargetResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMaintenanceWindowsForTarget.new
      end)
      service.add_operation(:describe_ops_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeOpsItems"
        operation.name = "DescribeOpsItems"
        operation.input = DescribeOpsItemsRequest
        operation.output = DescribeOpsItemsResponse
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOpsItems.new
      end)
      service.add_operation(:describe_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeParameters"
        operation.name = "DescribeParameters"
        operation.input = DescribeParametersRequest
        operation.output = DescribeParametersResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidFilterOption
        operation.errors << InvalidFilterValue
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeParameters.new
      end)
      service.add_operation(:describe_patch_baselines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribePatchBaselines"
        operation.name = "DescribePatchBaselines"
        operation.input = DescribePatchBaselinesRequest
        operation.output = DescribePatchBaselinesResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePatchBaselines.new
      end)
      service.add_operation(:describe_patch_group_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribePatchGroupState"
        operation.name = "DescribePatchGroupState"
        operation.input = DescribePatchGroupStateRequest
        operation.output = DescribePatchGroupStateResult
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
      end)
      service.add_operation(:describe_patch_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribePatchGroups"
        operation.name = "DescribePatchGroups"
        operation.input = DescribePatchGroupsRequest
        operation.output = DescribePatchGroupsResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePatchGroups.new
      end)
      service.add_operation(:describe_patch_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribePatchProperties"
        operation.name = "DescribePatchProperties"
        operation.input = DescribePatchPropertiesRequest
        operation.output = DescribePatchPropertiesResult
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePatchProperties.new
      end)
      service.add_operation(:describe_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DescribeSessions"
        operation.name = "DescribeSessions"
        operation.input = DescribeSessionsRequest
        operation.output = DescribeSessionsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSessions.new
      end)
      service.add_operation(:disassociate_ops_item_related_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#DisassociateOpsItemRelatedItem"
        operation.name = "DisassociateOpsItemRelatedItem"
        operation.input = DisassociateOpsItemRelatedItemRequest
        operation.output = DisassociateOpsItemRelatedItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemConflictException
        operation.errors << OpsItemInvalidParameterException
        operation.errors << OpsItemNotFoundException
        operation.errors << OpsItemRelatedItemAssociationNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetAccessToken"
        operation.name = "GetAccessToken"
        operation.input = GetAccessTokenRequest
        operation.output = GetAccessTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_automation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetAutomationExecution"
        operation.name = "GetAutomationExecution"
        operation.input = GetAutomationExecutionRequest
        operation.output = GetAutomationExecutionResult
        operation.errors << AutomationExecutionNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_calendar_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetCalendarState"
        operation.name = "GetCalendarState"
        operation.input = GetCalendarStateRequest
        operation.output = GetCalendarStateResponse
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentType
        operation.errors << UnsupportedCalendarException
        operation.traits = {}
      end)
      service.add_operation(:get_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetCloudConnector"
        operation.name = "GetCloudConnector"
        operation.input = GetCloudConnectorRequest
        operation.output = GetCloudConnectorResult
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_command_invocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetCommandInvocation"
        operation.name = "GetCommandInvocation"
        operation.input = GetCommandInvocationRequest
        operation.output = GetCommandInvocationResult
        operation.errors << InternalServerError
        operation.errors << InvalidCommandId
        operation.errors << InvalidInstanceId
        operation.errors << InvalidPluginName
        operation.errors << InvocationDoesNotExist
        operation.traits = {}
      end)
      service.add_operation(:get_connection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetConnectionStatus"
        operation.name = "GetConnectionStatus"
        operation.input = GetConnectionStatusRequest
        operation.output = GetConnectionStatusResponse
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_default_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetDefaultPatchBaseline"
        operation.name = "GetDefaultPatchBaseline"
        operation.input = GetDefaultPatchBaselineRequest
        operation.output = GetDefaultPatchBaselineResult
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_deployable_patch_snapshot_for_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetDeployablePatchSnapshotForInstance"
        operation.name = "GetDeployablePatchSnapshotForInstance"
        operation.input = GetDeployablePatchSnapshotForInstanceRequest
        operation.output = GetDeployablePatchSnapshotForInstanceResult
        operation.errors << InternalServerError
        operation.errors << UnsupportedFeatureRequiredException
        operation.errors << UnsupportedOperatingSystem
        operation.traits = {}
      end)
      service.add_operation(:get_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetDocument"
        operation.name = "GetDocument"
        operation.input = GetDocumentRequest
        operation.output = GetDocumentResult
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.traits = {}
      end)
      service.add_operation(:get_execution_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetExecutionPreview"
        operation.name = "GetExecutionPreview"
        operation.input = GetExecutionPreviewRequest
        operation.output = GetExecutionPreviewResponse
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_inventory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetInventory"
        operation.name = "GetInventory"
        operation.input = GetInventoryRequest
        operation.output = GetInventoryResult
        operation.errors << InternalServerError
        operation.errors << InvalidAggregatorException
        operation.errors << InvalidFilter
        operation.errors << InvalidInventoryGroupException
        operation.errors << InvalidNextToken
        operation.errors << InvalidResultAttributeException
        operation.errors << InvalidTypeNameException
        operation.traits = {}
        operation[:paginator] = Paginators::GetInventory.new
      end)
      service.add_operation(:get_inventory_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetInventorySchema"
        operation.name = "GetInventorySchema"
        operation.input = GetInventorySchemaRequest
        operation.output = GetInventorySchemaResult
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.errors << InvalidTypeNameException
        operation.traits = {}
        operation[:paginator] = Paginators::GetInventorySchema.new
      end)
      service.add_operation(:get_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetMaintenanceWindow"
        operation.name = "GetMaintenanceWindow"
        operation.input = GetMaintenanceWindowRequest
        operation.output = GetMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_maintenance_window_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetMaintenanceWindowExecution"
        operation.name = "GetMaintenanceWindowExecution"
        operation.input = GetMaintenanceWindowExecutionRequest
        operation.output = GetMaintenanceWindowExecutionResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_maintenance_window_execution_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetMaintenanceWindowExecutionTask"
        operation.name = "GetMaintenanceWindowExecutionTask"
        operation.input = GetMaintenanceWindowExecutionTaskRequest
        operation.output = GetMaintenanceWindowExecutionTaskResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_maintenance_window_execution_task_invocation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetMaintenanceWindowExecutionTaskInvocation"
        operation.name = "GetMaintenanceWindowExecutionTaskInvocation"
        operation.input = GetMaintenanceWindowExecutionTaskInvocationRequest
        operation.output = GetMaintenanceWindowExecutionTaskInvocationResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_maintenance_window_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetMaintenanceWindowTask"
        operation.name = "GetMaintenanceWindowTask"
        operation.input = GetMaintenanceWindowTaskRequest
        operation.output = GetMaintenanceWindowTaskResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_ops_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetOpsItem"
        operation.name = "GetOpsItem"
        operation.input = GetOpsItemRequest
        operation.output = GetOpsItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemAccessDeniedException
        operation.errors << OpsItemNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_ops_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetOpsMetadata"
        operation.name = "GetOpsMetadata"
        operation.input = GetOpsMetadataRequest
        operation.output = GetOpsMetadataResult
        operation.errors << InternalServerError
        operation.errors << OpsMetadataInvalidArgumentException
        operation.errors << OpsMetadataNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_ops_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetOpsSummary"
        operation.name = "GetOpsSummary"
        operation.input = GetOpsSummaryRequest
        operation.output = GetOpsSummaryResult
        operation.errors << InternalServerError
        operation.errors << InvalidAggregatorException
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.errors << InvalidTypeNameException
        operation.errors << ResourceDataSyncNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::GetOpsSummary.new
      end)
      service.add_operation(:get_parameter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetParameter"
        operation.name = "GetParameter"
        operation.input = GetParameterRequest
        operation.output = GetParameterResult
        operation.errors << InternalServerError
        operation.errors << InvalidKeyId
        operation.errors << ParameterNotFound
        operation.errors << ParameterVersionNotFound
        operation.traits = {}
      end)
      service.add_operation(:get_parameter_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetParameterHistory"
        operation.name = "GetParameterHistory"
        operation.input = GetParameterHistoryRequest
        operation.output = GetParameterHistoryResult
        operation.errors << InternalServerError
        operation.errors << InvalidKeyId
        operation.errors << InvalidNextToken
        operation.errors << ParameterNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::GetParameterHistory.new
      end)
      service.add_operation(:get_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetParameters"
        operation.name = "GetParameters"
        operation.input = GetParametersRequest
        operation.output = GetParametersResult
        operation.errors << InternalServerError
        operation.errors << InvalidKeyId
        operation.traits = {}
      end)
      service.add_operation(:get_parameters_by_path, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetParametersByPath"
        operation.name = "GetParametersByPath"
        operation.input = GetParametersByPathRequest
        operation.output = GetParametersByPathResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidFilterOption
        operation.errors << InvalidFilterValue
        operation.errors << InvalidKeyId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::GetParametersByPath.new
      end)
      service.add_operation(:get_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetPatchBaseline"
        operation.name = "GetPatchBaseline"
        operation.input = GetPatchBaselineRequest
        operation.output = GetPatchBaselineResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.traits = {}
      end)
      service.add_operation(:get_patch_baseline_for_patch_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetPatchBaselineForPatchGroup"
        operation.name = "GetPatchBaselineForPatchGroup"
        operation.input = GetPatchBaselineForPatchGroupRequest
        operation.output = GetPatchBaselineForPatchGroupResult
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetResourcePolicies"
        operation.name = "GetResourcePolicies"
        operation.input = GetResourcePoliciesRequest
        operation.output = GetResourcePoliciesResponse
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyInvalidParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::GetResourcePolicies.new
      end)
      service.add_operation(:get_service_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#GetServiceSetting"
        operation.name = "GetServiceSetting"
        operation.input = GetServiceSettingRequest
        operation.output = GetServiceSettingResult
        operation.errors << InternalServerError
        operation.errors << ServiceSettingNotFound
        operation.traits = {}
      end)
      service.add_operation(:label_parameter_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#LabelParameterVersion"
        operation.name = "LabelParameterVersion"
        operation.input = LabelParameterVersionRequest
        operation.output = LabelParameterVersionResult
        operation.errors << InternalServerError
        operation.errors << ParameterNotFound
        operation.errors << ParameterVersionLabelLimitExceeded
        operation.errors << ParameterVersionNotFound
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:list_association_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListAssociationVersions"
        operation.name = "ListAssociationVersions"
        operation.input = ListAssociationVersionsRequest
        operation.output = ListAssociationVersionsResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssociationVersions.new
      end)
      service.add_operation(:list_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListAssociations"
        operation.name = "ListAssociations"
        operation.input = ListAssociationsRequest
        operation.output = ListAssociationsResult
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssociations.new
      end)
      service.add_operation(:list_cloud_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListCloudConnectors"
        operation.name = "ListCloudConnectors"
        operation.input = ListCloudConnectorsRequest
        operation.output = ListCloudConnectorsResult
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCloudConnectors.new
      end)
      service.add_operation(:list_command_invocations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListCommandInvocations"
        operation.name = "ListCommandInvocations"
        operation.input = ListCommandInvocationsRequest
        operation.output = ListCommandInvocationsResult
        operation.errors << InternalServerError
        operation.errors << InvalidCommandId
        operation.errors << InvalidFilterKey
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListCommandInvocations.new
      end)
      service.add_operation(:list_commands, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListCommands"
        operation.name = "ListCommands"
        operation.input = ListCommandsRequest
        operation.output = ListCommandsResult
        operation.errors << InternalServerError
        operation.errors << InvalidCommandId
        operation.errors << InvalidFilterKey
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListCommands.new
      end)
      service.add_operation(:list_compliance_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListComplianceItems"
        operation.name = "ListComplianceItems"
        operation.input = ListComplianceItemsRequest
        operation.output = ListComplianceItemsResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.errors << InvalidResourceId
        operation.errors << InvalidResourceType
        operation.traits = {}
        operation[:paginator] = Paginators::ListComplianceItems.new
      end)
      service.add_operation(:list_compliance_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListComplianceSummaries"
        operation.name = "ListComplianceSummaries"
        operation.input = ListComplianceSummariesRequest
        operation.output = ListComplianceSummariesResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListComplianceSummaries.new
      end)
      service.add_operation(:list_document_metadata_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListDocumentMetadataHistory"
        operation.name = "ListDocumentMetadataHistory"
        operation.input = ListDocumentMetadataHistoryRequest
        operation.output = ListDocumentMetadataHistoryResponse
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.errors << InvalidNextToken
        operation.traits = {}
      end)
      service.add_operation(:list_document_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListDocumentVersions"
        operation.name = "ListDocumentVersions"
        operation.input = ListDocumentVersionsRequest
        operation.output = ListDocumentVersionsResult
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListDocumentVersions.new
      end)
      service.add_operation(:list_documents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListDocuments"
        operation.name = "ListDocuments"
        operation.input = ListDocumentsRequest
        operation.output = ListDocumentsResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilterKey
        operation.errors << InvalidNextToken
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListDocumentsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListDocuments.new
      end)
      service.add_operation(:list_inventory_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListInventoryEntries"
        operation.name = "ListInventoryEntries"
        operation.input = ListInventoryEntriesRequest
        operation.output = ListInventoryEntriesResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNextToken
        operation.errors << InvalidTypeNameException
        operation.traits = {}
      end)
      service.add_operation(:list_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListNodes"
        operation.name = "ListNodes"
        operation.input = ListNodesRequest
        operation.output = ListNodesResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.errors << ResourceDataSyncNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_nodes_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListNodesSummary"
        operation.name = "ListNodesSummary"
        operation.input = ListNodesSummaryRequest
        operation.output = ListNodesSummaryResult
        operation.errors << InternalServerError
        operation.errors << InvalidAggregatorException
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.errors << ResourceDataSyncNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListNodesSummary.new
      end)
      service.add_operation(:list_ops_item_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListOpsItemEvents"
        operation.name = "ListOpsItemEvents"
        operation.input = ListOpsItemEventsRequest
        operation.output = ListOpsItemEventsResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemInvalidParameterException
        operation.errors << OpsItemLimitExceededException
        operation.errors << OpsItemNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOpsItemEvents.new
      end)
      service.add_operation(:list_ops_item_related_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListOpsItemRelatedItems"
        operation.name = "ListOpsItemRelatedItems"
        operation.input = ListOpsItemRelatedItemsRequest
        operation.output = ListOpsItemRelatedItemsResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemInvalidParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOpsItemRelatedItems.new
      end)
      service.add_operation(:list_ops_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListOpsMetadata"
        operation.name = "ListOpsMetadata"
        operation.input = ListOpsMetadataRequest
        operation.output = ListOpsMetadataResult
        operation.errors << InternalServerError
        operation.errors << OpsMetadataInvalidArgumentException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOpsMetadata.new
      end)
      service.add_operation(:list_resource_compliance_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListResourceComplianceSummaries"
        operation.name = "ListResourceComplianceSummaries"
        operation.input = ListResourceComplianceSummariesRequest
        operation.output = ListResourceComplianceSummariesResult
        operation.errors << InternalServerError
        operation.errors << InvalidFilter
        operation.errors << InvalidNextToken
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceComplianceSummaries.new
      end)
      service.add_operation(:list_resource_data_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListResourceDataSync"
        operation.name = "ListResourceDataSync"
        operation.input = ListResourceDataSyncRequest
        operation.output = ListResourceDataSyncResult
        operation.errors << InternalServerError
        operation.errors << InvalidNextToken
        operation.errors << ResourceDataSyncInvalidConfigurationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceDataSync.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.errors << InvalidResourceType
        operation.traits = {}
      end)
      service.add_operation(:modify_document_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ModifyDocumentPermission"
        operation.name = "ModifyDocumentPermission"
        operation.input = ModifyDocumentPermissionRequest
        operation.output = ModifyDocumentPermissionResponse
        operation.errors << DocumentLimitExceeded
        operation.errors << DocumentPermissionLimit
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidPermissionType
        operation.traits = {}
      end)
      service.add_operation(:put_compliance_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#PutComplianceItems"
        operation.name = "PutComplianceItems"
        operation.input = PutComplianceItemsRequest
        operation.output = PutComplianceItemsResult
        operation.errors << ComplianceTypeCountLimitExceededException
        operation.errors << InternalServerError
        operation.errors << InvalidItemContentException
        operation.errors << InvalidResourceId
        operation.errors << InvalidResourceType
        operation.errors << ItemSizeLimitExceededException
        operation.errors << TotalSizeLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:put_inventory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#PutInventory"
        operation.name = "PutInventory"
        operation.input = PutInventoryRequest
        operation.output = PutInventoryResult
        operation.errors << CustomSchemaCountLimitExceededException
        operation.errors << InternalServerError
        operation.errors << InvalidInstanceId
        operation.errors << InvalidInventoryItemContextException
        operation.errors << InvalidItemContentException
        operation.errors << InvalidTypeNameException
        operation.errors << ItemContentMismatchException
        operation.errors << ItemSizeLimitExceededException
        operation.errors << SubTypeCountLimitExceededException
        operation.errors << TotalSizeLimitExceededException
        operation.errors << UnsupportedInventoryItemContextException
        operation.errors << UnsupportedInventorySchemaVersionException
        operation.traits = {}
      end)
      service.add_operation(:put_parameter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#PutParameter"
        operation.name = "PutParameter"
        operation.input = PutParameterRequest
        operation.output = PutParameterResult
        operation.errors << HierarchyLevelLimitExceededException
        operation.errors << HierarchyTypeMismatchException
        operation.errors << IncompatiblePolicyException
        operation.errors << InternalServerError
        operation.errors << InvalidAllowedPatternException
        operation.errors << InvalidKeyId
        operation.errors << InvalidPolicyAttributeException
        operation.errors << InvalidPolicyTypeException
        operation.errors << ParameterAlreadyExists
        operation.errors << ParameterLimitExceeded
        operation.errors << ParameterMaxVersionLimitExceeded
        operation.errors << ParameterPatternMismatchException
        operation.errors << PoliciesLimitExceededException
        operation.errors << TooManyUpdates
        operation.errors << UnsupportedParameterType
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InternalServerError
        operation.errors << MalformedResourcePolicyDocumentException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyConflictException
        operation.errors << ResourcePolicyInvalidParameterException
        operation.errors << ResourcePolicyLimitExceededException
        operation.errors << ResourcePolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:register_default_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#RegisterDefaultPatchBaseline"
        operation.name = "RegisterDefaultPatchBaseline"
        operation.input = RegisterDefaultPatchBaselineRequest
        operation.output = RegisterDefaultPatchBaselineResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.traits = {}
      end)
      service.add_operation(:register_patch_baseline_for_patch_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#RegisterPatchBaselineForPatchGroup"
        operation.name = "RegisterPatchBaselineForPatchGroup"
        operation.input = RegisterPatchBaselineForPatchGroupRequest
        operation.output = RegisterPatchBaselineForPatchGroupResult
        operation.errors << AlreadyExistsException
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:register_target_with_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#RegisterTargetWithMaintenanceWindow"
        operation.name = "RegisterTargetWithMaintenanceWindow"
        operation.input = RegisterTargetWithMaintenanceWindowRequest
        operation.output = RegisterTargetWithMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:register_task_with_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#RegisterTaskWithMaintenanceWindow"
        operation.name = "RegisterTaskWithMaintenanceWindow"
        operation.input = RegisterTaskWithMaintenanceWindowRequest
        operation.output = RegisterTaskWithMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << FeatureNotAvailableException
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceRequest
        operation.output = RemoveTagsFromResourceResult
        operation.errors << InternalServerError
        operation.errors << InvalidResourceId
        operation.errors << InvalidResourceType
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:reset_service_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ResetServiceSetting"
        operation.name = "ResetServiceSetting"
        operation.input = ResetServiceSettingRequest
        operation.output = ResetServiceSettingResult
        operation.errors << InternalServerError
        operation.errors << ServiceSettingNotFound
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:resume_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ResumeSession"
        operation.name = "ResumeSession"
        operation.input = ResumeSessionRequest
        operation.output = ResumeSessionResponse
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:send_automation_signal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#SendAutomationSignal"
        operation.name = "SendAutomationSignal"
        operation.input = SendAutomationSignalRequest
        operation.output = SendAutomationSignalResult
        operation.errors << AutomationExecutionNotFoundException
        operation.errors << AutomationStepNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidAutomationSignalException
        operation.traits = {}
      end)
      service.add_operation(:send_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#SendCommand"
        operation.name = "SendCommand"
        operation.input = SendCommandRequest
        operation.output = SendCommandResult
        operation.errors << DuplicateInstanceId
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.errors << InvalidInstanceId
        operation.errors << InvalidNotificationConfig
        operation.errors << InvalidOutputFolder
        operation.errors << InvalidParameters
        operation.errors << InvalidRole
        operation.errors << MaxDocumentSizeExceeded
        operation.errors << UnsupportedPlatformType
        operation.traits = {}
      end)
      service.add_operation(:start_access_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartAccessRequest"
        operation.name = "StartAccessRequest"
        operation.input = StartAccessRequestRequest
        operation.output = StartAccessRequestResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_associations_once, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartAssociationsOnce"
        operation.name = "StartAssociationsOnce"
        operation.input = StartAssociationsOnceRequest
        operation.output = StartAssociationsOnceResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InvalidAssociation
        operation.traits = {}
      end)
      service.add_operation(:start_automation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartAutomationExecution"
        operation.name = "StartAutomationExecution"
        operation.input = StartAutomationExecutionRequest
        operation.output = StartAutomationExecutionResult
        operation.errors << AutomationDefinitionNotFoundException
        operation.errors << AutomationDefinitionVersionNotFoundException
        operation.errors << AutomationExecutionLimitExceededException
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << InvalidAutomationExecutionParametersException
        operation.errors << InvalidTarget
        operation.traits = {}
      end)
      service.add_operation(:start_change_request_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartChangeRequestExecution"
        operation.name = "StartChangeRequestExecution"
        operation.input = StartChangeRequestExecutionRequest
        operation.output = StartChangeRequestExecutionResult
        operation.errors << AutomationDefinitionNotApprovedException
        operation.errors << AutomationDefinitionNotFoundException
        operation.errors << AutomationDefinitionVersionNotFoundException
        operation.errors << AutomationExecutionLimitExceededException
        operation.errors << IdempotentParameterMismatch
        operation.errors << InternalServerError
        operation.errors << InvalidAutomationExecutionParametersException
        operation.errors << NoLongerSupportedException
        operation.traits = {}
      end)
      service.add_operation(:start_execution_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartExecutionPreview"
        operation.name = "StartExecutionPreview"
        operation.input = StartExecutionPreviewRequest
        operation.output = StartExecutionPreviewResponse
        operation.errors << InternalServerError
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StartSession"
        operation.name = "StartSession"
        operation.input = StartSessionRequest
        operation.output = StartSessionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << TargetNotConnected
        operation.traits = {}
      end)
      service.add_operation(:stop_automation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#StopAutomationExecution"
        operation.name = "StopAutomationExecution"
        operation.input = StopAutomationExecutionRequest
        operation.output = StopAutomationExecutionResult
        operation.errors << AutomationExecutionNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidAutomationStatusUpdateException
        operation.traits = {}
      end)
      service.add_operation(:terminate_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#TerminateSession"
        operation.name = "TerminateSession"
        operation.input = TerminateSessionRequest
        operation.output = TerminateSessionResponse
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:unlabel_parameter_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UnlabelParameterVersion"
        operation.name = "UnlabelParameterVersion"
        operation.input = UnlabelParameterVersionRequest
        operation.output = UnlabelParameterVersionResult
        operation.errors << InternalServerError
        operation.errors << ParameterNotFound
        operation.errors << ParameterVersionNotFound
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:update_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateAssociation"
        operation.name = "UpdateAssociation"
        operation.input = UpdateAssociationRequest
        operation.output = UpdateAssociationResult
        operation.errors << AssociationDoesNotExist
        operation.errors << AssociationVersionLimitExceeded
        operation.errors << InternalServerError
        operation.errors << InvalidAssociationVersion
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentVersion
        operation.errors << InvalidOutputLocation
        operation.errors << InvalidParameters
        operation.errors << InvalidSchedule
        operation.errors << InvalidTarget
        operation.errors << InvalidTargetMaps
        operation.errors << InvalidUpdate
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:update_association_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateAssociationStatus"
        operation.name = "UpdateAssociationStatus"
        operation.input = UpdateAssociationStatusRequest
        operation.output = UpdateAssociationStatusResult
        operation.errors << AssociationDoesNotExist
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidInstanceId
        operation.errors << StatusUnchanged
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:update_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateCloudConnector"
        operation.name = "UpdateCloudConnector"
        operation.input = UpdateCloudConnectorRequest
        operation.output = UpdateCloudConnectorResult
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateDocument"
        operation.name = "UpdateDocument"
        operation.input = UpdateDocumentRequest
        operation.output = UpdateDocumentResult
        operation.errors << DocumentVersionLimitExceeded
        operation.errors << DuplicateDocumentContent
        operation.errors << DuplicateDocumentVersionName
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentContent
        operation.errors << InvalidDocumentOperation
        operation.errors << InvalidDocumentSchemaVersion
        operation.errors << InvalidDocumentVersion
        operation.errors << MaxDocumentSizeExceeded
        operation.traits = {}
      end)
      service.add_operation(:update_document_default_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateDocumentDefaultVersion"
        operation.name = "UpdateDocumentDefaultVersion"
        operation.input = UpdateDocumentDefaultVersionRequest
        operation.output = UpdateDocumentDefaultVersionResult
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentSchemaVersion
        operation.errors << InvalidDocumentVersion
        operation.traits = {}
      end)
      service.add_operation(:update_document_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateDocumentMetadata"
        operation.name = "UpdateDocumentMetadata"
        operation.input = UpdateDocumentMetadataRequest
        operation.output = UpdateDocumentMetadataResponse
        operation.errors << InternalServerError
        operation.errors << InvalidDocument
        operation.errors << InvalidDocumentOperation
        operation.errors << InvalidDocumentVersion
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:update_maintenance_window, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateMaintenanceWindow"
        operation.name = "UpdateMaintenanceWindow"
        operation.input = UpdateMaintenanceWindowRequest
        operation.output = UpdateMaintenanceWindowResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_maintenance_window_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateMaintenanceWindowTarget"
        operation.name = "UpdateMaintenanceWindowTarget"
        operation.input = UpdateMaintenanceWindowTargetRequest
        operation.output = UpdateMaintenanceWindowTargetResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_maintenance_window_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateMaintenanceWindowTask"
        operation.name = "UpdateMaintenanceWindowTask"
        operation.input = UpdateMaintenanceWindowTaskRequest
        operation.output = UpdateMaintenanceWindowTaskResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_managed_instance_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateManagedInstanceRole"
        operation.name = "UpdateManagedInstanceRole"
        operation.input = UpdateManagedInstanceRoleRequest
        operation.output = UpdateManagedInstanceRoleResult
        operation.errors << InternalServerError
        operation.errors << InvalidInstanceId
        operation.traits = {}
      end)
      service.add_operation(:update_ops_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateOpsItem"
        operation.name = "UpdateOpsItem"
        operation.input = UpdateOpsItemRequest
        operation.output = UpdateOpsItemResponse
        operation.errors << InternalServerError
        operation.errors << OpsItemAccessDeniedException
        operation.errors << OpsItemAlreadyExistsException
        operation.errors << OpsItemConflictException
        operation.errors << OpsItemInvalidParameterException
        operation.errors << OpsItemLimitExceededException
        operation.errors << OpsItemNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_ops_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateOpsMetadata"
        operation.name = "UpdateOpsMetadata"
        operation.input = UpdateOpsMetadataRequest
        operation.output = UpdateOpsMetadataResult
        operation.errors << InternalServerError
        operation.errors << OpsMetadataInvalidArgumentException
        operation.errors << OpsMetadataKeyLimitExceededException
        operation.errors << OpsMetadataNotFoundException
        operation.errors << OpsMetadataTooManyUpdatesException
        operation.traits = {}
      end)
      service.add_operation(:update_patch_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdatePatchBaseline"
        operation.name = "UpdatePatchBaseline"
        operation.input = UpdatePatchBaselineRequest
        operation.output = UpdatePatchBaselineResult
        operation.errors << DoesNotExistException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_resource_data_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateResourceDataSync"
        operation.name = "UpdateResourceDataSync"
        operation.input = UpdateResourceDataSyncRequest
        operation.output = UpdateResourceDataSyncResult
        operation.errors << InternalServerError
        operation.errors << ResourceDataSyncConflictException
        operation.errors << ResourceDataSyncInvalidConfigurationException
        operation.errors << ResourceDataSyncNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_service_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#UpdateServiceSetting"
        operation.name = "UpdateServiceSetting"
        operation.input = UpdateServiceSettingRequest
        operation.output = UpdateServiceSettingResult
        operation.errors << InternalServerError
        operation.errors << ServiceSettingNotFound
        operation.errors << TooManyUpdates
        operation.traits = {}
      end)
      service.add_operation(:validate_cloud_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssm#ValidateCloudConnector"
        operation.name = "ValidateCloudConnector"
        operation.input = ValidateCloudConnectorRequest
        operation.output = ValidateCloudConnectorResult
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ValidateCloudConnector.new
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
