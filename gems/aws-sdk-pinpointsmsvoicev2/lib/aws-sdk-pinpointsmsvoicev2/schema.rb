# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoiceV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccessDeniedExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccessDeniedExceptionReason', name: 'AccessDeniedExceptionReason', traits: {"smithy.api#enum" => [{"value" => "INSUFFICIENT_ACCOUNT_REPUTATION", "name" => "INSUFFICIENT_ACCOUNT_REPUTATION"}, {"value" => "ACCOUNT_DISABLED", "name" => "ACCOUNT_DISABLED"}]})
    AccountAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountAttribute', name: 'AccountAttribute')
    AccountAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountAttributeList', name: 'AccountAttributeList')
    AccountAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountAttributeName', name: 'AccountAttributeName', traits: {"smithy.api#enum" => [{"value" => "ACCOUNT_TIER", "name" => "ACCOUNT_TIER"}, {"value" => "DEFAULT_PROTECT_CONFIGURATION_ID", "name" => "DEFAULT_PROTECT_CONFIGURATION_ID"}]})
    AccountLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountLimit', name: 'AccountLimit')
    AccountLimitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountLimitList', name: 'AccountLimitList')
    AccountLimitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AccountLimitName', name: 'AccountLimitName', traits: {"smithy.api#enum" => [{"value" => "PHONE_NUMBERS", "name" => "PHONE_NUMBERS"}, {"value" => "POOLS", "name" => "POOLS"}, {"value" => "CONFIGURATION_SETS", "name" => "CONFIGURATION_SETS"}, {"value" => "OPT_OUT_LISTS", "name" => "OPT_OUT_LISTS"}, {"value" => "SENDER_IDS", "name" => "SENDER_IDS"}, {"value" => "REGISTRATIONS", "name" => "REGISTRATIONS"}, {"value" => "REGISTRATION_ATTACHMENTS", "name" => "REGISTRATION_ATTACHMENTS"}, {"value" => "VERIFIED_DESTINATION_NUMBERS", "name" => "VERIFIED_DESTINATION_NUMBERS"}]})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 20, "max" => 256}, "smithy.api#pattern" => "^arn:[A-Za-z0-9_:/-]+$"})
    AssociateOriginationIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentityRequest', name: 'AssociateOriginationIdentityRequest')
    AssociateOriginationIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentityResult', name: 'AssociateOriginationIdentityResult')
    AssociateProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfigurationRequest', name: 'AssociateProtectConfigurationRequest')
    AssociateProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfigurationResult', name: 'AssociateProtectConfigurationResult')
    AttachmentBody = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AttachmentBody', name: 'AttachmentBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 1572864}})
    AttachmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AttachmentStatus', name: 'AttachmentStatus', traits: {"smithy.api#enum" => [{"value" => "UPLOAD_IN_PROGRESS", "name" => "UPLOAD_IN_PROGRESS"}, {"value" => "UPLOAD_COMPLETE", "name" => "UPLOAD_COMPLETE"}, {"value" => "UPLOAD_FAILED", "name" => "UPLOAD_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AttachmentUploadErrorReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AttachmentUploadErrorReason', name: 'AttachmentUploadErrorReason', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}]})
    AttachmentUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#AttachmentUrl', name: 'AttachmentUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    CloudWatchLogsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CloudWatchLogsDestination', name: 'CloudWatchLogsDestination')
    ConfigurationSetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilter', name: 'ConfigurationSetFilter')
    ConfigurationSetFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilterList', name: 'ConfigurationSetFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    ConfigurationSetFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilterName', name: 'ConfigurationSetFilterName', traits: {"smithy.api#enum" => [{"value" => "event-destination-name", "name" => "EVENT_DESTINATION_NAME"}, {"value" => "matching-event-types", "name" => "MATCHING_EVENT_TYPES"}, {"value" => "default-message-type", "name" => "DEFAULT_MESSAGE_TYPE"}, {"value" => "default-sender-id", "name" => "DEFAULT_SENDER_ID"}, {"value" => "default-message-feedback-enabled", "name" => "DEFAULT_MESSAGE_FEEDBACK_ENABLED"}, {"value" => "protect-configuration-id", "name" => "PROTECT_CONFIGURATION_ID"}]})
    ConfigurationSetInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetInformation', name: 'ConfigurationSetInformation')
    ConfigurationSetInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetInformationList', name: 'ConfigurationSetInformationList')
    ConfigurationSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetName', name: 'ConfigurationSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConfigurationSetNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetNameList', name: 'ConfigurationSetNameList', traits: {"smithy.api#length" => {"max" => 5}})
    ConfigurationSetNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConfigurationSetNameOrArn', name: 'ConfigurationSetNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    ConflictExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ConflictExceptionReason', name: 'ConflictExceptionReason', traits: {"smithy.api#enum" => [{"value" => "CREATE_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "CREATE_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "DELETION_PROTECTION_ENABLED", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "DESTINATION_PHONE_NUMBER_NOT_VERIFIED", "name" => "DESTINATION_PHONE_NUMBER_NOT_VERIFIED"}, {"value" => "DESTINATION_PHONE_NUMBER_OPTED_OUT", "name" => "DESTINATION_PHONE_NUMBER_OPTED_OUT"}, {"value" => "DISASSOCIATE_REGISTRATION_NOT_ALLOWED", "name" => "DISASSOCIATE_REGISTRATION_NOT_ALLOWED"}, {"value" => "DISCARD_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "DISCARD_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED", "name" => "EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED"}, {"value" => "EVENT_DESTINATION_MISMATCH", "name" => "EVENT_DESTINATION_MISMATCH"}, {"value" => "KEYWORD_MISMATCH", "name" => "KEYWORD_MISMATCH"}, {"value" => "LAST_PHONE_NUMBER", "name" => "LAST_PHONE_NUMBER"}, {"value" => "NUMBER_CAPABILITIES_MISMATCH", "name" => "NUMBER_CAPABILITIES_MISMATCH"}, {"value" => "MESSAGE_TYPE_MISMATCH", "name" => "MESSAGE_TYPE_MISMATCH"}, {"value" => "NO_ORIGINATION_IDENTITIES_FOUND", "name" => "NO_ORIGINATION_IDENTITIES_FOUND"}, {"value" => "OPT_OUT_LIST_MISMATCH", "name" => "OPT_OUT_LIST_MISMATCH"}, {"value" => "PHONE_NUMBER_ASSOCIATED_TO_POOL", "name" => "PHONE_NUMBER_ASSOCIATED_TO_POOL"}, {"value" => "PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION", "name" => "PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION"}, {"value" => "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL", "name" => "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL"}, {"value" => "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION", "name" => "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION"}, {"value" => "REGISTRATION_ALREADY_SUBMITTED", "name" => "REGISTRATION_ALREADY_SUBMITTED"}, {"value" => "REGISTRATION_NOT_COMPLETE", "name" => "REGISTRATION_NOT_COMPLETE"}, {"value" => "SENDER_ID_ASSOCIATED_TO_POOL", "name" => "SENDER_ID_ASSOCIATED_TO_POOL"}, {"value" => "RESOURCE_ALREADY_EXISTS", "name" => "RESOURCE_ALREADY_EXISTS"}, {"value" => "RESOURCE_DELETION_NOT_ALLOWED", "name" => "RESOURCE_DELETION_NOT_ALLOWED"}, {"value" => "RESOURCE_MODIFICATION_NOT_ALLOWED", "name" => "RESOURCE_MODIFICATION_NOT_ALLOWED"}, {"value" => "RESOURCE_NOT_ACTIVE", "name" => "RESOURCE_NOT_ACTIVE"}, {"value" => "RESOURCE_NOT_EMPTY", "name" => "RESOURCE_NOT_EMPTY"}, {"value" => "SELF_MANAGED_OPT_OUTS_MISMATCH", "name" => "SELF_MANAGED_OPT_OUTS_MISMATCH"}, {"value" => "SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "TWO_WAY_CONFIG_MISMATCH", "name" => "TWO_WAY_CONFIG_MISMATCH"}, {"value" => "VERIFICATION_CODE_EXPIRED", "name" => "VERIFICATION_CODE_EXPIRED"}, {"value" => "VERIFICATION_ALREADY_COMPLETE", "name" => "VERIFICATION_ALREADY_COMPLETE"}, {"value" => "PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT", "name" => "PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT"}, {"value" => "PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET", "name" => "PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET"}, {"value" => "PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET", "name" => "PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET"}, {"value" => "DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION", "name" => "DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION"}, {"value" => "DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE", "name" => "DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE"}]})
    ContextKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ContextKey', name: 'ContextKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S+$"})
    ContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ContextMap', name: 'ContextMap', traits: {"smithy.api#length" => {"max" => 5}})
    ContextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ContextValue', name: 'ContextValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => "^(?!\\s)^[\\s\\S]+(?<!\\s)$"})
    CreateConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSetRequest', name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSetResult', name: 'CreateConfigurationSetResult')
    CreateEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateEventDestinationRequest', name: 'CreateEventDestinationRequest')
    CreateEventDestinationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateEventDestinationResult', name: 'CreateEventDestinationResult')
    CreateOptOutListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateOptOutListRequest', name: 'CreateOptOutListRequest')
    CreateOptOutListResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateOptOutListResult', name: 'CreateOptOutListResult')
    CreatePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreatePoolRequest', name: 'CreatePoolRequest')
    CreatePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreatePoolResult', name: 'CreatePoolResult')
    CreateProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateProtectConfigurationRequest', name: 'CreateProtectConfigurationRequest')
    CreateProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateProtectConfigurationResult', name: 'CreateProtectConfigurationResult')
    CreateRegistrationAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociationRequest', name: 'CreateRegistrationAssociationRequest')
    CreateRegistrationAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociationResult', name: 'CreateRegistrationAssociationResult')
    CreateRegistrationAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachmentRequest', name: 'CreateRegistrationAttachmentRequest')
    CreateRegistrationAttachmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachmentResult', name: 'CreateRegistrationAttachmentResult')
    CreateRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationRequest', name: 'CreateRegistrationRequest')
    CreateRegistrationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationResult', name: 'CreateRegistrationResult')
    CreateRegistrationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersionRequest', name: 'CreateRegistrationVersionRequest')
    CreateRegistrationVersionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersionResult', name: 'CreateRegistrationVersionResult')
    CreateVerifiedDestinationNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumberRequest', name: 'CreateVerifiedDestinationNumberRequest')
    CreateVerifiedDestinationNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumberResult', name: 'CreateVerifiedDestinationNumberResult')
    DeleteAccountDefaultProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfigurationRequest', name: 'DeleteAccountDefaultProtectConfigurationRequest')
    DeleteAccountDefaultProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfigurationResult', name: 'DeleteAccountDefaultProtectConfigurationResult')
    DeleteConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSetRequest', name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSetResult', name: 'DeleteConfigurationSetResult')
    DeleteDefaultMessageTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageTypeRequest', name: 'DeleteDefaultMessageTypeRequest')
    DeleteDefaultMessageTypeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageTypeResult', name: 'DeleteDefaultMessageTypeResult')
    DeleteDefaultSenderIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderIdRequest', name: 'DeleteDefaultSenderIdRequest')
    DeleteDefaultSenderIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderIdResult', name: 'DeleteDefaultSenderIdResult')
    DeleteEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteEventDestinationRequest', name: 'DeleteEventDestinationRequest')
    DeleteEventDestinationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteEventDestinationResult', name: 'DeleteEventDestinationResult')
    DeleteKeywordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteKeywordRequest', name: 'DeleteKeywordRequest')
    DeleteKeywordResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteKeywordResult', name: 'DeleteKeywordResult')
    DeleteMediaMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverrideRequest', name: 'DeleteMediaMessageSpendLimitOverrideRequest')
    DeleteMediaMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverrideResult', name: 'DeleteMediaMessageSpendLimitOverrideResult')
    DeleteOptOutListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteOptOutListRequest', name: 'DeleteOptOutListRequest')
    DeleteOptOutListResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteOptOutListResult', name: 'DeleteOptOutListResult')
    DeleteOptedOutNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumberRequest', name: 'DeleteOptedOutNumberRequest')
    DeleteOptedOutNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumberResult', name: 'DeleteOptedOutNumberResult')
    DeletePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeletePoolRequest', name: 'DeletePoolRequest')
    DeletePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeletePoolResult', name: 'DeletePoolResult')
    DeleteProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRequest', name: 'DeleteProtectConfigurationRequest')
    DeleteProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationResult', name: 'DeleteProtectConfigurationResult')
    DeleteProtectConfigurationRuleSetNumberOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverrideRequest', name: 'DeleteProtectConfigurationRuleSetNumberOverrideRequest')
    DeleteProtectConfigurationRuleSetNumberOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverrideResult', name: 'DeleteProtectConfigurationRuleSetNumberOverrideResult')
    DeleteRegistrationAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachmentRequest', name: 'DeleteRegistrationAttachmentRequest')
    DeleteRegistrationAttachmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachmentResult', name: 'DeleteRegistrationAttachmentResult')
    DeleteRegistrationFieldValueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValueRequest', name: 'DeleteRegistrationFieldValueRequest')
    DeleteRegistrationFieldValueResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValueResult', name: 'DeleteRegistrationFieldValueResult')
    DeleteRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationRequest', name: 'DeleteRegistrationRequest')
    DeleteRegistrationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationResult', name: 'DeleteRegistrationResult')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicyResult', name: 'DeleteResourcePolicyResult')
    DeleteTextMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverrideRequest', name: 'DeleteTextMessageSpendLimitOverrideRequest')
    DeleteTextMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverrideResult', name: 'DeleteTextMessageSpendLimitOverrideResult')
    DeleteVerifiedDestinationNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumberRequest', name: 'DeleteVerifiedDestinationNumberRequest')
    DeleteVerifiedDestinationNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumberResult', name: 'DeleteVerifiedDestinationNumberResult')
    DeleteVoiceMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverrideRequest', name: 'DeleteVoiceMessageSpendLimitOverrideRequest')
    DeleteVoiceMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverrideResult', name: 'DeleteVoiceMessageSpendLimitOverrideResult')
    DeliveryStreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DeliveryStreamArn', name: 'DeliveryStreamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    DescribeAccountAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributesRequest', name: 'DescribeAccountAttributesRequest')
    DescribeAccountAttributesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributesResult', name: 'DescribeAccountAttributesResult')
    DescribeAccountLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimitsRequest', name: 'DescribeAccountLimitsRequest')
    DescribeAccountLimitsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimitsResult', name: 'DescribeAccountLimitsResult')
    DescribeConfigurationSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSetsRequest', name: 'DescribeConfigurationSetsRequest')
    DescribeConfigurationSetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSetsResult', name: 'DescribeConfigurationSetsResult')
    DescribeKeywordsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeKeywordsRequest', name: 'DescribeKeywordsRequest')
    DescribeKeywordsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeKeywordsResult', name: 'DescribeKeywordsResult')
    DescribeOptOutListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeOptOutListsRequest', name: 'DescribeOptOutListsRequest')
    DescribeOptOutListsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeOptOutListsResult', name: 'DescribeOptOutListsResult')
    DescribeOptedOutNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbersRequest', name: 'DescribeOptedOutNumbersRequest')
    DescribeOptedOutNumbersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbersResult', name: 'DescribeOptedOutNumbersResult')
    DescribePhoneNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbersRequest', name: 'DescribePhoneNumbersRequest')
    DescribePhoneNumbersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbersResult', name: 'DescribePhoneNumbersResult')
    DescribePoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribePoolsRequest', name: 'DescribePoolsRequest')
    DescribePoolsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribePoolsResult', name: 'DescribePoolsResult')
    DescribeProtectConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurationsRequest', name: 'DescribeProtectConfigurationsRequest')
    DescribeProtectConfigurationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurationsResult', name: 'DescribeProtectConfigurationsResult')
    DescribeRegistrationAttachmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachmentsRequest', name: 'DescribeRegistrationAttachmentsRequest')
    DescribeRegistrationAttachmentsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachmentsResult', name: 'DescribeRegistrationAttachmentsResult')
    DescribeRegistrationFieldDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitionsRequest', name: 'DescribeRegistrationFieldDefinitionsRequest')
    DescribeRegistrationFieldDefinitionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitionsResult', name: 'DescribeRegistrationFieldDefinitionsResult')
    DescribeRegistrationFieldValuesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValuesRequest', name: 'DescribeRegistrationFieldValuesRequest')
    DescribeRegistrationFieldValuesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValuesResult', name: 'DescribeRegistrationFieldValuesResult')
    DescribeRegistrationSectionDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitionsRequest', name: 'DescribeRegistrationSectionDefinitionsRequest')
    DescribeRegistrationSectionDefinitionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitionsResult', name: 'DescribeRegistrationSectionDefinitionsResult')
    DescribeRegistrationTypeDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitionsRequest', name: 'DescribeRegistrationTypeDefinitionsRequest')
    DescribeRegistrationTypeDefinitionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitionsResult', name: 'DescribeRegistrationTypeDefinitionsResult')
    DescribeRegistrationVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersionsRequest', name: 'DescribeRegistrationVersionsRequest')
    DescribeRegistrationVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersionsResult', name: 'DescribeRegistrationVersionsResult')
    DescribeRegistrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationsRequest', name: 'DescribeRegistrationsRequest')
    DescribeRegistrationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationsResult', name: 'DescribeRegistrationsResult')
    DescribeSenderIdsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeSenderIdsRequest', name: 'DescribeSenderIdsRequest')
    DescribeSenderIdsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeSenderIdsResult', name: 'DescribeSenderIdsResult')
    DescribeSpendLimitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimitsRequest', name: 'DescribeSpendLimitsRequest')
    DescribeSpendLimitsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimitsResult', name: 'DescribeSpendLimitsResult')
    DescribeVerifiedDestinationNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbersRequest', name: 'DescribeVerifiedDestinationNumbersRequest')
    DescribeVerifiedDestinationNumbersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbersResult', name: 'DescribeVerifiedDestinationNumbersResult')
    DestinationCountryParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameterKey', name: 'DestinationCountryParameterKey', traits: {"smithy.api#enum" => [{"value" => "IN_TEMPLATE_ID", "name" => "IN_TEMPLATE_ID"}, {"value" => "IN_ENTITY_ID", "name" => "IN_ENTITY_ID"}]})
    DestinationCountryParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameterValue', name: 'DestinationCountryParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    DestinationCountryParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameters', name: 'DestinationCountryParameters', traits: {"smithy.api#length" => {"max" => 10}})
    DestinationPhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DestinationPhoneNumberList', name: 'DestinationPhoneNumberList', traits: {"smithy.api#length" => {"max" => 5}})
    DisassociateOriginationIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentityRequest', name: 'DisassociateOriginationIdentityRequest')
    DisassociateOriginationIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentityResult', name: 'DisassociateOriginationIdentityResult')
    DisassociateProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfigurationRequest', name: 'DisassociateProtectConfigurationRequest')
    DisassociateProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfigurationResult', name: 'DisassociateProtectConfigurationResult')
    DiscardRegistrationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersionRequest', name: 'DiscardRegistrationVersionRequest')
    DiscardRegistrationVersionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersionResult', name: 'DiscardRegistrationVersionResult')
    EventDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#EventDestination', name: 'EventDestination')
    EventDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#EventDestinationList', name: 'EventDestinationList')
    EventDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#EventDestinationName', name: 'EventDestinationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    EventType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#EventType', name: 'EventType', traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}, {"value" => "TEXT_ALL", "name" => "TEXT_ALL"}, {"value" => "TEXT_SENT", "name" => "TEXT_SENT"}, {"value" => "TEXT_PENDING", "name" => "TEXT_PENDING"}, {"value" => "TEXT_QUEUED", "name" => "TEXT_QUEUED"}, {"value" => "TEXT_SUCCESSFUL", "name" => "TEXT_SUCCESSFUL"}, {"value" => "TEXT_DELIVERED", "name" => "TEXT_DELIVERED"}, {"value" => "TEXT_INVALID", "name" => "TEXT_INVALID"}, {"value" => "TEXT_INVALID_MESSAGE", "name" => "TEXT_INVALID_MESSAGE"}, {"value" => "TEXT_UNREACHABLE", "name" => "TEXT_UNREACHABLE"}, {"value" => "TEXT_CARRIER_UNREACHABLE", "name" => "TEXT_CARRIER_UNREACHABLE"}, {"value" => "TEXT_BLOCKED", "name" => "TEXT_BLOCKED"}, {"value" => "TEXT_CARRIER_BLOCKED", "name" => "TEXT_CARRIER_BLOCKED"}, {"value" => "TEXT_SPAM", "name" => "TEXT_SPAM"}, {"value" => "TEXT_UNKNOWN", "name" => "TEXT_UNKNOWN"}, {"value" => "TEXT_TTL_EXPIRED", "name" => "TEXT_TTL_EXPIRED"}, {"value" => "TEXT_PROTECT_BLOCKED", "name" => "TEXT_PROTECT_BLOCKED"}, {"value" => "VOICE_ALL", "name" => "VOICE_ALL"}, {"value" => "VOICE_INITIATED", "name" => "VOICE_INITIATED"}, {"value" => "VOICE_RINGING", "name" => "VOICE_RINGING"}, {"value" => "VOICE_ANSWERED", "name" => "VOICE_ANSWERED"}, {"value" => "VOICE_COMPLETED", "name" => "VOICE_COMPLETED"}, {"value" => "VOICE_BUSY", "name" => "VOICE_BUSY"}, {"value" => "VOICE_NO_ANSWER", "name" => "VOICE_NO_ANSWER"}, {"value" => "VOICE_FAILED", "name" => "VOICE_FAILED"}, {"value" => "VOICE_TTL_EXPIRED", "name" => "VOICE_TTL_EXPIRED"}, {"value" => "MEDIA_ALL", "name" => "MEDIA_ALL"}, {"value" => "MEDIA_PENDING", "name" => "MEDIA_PENDING"}, {"value" => "MEDIA_QUEUED", "name" => "MEDIA_QUEUED"}, {"value" => "MEDIA_SUCCESSFUL", "name" => "MEDIA_SUCCESSFUL"}, {"value" => "MEDIA_DELIVERED", "name" => "MEDIA_DELIVERED"}, {"value" => "MEDIA_INVALID", "name" => "MEDIA_INVALID"}, {"value" => "MEDIA_INVALID_MESSAGE", "name" => "MEDIA_INVALID_MESSAGE"}, {"value" => "MEDIA_UNREACHABLE", "name" => "MEDIA_UNREACHABLE"}, {"value" => "MEDIA_CARRIER_UNREACHABLE", "name" => "MEDIA_CARRIER_UNREACHABLE"}, {"value" => "MEDIA_BLOCKED", "name" => "MEDIA_BLOCKED"}, {"value" => "MEDIA_CARRIER_BLOCKED", "name" => "MEDIA_CARRIER_BLOCKED"}, {"value" => "MEDIA_SPAM", "name" => "MEDIA_SPAM"}, {"value" => "MEDIA_UNKNOWN", "name" => "MEDIA_UNKNOWN"}, {"value" => "MEDIA_TTL_EXPIRED", "name" => "MEDIA_TTL_EXPIRED"}, {"value" => "MEDIA_FILE_INACCESSIBLE", "name" => "MEDIA_FILE_INACCESSIBLE"}, {"value" => "MEDIA_FILE_TYPE_UNSUPPORTED", "name" => "MEDIA_FILE_TYPE_UNSUPPORTED"}, {"value" => "MEDIA_FILE_SIZE_EXCEEDED", "name" => "MEDIA_FILE_SIZE_EXCEEDED"}]})
    EventTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#EventTypeList', name: 'EventTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 43}})
    FieldPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FieldPath', name: 'FieldPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.]+$"})
    FieldPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FieldPathList', name: 'FieldPathList', traits: {"smithy.api#length" => {"max" => 5}})
    FieldRequirement = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FieldRequirement', name: 'FieldRequirement', traits: {"smithy.api#enum" => [{"value" => "REQUIRED", "name" => "REQUIRED"}, {"value" => "CONDITIONAL", "name" => "CONDITIONAL"}, {"value" => "OPTIONAL", "name" => "OPTIONAL"}]})
    FieldType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FieldType', name: 'FieldType', traits: {"smithy.api#enum" => [{"value" => "SELECT", "name" => "SELECT"}, {"value" => "TEXT", "name" => "TEXT"}, {"value" => "ATTACHMENT", "name" => "ATTACHMENT"}]})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/\\.:A-Za-z0-9+_-]+$"})
    FilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#FilterValueList', name: 'FilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetProtectConfigurationCountryRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSetRequest', name: 'GetProtectConfigurationCountryRuleSetRequest')
    GetProtectConfigurationCountryRuleSetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSetResult', name: 'GetProtectConfigurationCountryRuleSetResult')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#GetResourcePolicyResult', name: 'GetResourcePolicyResult')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#retryable" => {}})
    IsoCountryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#IsoCountryCode', name: 'IsoCountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    Keyword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#Keyword', name: 'Keyword', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[ \\S]+$"})
    KeywordAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordAction', name: 'KeywordAction', traits: {"smithy.api#enum" => [{"value" => "AUTOMATIC_RESPONSE", "name" => "AUTOMATIC_RESPONSE"}, {"value" => "OPT_OUT", "name" => "OPT_OUT"}, {"value" => "OPT_IN", "name" => "OPT_IN"}]})
    KeywordFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordFilter', name: 'KeywordFilter')
    KeywordFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordFilterList', name: 'KeywordFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    KeywordFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordFilterName', name: 'KeywordFilterName', traits: {"smithy.api#enum" => [{"value" => "keyword-action", "name" => "KEYWORD_ACTION"}]})
    KeywordInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordInformation', name: 'KeywordInformation')
    KeywordInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordInformationList', name: 'KeywordInformationList')
    KeywordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordList', name: 'KeywordList', traits: {"smithy.api#length" => {"max" => 5}})
    KeywordMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KeywordMessage', name: 'KeywordMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    KinesisFirehoseDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#KinesisFirehoseDestination', name: 'KinesisFirehoseDestination')
    LanguageCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#LanguageCode', name: 'LanguageCode', traits: {"smithy.api#enum" => [{"value" => "DE_DE", "name" => "DE_DE"}, {"value" => "EN_GB", "name" => "EN_GB"}, {"value" => "EN_US", "name" => "EN_US"}, {"value" => "ES_419", "name" => "ES_419"}, {"value" => "ES_ES", "name" => "ES_ES"}, {"value" => "FR_CA", "name" => "FR_CA"}, {"value" => "FR_FR", "name" => "FR_FR"}, {"value" => "IT_IT", "name" => "IT_IT"}, {"value" => "JA_JP", "name" => "JA_JP"}, {"value" => "KO_KR", "name" => "KO_KR"}, {"value" => "PT_BR", "name" => "PT_BR"}, {"value" => "ZH_CN", "name" => "ZH_CN"}, {"value" => "ZH_TW", "name" => "ZH_TW"}]})
    ListPoolOriginationIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentitiesRequest', name: 'ListPoolOriginationIdentitiesRequest')
    ListPoolOriginationIdentitiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentitiesResult', name: 'ListPoolOriginationIdentitiesResult')
    ListProtectConfigurationRuleSetNumberOverrideFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverrideFilter', name: 'ListProtectConfigurationRuleSetNumberOverrideFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListProtectConfigurationRuleSetNumberOverridesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverridesRequest', name: 'ListProtectConfigurationRuleSetNumberOverridesRequest')
    ListProtectConfigurationRuleSetNumberOverridesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverridesResult', name: 'ListProtectConfigurationRuleSetNumberOverridesResult')
    ListRegistrationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociationsRequest', name: 'ListRegistrationAssociationsRequest')
    ListRegistrationAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociationsResult', name: 'ListRegistrationAssociationsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    LogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#LogGroupArn', name: 'LogGroupArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    MaxPrice = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MaxPrice', name: 'MaxPrice', traits: {"smithy.api#length" => {"min" => 2, "max" => 8}, "smithy.api#pattern" => "^[0-9]{0,2}\\.[0-9]{1,5}$"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MediaMessageOriginationIdentity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MediaMessageOriginationIdentity', name: 'MediaMessageOriginationIdentity', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    MediaUrlList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MediaUrlList', name: 'MediaUrlList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MediaUrlValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MediaUrlValue', name: 'MediaUrlValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^s3://([a-z0-9\\.-]{3,63})/(.+)$"})
    MessageFeedbackStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MessageFeedbackStatus', name: 'MessageFeedbackStatus', traits: {"smithy.api#enum" => [{"value" => "RECEIVED", "name" => "RECEIVED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MessageId', name: 'MessageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    MessageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MessageType', name: 'MessageType', traits: {"smithy.api#enum" => [{"value" => "TRANSACTIONAL", "name" => "TRANSACTIONAL"}, {"value" => "PROMOTIONAL", "name" => "PROMOTIONAL"}]})
    MessageTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MessageTypeList', name: 'MessageTypeList', traits: {"smithy.api#length" => {"max" => 2}})
    MonthlyLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#MonthlyLimit', name: 'MonthlyLimit', traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    NonEmptyTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NonEmptyTagList', name: 'NonEmptyTagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    NumberCapability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NumberCapability', name: 'NumberCapability', traits: {"smithy.api#enum" => [{"value" => "SMS", "name" => "SMS"}, {"value" => "VOICE", "name" => "VOICE"}, {"value" => "MMS", "name" => "MMS"}]})
    NumberCapabilityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NumberCapabilityList', name: 'NumberCapabilityList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    NumberStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NumberStatus', name: 'NumberStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ASSOCIATING", "name" => "ASSOCIATING"}, {"value" => "DISASSOCIATING", "name" => "DISASSOCIATING"}, {"value" => "DELETED", "name" => "DELETED"}]})
    NumberType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#NumberType', name: 'NumberType', traits: {"smithy.api#enum" => [{"value" => "SHORT_CODE", "name" => "SHORT_CODE"}, {"value" => "LONG_CODE", "name" => "LONG_CODE"}, {"value" => "TOLL_FREE", "name" => "TOLL_FREE"}, {"value" => "TEN_DLC", "name" => "TEN_DLC"}, {"value" => "SIMULATOR", "name" => "SIMULATOR"}]})
    OptOutListInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptOutListInformation', name: 'OptOutListInformation')
    OptOutListInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptOutListInformationList', name: 'OptOutListInformationList')
    OptOutListName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptOutListName', name: 'OptOutListName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    OptOutListNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptOutListNameList', name: 'OptOutListNameList', traits: {"smithy.api#length" => {"max" => 5}})
    OptOutListNameOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptOutListNameOrArn', name: 'OptOutListNameOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    OptedOutFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutFilter', name: 'OptedOutFilter')
    OptedOutFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutFilterList', name: 'OptedOutFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    OptedOutFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutFilterName', name: 'OptedOutFilterName', traits: {"smithy.api#enum" => [{"value" => "end-user-opted-out", "name" => "END_USER_OPTED_OUT"}]})
    OptedOutNumberInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutNumberInformation', name: 'OptedOutNumberInformation')
    OptedOutNumberInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutNumberInformationList', name: 'OptedOutNumberInformationList')
    OptedOutNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OptedOutNumberList', name: 'OptedOutNumberList', traits: {"smithy.api#length" => {"max" => 5}})
    OriginationIdentityMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OriginationIdentityMetadata', name: 'OriginationIdentityMetadata')
    OriginationIdentityMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#OriginationIdentityMetadataList', name: 'OriginationIdentityMetadataList')
    Owner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#Owner', name: 'Owner', traits: {"smithy.api#enum" => [{"value" => "SELF", "name" => "SELF"}, {"value" => "SHARED", "name" => "SHARED"}]})
    PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^\\+?[1-9][0-9]{1,18}$"})
    PhoneNumberFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilter', name: 'PhoneNumberFilter')
    PhoneNumberFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilterList', name: 'PhoneNumberFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    PhoneNumberFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilterName', name: 'PhoneNumberFilterName', traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "number-capability", "name" => "NUMBER_CAPABILITY"}, {"value" => "number-type", "name" => "NUMBER_TYPE"}, {"value" => "two-way-enabled", "name" => "TWO_WAY_ENABLED"}, {"value" => "self-managed-opt-outs-enabled", "name" => "SELF_MANAGED_OPT_OUTS_ENABLED"}, {"value" => "opt-out-list-name", "name" => "OPT_OUT_LIST_NAME"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "two-way-channel-arn", "name" => "TWO_WAY_CHANNEL_ARN"}]})
    PhoneNumberIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberIdList', name: 'PhoneNumberIdList', traits: {"smithy.api#length" => {"max" => 5}})
    PhoneNumberIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberIdOrArn', name: 'PhoneNumberIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PhoneNumberInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberInformation', name: 'PhoneNumberInformation')
    PhoneNumberInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneNumberInformationList', name: 'PhoneNumberInformationList')
    PhoneOrPoolIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneOrPoolIdOrArn', name: 'PhoneOrPoolIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PhoneOrSenderIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PhoneOrSenderIdOrArn', name: 'PhoneOrSenderIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PoolFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolFilter', name: 'PoolFilter')
    PoolFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolFilterList', name: 'PoolFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    PoolFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolFilterName', name: 'PoolFilterName', traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "two-way-enabled", "name" => "TWO_WAY_ENABLED"}, {"value" => "self-managed-opt-outs-enabled", "name" => "SELF_MANAGED_OPT_OUTS_ENABLED"}, {"value" => "opt-out-list-name", "name" => "OPT_OUT_LIST_NAME"}, {"value" => "shared-routes-enabled", "name" => "SHARED_ROUTES_ENABLED"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "two-way-channel-arn", "name" => "TWO_WAY_CHANNEL_ARN"}]})
    PoolIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolIdList', name: 'PoolIdList', traits: {"smithy.api#length" => {"max" => 5}})
    PoolIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolIdOrArn', name: 'PoolIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PoolInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolInformation', name: 'PoolInformation')
    PoolInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolInformationList', name: 'PoolInformationList')
    PoolOriginationIdentitiesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilter', name: 'PoolOriginationIdentitiesFilter')
    PoolOriginationIdentitiesFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilterList', name: 'PoolOriginationIdentitiesFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    PoolOriginationIdentitiesFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilterName', name: 'PoolOriginationIdentitiesFilterName', traits: {"smithy.api#enum" => [{"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "number-capability", "name" => "NUMBER_CAPABILITY"}]})
    PoolStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PoolStatus', name: 'PoolStatus', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}]})
    ProtectConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationArn', name: 'ProtectConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:\\S+$"})
    ProtectConfigurationCountryRuleSet = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationCountryRuleSet', name: 'ProtectConfigurationCountryRuleSet', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ProtectConfigurationCountryRuleSetInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationCountryRuleSetInformation', name: 'ProtectConfigurationCountryRuleSetInformation')
    ProtectConfigurationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilter', name: 'ProtectConfigurationFilter')
    ProtectConfigurationFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilterList', name: 'ProtectConfigurationFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    ProtectConfigurationFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilterName', name: 'ProtectConfigurationFilterName', traits: {"smithy.api#enum" => [{"value" => "account-default", "name" => "ACCOUNT_DEFAULT"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}]})
    ProtectConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationId', name: 'ProtectConfigurationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ProtectConfigurationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationIdList', name: 'ProtectConfigurationIdList', traits: {"smithy.api#length" => {"max" => 5}})
    ProtectConfigurationIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationIdOrArn', name: 'ProtectConfigurationIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ProtectConfigurationInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationInformation', name: 'ProtectConfigurationInformation')
    ProtectConfigurationInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationInformationList', name: 'ProtectConfigurationInformationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProtectConfigurationRuleOverrideAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleOverrideAction', name: 'ProtectConfigurationRuleOverrideAction', traits: {"smithy.api#enum" => [{"value" => "ALLOW", "name" => "ALLOW"}, {"value" => "BLOCK", "name" => "BLOCK"}]})
    ProtectConfigurationRuleSetNumberOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverride', name: 'ProtectConfigurationRuleSetNumberOverride')
    ProtectConfigurationRuleSetNumberOverrideFilterItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideFilterItem', name: 'ProtectConfigurationRuleSetNumberOverrideFilterItem')
    ProtectConfigurationRuleSetNumberOverrideFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideFilterName', name: 'ProtectConfigurationRuleSetNumberOverrideFilterName', traits: {"smithy.api#enum" => [{"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "destination-phone-number-begins-with", "name" => "DESTINATION_PHONE_NUMBER_BEGINS_WITH"}, {"value" => "action", "name" => "ACTION"}, {"value" => "expires-before", "name" => "EXPIRES_BEFORE"}, {"value" => "expires-after", "name" => "EXPIRES_AFTER"}, {"value" => "created-before", "name" => "CREATED_BEFORE"}, {"value" => "created-after", "name" => "CREATED_AFTER"}]})
    ProtectConfigurationRuleSetNumberOverrideList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideList', name: 'ProtectConfigurationRuleSetNumberOverrideList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProtectStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ProtectStatus', name: 'ProtectStatus', traits: {"smithy.api#enum" => [{"value" => "ALLOW", "name" => "ALLOW"}, {"value" => "BLOCK", "name" => "BLOCK"}, {"value" => "MONITOR", "name" => "MONITOR"}, {"value" => "FILTER", "name" => "FILTER"}]})
    PutKeywordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutKeywordRequest', name: 'PutKeywordRequest')
    PutKeywordResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutKeywordResult', name: 'PutKeywordResult')
    PutMessageFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutMessageFeedbackRequest', name: 'PutMessageFeedbackRequest')
    PutMessageFeedbackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutMessageFeedbackResult', name: 'PutMessageFeedbackResult')
    PutOptedOutNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumberRequest', name: 'PutOptedOutNumberRequest')
    PutOptedOutNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumberResult', name: 'PutOptedOutNumberResult')
    PutProtectConfigurationRuleSetNumberOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverrideRequest', name: 'PutProtectConfigurationRuleSetNumberOverrideRequest')
    PutProtectConfigurationRuleSetNumberOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverrideResult', name: 'PutProtectConfigurationRuleSetNumberOverrideResult')
    PutRegistrationFieldValueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValueRequest', name: 'PutRegistrationFieldValueRequest')
    PutRegistrationFieldValueResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValueResult', name: 'PutRegistrationFieldValueResult')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#PutResourcePolicyResult', name: 'PutResourcePolicyResult')
    RegistrationAssociationBehavior = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationBehavior', name: 'RegistrationAssociationBehavior', traits: {"smithy.api#enum" => [{"value" => "ASSOCIATE_BEFORE_SUBMIT", "name" => "ASSOCIATE_BEFORE_SUBMIT"}, {"value" => "ASSOCIATE_ON_APPROVAL", "name" => "ASSOCIATE_ON_APPROVAL"}, {"value" => "ASSOCIATE_AFTER_COMPLETE", "name" => "ASSOCIATE_AFTER_COMPLETE"}]})
    RegistrationAssociationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilter', name: 'RegistrationAssociationFilter')
    RegistrationAssociationFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilterList', name: 'RegistrationAssociationFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationAssociationFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilterName', name: 'RegistrationAssociationFilterName', traits: {"smithy.api#enum" => [{"value" => "resource-type", "name" => "RESOURCE_TYPE"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}]})
    RegistrationAssociationMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationMetadata', name: 'RegistrationAssociationMetadata')
    RegistrationAssociationMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationMetadataList', name: 'RegistrationAssociationMetadataList')
    RegistrationAttachmentFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilter', name: 'RegistrationAttachmentFilter')
    RegistrationAttachmentFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilterList', name: 'RegistrationAttachmentFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationAttachmentFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilterName', name: 'RegistrationAttachmentFilterName', traits: {"smithy.api#enum" => [{"value" => "attachment-status", "name" => "ATTACHMENT_STATUS"}]})
    RegistrationAttachmentIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentIdList', name: 'RegistrationAttachmentIdList', traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationAttachmentIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentIdOrArn', name: 'RegistrationAttachmentIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RegistrationAttachmentsInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentsInformation', name: 'RegistrationAttachmentsInformation')
    RegistrationAttachmentsInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentsInformationList', name: 'RegistrationAttachmentsInformationList')
    RegistrationDeniedReasonInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationDeniedReasonInformation', name: 'RegistrationDeniedReasonInformation')
    RegistrationDeniedReasonInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationDeniedReasonInformationList', name: 'RegistrationDeniedReasonInformationList')
    RegistrationDisassociationBehavior = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationDisassociationBehavior', name: 'RegistrationDisassociationBehavior', traits: {"smithy.api#enum" => [{"value" => "DISASSOCIATE_ALL_CLOSES_REGISTRATION", "name" => "DISASSOCIATE_ALL_CLOSES_REGISTRATION"}, {"value" => "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION", "name" => "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION"}, {"value" => "DELETE_REGISTRATION_DISASSOCIATES", "name" => "DELETE_REGISTRATION_DISASSOCIATES"}]})
    RegistrationFieldDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDefinition', name: 'RegistrationFieldDefinition')
    RegistrationFieldDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDefinitionList', name: 'RegistrationFieldDefinitionList')
    RegistrationFieldDisplayHints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDisplayHints', name: 'RegistrationFieldDisplayHints')
    RegistrationFieldValueInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFieldValueInformation', name: 'RegistrationFieldValueInformation')
    RegistrationFieldValueInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFieldValueInformationList', name: 'RegistrationFieldValueInformationList')
    RegistrationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFilter', name: 'RegistrationFilter')
    RegistrationFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFilterList', name: 'RegistrationFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationFilterName', name: 'RegistrationFilterName', traits: {"smithy.api#enum" => [{"value" => "registration-type", "name" => "REGISTRATION_TYPE"}, {"value" => "registration-status", "name" => "REGISTRATION_STATUS"}]})
    RegistrationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationIdList', name: 'RegistrationIdList', traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationIdOrArn', name: 'RegistrationIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RegistrationInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationInformation', name: 'RegistrationInformation')
    RegistrationInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationInformationList', name: 'RegistrationInformationList')
    RegistrationSectionDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDefinition', name: 'RegistrationSectionDefinition')
    RegistrationSectionDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDefinitionList', name: 'RegistrationSectionDefinitionList')
    RegistrationSectionDisplayHints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDisplayHints', name: 'RegistrationSectionDisplayHints')
    RegistrationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationStatus', name: 'RegistrationStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "REVIEWING", "name" => "REVIEWING"}, {"value" => "REQUIRES_AUTHENTICATION", "name" => "REQUIRES_AUTHENTICATION"}, {"value" => "PROVISIONING", "name" => "PROVISIONING"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "REQUIRES_UPDATES", "name" => "REQUIRES_UPDATES"}, {"value" => "CLOSED", "name" => "CLOSED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    RegistrationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationType', name: 'RegistrationType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    RegistrationTypeDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDefinition', name: 'RegistrationTypeDefinition')
    RegistrationTypeDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDefinitionList', name: 'RegistrationTypeDefinitionList')
    RegistrationTypeDisplayHints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDisplayHints', name: 'RegistrationTypeDisplayHints')
    RegistrationTypeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilter', name: 'RegistrationTypeFilter')
    RegistrationTypeFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilterList', name: 'RegistrationTypeFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationTypeFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilterName', name: 'RegistrationTypeFilterName', traits: {"smithy.api#enum" => [{"value" => "supported-association-resource-type", "name" => "SUPPORTED_ASSOCIATION_RESOURCE_TYPE"}, {"value" => "supported-association-iso-country-code", "name" => "SUPPORTED_ASSOCIATION_ISO_COUNTRY_CODE"}]})
    RegistrationTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationTypeList', name: 'RegistrationTypeList', traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationVersionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilter', name: 'RegistrationVersionFilter')
    RegistrationVersionFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilterList', name: 'RegistrationVersionFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationVersionFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilterName', name: 'RegistrationVersionFilterName', traits: {"smithy.api#enum" => [{"value" => "registration-version-status", "name" => "REGISTRATION_VERSION_STATUS"}]})
    RegistrationVersionInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionInformation', name: 'RegistrationVersionInformation')
    RegistrationVersionInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionInformationList', name: 'RegistrationVersionInformationList')
    RegistrationVersionNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionNumber', name: 'RegistrationVersionNumber', traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}})
    RegistrationVersionNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionNumberList', name: 'RegistrationVersionNumberList', traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationVersionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionStatus', name: 'RegistrationVersionStatus', traits: {"smithy.api#enum" => [{"value" => "DRAFT", "name" => "DRAFT"}, {"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "REVIEWING", "name" => "REVIEWING"}, {"value" => "REQUIRES_AUTHENTICATION", "name" => "REQUIRES_AUTHENTICATION"}, {"value" => "APPROVED", "name" => "APPROVED"}, {"value" => "DISCARDED", "name" => "DISCARDED"}, {"value" => "DENIED", "name" => "DENIED"}, {"value" => "REVOKED", "name" => "REVOKED"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}]})
    RegistrationVersionStatusHistory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RegistrationVersionStatusHistory', name: 'RegistrationVersionStatusHistory')
    ReleasePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumberRequest', name: 'ReleasePhoneNumberRequest')
    ReleasePhoneNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumberResult', name: 'ReleasePhoneNumberResult')
    ReleaseSenderIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ReleaseSenderIdRequest', name: 'ReleaseSenderIdRequest')
    ReleaseSenderIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ReleaseSenderIdResult', name: 'ReleaseSenderIdResult')
    RequestPhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumberRequest', name: 'RequestPhoneNumberRequest')
    RequestPhoneNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumberResult', name: 'RequestPhoneNumberResult')
    RequestSenderIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RequestSenderIdRequest', name: 'RequestSenderIdRequest')
    RequestSenderIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RequestSenderIdResult', name: 'RequestSenderIdResult')
    RequestableNumberType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#RequestableNumberType', name: 'RequestableNumberType', traits: {"smithy.api#enum" => [{"value" => "LONG_CODE", "name" => "LONG_CODE"}, {"value" => "TOLL_FREE", "name" => "TOLL_FREE"}, {"value" => "TEN_DLC", "name" => "TEN_DLC"}, {"value" => "SIMULATOR", "name" => "SIMULATOR"}]})
    ResourceIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ResourceIdOrArn', name: 'ResourceIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourcePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ResourcePolicy', name: 'ResourcePolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "account", "name" => "ACCOUNT"}, {"value" => "phone-number", "name" => "PHONE_NUMBER"}, {"value" => "sender-id", "name" => "SENDER_ID"}, {"value" => "pool", "name" => "POOL"}, {"value" => "configuration-set", "name" => "CONFIGURATION_SET"}, {"value" => "opt-out-list", "name" => "OPT_OUT_LIST"}, {"value" => "event-destination", "name" => "EVENT_DESTINATION"}, {"value" => "keyword", "name" => "KEYWORD"}, {"value" => "opted-out-number", "name" => "OPTED_OUT_NUMBER"}, {"value" => "registration", "name" => "REGISTRATION"}, {"value" => "registration-attachment", "name" => "REGISTRATION_ATTACHMENT"}, {"value" => "verified-destination-number", "name" => "VERIFIED_DESTINATION_NUMBER"}, {"value" => "protect-configuration", "name" => "PROTECT_CONFIGURATION"}, {"value" => "policy", "name" => "POLICY"}, {"value" => "message", "name" => "MESSAGE"}]})
    SectionPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SectionPath', name: 'SectionPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    SectionPathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SectionPathList', name: 'SectionPathList', traits: {"smithy.api#length" => {"max" => 5}})
    SelectChoice = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SelectChoice', name: 'SelectChoice', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SelectChoiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SelectChoiceList', name: 'SelectChoiceList', traits: {"smithy.api#length" => {"max" => 100}})
    SelectOptionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SelectOptionDescription', name: 'SelectOptionDescription')
    SelectOptionDescriptionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SelectOptionDescriptionsList', name: 'SelectOptionDescriptionsList')
    SelectValidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SelectValidation', name: 'SelectValidation')
    SendDestinationNumberVerificationCodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCodeRequest', name: 'SendDestinationNumberVerificationCodeRequest')
    SendDestinationNumberVerificationCodeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCodeResult', name: 'SendDestinationNumberVerificationCodeResult')
    SendMediaMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendMediaMessageRequest', name: 'SendMediaMessageRequest')
    SendMediaMessageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendMediaMessageResult', name: 'SendMediaMessageResult')
    SendTextMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendTextMessageRequest', name: 'SendTextMessageRequest')
    SendTextMessageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendTextMessageResult', name: 'SendTextMessageResult')
    SendVoiceMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendVoiceMessageRequest', name: 'SendVoiceMessageRequest')
    SendVoiceMessageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SendVoiceMessageResult', name: 'SendVoiceMessageResult')
    SenderId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderId', name: 'SenderId', traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    SenderIdAndCountry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdAndCountry', name: 'SenderIdAndCountry')
    SenderIdFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdFilter', name: 'SenderIdFilter')
    SenderIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdFilterList', name: 'SenderIdFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    SenderIdFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdFilterName', name: 'SenderIdFilterName', traits: {"smithy.api#enum" => [{"value" => "sender-id", "name" => "SENDER_ID"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "registered", "name" => "REGISTERED"}]})
    SenderIdInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdInformation', name: 'SenderIdInformation')
    SenderIdInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdInformationList', name: 'SenderIdInformationList')
    SenderIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdList', name: 'SenderIdList', traits: {"smithy.api#length" => {"max" => 5}})
    SenderIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SenderIdOrArn', name: 'SenderIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    ServiceQuotaExceededExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason', traits: {"smithy.api#enum" => [{"value" => "ASSOCIATIONS_PER_REGISTRATION", "name" => "ASSOCIATIONS_PER_REGISTRATION"}, {"value" => "CONFIGURATION_SETS_PER_ACCOUNT", "name" => "CONFIGURATION_SETS_PER_ACCOUNT"}, {"value" => "DAILY_DESTINATION_CALL_LIMIT", "name" => "DAILY_DESTINATION_CALL_LIMIT"}, {"value" => "EVENT_DESTINATIONS_PER_CONFIGURATION_SET", "name" => "EVENT_DESTINATIONS_PER_CONFIGURATION_SET"}, {"value" => "KEYWORDS_PER_PHONE_NUMBER", "name" => "KEYWORDS_PER_PHONE_NUMBER"}, {"value" => "KEYWORDS_PER_POOL", "name" => "KEYWORDS_PER_POOL"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE"}, {"value" => "OPT_OUT_LISTS_PER_ACCOUNT", "name" => "OPT_OUT_LISTS_PER_ACCOUNT"}, {"value" => "ORIGINATION_IDENTITIES_PER_POOL", "name" => "ORIGINATION_IDENTITIES_PER_POOL"}, {"value" => "PHONE_NUMBERS_PER_ACCOUNT", "name" => "PHONE_NUMBERS_PER_ACCOUNT"}, {"value" => "PHONE_NUMBERS_PER_REGISTRATION", "name" => "PHONE_NUMBERS_PER_REGISTRATION"}, {"value" => "POOLS_PER_ACCOUNT", "name" => "POOLS_PER_ACCOUNT"}, {"value" => "REGISTRATION_ATTACHMENTS_CREATED_PER_DAY", "name" => "REGISTRATION_ATTACHMENTS_CREATED_PER_DAY"}, {"value" => "REGISTRATION_ATTACHMENTS_PER_ACCOUNT", "name" => "REGISTRATION_ATTACHMENTS_PER_ACCOUNT"}, {"value" => "REGISTRATION_VERSIONS_CREATED_PER_DAY", "name" => "REGISTRATION_VERSIONS_CREATED_PER_DAY"}, {"value" => "REGISTRATIONS_PER_ACCOUNT", "name" => "REGISTRATIONS_PER_ACCOUNT"}, {"value" => "SENDER_IDS_PER_ACCOUNT", "name" => "SENDER_IDS_PER_ACCOUNT"}, {"value" => "TAGS_PER_RESOURCE", "name" => "TAGS_PER_RESOURCE"}, {"value" => "VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT", "name" => "VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT"}, {"value" => "VERIFICATION_ATTEMPTS_PER_DAY", "name" => "VERIFICATION_ATTEMPTS_PER_DAY"}, {"value" => "PROTECT_CONFIGURATIONS_PER_ACCOUNT", "name" => "PROTECT_CONFIGURATIONS_PER_ACCOUNT"}]})
    SetAccountDefaultProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfigurationRequest', name: 'SetAccountDefaultProtectConfigurationRequest')
    SetAccountDefaultProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfigurationResult', name: 'SetAccountDefaultProtectConfigurationResult')
    SetDefaultMessageFeedbackEnabledRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabledRequest', name: 'SetDefaultMessageFeedbackEnabledRequest')
    SetDefaultMessageFeedbackEnabledResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabledResult', name: 'SetDefaultMessageFeedbackEnabledResult')
    SetDefaultMessageTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageTypeRequest', name: 'SetDefaultMessageTypeRequest')
    SetDefaultMessageTypeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageTypeResult', name: 'SetDefaultMessageTypeResult')
    SetDefaultSenderIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderIdRequest', name: 'SetDefaultSenderIdRequest')
    SetDefaultSenderIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderIdResult', name: 'SetDefaultSenderIdResult')
    SetMediaMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverrideRequest', name: 'SetMediaMessageSpendLimitOverrideRequest')
    SetMediaMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverrideResult', name: 'SetMediaMessageSpendLimitOverrideResult')
    SetTextMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverrideRequest', name: 'SetTextMessageSpendLimitOverrideRequest')
    SetTextMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverrideResult', name: 'SetTextMessageSpendLimitOverrideResult')
    SetVoiceMessageSpendLimitOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverrideRequest', name: 'SetVoiceMessageSpendLimitOverrideRequest')
    SetVoiceMessageSpendLimitOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverrideResult', name: 'SetVoiceMessageSpendLimitOverrideResult')
    SnsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SnsDestination', name: 'SnsDestination')
    SnsTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SnsTopicArn', name: 'SnsTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    SpendLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SpendLimit', name: 'SpendLimit')
    SpendLimitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SpendLimitList', name: 'SpendLimitList')
    SpendLimitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SpendLimitName', name: 'SpendLimitName', traits: {"smithy.api#enum" => [{"value" => "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT"}]})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#StringList', name: 'StringList')
    StringMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#StringMap', name: 'StringMap')
    SubmitRegistrationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersionRequest', name: 'SubmitRegistrationVersionRequest')
    SubmitRegistrationVersionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersionResult', name: 'SubmitRegistrationVersionResult')
    SupportedAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SupportedAssociation', name: 'SupportedAssociation')
    SupportedAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#SupportedAssociationList', name: 'SupportedAssociationList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagList', name: 'TagList', traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagResourceResult', name: 'TagResourceResult')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^.*$"})
    TextMessageBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TextMessageBody', name: 'TextMessageBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    TextMessageOriginationIdentity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TextMessageOriginationIdentity', name: 'TextMessageOriginationIdentity', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    TextValidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TextValidation', name: 'TextValidation')
    TextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TextValue', name: 'TextValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#retryable" => {"throttling" => true}})
    TimeToLive = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TimeToLive', name: 'TimeToLive', traits: {"smithy.api#range" => {"min" => 5, "max" => 259200}})
    TwoWayChannelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#TwoWayChannelArn', name: 'TwoWayChannelArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UntagResourceResult', name: 'UntagResourceResult')
    UpdateEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateEventDestinationRequest', name: 'UpdateEventDestinationRequest')
    UpdateEventDestinationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateEventDestinationResult', name: 'UpdateEventDestinationResult')
    UpdatePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumberRequest', name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumberResult', name: 'UpdatePhoneNumberResult')
    UpdatePoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdatePoolRequest', name: 'UpdatePoolRequest')
    UpdatePoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdatePoolResult', name: 'UpdatePoolResult')
    UpdateProtectConfigurationCountryRuleSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSetRequest', name: 'UpdateProtectConfigurationCountryRuleSetRequest')
    UpdateProtectConfigurationCountryRuleSetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSetResult', name: 'UpdateProtectConfigurationCountryRuleSetResult')
    UpdateProtectConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationRequest', name: 'UpdateProtectConfigurationRequest')
    UpdateProtectConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationResult', name: 'UpdateProtectConfigurationResult')
    UpdateSenderIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateSenderIdRequest', name: 'UpdateSenderIdRequest')
    UpdateSenderIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#UpdateSenderIdResult', name: 'UpdateSenderIdResult')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "CANNOT_ADD_OPTED_OUT_NUMBER", "name" => "CANNOT_ADD_OPTED_OUT_NUMBER"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "COUNTRY_CODE_MISMATCH", "name" => "COUNTRY_CODE_MISMATCH"}, {"value" => "DESTINATION_COUNTRY_BLOCKED", "name" => "DESTINATION_COUNTRY_BLOCKED"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "ATTACHMENT_TYPE_NOT_SUPPORTED", "name" => "ATTACHMENT_TYPE_NOT_SUPPORTED"}, {"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "INVALID_FILTER_VALUES", "name" => "INVALID_FILTER_VALUES"}, {"value" => "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY", "name" => "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY"}, {"value" => "INVALID_NEXT_TOKEN", "name" => "INVALID_NEXT_TOKEN"}, {"value" => "INVALID_PARAMETER", "name" => "INVALID_PARAMETER"}, {"value" => "INVALID_REQUEST", "name" => "INVALID_REQUEST"}, {"value" => "INVALID_REGISTRATION_ASSOCIATION", "name" => "INVALID_REGISTRATION_ASSOCIATION"}, {"value" => "MAXIMUM_SIZE_EXCEEDED", "name" => "MAXIMUM_SIZE_EXCEEDED"}, {"value" => "MEDIA_TYPE_NOT_SUPPORTED", "name" => "MEDIA_TYPE_NOT_SUPPORTED"}, {"value" => "MISSING_PARAMETER", "name" => "MISSING_PARAMETER"}, {"value" => "PARAMETERS_CANNOT_BE_USED_TOGETHER", "name" => "PARAMETERS_CANNOT_BE_USED_TOGETHER"}, {"value" => "PHONE_NUMBER_CANNOT_BE_OPTED_IN", "name" => "PHONE_NUMBER_CANNOT_BE_OPTED_IN"}, {"value" => "PHONE_NUMBER_CANNOT_BE_RELEASED", "name" => "PHONE_NUMBER_CANNOT_BE_RELEASED"}, {"value" => "PRICE_OVER_THRESHOLD", "name" => "PRICE_OVER_THRESHOLD"}, {"value" => "RESOURCE_NOT_ACCESSIBLE", "name" => "RESOURCE_NOT_ACCESSIBLE"}, {"value" => "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT", "name" => "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT"}, {"value" => "SENDER_ID_NOT_REGISTERED", "name" => "SENDER_ID_NOT_REGISTERED"}, {"value" => "SENDER_ID_NOT_SUPPORTED", "name" => "SENDER_ID_NOT_SUPPORTED"}, {"value" => "SENDER_ID_REQUIRES_REGISTRATION", "name" => "SENDER_ID_REQUIRES_REGISTRATION"}, {"value" => "TWO_WAY_TOPIC_NOT_PRESENT", "name" => "TWO_WAY_TOPIC_NOT_PRESENT"}, {"value" => "TWO_WAY_NOT_ENABLED", "name" => "TWO_WAY_NOT_ENABLED"}, {"value" => "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY", "name" => "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY"}, {"value" => "TWO_WAY_NOT_SUPPORTED_IN_REGION", "name" => "TWO_WAY_NOT_SUPPORTED_IN_REGION"}, {"value" => "TWO_WAY_CHANNEL_NOT_PRESENT", "name" => "TWO_WAY_CHANNEL_NOT_PRESENT"}, {"value" => "UNKNOWN_REGISTRATION_FIELD", "name" => "UNKNOWN_REGISTRATION_FIELD"}, {"value" => "UNKNOWN_REGISTRATION_SECTION", "name" => "UNKNOWN_REGISTRATION_SECTION"}, {"value" => "UNKNOWN_REGISTRATION_TYPE", "name" => "UNKNOWN_REGISTRATION_TYPE"}, {"value" => "UNKNOWN_REGISTRATION_VERSION", "name" => "UNKNOWN_REGISTRATION_VERSION"}, {"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "REGISTRATION_FIELD_CANNOT_BE_DELETED", "name" => "REGISTRATION_FIELD_CANNOT_BE_DELETED"}, {"value" => "VERIFICATION_CODE_MISMATCH", "name" => "VERIFICATION_CODE_MISMATCH"}, {"value" => "VOICE_CAPABILITY_NOT_AVAILABLE", "name" => "VOICE_CAPABILITY_NOT_AVAILABLE"}, {"value" => "UNSPECIFIED_PARAMETER_NOT_SUPPORTED", "name" => "UNSPECIFIED_PARAMETER_NOT_SUPPORTED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    VerificationChannel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerificationChannel', name: 'VerificationChannel', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}, {"value" => "VOICE", "name" => "VOICE"}]})
    VerificationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerificationCode', name: 'VerificationCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    VerificationMessageOriginationIdentity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerificationMessageOriginationIdentity', name: 'VerificationMessageOriginationIdentity', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    VerificationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerificationStatus', name: 'VerificationStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "VERIFIED", "name" => "VERIFIED"}]})
    VerifiedDestinationNumberFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilter', name: 'VerifiedDestinationNumberFilter')
    VerifiedDestinationNumberFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilterList', name: 'VerifiedDestinationNumberFilterList', traits: {"smithy.api#length" => {"max" => 20}})
    VerifiedDestinationNumberFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilterName', name: 'VerifiedDestinationNumberFilterName', traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}]})
    VerifiedDestinationNumberIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberIdList', name: 'VerifiedDestinationNumberIdList', traits: {"smithy.api#length" => {"max" => 5}})
    VerifiedDestinationNumberIdOrArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberIdOrArn', name: 'VerifiedDestinationNumberIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    VerifiedDestinationNumberInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberInformation', name: 'VerifiedDestinationNumberInformation')
    VerifiedDestinationNumberInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberInformationList', name: 'VerifiedDestinationNumberInformationList')
    VerifyDestinationNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumberRequest', name: 'VerifyDestinationNumberRequest')
    VerifyDestinationNumberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumberResult', name: 'VerifyDestinationNumberResult')
    VoiceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VoiceId', name: 'VoiceId', traits: {"smithy.api#enum" => [{"value" => "AMY", "name" => "AMY"}, {"value" => "ASTRID", "name" => "ASTRID"}, {"value" => "BIANCA", "name" => "BIANCA"}, {"value" => "BRIAN", "name" => "BRIAN"}, {"value" => "CAMILA", "name" => "CAMILA"}, {"value" => "CARLA", "name" => "CARLA"}, {"value" => "CARMEN", "name" => "CARMEN"}, {"value" => "CELINE", "name" => "CELINE"}, {"value" => "CHANTAL", "name" => "CHANTAL"}, {"value" => "CONCHITA", "name" => "CONCHITA"}, {"value" => "CRISTIANO", "name" => "CRISTIANO"}, {"value" => "DORA", "name" => "DORA"}, {"value" => "EMMA", "name" => "EMMA"}, {"value" => "ENRIQUE", "name" => "ENRIQUE"}, {"value" => "EWA", "name" => "EWA"}, {"value" => "FILIZ", "name" => "FILIZ"}, {"value" => "GERAINT", "name" => "GERAINT"}, {"value" => "GIORGIO", "name" => "GIORGIO"}, {"value" => "GWYNETH", "name" => "GWYNETH"}, {"value" => "HANS", "name" => "HANS"}, {"value" => "INES", "name" => "INES"}, {"value" => "IVY", "name" => "IVY"}, {"value" => "JACEK", "name" => "JACEK"}, {"value" => "JAN", "name" => "JAN"}, {"value" => "JOANNA", "name" => "JOANNA"}, {"value" => "JOEY", "name" => "JOEY"}, {"value" => "JUSTIN", "name" => "JUSTIN"}, {"value" => "KARL", "name" => "KARL"}, {"value" => "KENDRA", "name" => "KENDRA"}, {"value" => "KIMBERLY", "name" => "KIMBERLY"}, {"value" => "LEA", "name" => "LEA"}, {"value" => "LIV", "name" => "LIV"}, {"value" => "LOTTE", "name" => "LOTTE"}, {"value" => "LUCIA", "name" => "LUCIA"}, {"value" => "LUPE", "name" => "LUPE"}, {"value" => "MADS", "name" => "MADS"}, {"value" => "MAJA", "name" => "MAJA"}, {"value" => "MARLENE", "name" => "MARLENE"}, {"value" => "MATHIEU", "name" => "MATHIEU"}, {"value" => "MATTHEW", "name" => "MATTHEW"}, {"value" => "MAXIM", "name" => "MAXIM"}, {"value" => "MIA", "name" => "MIA"}, {"value" => "MIGUEL", "name" => "MIGUEL"}, {"value" => "MIZUKI", "name" => "MIZUKI"}, {"value" => "NAJA", "name" => "NAJA"}, {"value" => "NICOLE", "name" => "NICOLE"}, {"value" => "PENELOPE", "name" => "PENELOPE"}, {"value" => "RAVEENA", "name" => "RAVEENA"}, {"value" => "RICARDO", "name" => "RICARDO"}, {"value" => "RUBEN", "name" => "RUBEN"}, {"value" => "RUSSELL", "name" => "RUSSELL"}, {"value" => "SALLI", "name" => "SALLI"}, {"value" => "SEOYEON", "name" => "SEOYEON"}, {"value" => "TAKUMI", "name" => "TAKUMI"}, {"value" => "TATYANA", "name" => "TATYANA"}, {"value" => "VICKI", "name" => "VICKI"}, {"value" => "VITORIA", "name" => "VITORIA"}, {"value" => "ZEINA", "name" => "ZEINA"}, {"value" => "ZHIYU", "name" => "ZHIYU"}]})
    VoiceMessageBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VoiceMessageBody', name: 'VoiceMessageBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    VoiceMessageBodyTextType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VoiceMessageBodyTextType', name: 'VoiceMessageBodyTextType', traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}, {"value" => "SSML", "name" => "SSML"}]})
    VoiceMessageOriginationIdentity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointsmsvoicev2#VoiceMessageOriginationIdentity', name: 'VoiceMessageOriginationIdentity', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the account attribute.</p>", "smithy.api#required" => {}}))
    AccountAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the account attribute name.</p>", "smithy.api#required" => {}}))
    AccountAttribute.type = Types::AccountAttribute
    AccountAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttribute)
    AccountLimit.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to apply the account limit to.</p>", "smithy.api#required" => {}}))
    AccountLimit.add_member(:used, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'Used', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The current amount that has been spent, in US dollars.</p>", "smithy.api#required" => {}}))
    AccountLimit.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'Max', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Amazon Web Services set limit for that resource type, in US dollars.</p>", "smithy.api#required" => {}}))
    AccountLimit.type = Types::AccountLimit
    AccountLimitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimit)
    AssociateOriginationIdentityRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The pool to update with the new Identity. This value can be either the PoolId or PoolArn, and you can find these values using <a>DescribePools</a>.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    AssociateOriginationIdentityRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    AssociateOriginationIdentityRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the origination identity.</p>", "smithy.api#required" => {}}))
    AssociateOriginationIdentityRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    AssociateOriginationIdentityRequest.type = Types::AssociateOriginationIdentityRequest
    AssociateOriginationIdentityResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pool that is now associated with the origination identity.</p>"}))
    AssociateOriginationIdentityResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The PoolId of the pool that is now associated with the origination identity.</p>"}))
    AssociateOriginationIdentityResult.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>"}))
    AssociateOriginationIdentityResult.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or SenderId of the origination identity.</p>"}))
    AssociateOriginationIdentityResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>"}))
    AssociateOriginationIdentityResult.type = Types::AssociateOriginationIdentityResult
    AssociateProtectConfigurationRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationRequest.type = Types::AssociateProtectConfigurationRequest
    AssociateProtectConfigurationResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration set.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.type = Types::AssociateProtectConfigurationResult
    CloudWatchLogsDestination.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Identity and Access Management role that is able to write event data to an Amazon CloudWatch destination.</p>", "smithy.api#required" => {}}))
    CloudWatchLogsDestination.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn', traits: {"smithy.api#documentation" => "<p>The name of the Amazon CloudWatch log group that you want to record events in. </p>", "smithy.api#required" => {}}))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    ConfigurationSetFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    ConfigurationSetFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    ConfigurationSetFilter.type = Types::ConfigurationSetFilter
    ConfigurationSetFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetFilter)
    ConfigurationSetInformation.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Resource Name (ARN) of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationList, location_name: 'EventDestinations', traits: {"smithy.api#documentation" => "<p>An array of EventDestination objects that describe any events to log and where to log them.</p>", "smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:default_message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'DefaultMessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>"}))
    ConfigurationSetInformation.add_member(:default_sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'DefaultSenderId', traits: {"smithy.api#documentation" => "<p>The default sender ID used by the ConfigurationSet.</p>"}))
    ConfigurationSetInformation.add_member(:default_message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DefaultMessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>True if message feedback is enabled.</p>"}))
    ConfigurationSetInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the ConfigurationSet was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>"}))
    ConfigurationSetInformation.type = Types::ConfigurationSetInformation
    ConfigurationSetInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetInformation)
    ConfigurationSetNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that caused the exception.</p>"}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the request.</p>"}))
    ConflictException.type = Types::ConflictException
    ContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKey)
    ContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ContextValue)
    CreateConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name to use for the new configuration set.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that's associated with the new configuration set. </p>"}))
    CreateConfigurationSetRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the newly created configuration set.</p>"}))
    CreateConfigurationSetResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the new configuration set.</p>"}))
    CreateConfigurationSetResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that's associated with the configuration set.</p>"}))
    CreateConfigurationSetResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the configuration set was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    CreateConfigurationSetResult.type = Types::CreateConfigurationSetResult
    CreateEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Either the name of the configuration set or the configuration set ARN to apply event logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>", "smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name that identifies the event destination.</p>", "smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>An array of event types that determine which events to log. If \"ALL\" is used, then AWS End User Messaging SMS and Voice logs every event type.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>", "smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:cloud_watch_logs_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: 'CloudWatchLogsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination for logging to Amazon CloudWatch Logs.</p>"}))
    CreateEventDestinationRequest.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>"}))
    CreateEventDestinationRequest.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination for logging to Amazon SNS.</p>"}))
    CreateEventDestinationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEventDestinationRequest.type = Types::CreateEventDestinationRequest
    CreateEventDestinationResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the configuration set.</p>"}))
    CreateEventDestinationResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    CreateEventDestinationResult.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>The details of the destination where events are logged.</p>"}))
    CreateEventDestinationResult.type = Types::CreateEventDestinationResult
    CreateOptOutListRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the new OptOutList.</p>", "smithy.api#required" => {}}))
    CreateOptOutListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>"}))
    CreateOptOutListRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateOptOutListRequest.type = Types::CreateOptOutListRequest
    CreateOptOutListResult.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the OptOutList.</p>"}))
    CreateOptOutListResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the new OptOutList.</p>"}))
    CreateOptOutListResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) associated with the new OptOutList.</p>"}))
    CreateOptOutListResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the pool was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    CreateOptOutListResult.type = Types::CreateOptOutListResult
    CreatePoolRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <p>After the pool is created you can add more origination identities to the pool by using <a href=\"https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html\">AssociateOriginationIdentity</a>.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    CreatePoolRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the new pool.</p>", "smithy.api#required" => {}}))
    CreatePoolRequest.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive. After the pool is created the MessageType can't be changed.</p>", "smithy.api#required" => {}}))
    CreatePoolRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true the pool can't be deleted. You can change this value using the <a>UpdatePool</a> action.</p>"}))
    CreatePoolRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) associated with the pool.</p>"}))
    CreatePoolRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePoolRequest.type = Types::CreatePoolRequest
    CreatePoolResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the pool.</p>"}))
    CreatePoolResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the pool.</p>"}))
    CreatePoolResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>"}))
    CreatePoolResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message for the pool to use.</p>"}))
    CreatePoolResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    CreatePoolResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    CreatePoolResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    CreatePoolResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    CreatePoolResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList associated with the pool.</p>"}))
    CreatePoolResult.add_member(:shared_routes_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SharedRoutesEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether shared routes are enabled for the pool. Set to false and only origination identities in this pool are used to send messages. </p>"}))
    CreatePoolResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true deletion protection is enabled. By default this is set to false. </p>"}))
    CreatePoolResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) associated with the pool.</p>"}))
    CreatePoolResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the pool was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    CreatePoolResult.type = Types::CreatePoolResult
    CreateProtectConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateProtectConfigurationRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>When set to true deletion protection is enabled. By default this is set to false. </p>"}))
    CreateProtectConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that are associated with the resource.</p>"}))
    CreateProtectConfigurationRequest.type = Types::CreateProtectConfigurationRequest
    CreateProtectConfigurationResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the protect configuration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:account_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'AccountDefault', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if the protect configuration is set as your account default protect configuration.</p>", "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true deletion protection is enabled. By default this is set to false. </p>", "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that are associated with the resource.</p>"}))
    CreateProtectConfigurationResult.type = Types::CreateProtectConfigurationResult
    CreateRegistrationAssociationRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdOrArn, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationRequest.type = Types::CreateRegistrationAssociationRequest
    CreateRegistrationAssociationResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The registration type or origination identity type.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    CreateRegistrationAssociationResult.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number associated with the registration in E.164 format.</p>"}))
    CreateRegistrationAssociationResult.type = Types::CreateRegistrationAssociationResult
    CreateRegistrationAttachmentRequest.add_member(:attachment_body, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentBody, location_name: 'AttachmentBody', traits: {"smithy.api#documentation" => "<p>The registration file to upload. The maximum file size is 500KB and valid file extensions are PDF, JPEG and PNG.</p>"}))
    CreateRegistrationAttachmentRequest.add_member(:attachment_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentUrl, location_name: 'AttachmentUrl', traits: {"smithy.api#documentation" => "<p>Registration files have to be stored in an Amazon S3 bucket. The URI to use when sending is in the format <code>s3://BucketName/FileName</code>.</p>"}))
    CreateRegistrationAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the registration attachment.</p>"}))
    CreateRegistrationAttachmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRegistrationAttachmentRequest.type = Types::CreateRegistrationAttachmentRequest
    CreateRegistrationAttachmentResult.add_member(:registration_attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration attachment.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'AttachmentStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the registration attachment.</p>"}))
    CreateRegistrationAttachmentResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration attachment was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.type = Types::CreateRegistrationAttachmentResult
    CreateRegistrationRequest.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    CreateRegistrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the registration.</p>"}))
    CreateRegistrationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRegistrationRequest.type = Types::CreateRegistrationRequest
    CreateRegistrationResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'RegistrationStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:current_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'CurrentVersionNumber', traits: {"smithy.api#documentation" => "<p>The current version number of the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:additional_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'AdditionalAttributes', traits: {"smithy.api#documentation" => "<p>Metadata about a given registration which is specific to that registration type.</p>"}))
    CreateRegistrationResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the registration.</p>"}))
    CreateRegistrationResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    CreateRegistrationResult.type = Types::CreateRegistrationResult
    CreateRegistrationVersionRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationVersionRequest.type = Types::CreateRegistrationVersionRequest
    CreateRegistrationVersionResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The new version number of the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatus, location_name: 'RegistrationVersionStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_version_status_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, location_name: 'RegistrationVersionStatusHistory', traits: {"smithy.api#documentation" => "<p>A <b>RegistrationVersionStatusHistory</b> object that contains timestamps for the registration.</p>", "smithy.api#required" => {}}))
    CreateRegistrationVersionResult.type = Types::CreateRegistrationVersionResult
    CreateVerifiedDestinationNumberRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The verified destination phone number, in E.164 format.</p>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the destination number.</p>"}))
    CreateVerifiedDestinationNumberRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateVerifiedDestinationNumberRequest.type = Types::CreateVerifiedDestinationNumberRequest
    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The verified destination phone number, in E.164 format.</p>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the destination number.</p>"}))
    CreateVerifiedDestinationNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the verified phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.type = Types::CreateVerifiedDestinationNumberResult
    DeleteAccountDefaultProtectConfigurationRequest.type = Types::DeleteAccountDefaultProtectConfigurationRequest
    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'DefaultProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'DefaultProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the account default protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteAccountDefaultProtectConfigurationResult.type = Types::DeleteAccountDefaultProtectConfigurationResult
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set or the configuration set ARN that you want to delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>", "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted configuration set.</p>"}))
    DeleteConfigurationSetResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the deleted configuration set.</p>"}))
    DeleteConfigurationSetResult.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationList, location_name: 'EventDestinations', traits: {"smithy.api#documentation" => "<p>An array of any EventDestination objects that were associated with the deleted configuration set.</p>"}))
    DeleteConfigurationSetResult.add_member(:default_message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'DefaultMessageType', traits: {"smithy.api#documentation" => "<p>The default message type of the configuration set that was deleted.</p>"}))
    DeleteConfigurationSetResult.add_member(:default_sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'DefaultSenderId', traits: {"smithy.api#documentation" => "<p>The default Sender ID of the configuration set that was deleted.</p>"}))
    DeleteConfigurationSetResult.add_member(:default_message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DefaultMessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>True if the configuration set has message feedback enabled. By default this is set to false. </p>"}))
    DeleteConfigurationSetResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the deleted configuration set was created in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeleteConfigurationSetResult.type = Types::DeleteConfigurationSetResult
    DeleteDefaultMessageTypeRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default message type from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>", "smithy.api#required" => {}}))
    DeleteDefaultMessageTypeRequest.type = Types::DeleteDefaultMessageTypeRequest
    DeleteDefaultMessageTypeResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration set.</p>"}))
    DeleteDefaultMessageTypeResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    DeleteDefaultMessageTypeResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The current message type for the configuration set.</p>"}))
    DeleteDefaultMessageTypeResult.type = Types::DeleteDefaultMessageTypeResult
    DeleteDefaultSenderIdRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>", "smithy.api#required" => {}}))
    DeleteDefaultSenderIdRequest.type = Types::DeleteDefaultSenderIdRequest
    DeleteDefaultSenderIdResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration set.</p>"}))
    DeleteDefaultSenderIdResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    DeleteDefaultSenderIdResult.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The current sender ID for the configuration set.</p>"}))
    DeleteDefaultSenderIdResult.type = Types::DeleteDefaultSenderIdResult
    DeleteEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set or the configuration set's Amazon Resource Name (ARN) to remove the event destination from. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>", "smithy.api#required" => {}}))
    DeleteEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination to delete.</p>", "smithy.api#required" => {}}))
    DeleteEventDestinationRequest.type = Types::DeleteEventDestinationRequest
    DeleteEventDestinationResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration set.</p>"}))
    DeleteEventDestinationResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set the event destination was deleted from.</p>"}))
    DeleteEventDestinationResult.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>The event destination object that was deleted.</p>"}))
    DeleteEventDestinationResult.type = Types::DeleteEventDestinationResult
    DeleteKeywordRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values of PoolId and PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DeleteKeywordRequest.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The keyword to delete.</p>", "smithy.api#required" => {}}))
    DeleteKeywordRequest.type = Types::DeleteKeywordRequest
    DeleteKeywordResult.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>"}))
    DeleteKeywordResult.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or PoolId that the keyword was associated with.</p>"}))
    DeleteKeywordResult.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The keyword that was deleted.</p>"}))
    DeleteKeywordResult.add_member(:keyword_message, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMessage, location_name: 'KeywordMessage', traits: {"smithy.api#documentation" => "<p>The message that was associated with the deleted keyword.</p>"}))
    DeleteKeywordResult.add_member(:keyword_action, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordAction, location_name: 'KeywordAction', traits: {"smithy.api#documentation" => "<p>The action that was associated with the deleted keyword.</p>"}))
    DeleteKeywordResult.type = Types::DeleteKeywordResult
    DeleteMediaMessageSpendLimitOverrideRequest.type = Types::DeleteMediaMessageSpendLimitOverrideRequest
    DeleteMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit, in US dollars.</p>"}))
    DeleteMediaMessageSpendLimitOverrideResult.type = Types::DeleteMediaMessageSpendLimitOverrideResult
    DeleteOptOutListRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DeleteOptOutListRequest.type = Types::DeleteOptOutListRequest
    DeleteOptOutListResult.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the OptOutList that was removed.</p>"}))
    DeleteOptOutListResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList that was removed.</p>"}))
    DeleteOptOutListResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the OptOutList was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeleteOptOutListResult.type = Types::DeleteOptOutListResult
    DeleteOptedOutNumberRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName or OptOutListArn to remove the phone number from.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DeleteOptedOutNumberRequest.add_member(:opted_out_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'OptedOutNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format, to remove from the OptOutList.</p>", "smithy.api#required" => {}}))
    DeleteOptedOutNumberRequest.type = Types::DeleteOptedOutNumberRequest
    DeleteOptedOutNumberResult.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The OptOutListArn that the phone number was removed from.</p>"}))
    DeleteOptedOutNumberResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName that the phone number was removed from.</p>"}))
    DeleteOptedOutNumberResult.add_member(:opted_out_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'OptedOutNumber', traits: {"smithy.api#documentation" => "<p>The phone number that was removed from the OptOutList.</p>"}))
    DeleteOptedOutNumberResult.add_member(:opted_out_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'OptedOutTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the number was removed at, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeleteOptedOutNumberResult.add_member(:end_user_opted_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'EndUserOptedOut', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if it was the end user who requested their phone number be removed. </p>"}))
    DeleteOptedOutNumberResult.type = Types::DeleteOptedOutNumberResult
    DeletePoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DeletePoolRequest.type = Types::DeletePoolRequest
    DeletePoolResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pool that was deleted.</p>"}))
    DeletePoolResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The PoolId of the pool that was deleted.</p>"}))
    DeletePoolResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>"}))
    DeletePoolResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The message type that was associated with the deleted pool.</p>"}))
    DeletePoolResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    DeletePoolResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>"}))
    DeletePoolResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    DeletePoolResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    DeletePoolResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList that was associated with the deleted pool.</p>"}))
    DeletePoolResult.add_member(:shared_routes_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SharedRoutesEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether shared routes are enabled for the pool.</p>"}))
    DeletePoolResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the pool was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeletePoolResult.type = Types::DeletePoolResult
    DeleteProtectConfigurationRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRequest.type = Types::DeleteProtectConfigurationRequest
    DeleteProtectConfigurationResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the protect configuration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:account_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'AccountDefault', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if the protect configuration is set as your account default protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.type = Types::DeleteProtectConfigurationResult
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.type = Types::DeleteProtectConfigurationRuleSetNumberOverrideRequest
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the rule was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action associated with the rule.</p>", "smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the resource-based policy was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.type = Types::DeleteProtectConfigurationRuleSetNumberOverrideResult
    DeleteRegistrationAttachmentRequest.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationAttachmentRequest.type = Types::DeleteRegistrationAttachmentRequest
    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration attachment.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'AttachmentStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>", "smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:attachment_upload_error_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentUploadErrorReason, location_name: 'AttachmentUploadErrorReason', traits: {"smithy.api#documentation" => "<p>The error message if the upload failed.</p>"}))
    DeleteRegistrationAttachmentResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration attachment was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.type = Types::DeleteRegistrationAttachmentResult
    DeleteRegistrationFieldValueRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueRequest.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueRequest.type = Types::DeleteRegistrationFieldValueRequest
    DeleteRegistrationFieldValueResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:select_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: 'SelectChoices', traits: {"smithy.api#documentation" => "<p>An array of values for the form field.</p>"}))
    DeleteRegistrationFieldValueResult.add_member(:text_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TextValue, location_name: 'TextValue', traits: {"smithy.api#documentation" => "<p>The text data for a free form field.</p>"}))
    DeleteRegistrationFieldValueResult.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>"}))
    DeleteRegistrationFieldValueResult.type = Types::DeleteRegistrationFieldValueResult
    DeleteRegistrationRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationRequest.type = Types::DeleteRegistrationRequest
    DeleteRegistrationResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'RegistrationStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:current_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'CurrentVersionNumber', traits: {"smithy.api#documentation" => "<p>The current version number of the registration.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:approved_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'ApprovedVersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration that was approved.</p>"}))
    DeleteRegistrationResult.add_member(:latest_denied_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'LatestDeniedVersionNumber', traits: {"smithy.api#documentation" => "<p>The latest version number of the registration that was denied.</p>"}))
    DeleteRegistrationResult.add_member(:additional_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'AdditionalAttributes', traits: {"smithy.api#documentation" => "<p>Metadata about a given registration which is specific to that registration type.</p>"}))
    DeleteRegistrationResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    DeleteRegistrationResult.type = Types::DeleteRegistrationResult
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource you're deleting the resource-based policy from.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResult.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource that the resource-based policy was deleted from.</p>"}))
    DeleteResourcePolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted resource-based policy that was deleted.</p>"}))
    DeleteResourcePolicyResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the resource-based policy was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    DeleteResourcePolicyResult.type = Types::DeleteResourcePolicyResult
    DeleteTextMessageSpendLimitOverrideRequest.type = Types::DeleteTextMessageSpendLimitOverrideRequest
    DeleteTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit, in US dollars.</p>"}))
    DeleteTextMessageSpendLimitOverrideResult.type = Types::DeleteTextMessageSpendLimitOverrideResult
    DeleteVerifiedDestinationNumberRequest.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberRequest.type = Types::DeleteVerifiedDestinationNumberRequest
    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The verified destination phone number, in E.164 format.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the destination phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.type = Types::DeleteVerifiedDestinationNumberResult
    DeleteVoiceMessageSpendLimitOverrideRequest.type = Types::DeleteVoiceMessageSpendLimitOverrideRequest
    DeleteVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit, in US dollars.</p>"}))
    DeleteVoiceMessageSpendLimitOverrideResult.type = Types::DeleteVoiceMessageSpendLimitOverrideResult
    DescribeAccountAttributesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeAccountAttributesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeAccountAttributesRequest.type = Types::DescribeAccountAttributesRequest
    DescribeAccountAttributesResult.add_member(:account_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttributeList, location_name: 'AccountAttributes', traits: {"smithy.api#documentation" => "<p>An array of AccountAttributes objects.</p>"}))
    DescribeAccountAttributesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeAccountAttributesResult.type = Types::DescribeAccountAttributesResult
    DescribeAccountLimitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeAccountLimitsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeAccountLimitsRequest.type = Types::DescribeAccountLimitsRequest
    DescribeAccountLimitsResult.add_member(:account_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitList, location_name: 'AccountLimits', traits: {"smithy.api#documentation" => "<p>An array of AccountLimit objects that show the current spend limits.</p>"}))
    DescribeAccountLimitsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeAccountLimitsResult.type = Types::DescribeAccountLimitsResult
    DescribeConfigurationSetsRequest.add_member(:configuration_set_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: 'ConfigurationSetNames', traits: {"smithy.api#documentation" => "<p>An array of strings. Each element can be either a ConfigurationSetName or ConfigurationSetArn.</p>"}))
    DescribeConfigurationSetsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of filters to apply to the results that are returned.</p>"}))
    DescribeConfigurationSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeConfigurationSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeConfigurationSetsRequest.type = Types::DescribeConfigurationSetsRequest
    DescribeConfigurationSetsResult.add_member(:configuration_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetInformationList, location_name: 'ConfigurationSets', traits: {"smithy.api#documentation" => "<p>An array of ConfigurationSets objects.</p>"}))
    DescribeConfigurationSetsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeConfigurationSetsResult.type = Types::DescribeConfigurationSetsResult
    DescribeKeywordsRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DescribeKeywordsRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordList, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>An array of keywords to search for.</p>"}))
    DescribeKeywordsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of keyword filters to filter the results.</p>"}))
    DescribeKeywordsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeKeywordsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeKeywordsRequest.type = Types::DescribeKeywordsRequest
    DescribeKeywordsResult.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn or PoolArn that is associated with the OriginationIdentity. </p>"}))
    DescribeKeywordsResult.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or PoolId that is associated with the OriginationIdentity.</p>"}))
    DescribeKeywordsResult.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordInformationList, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>An array of KeywordInformation objects that contain the results.</p>"}))
    DescribeKeywordsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeKeywordsResult.type = Types::DescribeKeywordsResult
    DescribeOptOutListsRequest.add_member(:opt_out_list_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameList, location_name: 'OptOutListNames', traits: {"smithy.api#documentation" => "<p>The OptOutLists to show the details of. This is an array of strings that can be either the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    DescribeOptOutListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeOptOutListsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeOptOutListsRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>Use <code>SELF</code> to filter the list of Opt-Out List to ones your account owns or use <code>SHARED</code> to filter on Opt-Out List shared with your account. The <code>Owner</code> and <code>OptOutListNames</code> parameters can't be used at the same time.</p>"}))
    DescribeOptOutListsRequest.type = Types::DescribeOptOutListsRequest
    DescribeOptOutListsResult.add_member(:opt_out_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListInformationList, location_name: 'OptOutLists', traits: {"smithy.api#documentation" => "<p>An array of OptOutListInformation objects that contain the details for the requested OptOutLists.</p>"}))
    DescribeOptOutListsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeOptOutListsResult.type = Types::DescribeOptOutListsResult
    DescribeOptedOutNumbersRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DescribeOptedOutNumbersRequest.add_member(:opted_out_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutNumberList, location_name: 'OptedOutNumbers', traits: {"smithy.api#documentation" => "<p>An array of phone numbers to search for in the OptOutList.</p> <p>If you specify an opted out number that isn't valid, an exception is returned.</p>"}))
    DescribeOptedOutNumbersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of OptedOutFilter objects to filter the results on.</p>"}))
    DescribeOptedOutNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeOptedOutNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeOptedOutNumbersRequest.type = Types::DescribeOptedOutNumbersRequest
    DescribeOptedOutNumbersResult.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the OptOutList.</p>"}))
    DescribeOptedOutNumbersResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList.</p>"}))
    DescribeOptedOutNumbersResult.add_member(:opted_out_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutNumberInformationList, location_name: 'OptedOutNumbers', traits: {"smithy.api#documentation" => "<p>An array of OptedOutNumbersInformation objects that provide information about the requested OptedOutNumbers.</p>"}))
    DescribeOptedOutNumbersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeOptedOutNumbersResult.type = Types::DescribeOptedOutNumbersResult
    DescribePhoneNumbersRequest.add_member(:phone_number_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberIdList, location_name: 'PhoneNumberIds', traits: {"smithy.api#documentation" => "<p>The unique identifier of phone numbers to find information about. This is an array of strings that can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    DescribePhoneNumbersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of PhoneNumberFilter objects to filter the results.</p>"}))
    DescribePhoneNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribePhoneNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribePhoneNumbersRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>Use <code>SELF</code> to filter the list of phone numbers to ones your account owns or use <code>SHARED</code> to filter on phone numbers shared with your account. The <code>Owner</code> and <code>PhoneNumberIds</code> parameters can't be used at the same time.</p>"}))
    DescribePhoneNumbersRequest.type = Types::DescribePhoneNumbersRequest
    DescribePhoneNumbersResult.add_member(:phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberInformationList, location_name: 'PhoneNumbers', traits: {"smithy.api#documentation" => "<p>An array of PhoneNumberInformation objects that contain the details for the requested phone numbers.</p>"}))
    DescribePhoneNumbersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribePhoneNumbersResult.type = Types::DescribePhoneNumbersResult
    DescribePoolsRequest.add_member(:pool_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdList, location_name: 'PoolIds', traits: {"smithy.api#documentation" => "<p>The unique identifier of pools to find. This is an array of strings that can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    DescribePoolsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of PoolFilter objects to filter the results.</p>"}))
    DescribePoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribePoolsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribePoolsRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>Use <code>SELF</code> to filter the list of Pools to ones your account owns or use <code>SHARED</code> to filter on Pools shared with your account. The <code>Owner</code> and <code>PoolIds</code> parameters can't be used at the same time.</p>"}))
    DescribePoolsRequest.type = Types::DescribePoolsRequest
    DescribePoolsResult.add_member(:pools, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolInformationList, location_name: 'Pools', traits: {"smithy.api#documentation" => "<p>An array of PoolInformation objects that contain the details for the requested pools. </p>"}))
    DescribePoolsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribePoolsResult.type = Types::DescribePoolsResult
    DescribeProtectConfigurationsRequest.add_member(:protect_configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdList, location_name: 'ProtectConfigurationIds', traits: {"smithy.api#documentation" => "<p>An array of protect configuration identifiers to search for.</p>"}))
    DescribeProtectConfigurationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of ProtectConfigurationFilter objects to filter the results.</p>"}))
    DescribeProtectConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeProtectConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeProtectConfigurationsRequest.type = Types::DescribeProtectConfigurationsRequest
    DescribeProtectConfigurationsResult.add_member(:protect_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationInformationList, location_name: 'ProtectConfigurations', traits: {"smithy.api#documentation" => "<p>An array of ProtectConfigurationInformation objects that contain the details for the request. </p>"}))
    DescribeProtectConfigurationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeProtectConfigurationsResult.type = Types::DescribeProtectConfigurationsResult
    DescribeRegistrationAttachmentsRequest.add_member(:registration_attachment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentIdList, location_name: 'RegistrationAttachmentIds', traits: {"smithy.api#documentation" => "<p>The unique identifier of registration attachments to find. This is an array of <b>RegistrationAttachmentId</b>.</p>"}))
    DescribeRegistrationAttachmentsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of RegistrationAttachmentFilter objects to filter the results.</p>"}))
    DescribeRegistrationAttachmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationAttachmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationAttachmentsRequest.type = Types::DescribeRegistrationAttachmentsRequest
    DescribeRegistrationAttachmentsResult.add_member(:registration_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentsInformationList, location_name: 'RegistrationAttachments', traits: {"smithy.api#documentation" => "<p>An array of <b>RegistrationAttachments</b> objects that contain the details for the requested registration attachments. </p>", "smithy.api#required" => {}}))
    DescribeRegistrationAttachmentsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationAttachmentsResult.type = Types::DescribeRegistrationAttachmentsResult
    DescribeRegistrationFieldDefinitionsRequest.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:section_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPath, location_name: 'SectionPath', traits: {"smithy.api#documentation" => "<p>The path to the section of the registration.</p>"}))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:field_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPathList, location_name: 'FieldPaths', traits: {"smithy.api#documentation" => "<p>An array of paths to the registration form field.</p>"}))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationFieldDefinitionsRequest.type = Types::DescribeRegistrationFieldDefinitionsRequest
    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_field_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFieldDefinitionList, location_name: 'RegistrationFieldDefinitions', traits: {"smithy.api#documentation" => "<p>An array of RegistrationFieldDefinitions objects that contain the details for the requested fields. </p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationFieldDefinitionsResult.type = Types::DescribeRegistrationFieldDefinitionsResult
    DescribeRegistrationFieldValuesRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>"}))
    DescribeRegistrationFieldValuesRequest.add_member(:section_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPath, location_name: 'SectionPath', traits: {"smithy.api#documentation" => "<p>The path to the section of the registration.</p>"}))
    DescribeRegistrationFieldValuesRequest.add_member(:field_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPathList, location_name: 'FieldPaths', traits: {"smithy.api#documentation" => "<p>An array of paths to the registration form field.</p>"}))
    DescribeRegistrationFieldValuesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationFieldValuesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationFieldValuesRequest.type = Types::DescribeRegistrationFieldValuesRequest
    DescribeRegistrationFieldValuesResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The current version of the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:registration_field_values, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFieldValueInformationList, location_name: 'RegistrationFieldValues', traits: {"smithy.api#documentation" => "<p>An array of RegistrationFieldValues objects that contain the values for the requested registration. </p>", "smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationFieldValuesResult.type = Types::DescribeRegistrationFieldValuesResult
    DescribeRegistrationSectionDefinitionsRequest.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:section_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPathList, location_name: 'SectionPaths', traits: {"smithy.api#documentation" => "<p>An array of paths for the registration form section.</p>"}))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationSectionDefinitionsRequest.type = Types::DescribeRegistrationSectionDefinitionsRequest
    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_section_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationSectionDefinitionList, location_name: 'RegistrationSectionDefinitions', traits: {"smithy.api#documentation" => "<p>An array of RegistrationSectionDefinition objects.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationSectionDefinitionsResult.type = Types::DescribeRegistrationSectionDefinitionsResult
    DescribeRegistrationTypeDefinitionsRequest.add_member(:registration_types, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeList, location_name: 'RegistrationTypes', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>"}))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of RegistrationFilter objects to filter the results.</p>"}))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationTypeDefinitionsRequest.type = Types::DescribeRegistrationTypeDefinitionsRequest
    DescribeRegistrationTypeDefinitionsResult.add_member(:registration_type_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeDefinitionList, location_name: 'RegistrationTypeDefinitions', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationTypeDefinitionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationTypeDefinitionsResult.type = Types::DescribeRegistrationTypeDefinitionsResult
    DescribeRegistrationVersionsRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationVersionsRequest.add_member(:version_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumberList, location_name: 'VersionNumbers', traits: {"smithy.api#documentation" => "<p>An array of registration version numbers.</p>"}))
    DescribeRegistrationVersionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of RegistrationVersionFilter objects to filter the results.</p>"}))
    DescribeRegistrationVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationVersionsRequest.type = Types::DescribeRegistrationVersionsRequest
    DescribeRegistrationVersionsResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:registration_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionInformationList, location_name: 'RegistrationVersions', traits: {"smithy.api#documentation" => "<p>An array of RegistrationVersions objects.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationVersionsResult.type = Types::DescribeRegistrationVersionsResult
    DescribeRegistrationsRequest.add_member(:registration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdList, location_name: 'RegistrationIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers for each registration.</p>"}))
    DescribeRegistrationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of RegistrationFilter objects to filter the results.</p>"}))
    DescribeRegistrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeRegistrationsRequest.type = Types::DescribeRegistrationsRequest
    DescribeRegistrationsResult.add_member(:registrations, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationInformationList, location_name: 'Registrations', traits: {"smithy.api#documentation" => "<p>An array of RegistrationInformation objects.</p>", "smithy.api#required" => {}}))
    DescribeRegistrationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeRegistrationsResult.type = Types::DescribeRegistrationsResult
    DescribeSenderIdsRequest.add_member(:sender_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdList, location_name: 'SenderIds', traits: {"smithy.api#documentation" => "<p>An array of SenderIdAndCountry objects to search for.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    DescribeSenderIdsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of SenderIdFilter objects to filter the results.</p>"}))
    DescribeSenderIdsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeSenderIdsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeSenderIdsRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>Use <code>SELF</code> to filter the list of Sender Ids to ones your account owns or use <code>SHARED</code> to filter on Sender Ids shared with your account. The <code>Owner</code> and <code>SenderIds</code> parameters can't be used at the same time. </p>"}))
    DescribeSenderIdsRequest.type = Types::DescribeSenderIdsRequest
    DescribeSenderIdsResult.add_member(:sender_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdInformationList, location_name: 'SenderIds', traits: {"smithy.api#documentation" => "<p>An array of SernderIdInformation objects that contain the details for the requested SenderIds.</p>"}))
    DescribeSenderIdsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeSenderIdsResult.type = Types::DescribeSenderIdsResult
    DescribeSpendLimitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeSpendLimitsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeSpendLimitsRequest.type = Types::DescribeSpendLimitsRequest
    DescribeSpendLimitsResult.add_member(:spend_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: SpendLimitList, location_name: 'SpendLimits', traits: {"smithy.api#documentation" => "<p>An array of SpendLimit objects that contain the details for the requested spend limits.</p>"}))
    DescribeSpendLimitsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    DescribeSpendLimitsResult.type = Types::DescribeSpendLimitsResult
    DescribeVerifiedDestinationNumbersRequest.add_member(:verified_destination_number_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdList, location_name: 'VerifiedDestinationNumberIds', traits: {"smithy.api#documentation" => "<p>An array of VerifiedDestinationNumberid to retrieve.</p>"}))
    DescribeVerifiedDestinationNumbersRequest.add_member(:destination_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPhoneNumberList, location_name: 'DestinationPhoneNumbers', traits: {"smithy.api#documentation" => "<p>An array of verified destination phone number, in E.164 format.</p>"}))
    DescribeVerifiedDestinationNumbersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of VerifiedDestinationNumberFilter objects to filter the results.</p>"}))
    DescribeVerifiedDestinationNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeVerifiedDestinationNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    DescribeVerifiedDestinationNumbersRequest.type = Types::DescribeVerifiedDestinationNumbersRequest
    DescribeVerifiedDestinationNumbersResult.add_member(:verified_destination_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberInformationList, location_name: 'VerifiedDestinationNumbers', traits: {"smithy.api#documentation" => "<p>An array of VerifiedDestinationNumberInformation objects</p>", "smithy.api#required" => {}}))
    DescribeVerifiedDestinationNumbersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    DescribeVerifiedDestinationNumbersResult.type = Types::DescribeVerifiedDestinationNumbersResult
    DestinationCountryParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationCountryParameterKey)
    DestinationCountryParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationCountryParameterValue)
    DestinationPhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber)
    DisassociateOriginationIdentityRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the pool to disassociate with the origination identity. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DisassociateOriginationIdentityRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    DisassociateOriginationIdentityRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    DisassociateOriginationIdentityRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    DisassociateOriginationIdentityRequest.type = Types::DisassociateOriginationIdentityRequest
    DisassociateOriginationIdentityResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pool.</p>"}))
    DisassociateOriginationIdentityResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The PoolId of the pool no longer associated with the origination identity.</p>"}))
    DisassociateOriginationIdentityResult.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>"}))
    DisassociateOriginationIdentityResult.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or SenderId of the origination identity.</p>"}))
    DisassociateOriginationIdentityResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    DisassociateOriginationIdentityResult.type = Types::DisassociateOriginationIdentityResult
    DisassociateProtectConfigurationRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationRequest.type = Types::DisassociateProtectConfigurationRequest
    DisassociateProtectConfigurationResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration set.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the ConfigurationSet.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.type = Types::DisassociateProtectConfigurationResult
    DiscardRegistrationVersionRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionRequest.type = Types::DiscardRegistrationVersionRequest
    DiscardRegistrationVersionResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatus, location_name: 'RegistrationVersionStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_version_status_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, location_name: 'RegistrationVersionStatusHistory', traits: {"smithy.api#documentation" => "<p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>", "smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.type = Types::DiscardRegistrationVersionResult
    EventDestination.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the EventDestination.</p>", "smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>When set to true events will be logged.</p>", "smithy.api#required" => {}}))
    EventDestination.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>", "smithy.api#required" => {}}))
    EventDestination.add_member(:cloud_watch_logs_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: 'CloudWatchLogsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination that sends logging events to Amazon CloudWatch logs.</p>"}))
    EventDestination.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>"}))
    EventDestination.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination that sends logging events to Amazon SNS.</p>"}))
    EventDestination.type = Types::EventDestination
    EventDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination)
    EventTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    FieldPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath)
    FilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GetProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapability, location_name: 'NumberCapability', traits: {"smithy.api#documentation" => "<p>The capability type to return the CountryRuleSet for. Valid values are <code>SMS</code>, <code>VOICE</code>, or <code>MMS</code>.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetRequest.type = Types::GetProtectConfigurationCountryRuleSetRequest
    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:number_capability, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapability, location_name: 'NumberCapability', traits: {"smithy.api#documentation" => "<p>The capability type associated with the returned ProtectConfigurationCountryRuleSetInformation objects.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, location_name: 'CountryRuleSet', traits: {"smithy.api#documentation" => "<p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href=\"https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html\">Supported countries and regions (SMS channel)</a> in the AWS End User Messaging SMS User Guide.</p>", "smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.type = Types::GetProtectConfigurationCountryRuleSetResult
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResult.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>"}))
    GetResourcePolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted string that contains the resource-based policy attached to the AWS End User Messaging SMS and Voice resource. </p>"}))
    GetResourcePolicyResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the resource-based policy was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    GetResourcePolicyResult.type = Types::GetResourcePolicyResult
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the request.</p>"}))
    InternalServerException.type = Types::InternalServerException
    KeywordFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    KeywordFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    KeywordFilter.type = Types::KeywordFilter
    KeywordFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordFilter)
    KeywordInformation.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The keyword as a string.</p>", "smithy.api#required" => {}}))
    KeywordInformation.add_member(:keyword_message, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMessage, location_name: 'KeywordMessage', traits: {"smithy.api#documentation" => "<p>A custom message that can be used with the keyword.</p>", "smithy.api#required" => {}}))
    KeywordInformation.add_member(:keyword_action, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordAction, location_name: 'KeywordAction', traits: {"smithy.api#documentation" => "<p>The action to perform for the keyword.</p>", "smithy.api#required" => {}}))
    KeywordInformation.type = Types::KeywordInformation
    KeywordInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordInformation)
    KeywordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword)
    KinesisFirehoseDestination.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an Identity and Access Management role that is able to write event data to an Amazon Data Firehose destination.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStreamArn, location_name: 'DeliveryStreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    ListPoolOriginationIdentitiesRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the pool. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    ListPoolOriginationIdentitiesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>"}))
    ListPoolOriginationIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    ListPoolOriginationIdentitiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    ListPoolOriginationIdentitiesRequest.type = Types::ListPoolOriginationIdentitiesRequest
    ListPoolOriginationIdentitiesResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the pool.</p>"}))
    ListPoolOriginationIdentitiesResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique PoolId of the pool.</p>"}))
    ListPoolOriginationIdentitiesResult.add_member(:origination_identities, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationIdentityMetadataList, location_name: 'OriginationIdentities', traits: {"smithy.api#documentation" => "<p>An array of any OriginationIdentityMetadata objects.</p>"}))
    ListPoolOriginationIdentitiesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>"}))
    ListPoolOriginationIdentitiesResult.type = Types::ListPoolOriginationIdentitiesResult
    ListProtectConfigurationRuleSetNumberOverrideFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideFilterItem)
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverrideFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of ProtectConfigurationRuleSetNumberOverrideFilterItem objects to filter the results.</p>"}))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    ListProtectConfigurationRuleSetNumberOverridesRequest.type = Types::ListProtectConfigurationRuleSetNumberOverridesRequest
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:rule_set_number_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideList, location_name: 'RuleSetNumberOverrides', traits: {"smithy.api#documentation" => "<p>An array of RuleSetNumberOverrides objects.</p>"}))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    ListProtectConfigurationRuleSetNumberOverridesResult.type = Types::ListProtectConfigurationRuleSetNumberOverridesResult
    ListRegistrationAssociationsRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    ListRegistrationAssociationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of RegistrationAssociationFilter to apply to the results that are returned.</p>"}))
    ListRegistrationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    ListRegistrationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per each request.</p>"}))
    ListRegistrationAssociationsRequest.type = Types::ListRegistrationAssociationsRequest
    ListRegistrationAssociationsResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationMetadataList, location_name: 'RegistrationAssociations', traits: {"smithy.api#documentation" => "<p>An array of RegistrationAssociationMetadata objects.</p>", "smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>"}))
    ListRegistrationAssociationsResult.type = Types::ListRegistrationAssociationsResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to query for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that are associated with the resource.</p>"}))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    MediaUrlList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUrlValue)
    MessageTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType)
    NonEmptyTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    NumberCapabilityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapability)
    OptOutListInformation.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the OptOutList.</p>", "smithy.api#required" => {}}))
    OptOutListInformation.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList.</p>", "smithy.api#required" => {}}))
    OptOutListInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the OutOutList was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    OptOutListInformation.type = Types::OptOutListInformation
    OptOutListInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListInformation)
    OptOutListNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn)
    OptedOutFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    OptedOutFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter for.</p>", "smithy.api#required" => {}}))
    OptedOutFilter.type = Types::OptedOutFilter
    OptedOutFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutFilter)
    OptedOutNumberInformation.add_member(:opted_out_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'OptedOutNumber', traits: {"smithy.api#documentation" => "<p>The phone number that is opted out.</p>", "smithy.api#required" => {}}))
    OptedOutNumberInformation.add_member(:opted_out_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'OptedOutTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the op tout occurred, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    OptedOutNumberInformation.add_member(:end_user_opted_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'EndUserOptedOut', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is set to true if it was the end recipient that opted out.</p>", "smithy.api#required" => {}}))
    OptedOutNumberInformation.type = Types::OptedOutNumberInformation
    OptedOutNumberInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OptedOutNumberInformation)
    OptedOutNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber)
    OriginationIdentityMetadata.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the origination identity.</p>", "smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origination identity.</p>", "smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Describes if the origination identity can be used for text messages, voice calls or both.</p>", "smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number in E.164 format.</p>"}))
    OriginationIdentityMetadata.type = Types::OriginationIdentityMetadata
    OriginationIdentityMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationIdentityMetadata)
    PhoneNumberFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    PhoneNumberFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    PhoneNumberFilter.type = Types::PhoneNumberFilter
    PhoneNumberFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberFilter)
    PhoneNumberIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn)
    PhoneNumberInformation.add_member(:phone_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the phone number.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the phone number.</p>"}))
    PhoneNumberInformation.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the phone number.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Describes if the origination identity can be used for text messages, voice calls or both.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberType, location_name: 'NumberType', traits: {"smithy.api#documentation" => "<p>The type of phone number.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The price, in US dollars, to lease the phone number.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    PhoneNumberInformation.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    PhoneNumberInformation.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to false an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out request. For more information see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out\">Self-managed opt-outs</a> </p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList associated with the phone number.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true the phone number can't be deleted.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the pool associated with the phone number.</p>"}))
    PhoneNumberInformation.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    PhoneNumberInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    PhoneNumberInformation.type = Types::PhoneNumberInformation
    PhoneNumberInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberInformation)
    PoolFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    PoolFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    PoolFilter.type = Types::PoolFilter
    PoolFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolFilter)
    PoolIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn)
    PoolInformation.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the pool.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the pool.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pool.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    PoolInformation.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    PoolInformation.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to false, an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests. For more information see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out\">Self-managed opt-outs</a> </p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList associated with the pool.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:shared_routes_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SharedRoutesEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Allows you to enable shared routes on your pool.</p> <p>By default, this is set to <code>False</code>. If you set this value to <code>True</code>, your messages are sent using phone numbers or sender IDs (depending on the country) that are shared with other users. In some countries, such as the United States, senders aren't allowed to use shared routes and must use a dedicated phone number or short code.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true the pool can't be deleted.</p>", "smithy.api#required" => {}}))
    PoolInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the pool was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    PoolInformation.type = Types::PoolInformation
    PoolInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolInformation)
    PoolOriginationIdentitiesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    PoolOriginationIdentitiesFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    PoolOriginationIdentitiesFilter.type = Types::PoolOriginationIdentitiesFilter
    PoolOriginationIdentitiesFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilter)
    ProtectConfigurationCountryRuleSet.key = Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode)
    ProtectConfigurationCountryRuleSet.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSetInformation)
    ProtectConfigurationCountryRuleSetInformation.add_member(:protect_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectStatus, location_name: 'ProtectStatus', traits: {"smithy.api#documentation" => "<p>The types of protection that can be used.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationCountryRuleSetInformation.type = Types::ProtectConfigurationCountryRuleSetInformation
    ProtectConfigurationFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter for.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationFilter.type = Types::ProtectConfigurationFilter
    ProtectConfigurationFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationFilter)
    ProtectConfigurationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn)
    ProtectConfigurationInformation.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the protect configuration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:account_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'AccountDefault', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if the protect configuration is set as your account default protect configuration.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>", "smithy.api#required" => {}}))
    ProtectConfigurationInformation.type = Types::ProtectConfigurationInformation
    ProtectConfigurationInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationInformation)
    ProtectConfigurationRuleSetNumberOverride.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the rule was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action for the rule to perform of either blocking or allowing messages to the destination phone number.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule will not expire.</p>"}))
    ProtectConfigurationRuleSetNumberOverride.type = Types::ProtectConfigurationRuleSetNumberOverride
    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array values to filter for.</p>", "smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.type = Types::ProtectConfigurationRuleSetNumberOverrideFilterItem
    ProtectConfigurationRuleSetNumberOverrideList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverride)
    PutKeywordRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The new keyword to add.</p>", "smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword_message, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMessage, location_name: 'KeywordMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the keyword.</p>", "smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword_action, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordAction, location_name: 'KeywordAction', traits: {"smithy.api#documentation" => "<p>The action to perform for the new keyword when it is received.</p> <ul> <li> <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p> </li> <li> <p>OPT_OUT: Keeps the recipient from receiving future messages.</p> </li> <li> <p>OPT_IN: The recipient wants to receive future messages.</p> </li> </ul>"}))
    PutKeywordRequest.type = Types::PutKeywordRequest
    PutKeywordResult.add_member(:origination_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentityArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>"}))
    PutKeywordResult.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or PoolId that the keyword was associated with.</p>"}))
    PutKeywordResult.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>The keyword that was added.</p>"}))
    PutKeywordResult.add_member(:keyword_message, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMessage, location_name: 'KeywordMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the keyword.</p>"}))
    PutKeywordResult.add_member(:keyword_action, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordAction, location_name: 'KeywordAction', traits: {"smithy.api#documentation" => "<p>The action to perform when the keyword is used.</p>"}))
    PutKeywordResult.type = Types::PutKeywordResult
    PutMessageFeedbackRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>", "smithy.api#required" => {}}))
    PutMessageFeedbackRequest.add_member(:message_feedback_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFeedbackStatus, location_name: 'MessageFeedbackStatus', traits: {"smithy.api#documentation" => "<p>Set the message feedback to be either <code>RECEIVED</code> or <code>FAILED</code>.</p>", "smithy.api#required" => {}}))
    PutMessageFeedbackRequest.type = Types::PutMessageFeedbackRequest
    PutMessageFeedbackResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>", "smithy.api#required" => {}}))
    PutMessageFeedbackResult.add_member(:message_feedback_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFeedbackStatus, location_name: 'MessageFeedbackStatus', traits: {"smithy.api#documentation" => "<p>The current status of the message.</p>", "smithy.api#required" => {}}))
    PutMessageFeedbackResult.type = Types::PutMessageFeedbackResult
    PutOptedOutNumberRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName or OptOutListArn to add the phone number to.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    PutOptedOutNumberRequest.add_member(:opted_out_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'OptedOutNumber', traits: {"smithy.api#documentation" => "<p>The phone number to add to the OptOutList in E.164 format.</p>", "smithy.api#required" => {}}))
    PutOptedOutNumberRequest.type = Types::PutOptedOutNumberRequest
    PutOptedOutNumberResult.add_member(:opt_out_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OptOutListArn', traits: {"smithy.api#documentation" => "<p>The OptOutListArn that the phone number was removed from.</p>"}))
    PutOptedOutNumberResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutListName that the phone number was removed from.</p>"}))
    PutOptedOutNumberResult.add_member(:opted_out_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'OptedOutNumber', traits: {"smithy.api#documentation" => "<p>The phone number that was added to the OptOutList.</p>"}))
    PutOptedOutNumberResult.add_member(:opted_out_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'OptedOutTimestamp', traits: {"smithy.api#documentation" => "<p>The time that the phone number was added to the OptOutList, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    PutOptedOutNumberResult.add_member(:end_user_opted_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'EndUserOptedOut', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if it was the end user who requested their phone number be removed. </p>"}))
    PutOptedOutNumberResult.type = Types::PutOptedOutNumberResult
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action for the rule to either block or allow messages to the destination phone number.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule does not expire.</p>"}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.type = Types::PutProtectConfigurationRuleSetNumberOverrideRequest
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the rule was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action for the rule to take.</p>", "smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The time the rule will expire at.</p>"}))
    PutProtectConfigurationRuleSetNumberOverrideResult.type = Types::PutProtectConfigurationRuleSetNumberOverrideResult
    PutRegistrationFieldValueRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueRequest.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueRequest.add_member(:select_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: 'SelectChoices', traits: {"smithy.api#documentation" => "<p>An array of values for the form field.</p>"}))
    PutRegistrationFieldValueRequest.add_member(:text_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TextValue, location_name: 'TextValue', traits: {"smithy.api#documentation" => "<p>The text data for a free form field.</p>"}))
    PutRegistrationFieldValueRequest.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>"}))
    PutRegistrationFieldValueRequest.type = Types::PutRegistrationFieldValueRequest
    PutRegistrationFieldValueResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>", "smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:select_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: 'SelectChoices', traits: {"smithy.api#documentation" => "<p>An array of values for the form field.</p>"}))
    PutRegistrationFieldValueResult.add_member(:text_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TextValue, location_name: 'TextValue', traits: {"smithy.api#documentation" => "<p>The text data for a free form field.</p>"}))
    PutRegistrationFieldValueResult.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>"}))
    PutRegistrationFieldValueResult.type = Types::PutRegistrationFieldValueResult
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource to attach the resource-based policy to.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted resource-based policy to attach.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResult.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>"}))
    PutResourcePolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted Resource Policy.</p>"}))
    PutResourcePolicyResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the resource-based policy was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    RegistrationAssociationFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationAssociationFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter for.</p>", "smithy.api#required" => {}}))
    RegistrationAssociationFilter.type = Types::RegistrationAssociationFilter
    RegistrationAssociationFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationFilter)
    RegistrationAssociationMetadata.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>", "smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>", "smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The origination identity type.</p>", "smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    RegistrationAssociationMetadata.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number associated with the registration in E.164 format.</p>"}))
    RegistrationAssociationMetadata.type = Types::RegistrationAssociationMetadata
    RegistrationAssociationMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationMetadata)
    RegistrationAttachmentFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationAttachmentFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationAttachmentFilter.type = Types::RegistrationAttachmentFilter
    RegistrationAttachmentFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentFilter)
    RegistrationAttachmentIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn)
    RegistrationAttachmentsInformation.add_member(:registration_attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration attachment.</p>", "smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>", "smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'AttachmentStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>", "smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:attachment_upload_error_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentUploadErrorReason, location_name: 'AttachmentUploadErrorReason', traits: {"smithy.api#documentation" => "<p>A description of why the upload didn't successfully complete.</p>"}))
    RegistrationAttachmentsInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration attachment was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.type = Types::RegistrationAttachmentsInformation
    RegistrationAttachmentsInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentsInformation)
    RegistrationDeniedReasonInformation.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason a registration was rejected.</p>", "smithy.api#required" => {}}))
    RegistrationDeniedReasonInformation.add_member(:short_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ShortDescription', traits: {"smithy.api#documentation" => "<p>A short description of the rejection reason.</p>", "smithy.api#required" => {}}))
    RegistrationDeniedReasonInformation.add_member(:long_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LongDescription', traits: {"smithy.api#documentation" => "<p>A long description of the rejection reason.</p>"}))
    RegistrationDeniedReasonInformation.add_member(:documentation_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationTitle', traits: {"smithy.api#documentation" => "<p>The title of the document.</p>"}))
    RegistrationDeniedReasonInformation.add_member(:documentation_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationLink', traits: {"smithy.api#documentation" => "<p>The link to the document.</p>"}))
    RegistrationDeniedReasonInformation.type = Types::RegistrationDeniedReasonInformation
    RegistrationDeniedReasonInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationDeniedReasonInformation)
    RegistrationFieldDefinition.add_member(:section_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPath, location_name: 'SectionPath', traits: {"smithy.api#documentation" => "<p>The section path of the field.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldType, location_name: 'FieldType', traits: {"smithy.api#documentation" => "<p>The type of field.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldRequirement, location_name: 'FieldRequirement', traits: {"smithy.api#documentation" => "<p>Specifies if the field for the registration form is required, conditional or optional.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:select_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectValidation, location_name: 'SelectValidation', traits: {"smithy.api#documentation" => "<p>The validation rules for a select field.</p>"}))
    RegistrationFieldDefinition.add_member(:text_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: TextValidation, location_name: 'TextValidation', traits: {"smithy.api#documentation" => "<p>The validation rules for a text field.</p>"}))
    RegistrationFieldDefinition.add_member(:display_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFieldDisplayHints, location_name: 'DisplayHints', traits: {"smithy.api#documentation" => "<p>An array of RegistrationFieldDisplayHints objects for the field.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDefinition.type = Types::RegistrationFieldDefinition
    RegistrationFieldDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFieldDefinition)
    RegistrationFieldDisplayHints.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the display hint.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDisplayHints.add_member(:short_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ShortDescription', traits: {"smithy.api#documentation" => "<p>A short description of the display hint.</p>", "smithy.api#required" => {}}))
    RegistrationFieldDisplayHints.add_member(:long_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LongDescription', traits: {"smithy.api#documentation" => "<p>A full description of the display hint.</p>"}))
    RegistrationFieldDisplayHints.add_member(:documentation_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationTitle', traits: {"smithy.api#documentation" => "<p>The title of the document the display hint is associated with.</p>"}))
    RegistrationFieldDisplayHints.add_member(:documentation_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationLink', traits: {"smithy.api#documentation" => "<p>The link to the document the display hint is associated with.</p>"}))
    RegistrationFieldDisplayHints.add_member(:select_option_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectOptionDescriptionsList, location_name: 'SelectOptionDescriptions', traits: {"smithy.api#documentation" => "<p>An array of SelectOptionDescription objects.</p>"}))
    RegistrationFieldDisplayHints.add_member(:text_validation_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TextValidationDescription', traits: {"smithy.api#documentation" => "<p>The validation rules for the text field.</p>"}))
    RegistrationFieldDisplayHints.add_member(:example_text_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ExampleTextValue', traits: {"smithy.api#documentation" => "<p>Example text of what the value of a field should contain.</p>"}))
    RegistrationFieldDisplayHints.type = Types::RegistrationFieldDisplayHints
    RegistrationFieldValueInformation.add_member(:field_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPath, location_name: 'FieldPath', traits: {"smithy.api#documentation" => "<p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>", "smithy.api#required" => {}}))
    RegistrationFieldValueInformation.add_member(:select_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: 'SelectChoices', traits: {"smithy.api#documentation" => "<p>An array of values for the form field.</p>"}))
    RegistrationFieldValueInformation.add_member(:text_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TextValue, location_name: 'TextValue', traits: {"smithy.api#documentation" => "<p>The text data for a free form field.</p>"}))
    RegistrationFieldValueInformation.add_member(:registration_attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, location_name: 'RegistrationAttachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration attachment.</p>"}))
    RegistrationFieldValueInformation.add_member(:denied_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DeniedReason', traits: {"smithy.api#documentation" => "<p>A description of why the registration was denied.</p>"}))
    RegistrationFieldValueInformation.type = Types::RegistrationFieldValueInformation
    RegistrationFieldValueInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFieldValueInformation)
    RegistrationFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationFilter.type = Types::RegistrationFilter
    RegistrationFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationFilter)
    RegistrationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn)
    RegistrationInformation.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'RegistrationStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>", "smithy.api#required" => {}}))
    RegistrationInformation.add_member(:current_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'CurrentVersionNumber', traits: {"smithy.api#documentation" => "<p>The current version number of the registration.</p>", "smithy.api#required" => {}}))
    RegistrationInformation.add_member(:approved_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'ApprovedVersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration that was approved.</p>"}))
    RegistrationInformation.add_member(:latest_denied_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'LatestDeniedVersionNumber', traits: {"smithy.api#documentation" => "<p>The latest version number of the registration that was denied.</p>"}))
    RegistrationInformation.add_member(:additional_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'AdditionalAttributes', traits: {"smithy.api#documentation" => "<p>Metadata about a given registration which is specific to that registration type.</p>"}))
    RegistrationInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    RegistrationInformation.type = Types::RegistrationInformation
    RegistrationInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationInformation)
    RegistrationSectionDefinition.add_member(:section_path, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPath, location_name: 'SectionPath', traits: {"smithy.api#documentation" => "<p>The path to the section of the registration.</p>", "smithy.api#required" => {}}))
    RegistrationSectionDefinition.add_member(:display_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationSectionDisplayHints, location_name: 'DisplayHints', traits: {"smithy.api#documentation" => "<p>The path to the section of the registration.</p>", "smithy.api#required" => {}}))
    RegistrationSectionDefinition.type = Types::RegistrationSectionDefinition
    RegistrationSectionDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationSectionDefinition)
    RegistrationSectionDisplayHints.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the display hint.</p>", "smithy.api#required" => {}}))
    RegistrationSectionDisplayHints.add_member(:short_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ShortDescription', traits: {"smithy.api#documentation" => "<p>A short description of the display hint.</p>", "smithy.api#required" => {}}))
    RegistrationSectionDisplayHints.add_member(:long_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LongDescription', traits: {"smithy.api#documentation" => "<p>A full description of the display hint.</p>"}))
    RegistrationSectionDisplayHints.add_member(:documentation_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationTitle', traits: {"smithy.api#documentation" => "<p>The title of the document the display hint is associated with.</p>"}))
    RegistrationSectionDisplayHints.add_member(:documentation_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationLink', traits: {"smithy.api#documentation" => "<p>The link to the document the display hint is associated with.</p>"}))
    RegistrationSectionDisplayHints.type = Types::RegistrationSectionDisplayHints
    RegistrationTypeDefinition.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'RegistrationType', traits: {"smithy.api#documentation" => "<p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>", "smithy.api#required" => {}}))
    RegistrationTypeDefinition.add_member(:supported_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAssociationList, location_name: 'SupportedAssociations', traits: {"smithy.api#documentation" => "<p>The supported association behavior for the registration type.</p>"}))
    RegistrationTypeDefinition.add_member(:display_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeDisplayHints, location_name: 'DisplayHints', traits: {"smithy.api#documentation" => "<p>Provides help information on the registration.</p>", "smithy.api#required" => {}}))
    RegistrationTypeDefinition.type = Types::RegistrationTypeDefinition
    RegistrationTypeDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeDefinition)
    RegistrationTypeDisplayHints.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the display hint.</p>", "smithy.api#required" => {}}))
    RegistrationTypeDisplayHints.add_member(:short_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ShortDescription', traits: {"smithy.api#documentation" => "<p>A short description of the display hint.</p>"}))
    RegistrationTypeDisplayHints.add_member(:long_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LongDescription', traits: {"smithy.api#documentation" => "<p>A full description of the display hint.</p>"}))
    RegistrationTypeDisplayHints.add_member(:documentation_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationTitle', traits: {"smithy.api#documentation" => "<p>The title of the document the display hint is associated with.</p>"}))
    RegistrationTypeDisplayHints.add_member(:documentation_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DocumentationLink', traits: {"smithy.api#documentation" => "<p>The link to the document the display hint is associated with.</p>"}))
    RegistrationTypeDisplayHints.type = Types::RegistrationTypeDisplayHints
    RegistrationTypeFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationTypeFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationTypeFilter.type = Types::RegistrationTypeFilter
    RegistrationTypeFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationTypeFilter)
    RegistrationTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType)
    RegistrationVersionFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationVersionFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter on.</p>", "smithy.api#required" => {}}))
    RegistrationVersionFilter.type = Types::RegistrationVersionFilter
    RegistrationVersionFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionFilter)
    RegistrationVersionInformation.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>", "smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:registration_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatus, location_name: 'RegistrationVersionStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>", "smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:registration_version_status_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, location_name: 'RegistrationVersionStatusHistory', traits: {"smithy.api#documentation" => "<p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>", "smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:denied_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationDeniedReasonInformationList, location_name: 'DeniedReasons', traits: {"smithy.api#documentation" => "<p>An array of RegistrationDeniedReasonInformation objects. </p>"}))
    RegistrationVersionInformation.type = Types::RegistrationVersionInformation
    RegistrationVersionInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionInformation)
    RegistrationVersionNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber)
    RegistrationVersionStatusHistory.add_member(:draft_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'DraftTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the draft state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    RegistrationVersionStatusHistory.add_member(:submitted_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'SubmittedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the submitted state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:reviewing_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ReviewingTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the reviewing state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:requires_authentication_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'RequiresAuthenticationTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the requires authentication state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:approved_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ApprovedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the approved state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:discarded_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'DiscardedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the discarded state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:denied_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'DeniedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the denied state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:revoked_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'RevokedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the revoked state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.add_member(:archived_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ArchivedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the registration was in the archived state, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RegistrationVersionStatusHistory.type = Types::RegistrationVersionStatusHistory
    ReleasePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    ReleasePhoneNumberRequest.type = Types::ReleasePhoneNumberRequest
    ReleasePhoneNumberResult.add_member(:phone_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberArn', traits: {"smithy.api#documentation" => "<p>The PhoneNumberArn of the phone number that was released.</p>"}))
    ReleasePhoneNumberResult.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The PhoneNumberId of the phone number that was released.</p>"}))
    ReleasePhoneNumberResult.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that was released.</p>"}))
    ReleasePhoneNumberResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>"}))
    ReleasePhoneNumberResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    ReleasePhoneNumberResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The message type that was associated with the phone number.</p>"}))
    ReleasePhoneNumberResult.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Specifies if the number could be used for text messages, voice, or both.</p>"}))
    ReleasePhoneNumberResult.add_member(:number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberType, location_name: 'NumberType', traits: {"smithy.api#documentation" => "<p>The type of number that was released.</p>"}))
    ReleasePhoneNumberResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly price of the phone number, in US dollars.</p>"}))
    ReleasePhoneNumberResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    ReleasePhoneNumberResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>"}))
    ReleasePhoneNumberResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    ReleasePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    ReleasePhoneNumberResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList that was associated with the phone number.</p>"}))
    ReleasePhoneNumberResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    ReleasePhoneNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    ReleasePhoneNumberResult.type = Types::ReleasePhoneNumberResult
    ReleaseSenderIdRequest.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdOrArn, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID to release.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdRequest.type = Types::ReleaseSenderIdRequest
    ReleaseSenderIdResult.add_member(:sender_id_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderIdArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the SenderId.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID that was released.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTypeList, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly price, in US dollars, to lease the sender ID.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Registered', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the sender ID is registered.</p>", "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    ReleaseSenderIdResult.type = Types::ReleaseSenderIdResult
    RequestPhoneNumberRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are <code>TRANSACTIONAL</code> for messages that are critical or time-sensitive and <code>PROMOTIONAL</code> for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>", "smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestableNumberType, location_name: 'NumberType', traits: {"smithy.api#documentation" => "<p>The type of phone number to request.</p> <p>When you request a <code>SIMULATOR</code> phone number, you must set <b>MessageType</b> as <code>TRANSACTIONAL</code>. </p>", "smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList to associate with the phone number. You can use the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    RequestPhoneNumberRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    RequestPhoneNumberRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>Use this field to attach your phone number for an external registration process.</p>"}))
    RequestPhoneNumberRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true the phone number can't be deleted.</p>"}))
    RequestPhoneNumberRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) associate with the requested phone number. </p>"}))
    RequestPhoneNumberRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    RequestPhoneNumberRequest.type = Types::RequestPhoneNumberRequest
    RequestPhoneNumberResult.add_member(:phone_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the requested phone number.</p>"}))
    RequestPhoneNumberResult.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the new phone number.</p>"}))
    RequestPhoneNumberResult.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The new phone number that was requested.</p>"}))
    RequestPhoneNumberResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>"}))
    RequestPhoneNumberResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>"}))
    RequestPhoneNumberResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>"}))
    RequestPhoneNumberResult.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Indicates if the phone number will be used for text messages, voice messages or both. </p>"}))
    RequestPhoneNumberResult.add_member(:number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestableNumberType, location_name: 'NumberType', traits: {"smithy.api#documentation" => "<p>The type of number that was released.</p>"}))
    RequestPhoneNumberResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly price, in US dollars, to lease the phone number.</p>"}))
    RequestPhoneNumberResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    RequestPhoneNumberResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN used to identify the two way channel.</p>"}))
    RequestPhoneNumberResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    RequestPhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    RequestPhoneNumberResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList that is associated with the requested phone number.</p>"}))
    RequestPhoneNumberResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true the phone number can't be deleted. </p>"}))
    RequestPhoneNumberResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the pool associated with the phone number </p>"}))
    RequestPhoneNumberResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    RequestPhoneNumberResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that are associated with the phone number.</p>"}))
    RequestPhoneNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    RequestPhoneNumberResult.type = Types::RequestPhoneNumberResult
    RequestSenderIdRequest.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID string to request.</p>", "smithy.api#required" => {}}))
    RequestSenderIdRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    RequestSenderIdRequest.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTypeList, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>"}))
    RequestSenderIdRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true the sender ID can't be deleted.</p>"}))
    RequestSenderIdRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the sender ID.</p>"}))
    RequestSenderIdRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    RequestSenderIdRequest.type = Types::RequestSenderIdRequest
    RequestSenderIdResult.add_member(:sender_id_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderIdArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the SenderId.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID that was requested.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTypeList, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly price, in US dollars, to lease the sender ID.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true the sender ID can't be deleted.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Registered', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the sender ID is registered.</p>", "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of tags (key and value pairs) to associate with the sender ID.</p>"}))
    RequestSenderIdResult.type = Types::RequestSenderIdResult
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that caused the exception.</p>"}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SectionPathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SectionPath)
    SelectChoiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectChoice)
    SelectOptionDescription.add_member(:option, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Option', traits: {"smithy.api#documentation" => "<p>The value of the option.</p>", "smithy.api#required" => {}}))
    SelectOptionDescription.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the select option.</p>"}))
    SelectOptionDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the option meaning.</p>"}))
    SelectOptionDescription.type = Types::SelectOptionDescription
    SelectOptionDescriptionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelectOptionDescription)
    SelectValidation.add_member(:min_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinChoices', traits: {"smithy.api#documentation" => "<p>The minimum number of choices for the select.</p>", "smithy.api#required" => {}}))
    SelectValidation.add_member(:max_choices, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxChoices', traits: {"smithy.api#documentation" => "<p>The maximum number of choices for the select.</p>", "smithy.api#required" => {}}))
    SelectValidation.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>An array of strings for the possible selection options. </p>", "smithy.api#required" => {}}))
    SelectValidation.type = Types::SelectValidation
    SendDestinationNumberVerificationCodeRequest.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeRequest.add_member(:verification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationChannel, location_name: 'VerificationChannel', traits: {"smithy.api#documentation" => "<p>Choose to send the verification code as an SMS or voice message.</p>", "smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Choose the language to use for the message.</p>"}))
    SendDestinationNumberVerificationCodeRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationMessageOriginationIdentity, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    SendDestinationNumberVerificationCodeRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>"}))
    SendDestinationNumberVerificationCodeRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextMap, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>"}))
    SendDestinationNumberVerificationCodeRequest.add_member(:destination_country_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationCountryParameters, location_name: 'DestinationCountryParameters', traits: {"smithy.api#documentation" => "<p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html\">Special requirements for sending SMS messages to recipients in India</a>. </p>"}))
    SendDestinationNumberVerificationCodeRequest.type = Types::SendDestinationNumberVerificationCodeRequest
    SendDestinationNumberVerificationCodeResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>", "smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeResult.type = Types::SendDestinationNumberVerificationCodeResult
    SendMediaMessageRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    SendMediaMessageRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaMessageOriginationIdentity, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    SendMediaMessageRequest.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: TextMessageBody, location_name: 'MessageBody', traits: {"smithy.api#documentation" => "<p>The text body of the message.</p>"}))
    SendMediaMessageRequest.add_member(:media_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaUrlList, location_name: 'MediaUrls', traits: {"smithy.api#documentation" => "<p>An array of URLs to each media file to send. </p> <p>The media files have to be stored in an S3 bucket. Supported media file formats are listed in <a href=\"https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html\">MMS file types, size and character limits</a>. For more information on creating an S3 bucket and managing objects, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html\">Creating a bucket</a>, <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html\">Uploading objects</a> in the <i>Amazon S3 User Guide</i>, and <a href=\"https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket\">Setting up an Amazon S3 bucket for MMS files</a> in the <i>Amazon Web Services End User Messaging SMS User Guide</i>.</p>"}))
    SendMediaMessageRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>"}))
    SendMediaMessageRequest.add_member(:max_price, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPrice, location_name: 'MaxPrice', traits: {"smithy.api#documentation" => "<p>The maximum amount that you want to spend, in US dollars, per each MMS message.</p>"}))
    SendMediaMessageRequest.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>How long the media message is valid for. By default this is 72 hours.</p>"}))
    SendMediaMessageRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextMap, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>"}))
    SendMediaMessageRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>"}))
    SendMediaMessageRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the protect configuration to use.</p>"}))
    SendMediaMessageRequest.add_member(:message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>"}))
    SendMediaMessageRequest.type = Types::SendMediaMessageRequest
    SendMediaMessageResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>"}))
    SendMediaMessageResult.type = Types::SendMediaMessageResult
    SendTextMessageRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    SendTextMessageRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: TextMessageOriginationIdentity, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    SendTextMessageRequest.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: TextMessageBody, location_name: 'MessageBody', traits: {"smithy.api#documentation" => "<p>The body of the text message.</p>"}))
    SendTextMessageRequest.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>"}))
    SendTextMessageRequest.add_member(:keyword, Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: 'Keyword', traits: {"smithy.api#documentation" => "<p>When you register a short code in the US, you must specify a program name. If you don’t have a US short code, omit this attribute.</p>"}))
    SendTextMessageRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>"}))
    SendTextMessageRequest.add_member(:max_price, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPrice, location_name: 'MaxPrice', traits: {"smithy.api#documentation" => "<p>The maximum amount that you want to spend, in US dollars, per each text message. If the calculated amount to send the text message is greater than <code>MaxPrice</code>, the message is not sent and an error is returned.</p>"}))
    SendTextMessageRequest.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>How long the text message is valid for, in seconds. By default this is 72 hours. If the messages isn't handed off before the TTL expires we stop attempting to hand off the message and return <code>TTL_EXPIRED</code> event.</p>"}))
    SendTextMessageRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextMap, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>"}))
    SendTextMessageRequest.add_member(:destination_country_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationCountryParameters, location_name: 'DestinationCountryParameters', traits: {"smithy.api#documentation" => "<p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html\">Special requirements for sending SMS messages to recipients in India</a>. </p> <ul> <li> <p> <code>IN_ENTITY_ID</code> The entity ID or Principal Entity (PE) ID that you received after completing the sender ID registration process.</p> </li> <li> <p> <code>IN_TEMPLATE_ID</code> The template ID that you received after completing the sender ID registration process.</p> <important> <p>Make sure that the Template ID that you specify matches your message template exactly. If your message doesn't match the template that you provided during the registration process, the mobile carriers might reject your message.</p> </important> </li> </ul>"}))
    SendTextMessageRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true, the message is checked and validated, but isn't sent to the end recipient. You are not charged for using <code>DryRun</code>.</p> <p>The Message Parts per Second (MPS) limit when using <code>DryRun</code> is five. If your origination identity has a lower MPS limit then the lower MPS limit is used. For more information about MPS limits, see <a href=\"https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html\">Message Parts per Second (MPS) limits</a> in the <i>AWS End User Messaging SMS User Guide</i>..</p>"}))
    SendTextMessageRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>"}))
    SendTextMessageRequest.add_member(:message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>"}))
    SendTextMessageRequest.type = Types::SendTextMessageRequest
    SendTextMessageResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>"}))
    SendTextMessageResult.type = Types::SendTextMessageResult
    SendVoiceMessageRequest.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The destination phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    SendVoiceMessageRequest.add_member(:origination_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessageOriginationIdentity, location_name: 'OriginationIdentity', traits: {"smithy.api#documentation" => "<p>The origination identity to use for the voice call. This can be the PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    SendVoiceMessageRequest.add_member(:message_body, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessageBody, location_name: 'MessageBody', traits: {"smithy.api#documentation" => "<p>The text to convert to a voice message.</p>"}))
    SendVoiceMessageRequest.add_member(:message_body_text_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessageBodyTextType, location_name: 'MessageBodyTextType', traits: {"smithy.api#documentation" => "<p>Specifies if the MessageBody field contains text or <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">speech synthesis markup language (SSML)</a>.</p> <ul> <li> <p>TEXT: This is the default value. When used the maximum character limit is 3000.</p> </li> <li> <p>SSML: When used the maximum character limit is 6000 including SSML tagging.</p> </li> </ul>"}))
    SendVoiceMessageRequest.add_member(:voice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceId, location_name: 'VoiceId', traits: {"smithy.api#documentation" => "<p>The voice for the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/what-is.html\">Amazon Polly</a> service to use. By default this is set to \"MATTHEW\".</p>"}))
    SendVoiceMessageRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>"}))
    SendVoiceMessageRequest.add_member(:max_price_per_minute, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPrice, location_name: 'MaxPricePerMinute', traits: {"smithy.api#documentation" => "<p>The maximum amount to spend per voice message, in US dollars.</p>"}))
    SendVoiceMessageRequest.add_member(:time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'TimeToLive', traits: {"smithy.api#documentation" => "<p>How long the voice message is valid for. By default this is 72 hours.</p>"}))
    SendVoiceMessageRequest.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextMap, location_name: 'Context', traits: {"smithy.api#documentation" => "<p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>"}))
    SendVoiceMessageRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>"}))
    SendVoiceMessageRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>"}))
    SendVoiceMessageRequest.add_member(:message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>"}))
    SendVoiceMessageRequest.type = Types::SendVoiceMessageRequest
    SendVoiceMessageResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the message.</p>"}))
    SendVoiceMessageResult.type = Types::SendVoiceMessageResult
    SenderIdAndCountry.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdOrArn, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the sender.</p>", "smithy.api#required" => {}}))
    SenderIdAndCountry.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    SenderIdAndCountry.type = Types::SenderIdAndCountry
    SenderIdFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    SenderIdFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter for.</p>", "smithy.api#required" => {}}))
    SenderIdFilter.type = Types::SenderIdFilter
    SenderIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdFilter)
    SenderIdInformation.add_member(:sender_id_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderIdArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the SenderId.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The alphanumeric sender ID in a specific country that you'd like to describe.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTypeList, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly leasing price, in US dollars.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true the sender ID can't be deleted.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Registered', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the sender ID is registered.</p>", "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    SenderIdInformation.type = Types::SenderIdInformation
    SenderIdInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdInformation)
    SenderIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdAndCountry)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SetAccountDefaultProtectConfigurationRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationRequest.type = Types::SetAccountDefaultProtectConfigurationRequest
    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'DefaultProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>", "smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'DefaultProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the account default protect configuration.</p>", "smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationResult.type = Types::SetAccountDefaultProtectConfigurationResult
    SetDefaultMessageFeedbackEnabledRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>", "smithy.api#required" => {}}))
    SetDefaultMessageFeedbackEnabledRequest.add_member(:message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>Set to true to enable message feedback.</p>", "smithy.api#required" => {}}))
    SetDefaultMessageFeedbackEnabledRequest.type = Types::SetDefaultMessageFeedbackEnabledRequest
    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The arn of the configuration set.</p>"}))
    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    SetDefaultMessageFeedbackEnabledResult.add_member(:message_feedback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MessageFeedbackEnabled', traits: {"smithy.api#documentation" => "<p>True if message feedback is enabled.</p>"}))
    SetDefaultMessageFeedbackEnabledResult.type = Types::SetDefaultMessageFeedbackEnabledResult
    SetDefaultMessageTypeRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set to update with a new default message type. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>", "smithy.api#required" => {}}))
    SetDefaultMessageTypeRequest.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    SetDefaultMessageTypeRequest.type = Types::SetDefaultMessageTypeRequest
    SetDefaultMessageTypeResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated configuration set.</p>"}))
    SetDefaultMessageTypeResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that was updated.</p>"}))
    SetDefaultMessageTypeResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The new default message type of the configuration set.</p>"}))
    SetDefaultMessageTypeResult.type = Types::SetDefaultMessageTypeResult
    SetDefaultSenderIdRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set to updated with a new default SenderId. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>", "smithy.api#required" => {}}))
    SetDefaultSenderIdRequest.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The current sender ID for the configuration set. When sending a text message to a destination country which supports SenderIds, the default sender ID on the configuration set specified on <a>SendTextMessage</a> will be used if no dedicated origination phone numbers or registered SenderIds are available in your account, instead of a generic sender ID, such as 'NOTICE'.</p>", "smithy.api#required" => {}}))
    SetDefaultSenderIdRequest.type = Types::SetDefaultSenderIdRequest
    SetDefaultSenderIdResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated configuration set.</p>"}))
    SetDefaultSenderIdResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that was updated.</p>"}))
    SetDefaultSenderIdResult.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The default sender ID to set for the ConfigurationSet.</p>"}))
    SetDefaultSenderIdResult.type = Types::SetDefaultSenderIdResult
    SetMediaMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The new monthly limit to enforce on text messages.</p>", "smithy.api#required" => {}}))
    SetMediaMessageSpendLimitOverrideRequest.type = Types::SetMediaMessageSpendLimitOverrideRequest
    SetMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit to enforce on sending text messages.</p>"}))
    SetMediaMessageSpendLimitOverrideResult.type = Types::SetMediaMessageSpendLimitOverrideResult
    SetTextMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The new monthly limit to enforce on text messages.</p>", "smithy.api#required" => {}}))
    SetTextMessageSpendLimitOverrideRequest.type = Types::SetTextMessageSpendLimitOverrideRequest
    SetTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit to enforce on sending text messages.</p>"}))
    SetTextMessageSpendLimitOverrideResult.type = Types::SetTextMessageSpendLimitOverrideResult
    SetVoiceMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The new monthly limit to enforce on voice messages.</p>", "smithy.api#required" => {}}))
    SetVoiceMessageSpendLimitOverrideRequest.type = Types::SetVoiceMessageSpendLimitOverrideRequest
    SetVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: 'MonthlyLimit', traits: {"smithy.api#documentation" => "<p>The current monthly limit to enforce on sending voice messages.</p>"}))
    SetVoiceMessageSpendLimitOverrideResult.type = Types::SetVoiceMessageSpendLimitOverrideResult
    SnsDestination.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.</p>", "smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    SpendLimit.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SpendLimitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the SpendLimit.</p>", "smithy.api#required" => {}}))
    SpendLimit.add_member(:enforced_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'EnforcedLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum amount of money, in US dollars, that you want to be able to spend sending messages each month. This value has to be less than or equal to the amount in <code>MaxLimit</code>. To use this custom limit, <code>Overridden</code> must be set to true.</p>", "smithy.api#required" => {}}))
    SpendLimit.add_member(:max_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveLong, location_name: 'MaxLimit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The maximum amount of money that you are able to spend to send messages each month, in US dollars.</p>", "smithy.api#required" => {}}))
    SpendLimit.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Overridden', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to <code>True</code>, the value that has been specified in the <code>EnforcedLimit</code> is used to determine the maximum amount in US dollars that can be spent to send messages each month, in US dollars.</p>", "smithy.api#required" => {}}))
    SpendLimit.type = Types::SpendLimit
    SpendLimitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpendLimit)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    StringMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    StringMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SubmitRegistrationVersionRequest.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionRequest.type = Types::SubmitRegistrationVersionRequest
    SubmitRegistrationVersionResult.add_member(:registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the registration.</p>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: 'VersionNumber', traits: {"smithy.api#documentation" => "<p>The version number of the registration.</p>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_version_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatus, location_name: 'RegistrationVersionStatus', traits: {"smithy.api#documentation" => "<p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_version_status_history, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, location_name: 'RegistrationVersionStatusHistory', traits: {"smithy.api#documentation" => "<p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>", "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.type = Types::SubmitRegistrationVersionResult
    SupportedAssociation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Defines the behavior of when an origination identity and registration can be associated with each other.</p>", "smithy.api#required" => {}}))
    SupportedAssociation.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>"}))
    SupportedAssociation.add_member(:association_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationAssociationBehavior, location_name: 'AssociationBehavior', traits: {"smithy.api#documentation" => "<p>The association behavior.</p> <ul> <li> <p> <code>ASSOCIATE_BEFORE_SUBMIT</code> The origination identity has to be supplied when creating a registration.</p> </li> <li> <p> <code>ASSOCIATE_ON_APPROVAL</code> This applies to all sender ID registrations. The sender ID will be automatically provisioned once the registration is approved.</p> </li> <li> <p> <code>ASSOCIATE_AFTER_COMPLETE</code> This applies to phone number registrations when you must complete a registration first, then associate one or more phone numbers later. For example 10DLC campaigns and long codes. </p> </li> </ul>", "smithy.api#required" => {}}))
    SupportedAssociation.add_member(:disassociation_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationDisassociationBehavior, location_name: 'DisassociationBehavior', traits: {"smithy.api#documentation" => "<p>The disassociation behavior.</p> <ul> <li> <p> <code>DISASSOCIATE_ALL_CLOSES_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be closed.</p> </li> <li> <p> <code>DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be deleted.</p> </li> <li> <p> <code>DELETE_REGISTRATION_DISASSOCIATES</code> The registration can be deleted and all origination identities will be disasscoiated.</p> </li> </ul>", "smithy.api#required" => {}}))
    SupportedAssociation.type = Types::SupportedAssociation
    SupportedAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAssociation)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key identifier, or name, of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The string value associated with the key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyTagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags that are associated with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    TextValidation.add_member(:min_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinLength', traits: {"smithy.api#documentation" => "<p>The minimum number of characters for the text field.</p>", "smithy.api#required" => {}}))
    TextValidation.add_member(:max_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxLength', traits: {"smithy.api#documentation" => "<p>The maximum number of characters for the text field.</p>", "smithy.api#required" => {}}))
    TextValidation.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The regular expression used to validate the text field.</p>", "smithy.api#required" => {}}))
    TextValidation.type = Types::TextValidation
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>An array of tag key values to unassociate with the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set to update with the new event destination. Valid values for this can be the ConfigurationSetName or ConfigurationSetArn.</p>", "smithy.api#required" => {}}))
    UpdateEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name to use for the event destination.</p>", "smithy.api#required" => {}}))
    UpdateEventDestinationRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>When set to true logging is enabled.</p>"}))
    UpdateEventDestinationRequest.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>"}))
    UpdateEventDestinationRequest.add_member(:cloud_watch_logs_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: 'CloudWatchLogsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination that sends data to CloudWatch Logs.</p>"}))
    UpdateEventDestinationRequest.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination for logging to Firehose.</p>"}))
    UpdateEventDestinationRequest.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that contains information about an event destination that sends data to Amazon SNS.</p>"}))
    UpdateEventDestinationRequest.type = Types::UpdateEventDestinationRequest
    UpdateEventDestinationResult.add_member(:configuration_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ConfigurationSetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ConfigurationSet that was updated.</p>"}))
    UpdateEventDestinationResult.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    UpdateEventDestinationResult.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An EventDestination object containing the details of where events will be logged. </p>"}))
    UpdateEventDestinationResult.type = Types::UpdateEventDestinationResult
    UpdatePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the phone number. Valid values for this field can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    UpdatePhoneNumberRequest.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    UpdatePhoneNumberRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutList to add the phone number to. Valid values for this field can be either the OutOutListName or OutOutListArn.</p>"}))
    UpdatePhoneNumberRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true the phone number can't be deleted. </p>"}))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberResult.add_member(:phone_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated phone number.</p>"}))
    UpdatePhoneNumberResult.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the phone number.</p>"}))
    UpdatePhoneNumberResult.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that was updated.</p>"}))
    UpdatePhoneNumberResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>"}))
    UpdatePhoneNumberResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>"}))
    UpdatePhoneNumberResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>"}))
    UpdatePhoneNumberResult.add_member(:number_capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: 'NumberCapabilities', traits: {"smithy.api#documentation" => "<p>Specifies if the number could be used for text messages, voice or both.</p>"}))
    UpdatePhoneNumberResult.add_member(:number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberType, location_name: 'NumberType', traits: {"smithy.api#documentation" => "<p>The type of number that was requested.</p>"}))
    UpdatePhoneNumberResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly leasing price of the phone number, in US dollars.</p>"}))
    UpdatePhoneNumberResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    UpdatePhoneNumberResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    UpdatePhoneNumberResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    UpdatePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if self managed opt-out are enabled.</p>"}))
    UpdatePhoneNumberResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList associated with the phone number.</p>"}))
    UpdatePhoneNumberResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true the phone number can't be deleted.</p>"}))
    UpdatePhoneNumberResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    UpdatePhoneNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    UpdatePhoneNumberResult.type = Types::UpdatePhoneNumberResult
    UpdatePoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the pool to update. Valid values are either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>", "smithy.api#required" => {}}))
    UpdatePoolRequest.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    UpdatePoolRequest.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    UpdatePoolRequest.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    UpdatePoolRequest.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    UpdatePoolRequest.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The OptOutList to associate with the pool. Valid values are either OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>"}))
    UpdatePoolRequest.add_member(:shared_routes_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SharedRoutesEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether shared routes are enabled for the pool.</p>"}))
    UpdatePoolRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>When set to true the pool can't be deleted.</p>"}))
    UpdatePoolRequest.type = Types::UpdatePoolRequest
    UpdatePoolResult.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The ARN of the pool.</p>"}))
    UpdatePoolResult.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the pool.</p>"}))
    UpdatePoolResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pool update request.</p>"}))
    UpdatePoolResult.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType', traits: {"smithy.api#documentation" => "<p>The type of message for the pool to use.</p>"}))
    UpdatePoolResult.add_member(:two_way_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'TwoWayEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>"}))
    UpdatePoolResult.add_member(:two_way_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: 'TwoWayChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the two way channel.</p>"}))
    UpdatePoolResult.add_member(:two_way_channel_role, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'TwoWayChannelRole', traits: {"smithy.api#documentation" => "<p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>"}))
    UpdatePoolResult.add_member(:self_managed_opt_outs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SelfManagedOptOutsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>"}))
    UpdatePoolResult.add_member(:opt_out_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutListName, location_name: 'OptOutListName', traits: {"smithy.api#documentation" => "<p>The name of the OptOutList associated with the pool.</p>"}))
    UpdatePoolResult.add_member(:shared_routes_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'SharedRoutesEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether shared routes are enabled for the pool.</p>"}))
    UpdatePoolResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>When set to true the pool can't be deleted.</p>"}))
    UpdatePoolResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the pool was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"}))
    UpdatePoolResult.type = Types::UpdatePoolResult
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapability, location_name: 'NumberCapability', traits: {"smithy.api#documentation" => "<p>The number capability to apply the CountryRuleSetUpdates updates to.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:country_rule_set_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, location_name: 'CountryRuleSetUpdates', traits: {"smithy.api#documentation" => "<p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href=\"https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html\">Supported countries and regions (SMS channel)</a> in the AWS End User Messaging SMS User Guide.</p> <p>For example, to set the United States as allowed and Canada as blocked, the <code>CountryRuleSetUpdates</code> would be formatted as: <code>\"CountryRuleSetUpdates\": { \"US\" : { \"ProtectStatus\": \"ALLOW\" } \"CA\" : { \"ProtectStatus\": \"BLOCK\" } }</code> </p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.type = Types::UpdateProtectConfigurationCountryRuleSetRequest
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:number_capability, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberCapability, location_name: 'NumberCapability', traits: {"smithy.api#documentation" => "<p>The number capability that was updated</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, location_name: 'CountryRuleSet', traits: {"smithy.api#documentation" => "<p>An array of ProtectConfigurationCountryRuleSetInformation containing the rules for the NumberCapability.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.type = Types::UpdateProtectConfigurationCountryRuleSetResult
    UpdateProtectConfigurationRequest.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>When set to true deletion protection is enabled. By default this is set to false. </p>"}))
    UpdateProtectConfigurationRequest.type = Types::UpdateProtectConfigurationRequest
    UpdateProtectConfigurationResult.add_member(:protect_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationArn, location_name: 'ProtectConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:protect_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectConfigurationId, location_name: 'ProtectConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the protect configuration was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:account_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'AccountDefault', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is true if the protect configuration is set as your account default protect configuration.</p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>", "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.type = Types::UpdateProtectConfigurationResult
    UpdateSenderIdRequest.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderIdOrArn, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID to update.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdRequest.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdRequest.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#documentation" => "<p>By default this is set to false. When set to true the sender ID can't be deleted.</p>"}))
    UpdateSenderIdRequest.type = Types::UpdateSenderIdRequest
    UpdateSenderIdResult.add_member(:sender_id_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SenderIdArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) associated with the SenderId.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:sender_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderId, location_name: 'SenderId', traits: {"smithy.api#documentation" => "<p>The sender ID that was updated.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:iso_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'IsoCountryCode', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:message_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTypeList, location_name: 'MessageTypes', traits: {"smithy.api#documentation" => "<p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:monthly_leasing_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'MonthlyLeasingPrice', traits: {"smithy.api#documentation" => "<p>The monthly price, in US dollars, to lease the sender ID.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:deletion_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeletionProtectionEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>By default this is set to false. When set to true the sender ID can't be deleted.</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Registered', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the sender ID is registered..</p>", "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegistrationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the registration.</p>"}))
    UpdateSenderIdResult.type = Types::UpdateSenderIdResult
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>The field that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message associated with the validation exception with information to help determine its cause.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VerifiedDestinationNumberFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute to filter on.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of values to filter on.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberFilter.type = Types::VerifiedDestinationNumberFilter
    VerifiedDestinationNumberFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilter)
    VerifiedDestinationNumberIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn)
    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The verified destination phone number, in E.164 format.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the destination phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.type = Types::VerifiedDestinationNumberInformation
    VerifiedDestinationNumberInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberInformation)
    VerifyDestinationNumberRequest.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verififed destination phone number.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberRequest.add_member(:verification_code, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationCode, location_name: 'VerificationCode', traits: {"smithy.api#documentation" => "<p>The verification code that was received by the verified destination phone number.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberRequest.type = Types::VerifyDestinationNumberRequest
    VerifyDestinationNumberResult.add_member(:verified_destination_number_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:verified_destination_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'VerifiedDestinationNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the verified destination phone number.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:destination_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'DestinationPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number in E.164 format.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status for being able to send messages to the phone number.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the destination phone number was created, in <a href=\"https://www.epochconverter.com/\">UNIX epoch time</a> format.</p>", "smithy.api#required" => {}}))
    VerifyDestinationNumberResult.type = Types::VerifyDestinationNumberResult

    PinpointSMSVoiceV2 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointsmsvoicev2#PinpointSMSVoiceV2"
      service.name = "PinpointSMSVoiceV2"
      service.version = "2022-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint SMS Voice V2", "endpointPrefix" => "sms-voice", "arnNamespace" => "sms-voice"}, "aws.auth#sigv4" => {"name" => "sms-voice"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Pinpoint SMS Voice V2"}
      service.add_operation(:associate_origination_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentity"
        operation.name = "AssociateOriginationIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateOriginationIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateOriginationIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfiguration"
        operation.name = "AssociateProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateEventDestination"
        operation.name = "CreateEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventDestinationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_opt_out_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateOptOutList"
        operation.name = "CreateOptOutList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOptOutListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOptOutListResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreatePool"
        operation.name = "CreatePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateProtectConfiguration"
        operation.name = "CreateProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistration"
        operation.name = "CreateRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_registration_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociation"
        operation.name = "CreateRegistrationAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_registration_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachment"
        operation.name = "CreateRegistrationAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationAttachmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_registration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersion"
        operation.name = "CreateRegistrationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRegistrationVersionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_verified_destination_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumber"
        operation.name = "CreateVerifiedDestinationNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVerifiedDestinationNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVerifiedDestinationNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_account_default_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfiguration"
        operation.name = "DeleteAccountDefaultProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountDefaultProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountDefaultProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_default_message_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageType"
        operation.name = "DeleteDefaultMessageType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDefaultMessageTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDefaultMessageTypeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_default_sender_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderId"
        operation.name = "DeleteDefaultSenderId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDefaultSenderIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDefaultSenderIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteEventDestination"
        operation.name = "DeleteEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventDestinationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_keyword, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteKeyword"
        operation.name = "DeleteKeyword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeywordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeywordResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_media_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverride"
        operation.name = "DeleteMediaMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_opt_out_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteOptOutList"
        operation.name = "DeleteOptOutList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOptOutListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOptOutListResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_opted_out_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumber"
        operation.name = "DeleteOptedOutNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOptedOutNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOptedOutNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeletePool"
        operation.name = "DeletePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfiguration"
        operation.name = "DeleteProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_protect_configuration_rule_set_number_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverride"
        operation.name = "DeleteProtectConfigurationRuleSetNumberOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRuleSetNumberOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRuleSetNumberOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistration"
        operation.name = "DeleteRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_registration_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachment"
        operation.name = "DeleteRegistrationAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationAttachmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_registration_field_value, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValue"
        operation.name = "DeleteRegistrationFieldValue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationFieldValueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistrationFieldValueResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_text_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverride"
        operation.name = "DeleteTextMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTextMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTextMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_verified_destination_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumber"
        operation.name = "DeleteVerifiedDestinationNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVerifiedDestinationNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVerifiedDestinationNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_voice_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverride"
        operation.name = "DeleteVoiceMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountAttributes.new
      end)
      service.add_operation(:describe_account_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountLimitsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountLimits.new
      end)
      service.add_operation(:describe_configuration_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSets"
        operation.name = "DescribeConfigurationSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSetsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationSets.new
      end)
      service.add_operation(:describe_keywords, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeKeywords"
        operation.name = "DescribeKeywords"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeywordsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeywordsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeKeywords.new
      end)
      service.add_operation(:describe_opt_out_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeOptOutLists"
        operation.name = "DescribeOptOutLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptOutListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptOutListsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptOutLists.new
      end)
      service.add_operation(:describe_opted_out_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbers"
        operation.name = "DescribeOptedOutNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptedOutNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptedOutNumbersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptedOutNumbers.new
      end)
      service.add_operation(:describe_phone_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbers"
        operation.name = "DescribePhoneNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePhoneNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePhoneNumbersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePhoneNumbers.new
      end)
      service.add_operation(:describe_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribePools"
        operation.name = "DescribePools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePoolsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePools.new
      end)
      service.add_operation(:describe_protect_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurations"
        operation.name = "DescribeProtectConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectConfigurationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProtectConfigurations.new
      end)
      service.add_operation(:describe_registration_attachments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachments"
        operation.name = "DescribeRegistrationAttachments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationAttachmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationAttachmentsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationAttachments.new
      end)
      service.add_operation(:describe_registration_field_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitions"
        operation.name = "DescribeRegistrationFieldDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationFieldDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationFieldDefinitionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationFieldDefinitions.new
      end)
      service.add_operation(:describe_registration_field_values, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValues"
        operation.name = "DescribeRegistrationFieldValues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationFieldValuesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationFieldValuesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationFieldValues.new
      end)
      service.add_operation(:describe_registration_section_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitions"
        operation.name = "DescribeRegistrationSectionDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationSectionDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationSectionDefinitionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationSectionDefinitions.new
      end)
      service.add_operation(:describe_registration_type_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitions"
        operation.name = "DescribeRegistrationTypeDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationTypeDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationTypeDefinitionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationTypeDefinitions.new
      end)
      service.add_operation(:describe_registration_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersions"
        operation.name = "DescribeRegistrationVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationVersions.new
      end)
      service.add_operation(:describe_registrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrations"
        operation.name = "DescribeRegistrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistrationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrations.new
      end)
      service.add_operation(:describe_sender_ids, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeSenderIds"
        operation.name = "DescribeSenderIds"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSenderIdsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSenderIdsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSenderIds.new
      end)
      service.add_operation(:describe_spend_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimits"
        operation.name = "DescribeSpendLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpendLimitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpendLimitsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSpendLimits.new
      end)
      service.add_operation(:describe_verified_destination_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbers"
        operation.name = "DescribeVerifiedDestinationNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVerifiedDestinationNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVerifiedDestinationNumbersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeVerifiedDestinationNumbers.new
      end)
      service.add_operation(:disassociate_origination_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentity"
        operation.name = "DisassociateOriginationIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateOriginationIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateOriginationIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfiguration"
        operation.name = "DisassociateProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:discard_registration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersion"
        operation.name = "DiscardRegistrationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscardRegistrationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscardRegistrationVersionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_protect_configuration_country_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSet"
        operation.name = "GetProtectConfigurationCountryRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectConfigurationCountryRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectConfigurationCountryRuleSetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_pool_origination_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentities"
        operation.name = "ListPoolOriginationIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoolOriginationIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoolOriginationIdentitiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPoolOriginationIdentities.new
      end)
      service.add_operation(:list_protect_configuration_rule_set_number_overrides, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverrides"
        operation.name = "ListProtectConfigurationRuleSetNumberOverrides"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverridesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverridesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtectConfigurationRuleSetNumberOverrides.new
      end)
      service.add_operation(:list_registration_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociations"
        operation.name = "ListRegistrationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegistrationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegistrationAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRegistrationAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_keyword, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutKeyword"
        operation.name = "PutKeyword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeywordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutKeywordResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_message_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutMessageFeedback"
        operation.name = "PutMessageFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMessageFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMessageFeedbackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_opted_out_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumber"
        operation.name = "PutOptedOutNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutOptedOutNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutOptedOutNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_protect_configuration_rule_set_number_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverride"
        operation.name = "PutProtectConfigurationRuleSetNumberOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProtectConfigurationRuleSetNumberOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutProtectConfigurationRuleSetNumberOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_registration_field_value, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValue"
        operation.name = "PutRegistrationFieldValue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistrationFieldValueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistrationFieldValueResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:release_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumber"
        operation.name = "ReleasePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReleasePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReleasePhoneNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:release_sender_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ReleaseSenderId"
        operation.name = "ReleaseSenderId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseSenderIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseSenderIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:request_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumber"
        operation.name = "RequestPhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestPhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestPhoneNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:request_sender_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#RequestSenderId"
        operation.name = "RequestSenderId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestSenderIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestSenderIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_destination_number_verification_code, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCode"
        operation.name = "SendDestinationNumberVerificationCode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDestinationNumberVerificationCodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDestinationNumberVerificationCodeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_media_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendMediaMessage"
        operation.name = "SendMediaMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMediaMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMediaMessageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_text_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendTextMessage"
        operation.name = "SendTextMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTextMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTextMessageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_voice_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendVoiceMessage"
        operation.name = "SendVoiceMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendVoiceMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendVoiceMessageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_account_default_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfiguration"
        operation.name = "SetAccountDefaultProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetAccountDefaultProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetAccountDefaultProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_default_message_feedback_enabled, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabled"
        operation.name = "SetDefaultMessageFeedbackEnabled"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultMessageFeedbackEnabledRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultMessageFeedbackEnabledResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_default_message_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageType"
        operation.name = "SetDefaultMessageType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultMessageTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultMessageTypeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_default_sender_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderId"
        operation.name = "SetDefaultSenderId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultSenderIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultSenderIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_media_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverride"
        operation.name = "SetMediaMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetMediaMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetMediaMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_text_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverride"
        operation.name = "SetTextMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTextMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTextMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_voice_message_spend_limit_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverride"
        operation.name = "SetVoiceMessageSpendLimitOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetVoiceMessageSpendLimitOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetVoiceMessageSpendLimitOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:submit_registration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersion"
        operation.name = "SubmitRegistrationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitRegistrationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitRegistrationVersionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateEventDestination"
        operation.name = "UpdateEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventDestinationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdatePool"
        operation.name = "UpdatePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_protect_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfiguration"
        operation.name = "UpdateProtectConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_protect_configuration_country_rule_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSet"
        operation.name = "UpdateProtectConfigurationCountryRuleSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectConfigurationCountryRuleSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectConfigurationCountryRuleSetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_sender_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateSenderId"
        operation.name = "UpdateSenderId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSenderIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSenderIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:verify_destination_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumber"
        operation.name = "VerifyDestinationNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDestinationNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDestinationNumberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
