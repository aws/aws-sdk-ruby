# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoiceV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason", traits: {"smithy.api#enum" => [{"value" => "INSUFFICIENT_ACCOUNT_REPUTATION", "name" => "INSUFFICIENT_ACCOUNT_REPUTATION"}, {"value" => "ACCOUNT_DISABLED", "name" => "ACCOUNT_DISABLED"}]})
    AccountAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountAttribute", name: "AccountAttribute")
    AccountAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountAttributeList", name: "AccountAttributeList")
    AccountAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountAttributeName", name: "AccountAttributeName", traits: {"smithy.api#enum" => [{"value" => "ACCOUNT_TIER", "name" => "ACCOUNT_TIER"}, {"value" => "DEFAULT_PROTECT_CONFIGURATION_ID", "name" => "DEFAULT_PROTECT_CONFIGURATION_ID"}]})
    AccountLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountLimit", name: "AccountLimit")
    AccountLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountLimitList", name: "AccountLimitList")
    AccountLimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AccountLimitName", name: "AccountLimitName", traits: {"smithy.api#enum" => [{"value" => "PHONE_NUMBERS", "name" => "PHONE_NUMBERS"}, {"value" => "POOLS", "name" => "POOLS"}, {"value" => "CONFIGURATION_SETS", "name" => "CONFIGURATION_SETS"}, {"value" => "OPT_OUT_LISTS", "name" => "OPT_OUT_LISTS"}, {"value" => "SENDER_IDS", "name" => "SENDER_IDS"}, {"value" => "REGISTRATIONS", "name" => "REGISTRATIONS"}, {"value" => "REGISTRATION_ATTACHMENTS", "name" => "REGISTRATION_ATTACHMENTS"}, {"value" => "VERIFIED_DESTINATION_NUMBERS", "name" => "VERIFIED_DESTINATION_NUMBERS"}]})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 20, "max" => 256}, "smithy.api#pattern" => "^arn:[A-Za-z0-9_:/-]+$"})
    AssociateOriginationIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentityRequest", name: "AssociateOriginationIdentityRequest")
    AssociateOriginationIdentityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentityResult", name: "AssociateOriginationIdentityResult")
    AssociateProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfigurationRequest", name: "AssociateProtectConfigurationRequest")
    AssociateProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfigurationResult", name: "AssociateProtectConfigurationResult")
    AttachmentBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AttachmentBody", name: "AttachmentBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 6990508}})
    AttachmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AttachmentStatus", name: "AttachmentStatus", traits: {"smithy.api#enum" => [{"value" => "UPLOAD_IN_PROGRESS", "name" => "UPLOAD_IN_PROGRESS"}, {"value" => "UPLOAD_COMPLETE", "name" => "UPLOAD_COMPLETE"}, {"value" => "UPLOAD_FAILED", "name" => "UPLOAD_FAILED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    AttachmentUploadErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AttachmentUploadErrorReason", name: "AttachmentUploadErrorReason", traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}]})
    AttachmentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AttachmentUrl", name: "AttachmentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    AvailablePhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#AvailablePhoneNumberList", name: "AvailablePhoneNumberList", traits: {"smithy.api#length" => {"max" => 10}})
    CarrierLookupInputPhoneNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierLookupInputPhoneNumberType", name: "CarrierLookupInputPhoneNumberType", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^\\+[({\\s\\[]?[1-9][0-9(){}\\s\\[\\],.-]{1,38}$"})
    CarrierLookupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierLookupRequest", name: "CarrierLookupRequest")
    CarrierLookupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierLookupResult", name: "CarrierLookupResult")
    CarrierStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierStatus", name: "CarrierStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    CarrierStatusInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierStatusInformation", name: "CarrierStatusInformation")
    CarrierStatusInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CarrierStatusInformationList", name: "CarrierStatusInformationList")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    CloudWatchLogsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CloudWatchLogsDestination", name: "CloudWatchLogsDestination")
    ConditionOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionOperator", name: "ConditionOperator", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    ConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionValue", name: "ConditionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ConditionValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionValueList", name: "ConditionValueList", traits: {"smithy.api#length" => {"max" => 20}})
    ConditionalBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionalBehavior", name: "ConditionalBehavior")
    ConditionalFieldBehavior = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionalFieldBehavior", name: "ConditionalFieldBehavior", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    ConditionalRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionalRule", name: "ConditionalRule")
    ConditionalRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionalRuleList", name: "ConditionalRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ConditionalValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConditionalValidation", name: "ConditionalValidation")
    ConfigurationSetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilter", name: "ConfigurationSetFilter")
    ConfigurationSetFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilterList", name: "ConfigurationSetFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    ConfigurationSetFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetFilterName", name: "ConfigurationSetFilterName", traits: {"smithy.api#enum" => [{"value" => "event-destination-name", "name" => "EVENT_DESTINATION_NAME"}, {"value" => "matching-event-types", "name" => "MATCHING_EVENT_TYPES"}, {"value" => "default-message-type", "name" => "DEFAULT_MESSAGE_TYPE"}, {"value" => "default-sender-id", "name" => "DEFAULT_SENDER_ID"}, {"value" => "default-message-feedback-enabled", "name" => "DEFAULT_MESSAGE_FEEDBACK_ENABLED"}, {"value" => "protect-configuration-id", "name" => "PROTECT_CONFIGURATION_ID"}]})
    ConfigurationSetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetInformation", name: "ConfigurationSetInformation")
    ConfigurationSetInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetInformationList", name: "ConfigurationSetInformationList")
    ConfigurationSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetName", name: "ConfigurationSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConfigurationSetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetNameList", name: "ConfigurationSetNameList", traits: {"smithy.api#length" => {"max" => 5}})
    ConfigurationSetNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConfigurationSetNameOrArn", name: "ConfigurationSetNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ConflictExceptionReason", name: "ConflictExceptionReason", traits: {"smithy.api#enum" => [{"value" => "CREATE_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "CREATE_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "DELETION_PROTECTION_ENABLED", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "DESTINATION_PHONE_NUMBER_NOT_VERIFIED", "name" => "DESTINATION_PHONE_NUMBER_NOT_VERIFIED"}, {"value" => "DESTINATION_PHONE_NUMBER_OPTED_OUT", "name" => "DESTINATION_PHONE_NUMBER_OPTED_OUT"}, {"value" => "DISASSOCIATE_REGISTRATION_NOT_ALLOWED", "name" => "DISASSOCIATE_REGISTRATION_NOT_ALLOWED"}, {"value" => "DISCARD_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "DISCARD_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED", "name" => "EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED"}, {"value" => "EVENT_DESTINATION_MISMATCH", "name" => "EVENT_DESTINATION_MISMATCH"}, {"value" => "KEYWORD_MISMATCH", "name" => "KEYWORD_MISMATCH"}, {"value" => "LAST_PHONE_NUMBER", "name" => "LAST_PHONE_NUMBER"}, {"value" => "NUMBER_CAPABILITIES_MISMATCH", "name" => "NUMBER_CAPABILITIES_MISMATCH"}, {"value" => "MESSAGE_TYPE_MISMATCH", "name" => "MESSAGE_TYPE_MISMATCH"}, {"value" => "NO_ORIGINATION_IDENTITIES_FOUND", "name" => "NO_ORIGINATION_IDENTITIES_FOUND"}, {"value" => "OPT_OUT_LIST_MISMATCH", "name" => "OPT_OUT_LIST_MISMATCH"}, {"value" => "PHONE_NUMBER_ASSOCIATED_TO_POOL", "name" => "PHONE_NUMBER_ASSOCIATED_TO_POOL"}, {"value" => "PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION", "name" => "PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION"}, {"value" => "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL", "name" => "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL"}, {"value" => "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION", "name" => "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION"}, {"value" => "REGISTRATION_ALREADY_SUBMITTED", "name" => "REGISTRATION_ALREADY_SUBMITTED"}, {"value" => "REGISTRATION_NOT_COMPLETE", "name" => "REGISTRATION_NOT_COMPLETE"}, {"value" => "RESOURCE_ALREADY_ASSOCIATED", "name" => "RESOURCE_ALREADY_ASSOCIATED"}, {"value" => "SENDER_ID_ASSOCIATED_TO_POOL", "name" => "SENDER_ID_ASSOCIATED_TO_POOL"}, {"value" => "RCS_AGENT_ASSOCIATED_TO_POOL", "name" => "RCS_AGENT_ASSOCIATED_TO_POOL"}, {"value" => "POOL_ASSOCIATED_TO_NOTIFY_CONFIGURATION", "name" => "POOL_ASSOCIATED_TO_NOTIFY_CONFIGURATION"}, {"value" => "RESOURCE_ALREADY_EXISTS", "name" => "RESOURCE_ALREADY_EXISTS"}, {"value" => "RESOURCE_DELETION_NOT_ALLOWED", "name" => "RESOURCE_DELETION_NOT_ALLOWED"}, {"value" => "RESOURCE_MODIFICATION_NOT_ALLOWED", "name" => "RESOURCE_MODIFICATION_NOT_ALLOWED"}, {"value" => "RESOURCE_NOT_ACTIVE", "name" => "RESOURCE_NOT_ACTIVE"}, {"value" => "RESOURCE_NOT_EMPTY", "name" => "RESOURCE_NOT_EMPTY"}, {"value" => "SELF_MANAGED_OPT_OUTS_MISMATCH", "name" => "SELF_MANAGED_OPT_OUTS_MISMATCH"}, {"value" => "SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED", "name" => "SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED"}, {"value" => "TWO_WAY_CONFIG_MISMATCH", "name" => "TWO_WAY_CONFIG_MISMATCH"}, {"value" => "VERIFICATION_CODE_EXPIRED", "name" => "VERIFICATION_CODE_EXPIRED"}, {"value" => "VERIFICATION_ALREADY_COMPLETE", "name" => "VERIFICATION_ALREADY_COMPLETE"}, {"value" => "PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT", "name" => "PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT"}, {"value" => "PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET", "name" => "PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET"}, {"value" => "PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET", "name" => "PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET"}, {"value" => "DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION", "name" => "DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION"}, {"value" => "DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE", "name" => "DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE"}, {"value" => "RCS_AGENT_ALREADY_ASSOCIATED_TO_REGISTRATION_TYPE", "name" => "RCS_AGENT_ALREADY_ASSOCIATED_TO_REGISTRATION_TYPE"}, {"value" => "NOTIFY_CONFIGURATION_NOT_ACTIVE", "name" => "NOTIFY_CONFIGURATION_NOT_ACTIVE"}]})
    ContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ContextKey", name: "ContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S+$"})
    ContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ContextMap", name: "ContextMap", traits: {"smithy.api#length" => {"max" => 5}})
    ContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ContextValue", name: "ContextValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => "^(?!\\s)^[\\s\\S]+(?<!\\s)$"})
    CountryLaunchStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatus", name: "CountryLaunchStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "PARTIAL", "name" => "PARTIAL"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    CountryLaunchStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatusFilter", name: "CountryLaunchStatusFilter")
    CountryLaunchStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatusFilterList", name: "CountryLaunchStatusFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    CountryLaunchStatusFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatusFilterName", name: "CountryLaunchStatusFilterName", traits: {"smithy.api#enum" => [{"value" => "country-launch-status", "name" => "COUNTRY_LAUNCH_STATUS"}]})
    CountryLaunchStatusInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatusInformation", name: "CountryLaunchStatusInformation")
    CountryLaunchStatusInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CountryLaunchStatusInformationList", name: "CountryLaunchStatusInformationList")
    CreateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSetRequest", name: "CreateConfigurationSetRequest")
    CreateConfigurationSetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSetResult", name: "CreateConfigurationSetResult")
    CreateEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateEventDestinationRequest", name: "CreateEventDestinationRequest")
    CreateEventDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateEventDestinationResult", name: "CreateEventDestinationResult")
    CreateNotifyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateNotifyConfigurationRequest", name: "CreateNotifyConfigurationRequest")
    CreateNotifyConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateNotifyConfigurationResult", name: "CreateNotifyConfigurationResult")
    CreateOptOutListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateOptOutListRequest", name: "CreateOptOutListRequest")
    CreateOptOutListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateOptOutListResult", name: "CreateOptOutListResult")
    CreatePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreatePoolRequest", name: "CreatePoolRequest")
    CreatePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreatePoolResult", name: "CreatePoolResult")
    CreateProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateProtectConfigurationRequest", name: "CreateProtectConfigurationRequest")
    CreateProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateProtectConfigurationResult", name: "CreateProtectConfigurationResult")
    CreateRcsAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRcsAgentRequest", name: "CreateRcsAgentRequest")
    CreateRcsAgentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRcsAgentResult", name: "CreateRcsAgentResult")
    CreateRegistrationAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociationRequest", name: "CreateRegistrationAssociationRequest")
    CreateRegistrationAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociationResult", name: "CreateRegistrationAssociationResult")
    CreateRegistrationAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachmentRequest", name: "CreateRegistrationAttachmentRequest")
    CreateRegistrationAttachmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachmentResult", name: "CreateRegistrationAttachmentResult")
    CreateRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationRequest", name: "CreateRegistrationRequest")
    CreateRegistrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationResult", name: "CreateRegistrationResult")
    CreateRegistrationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersionRequest", name: "CreateRegistrationVersionRequest")
    CreateRegistrationVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersionResult", name: "CreateRegistrationVersionResult")
    CreateVerifiedDestinationNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumberRequest", name: "CreateVerifiedDestinationNumberRequest")
    CreateVerifiedDestinationNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumberResult", name: "CreateVerifiedDestinationNumberResult")
    DeleteAccountDefaultProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfigurationRequest", name: "DeleteAccountDefaultProtectConfigurationRequest")
    DeleteAccountDefaultProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfigurationResult", name: "DeleteAccountDefaultProtectConfigurationResult")
    DeleteConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSetRequest", name: "DeleteConfigurationSetRequest")
    DeleteConfigurationSetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSetResult", name: "DeleteConfigurationSetResult")
    DeleteDefaultMessageTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageTypeRequest", name: "DeleteDefaultMessageTypeRequest")
    DeleteDefaultMessageTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageTypeResult", name: "DeleteDefaultMessageTypeResult")
    DeleteDefaultSenderIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderIdRequest", name: "DeleteDefaultSenderIdRequest")
    DeleteDefaultSenderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderIdResult", name: "DeleteDefaultSenderIdResult")
    DeleteEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteEventDestinationRequest", name: "DeleteEventDestinationRequest")
    DeleteEventDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteEventDestinationResult", name: "DeleteEventDestinationResult")
    DeleteKeywordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteKeywordRequest", name: "DeleteKeywordRequest")
    DeleteKeywordResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteKeywordResult", name: "DeleteKeywordResult")
    DeleteMediaMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverrideRequest", name: "DeleteMediaMessageSpendLimitOverrideRequest")
    DeleteMediaMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverrideResult", name: "DeleteMediaMessageSpendLimitOverrideResult")
    DeleteNotifyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyConfigurationRequest", name: "DeleteNotifyConfigurationRequest")
    DeleteNotifyConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyConfigurationResult", name: "DeleteNotifyConfigurationResult")
    DeleteNotifyMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyMessageSpendLimitOverrideRequest", name: "DeleteNotifyMessageSpendLimitOverrideRequest")
    DeleteNotifyMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyMessageSpendLimitOverrideResult", name: "DeleteNotifyMessageSpendLimitOverrideResult")
    DeleteOptOutListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteOptOutListRequest", name: "DeleteOptOutListRequest")
    DeleteOptOutListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteOptOutListResult", name: "DeleteOptOutListResult")
    DeleteOptedOutNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumberRequest", name: "DeleteOptedOutNumberRequest")
    DeleteOptedOutNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumberResult", name: "DeleteOptedOutNumberResult")
    DeletePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeletePoolRequest", name: "DeletePoolRequest")
    DeletePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeletePoolResult", name: "DeletePoolResult")
    DeleteProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRequest", name: "DeleteProtectConfigurationRequest")
    DeleteProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationResult", name: "DeleteProtectConfigurationResult")
    DeleteProtectConfigurationRuleSetNumberOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverrideRequest", name: "DeleteProtectConfigurationRuleSetNumberOverrideRequest")
    DeleteProtectConfigurationRuleSetNumberOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverrideResult", name: "DeleteProtectConfigurationRuleSetNumberOverrideResult")
    DeleteRcsAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRcsAgentRequest", name: "DeleteRcsAgentRequest")
    DeleteRcsAgentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRcsAgentResult", name: "DeleteRcsAgentResult")
    DeleteRcsMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRcsMessageSpendLimitOverrideRequest", name: "DeleteRcsMessageSpendLimitOverrideRequest")
    DeleteRcsMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRcsMessageSpendLimitOverrideResult", name: "DeleteRcsMessageSpendLimitOverrideResult")
    DeleteRegistrationAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachmentRequest", name: "DeleteRegistrationAttachmentRequest")
    DeleteRegistrationAttachmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachmentResult", name: "DeleteRegistrationAttachmentResult")
    DeleteRegistrationFieldValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValueRequest", name: "DeleteRegistrationFieldValueRequest")
    DeleteRegistrationFieldValueResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValueResult", name: "DeleteRegistrationFieldValueResult")
    DeleteRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationRequest", name: "DeleteRegistrationRequest")
    DeleteRegistrationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationResult", name: "DeleteRegistrationResult")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicyResult", name: "DeleteResourcePolicyResult")
    DeleteTextMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverrideRequest", name: "DeleteTextMessageSpendLimitOverrideRequest")
    DeleteTextMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverrideResult", name: "DeleteTextMessageSpendLimitOverrideResult")
    DeleteVerifiedDestinationNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumberRequest", name: "DeleteVerifiedDestinationNumberRequest")
    DeleteVerifiedDestinationNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumberResult", name: "DeleteVerifiedDestinationNumberResult")
    DeleteVoiceMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverrideRequest", name: "DeleteVoiceMessageSpendLimitOverrideRequest")
    DeleteVoiceMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverrideResult", name: "DeleteVoiceMessageSpendLimitOverrideResult")
    DeliveryStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DeliveryStreamArn", name: "DeliveryStreamArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    DescribeAccountAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributesRequest", name: "DescribeAccountAttributesRequest")
    DescribeAccountAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributesResult", name: "DescribeAccountAttributesResult")
    DescribeAccountLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimitsRequest", name: "DescribeAccountLimitsRequest")
    DescribeAccountLimitsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimitsResult", name: "DescribeAccountLimitsResult")
    DescribeConfigurationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSetsRequest", name: "DescribeConfigurationSetsRequest")
    DescribeConfigurationSetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSetsResult", name: "DescribeConfigurationSetsResult")
    DescribeKeywordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeKeywordsRequest", name: "DescribeKeywordsRequest")
    DescribeKeywordsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeKeywordsResult", name: "DescribeKeywordsResult")
    DescribeNotifyConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyConfigurationsRequest", name: "DescribeNotifyConfigurationsRequest")
    DescribeNotifyConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyConfigurationsResult", name: "DescribeNotifyConfigurationsResult")
    DescribeNotifyTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyTemplatesRequest", name: "DescribeNotifyTemplatesRequest")
    DescribeNotifyTemplatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyTemplatesResult", name: "DescribeNotifyTemplatesResult")
    DescribeOptOutListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeOptOutListsRequest", name: "DescribeOptOutListsRequest")
    DescribeOptOutListsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeOptOutListsResult", name: "DescribeOptOutListsResult")
    DescribeOptedOutNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbersRequest", name: "DescribeOptedOutNumbersRequest")
    DescribeOptedOutNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbersResult", name: "DescribeOptedOutNumbersResult")
    DescribePhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbersRequest", name: "DescribePhoneNumbersRequest")
    DescribePhoneNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbersResult", name: "DescribePhoneNumbersResult")
    DescribePoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribePoolsRequest", name: "DescribePoolsRequest")
    DescribePoolsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribePoolsResult", name: "DescribePoolsResult")
    DescribeProtectConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurationsRequest", name: "DescribeProtectConfigurationsRequest")
    DescribeProtectConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurationsResult", name: "DescribeProtectConfigurationsResult")
    DescribeRcsAgentCountryLaunchStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgentCountryLaunchStatusRequest", name: "DescribeRcsAgentCountryLaunchStatusRequest")
    DescribeRcsAgentCountryLaunchStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgentCountryLaunchStatusResult", name: "DescribeRcsAgentCountryLaunchStatusResult")
    DescribeRcsAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgentsRequest", name: "DescribeRcsAgentsRequest")
    DescribeRcsAgentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgentsResult", name: "DescribeRcsAgentsResult")
    DescribeRegistrationAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachmentsRequest", name: "DescribeRegistrationAttachmentsRequest")
    DescribeRegistrationAttachmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachmentsResult", name: "DescribeRegistrationAttachmentsResult")
    DescribeRegistrationFieldDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitionsRequest", name: "DescribeRegistrationFieldDefinitionsRequest")
    DescribeRegistrationFieldDefinitionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitionsResult", name: "DescribeRegistrationFieldDefinitionsResult")
    DescribeRegistrationFieldValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValuesRequest", name: "DescribeRegistrationFieldValuesRequest")
    DescribeRegistrationFieldValuesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValuesResult", name: "DescribeRegistrationFieldValuesResult")
    DescribeRegistrationSectionDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitionsRequest", name: "DescribeRegistrationSectionDefinitionsRequest")
    DescribeRegistrationSectionDefinitionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitionsResult", name: "DescribeRegistrationSectionDefinitionsResult")
    DescribeRegistrationTypeDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitionsRequest", name: "DescribeRegistrationTypeDefinitionsRequest")
    DescribeRegistrationTypeDefinitionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitionsResult", name: "DescribeRegistrationTypeDefinitionsResult")
    DescribeRegistrationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersionsRequest", name: "DescribeRegistrationVersionsRequest")
    DescribeRegistrationVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersionsResult", name: "DescribeRegistrationVersionsResult")
    DescribeRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationsRequest", name: "DescribeRegistrationsRequest")
    DescribeRegistrationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationsResult", name: "DescribeRegistrationsResult")
    DescribeSenderIdsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeSenderIdsRequest", name: "DescribeSenderIdsRequest")
    DescribeSenderIdsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeSenderIdsResult", name: "DescribeSenderIdsResult")
    DescribeSpendLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimitsRequest", name: "DescribeSpendLimitsRequest")
    DescribeSpendLimitsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimitsResult", name: "DescribeSpendLimitsResult")
    DescribeVerifiedDestinationNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbersRequest", name: "DescribeVerifiedDestinationNumbersRequest")
    DescribeVerifiedDestinationNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbersResult", name: "DescribeVerifiedDestinationNumbersResult")
    DestinationCountryParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameterKey", name: "DestinationCountryParameterKey", traits: {"smithy.api#enum" => [{"value" => "IN_TEMPLATE_ID", "name" => "IN_TEMPLATE_ID"}, {"value" => "IN_ENTITY_ID", "name" => "IN_ENTITY_ID"}]})
    DestinationCountryParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameterValue", name: "DestinationCountryParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    DestinationCountryParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DestinationCountryParameters", name: "DestinationCountryParameters", traits: {"smithy.api#length" => {"max" => 10}})
    DestinationPhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DestinationPhoneNumberList", name: "DestinationPhoneNumberList", traits: {"smithy.api#length" => {"max" => 5}})
    DialingCountryCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DialingCountryCodeType", name: "DialingCountryCodeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#pattern" => "^[\\d]+$"})
    DisassociateOriginationIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentityRequest", name: "DisassociateOriginationIdentityRequest")
    DisassociateOriginationIdentityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentityResult", name: "DisassociateOriginationIdentityResult")
    DisassociateProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfigurationRequest", name: "DisassociateProtectConfigurationRequest")
    DisassociateProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfigurationResult", name: "DisassociateProtectConfigurationResult")
    DiscardRegistrationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersionRequest", name: "DiscardRegistrationVersionRequest")
    DiscardRegistrationVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersionResult", name: "DiscardRegistrationVersionResult")
    E164PhoneNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#E164PhoneNumberType", name: "E164PhoneNumberType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^\\+[1-9][0-9]{1,18}$"})
    EventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#EventDestination", name: "EventDestination")
    EventDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#EventDestinationList", name: "EventDestinationList")
    EventDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#EventDestinationName", name: "EventDestinationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    EventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#EventType", name: "EventType", traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL"}, {"value" => "TEXT_ALL", "name" => "TEXT_ALL"}, {"value" => "TEXT_SENT", "name" => "TEXT_SENT"}, {"value" => "TEXT_PENDING", "name" => "TEXT_PENDING"}, {"value" => "TEXT_QUEUED", "name" => "TEXT_QUEUED"}, {"value" => "TEXT_SUCCESSFUL", "name" => "TEXT_SUCCESSFUL"}, {"value" => "TEXT_DELIVERED", "name" => "TEXT_DELIVERED"}, {"value" => "TEXT_INVALID", "name" => "TEXT_INVALID"}, {"value" => "TEXT_INVALID_MESSAGE", "name" => "TEXT_INVALID_MESSAGE"}, {"value" => "TEXT_UNREACHABLE", "name" => "TEXT_UNREACHABLE"}, {"value" => "TEXT_CARRIER_UNREACHABLE", "name" => "TEXT_CARRIER_UNREACHABLE"}, {"value" => "TEXT_BLOCKED", "name" => "TEXT_BLOCKED"}, {"value" => "TEXT_CARRIER_BLOCKED", "name" => "TEXT_CARRIER_BLOCKED"}, {"value" => "TEXT_SPAM", "name" => "TEXT_SPAM"}, {"value" => "TEXT_UNKNOWN", "name" => "TEXT_UNKNOWN"}, {"value" => "TEXT_TTL_EXPIRED", "name" => "TEXT_TTL_EXPIRED"}, {"value" => "TEXT_PROTECT_BLOCKED", "name" => "TEXT_PROTECT_BLOCKED"}, {"value" => "VOICE_ALL", "name" => "VOICE_ALL"}, {"value" => "VOICE_INITIATED", "name" => "VOICE_INITIATED"}, {"value" => "VOICE_RINGING", "name" => "VOICE_RINGING"}, {"value" => "VOICE_ANSWERED", "name" => "VOICE_ANSWERED"}, {"value" => "VOICE_COMPLETED", "name" => "VOICE_COMPLETED"}, {"value" => "VOICE_BUSY", "name" => "VOICE_BUSY"}, {"value" => "VOICE_NO_ANSWER", "name" => "VOICE_NO_ANSWER"}, {"value" => "VOICE_FAILED", "name" => "VOICE_FAILED"}, {"value" => "VOICE_TTL_EXPIRED", "name" => "VOICE_TTL_EXPIRED"}, {"value" => "MEDIA_ALL", "name" => "MEDIA_ALL"}, {"value" => "MEDIA_PENDING", "name" => "MEDIA_PENDING"}, {"value" => "MEDIA_QUEUED", "name" => "MEDIA_QUEUED"}, {"value" => "MEDIA_SUCCESSFUL", "name" => "MEDIA_SUCCESSFUL"}, {"value" => "MEDIA_DELIVERED", "name" => "MEDIA_DELIVERED"}, {"value" => "MEDIA_INVALID", "name" => "MEDIA_INVALID"}, {"value" => "MEDIA_INVALID_MESSAGE", "name" => "MEDIA_INVALID_MESSAGE"}, {"value" => "MEDIA_UNREACHABLE", "name" => "MEDIA_UNREACHABLE"}, {"value" => "MEDIA_CARRIER_UNREACHABLE", "name" => "MEDIA_CARRIER_UNREACHABLE"}, {"value" => "MEDIA_BLOCKED", "name" => "MEDIA_BLOCKED"}, {"value" => "MEDIA_CARRIER_BLOCKED", "name" => "MEDIA_CARRIER_BLOCKED"}, {"value" => "MEDIA_SPAM", "name" => "MEDIA_SPAM"}, {"value" => "MEDIA_UNKNOWN", "name" => "MEDIA_UNKNOWN"}, {"value" => "MEDIA_TTL_EXPIRED", "name" => "MEDIA_TTL_EXPIRED"}, {"value" => "MEDIA_FILE_INACCESSIBLE", "name" => "MEDIA_FILE_INACCESSIBLE"}, {"value" => "MEDIA_FILE_TYPE_UNSUPPORTED", "name" => "MEDIA_FILE_TYPE_UNSUPPORTED"}, {"value" => "MEDIA_FILE_SIZE_EXCEEDED", "name" => "MEDIA_FILE_SIZE_EXCEEDED"}, {"value" => "RCS_ALL", "name" => "RCS_ALL"}, {"value" => "RCS_QUEUED", "name" => "RCS_QUEUED"}, {"value" => "RCS_SENT", "name" => "RCS_SENT"}, {"value" => "RCS_DELIVERED", "name" => "RCS_DELIVERED"}, {"value" => "RCS_READ", "name" => "RCS_READ"}, {"value" => "RCS_FAILED", "name" => "RCS_FAILED"}, {"value" => "RCS_TTL_EXPIRED", "name" => "RCS_TTL_EXPIRED"}, {"value" => "RCS_PROTECT_BLOCKED", "name" => "RCS_PROTECT_BLOCKED"}, {"value" => "RCS_FALLEN_BACK_TO_SMS", "name" => "RCS_FALLEN_BACK_TO_SMS"}]})
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#EventTypeList", name: "EventTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 52}})
    FieldCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldCondition", name: "FieldCondition")
    FieldConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldConditionList", name: "FieldConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    FieldPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldPath", name: "FieldPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.]+$"})
    FieldPathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldPathList", name: "FieldPathList", traits: {"smithy.api#length" => {"max" => 5}})
    FieldRequirement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldRequirement", name: "FieldRequirement", traits: {"smithy.api#enum" => [{"value" => "REQUIRED", "name" => "REQUIRED"}, {"value" => "CONDITIONAL", "name" => "CONDITIONAL"}, {"value" => "OPTIONAL", "name" => "OPTIONAL"}]})
    FieldType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FieldType", name: "FieldType", traits: {"smithy.api#enum" => [{"value" => "SELECT", "name" => "SELECT"}, {"value" => "TEXT", "name" => "TEXT"}, {"value" => "ATTACHMENT", "name" => "ATTACHMENT"}]})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[/\\.:A-Za-z0-9+_-]+$"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GetProtectConfigurationCountryRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSetRequest", name: "GetProtectConfigurationCountryRuleSetRequest")
    GetProtectConfigurationCountryRuleSetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSetResult", name: "GetProtectConfigurationCountryRuleSetResult")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#GetResourcePolicyResult", name: "GetResourcePolicyResult")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    IamRoleArnOrUnset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#IamRoleArnOrUnset", name: "IamRoleArnOrUnset", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(arn:\\S+|UNSET_RCS_MEDIA_CONFIGURATION)$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#retryable" => {}})
    IsoCountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#IsoCountryCode", name: "IsoCountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    IsoCountryCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#IsoCountryCodeList", name: "IsoCountryCodeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    Keyword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#Keyword", name: "Keyword", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[ \\S]+$"})
    KeywordAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordAction", name: "KeywordAction", traits: {"smithy.api#enum" => [{"value" => "AUTOMATIC_RESPONSE", "name" => "AUTOMATIC_RESPONSE"}, {"value" => "OPT_OUT", "name" => "OPT_OUT"}, {"value" => "OPT_IN", "name" => "OPT_IN"}]})
    KeywordFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordFilter", name: "KeywordFilter")
    KeywordFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordFilterList", name: "KeywordFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    KeywordFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordFilterName", name: "KeywordFilterName", traits: {"smithy.api#enum" => [{"value" => "keyword-action", "name" => "KEYWORD_ACTION"}]})
    KeywordInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordInformation", name: "KeywordInformation")
    KeywordInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordInformationList", name: "KeywordInformationList")
    KeywordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordList", name: "KeywordList", traits: {"smithy.api#length" => {"max" => 5}})
    KeywordMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KeywordMessage", name: "KeywordMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    KinesisFirehoseDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#KinesisFirehoseDestination", name: "KinesisFirehoseDestination")
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#LanguageCode", name: "LanguageCode", traits: {"smithy.api#enum" => [{"value" => "DE_DE", "name" => "DE_DE"}, {"value" => "EN_GB", "name" => "EN_GB"}, {"value" => "EN_US", "name" => "EN_US"}, {"value" => "ES_419", "name" => "ES_419"}, {"value" => "ES_ES", "name" => "ES_ES"}, {"value" => "FR_CA", "name" => "FR_CA"}, {"value" => "FR_FR", "name" => "FR_FR"}, {"value" => "IT_IT", "name" => "IT_IT"}, {"value" => "JA_JP", "name" => "JA_JP"}, {"value" => "KO_KR", "name" => "KO_KR"}, {"value" => "PT_BR", "name" => "PT_BR"}, {"value" => "ZH_CN", "name" => "ZH_CN"}, {"value" => "ZH_TW", "name" => "ZH_TW"}]})
    ListAvailablePhoneNumbersMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListAvailablePhoneNumbersMaxResults", name: "ListAvailablePhoneNumbersMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ListAvailablePhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListAvailablePhoneNumbersRequest", name: "ListAvailablePhoneNumbersRequest")
    ListAvailablePhoneNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListAvailablePhoneNumbersResult", name: "ListAvailablePhoneNumbersResult")
    ListNotifyCountriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListNotifyCountriesRequest", name: "ListNotifyCountriesRequest")
    ListNotifyCountriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListNotifyCountriesResult", name: "ListNotifyCountriesResult")
    ListPoolOriginationIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentitiesRequest", name: "ListPoolOriginationIdentitiesRequest")
    ListPoolOriginationIdentitiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentitiesResult", name: "ListPoolOriginationIdentitiesResult")
    ListProtectConfigurationRuleSetNumberOverrideFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverrideFilter", name: "ListProtectConfigurationRuleSetNumberOverrideFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListProtectConfigurationRuleSetNumberOverridesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverridesRequest", name: "ListProtectConfigurationRuleSetNumberOverridesRequest")
    ListProtectConfigurationRuleSetNumberOverridesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverridesResult", name: "ListProtectConfigurationRuleSetNumberOverridesResult")
    ListRegistrationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociationsRequest", name: "ListRegistrationAssociationsRequest")
    ListRegistrationAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociationsResult", name: "ListRegistrationAssociationsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#LogGroupArn", name: "LogGroupArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    LongMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#LongMap", name: "LongMap")
    MCCType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MCCType", name: "MCCType", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[\\d]+$"})
    MNCType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MNCType", name: "MNCType", traits: {"smithy.api#length" => {"min" => 2, "max" => 3}, "smithy.api#pattern" => "^[\\d]+$"})
    MaxPrice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MaxPrice", name: "MaxPrice", traits: {"smithy.api#length" => {"min" => 2, "max" => 8}, "smithy.api#pattern" => "^[0-9]{0,2}\\.[0-9]{1,5}$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MediaMessageOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MediaMessageOriginationIdentity", name: "MediaMessageOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    MediaUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MediaUrlList", name: "MediaUrlList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MediaUrlValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MediaUrlValue", name: "MediaUrlValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^s3://([a-z0-9\\.-]{3,63})/(.+)$"})
    MessageFeedbackStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MessageFeedbackStatus", name: "MessageFeedbackStatus", traits: {"smithy.api#enum" => [{"value" => "RECEIVED", "name" => "RECEIVED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MessageType", name: "MessageType", traits: {"smithy.api#enum" => [{"value" => "TRANSACTIONAL", "name" => "TRANSACTIONAL"}, {"value" => "PROMOTIONAL", "name" => "PROMOTIONAL"}]})
    MessageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MessageTypeList", name: "MessageTypeList", traits: {"smithy.api#length" => {"max" => 2}})
    MessagingLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MessagingLimits", name: "MessagingLimits")
    MonthlyLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#MonthlyLimit", name: "MonthlyLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    NonEmptyTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NonEmptyTagList", name: "NonEmptyTagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    NotifyConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationArn", name: "NotifyConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:\\S+$"})
    NotifyConfigurationDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationDisplayName", name: "NotifyConfigurationDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[A-Za-z0-9_ -]+$"})
    NotifyConfigurationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationFilter", name: "NotifyConfigurationFilter")
    NotifyConfigurationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationFilterList", name: "NotifyConfigurationFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    NotifyConfigurationFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationFilterName", name: "NotifyConfigurationFilterName", traits: {"smithy.api#enum" => [{"value" => "display-name", "name" => "DISPLAY_NAME"}, {"value" => "enabled-countries", "name" => "ENABLED_COUNTRIES"}, {"value" => "enabled-channels", "name" => "ENABLED_CHANNELS"}, {"value" => "default-template", "name" => "DEFAULT_TEMPLATE"}, {"value" => "default-pool", "name" => "DEFAULT_POOL"}, {"value" => "use-case", "name" => "USE_CASE"}, {"value" => "status", "name" => "STATUS"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "tier-upgrade-status", "name" => "TIER_UPGRADE_STATUS"}]})
    NotifyConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationId", name: "NotifyConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    NotifyConfigurationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationIdList", name: "NotifyConfigurationIdList", traits: {"smithy.api#length" => {"max" => 5}})
    NotifyConfigurationIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationIdOrArn", name: "NotifyConfigurationIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    NotifyConfigurationInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationInformation", name: "NotifyConfigurationInformation")
    NotifyConfigurationInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationInformationList", name: "NotifyConfigurationInformationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NotifyConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationStatus", name: "NotifyConfigurationStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "REJECTED", "name" => "REJECTED"}, {"value" => "REQUIRES_VERIFICATION", "name" => "REQUIRES_VERIFICATION"}]})
    NotifyConfigurationTier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationTier", name: "NotifyConfigurationTier", traits: {"smithy.api#enum" => [{"value" => "BASIC", "name" => "BASIC"}, {"value" => "ADVANCED", "name" => "ADVANCED"}]})
    NotifyConfigurationTierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationTierList", name: "NotifyConfigurationTierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    NotifyConfigurationUseCase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyConfigurationUseCase", name: "NotifyConfigurationUseCase", traits: {"smithy.api#enum" => [{"value" => "CODE_VERIFICATION", "name" => "CODE_VERIFICATION"}]})
    NotifyCountryInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyCountryInformation", name: "NotifyCountryInformation")
    NotifyCountryInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyCountryInformationList", name: "NotifyCountryInformationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    NotifyEnabledChannelsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyEnabledChannelsList", name: "NotifyEnabledChannelsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    NotifyLanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyLanguageCode", name: "NotifyLanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 5}, "smithy.api#pattern" => "^[a-z]{2}(-[A-Z]{2})?$"})
    NotifyPoolIdOrUnset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyPoolIdOrUnset", name: "NotifyPoolIdOrUnset", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([A-Za-z0-9_:/-]+|UNSET_DEFAULT_POOL_FOR_NOTIFY)$"})
    NotifyTemplateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateFilter", name: "NotifyTemplateFilter")
    NotifyTemplateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateFilterList", name: "NotifyTemplateFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    NotifyTemplateFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateFilterName", name: "NotifyTemplateFilterName", traits: {"smithy.api#enum" => [{"value" => "template-type", "name" => "TEMPLATE_TYPE"}, {"value" => "channels", "name" => "CHANNELS"}, {"value" => "tier-access", "name" => "TIER_ACCESS"}, {"value" => "supported-countries", "name" => "SUPPORTED_COUNTRIES"}, {"value" => "language-code", "name" => "LANGUAGE_CODE"}, {"value" => "supported-voice-ids", "name" => "SUPPORTED_VOICE_IDS"}]})
    NotifyTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateId", name: "NotifyTemplateId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([A-Za-z0-9_-]*|UNSET_DEFAULT_TEMPLATE)$"})
    NotifyTemplateIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateIdList", name: "NotifyTemplateIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    NotifyTemplateInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateInformation", name: "NotifyTemplateInformation")
    NotifyTemplateInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateInformationList", name: "NotifyTemplateInformationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NotifyTemplateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateStatus", name: "NotifyTemplateStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}]})
    NotifyTemplateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateType", name: "NotifyTemplateType", traits: {"smithy.api#enum" => [{"value" => "OTP_VERIFICATION", "name" => "OTP_VERIFICATION"}]})
    NotifyTemplateVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTemplateVersion", name: "NotifyTemplateVersion", traits: {"smithy.api#range" => {"min" => 1}})
    NotifyTierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyTierList", name: "NotifyTierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    NotifyUseCaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NotifyUseCaseList", name: "NotifyUseCaseList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    NumberCapability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberCapability", name: "NumberCapability", traits: {"smithy.api#enum" => [{"value" => "SMS", "name" => "SMS"}, {"value" => "VOICE", "name" => "VOICE"}, {"value" => "MMS", "name" => "MMS"}, {"value" => "RCS", "name" => "RCS"}]})
    NumberCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberCapabilityList", name: "NumberCapabilityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    NumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberFilterList", name: "NumberFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    NumberFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberFilterValue", name: "NumberFilterValue", traits: {"smithy.api#length" => {"min" => 2, "max" => 16}, "smithy.api#pattern" => "^\\+?[0-9]{1,15}$"})
    NumberPreferenceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberPreferenceItem", name: "NumberPreferenceItem")
    NumberPreferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberPreferenceList", name: "NumberPreferenceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    NumberStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberStatus", name: "NumberStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ASSOCIATING", "name" => "ASSOCIATING"}, {"value" => "DISASSOCIATING", "name" => "DISASSOCIATING"}, {"value" => "DELETED", "name" => "DELETED"}]})
    NumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#NumberType", name: "NumberType", traits: {"smithy.api#enum" => [{"value" => "SHORT_CODE", "name" => "SHORT_CODE"}, {"value" => "LONG_CODE", "name" => "LONG_CODE"}, {"value" => "TOLL_FREE", "name" => "TOLL_FREE"}, {"value" => "TEN_DLC", "name" => "TEN_DLC"}, {"value" => "SIMULATOR", "name" => "SIMULATOR"}]})
    OptOutListInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptOutListInformation", name: "OptOutListInformation")
    OptOutListInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptOutListInformationList", name: "OptOutListInformationList")
    OptOutListName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptOutListName", name: "OptOutListName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    OptOutListNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptOutListNameList", name: "OptOutListNameList", traits: {"smithy.api#length" => {"max" => 5}})
    OptOutListNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptOutListNameOrArn", name: "OptOutListNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    OptedOutFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutFilter", name: "OptedOutFilter")
    OptedOutFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutFilterList", name: "OptedOutFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    OptedOutFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutFilterName", name: "OptedOutFilterName", traits: {"smithy.api#enum" => [{"value" => "end-user-opted-out", "name" => "END_USER_OPTED_OUT"}]})
    OptedOutNumberInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutNumberInformation", name: "OptedOutNumberInformation")
    OptedOutNumberInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutNumberInformationList", name: "OptedOutNumberInformationList")
    OptedOutNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OptedOutNumberList", name: "OptedOutNumberList", traits: {"smithy.api#length" => {"max" => 5}})
    OriginationIdentityMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OriginationIdentityMetadata", name: "OriginationIdentityMetadata")
    OriginationIdentityMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#OriginationIdentityMetadataList", name: "OriginationIdentityMetadataList")
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#Owner", name: "Owner", traits: {"smithy.api#enum" => [{"value" => "SELF", "name" => "SELF"}, {"value" => "SHARED", "name" => "SHARED"}]})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^\\+?[1-9][0-9]{1,18}$"})
    PhoneNumberFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilter", name: "PhoneNumberFilter")
    PhoneNumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilterList", name: "PhoneNumberFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    PhoneNumberFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberFilterName", name: "PhoneNumberFilterName", traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "number-capability", "name" => "NUMBER_CAPABILITY"}, {"value" => "number-type", "name" => "NUMBER_TYPE"}, {"value" => "two-way-enabled", "name" => "TWO_WAY_ENABLED"}, {"value" => "self-managed-opt-outs-enabled", "name" => "SELF_MANAGED_OPT_OUTS_ENABLED"}, {"value" => "opt-out-list-name", "name" => "OPT_OUT_LIST_NAME"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "two-way-channel-arn", "name" => "TWO_WAY_CHANNEL_ARN"}]})
    PhoneNumberIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberIdList", name: "PhoneNumberIdList", traits: {"smithy.api#length" => {"max" => 5}})
    PhoneNumberIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberIdOrArn", name: "PhoneNumberIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PhoneNumberInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberInformation", name: "PhoneNumberInformation")
    PhoneNumberInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberInformationList", name: "PhoneNumberInformationList")
    PhoneNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneNumberType", name: "PhoneNumberType", traits: {"smithy.api#enum" => [{"value" => "MOBILE", "name" => "MOBILE"}, {"value" => "LANDLINE", "name" => "LANDLINE"}, {"value" => "VOIP", "name" => "VOIP"}, {"value" => "PREPAID", "name" => "PREPAID"}, {"value" => "OTHER", "name" => "OTHER"}, {"value" => "INVALID", "name" => "INVALID"}]})
    PhoneOrPoolIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneOrPoolIdOrArn", name: "PhoneOrPoolIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PhoneOrSenderIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PhoneOrSenderIdOrArn", name: "PhoneOrSenderIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    PoolFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolFilter", name: "PoolFilter")
    PoolFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolFilterList", name: "PoolFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    PoolFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolFilterName", name: "PoolFilterName", traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "two-way-enabled", "name" => "TWO_WAY_ENABLED"}, {"value" => "self-managed-opt-outs-enabled", "name" => "SELF_MANAGED_OPT_OUTS_ENABLED"}, {"value" => "opt-out-list-name", "name" => "OPT_OUT_LIST_NAME"}, {"value" => "shared-routes-enabled", "name" => "SHARED_ROUTES_ENABLED"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "two-way-channel-arn", "name" => "TWO_WAY_CHANNEL_ARN"}]})
    PoolIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolIdList", name: "PoolIdList", traits: {"smithy.api#length" => {"max" => 5}})
    PoolIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolIdOrArn", name: "PoolIdOrArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]*$"})
    PoolInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolInformation", name: "PoolInformation")
    PoolInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolInformationList", name: "PoolInformationList")
    PoolOriginationIdentitiesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilter", name: "PoolOriginationIdentitiesFilter")
    PoolOriginationIdentitiesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilterList", name: "PoolOriginationIdentitiesFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    PoolOriginationIdentitiesFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolOriginationIdentitiesFilterName", name: "PoolOriginationIdentitiesFilterName", traits: {"smithy.api#enum" => [{"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "number-capability", "name" => "NUMBER_CAPABILITY"}]})
    PoolStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PoolStatus", name: "PoolStatus", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}]})
    PreferenceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PreferenceType", name: "PreferenceType", traits: {"smithy.api#enum" => [{"value" => "StartsWith", "name" => "STARTS_WITH"}, {"value" => "EndsWith", "name" => "ENDS_WITH"}, {"value" => "Contains", "name" => "CONTAINS"}, {"value" => "ExactMatch", "name" => "EXACT_MATCH"}]})
    PreferenceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PreferenceTypeList", name: "PreferenceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationArn", name: "ProtectConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:\\S+$"})
    ProtectConfigurationCountryRuleSet = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationCountryRuleSet", name: "ProtectConfigurationCountryRuleSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ProtectConfigurationCountryRuleSetInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationCountryRuleSetInformation", name: "ProtectConfigurationCountryRuleSetInformation")
    ProtectConfigurationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilter", name: "ProtectConfigurationFilter")
    ProtectConfigurationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilterList", name: "ProtectConfigurationFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    ProtectConfigurationFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationFilterName", name: "ProtectConfigurationFilterName", traits: {"smithy.api#enum" => [{"value" => "account-default", "name" => "ACCOUNT_DEFAULT"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}]})
    ProtectConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationId", name: "ProtectConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ProtectConfigurationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationIdList", name: "ProtectConfigurationIdList", traits: {"smithy.api#length" => {"max" => 5}})
    ProtectConfigurationIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationIdOrArn", name: "ProtectConfigurationIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ProtectConfigurationInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationInformation", name: "ProtectConfigurationInformation")
    ProtectConfigurationInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationInformationList", name: "ProtectConfigurationInformationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProtectConfigurationRuleOverrideAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleOverrideAction", name: "ProtectConfigurationRuleOverrideAction", traits: {"smithy.api#enum" => [{"value" => "ALLOW", "name" => "ALLOW"}, {"value" => "BLOCK", "name" => "BLOCK"}]})
    ProtectConfigurationRuleSetNumberOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverride", name: "ProtectConfigurationRuleSetNumberOverride")
    ProtectConfigurationRuleSetNumberOverrideFilterItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideFilterItem", name: "ProtectConfigurationRuleSetNumberOverrideFilterItem")
    ProtectConfigurationRuleSetNumberOverrideFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideFilterName", name: "ProtectConfigurationRuleSetNumberOverrideFilterName", traits: {"smithy.api#enum" => [{"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "destination-phone-number-begins-with", "name" => "DESTINATION_PHONE_NUMBER_BEGINS_WITH"}, {"value" => "action", "name" => "ACTION"}, {"value" => "expires-before", "name" => "EXPIRES_BEFORE"}, {"value" => "expires-after", "name" => "EXPIRES_AFTER"}, {"value" => "created-before", "name" => "CREATED_BEFORE"}, {"value" => "created-after", "name" => "CREATED_AFTER"}]})
    ProtectConfigurationRuleSetNumberOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectConfigurationRuleSetNumberOverrideList", name: "ProtectConfigurationRuleSetNumberOverrideList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProtectStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ProtectStatus", name: "ProtectStatus", traits: {"smithy.api#enum" => [{"value" => "ALLOW", "name" => "ALLOW"}, {"value" => "BLOCK", "name" => "BLOCK"}, {"value" => "MONITOR", "name" => "MONITOR"}, {"value" => "FILTER", "name" => "FILTER"}]})
    PutKeywordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutKeywordRequest", name: "PutKeywordRequest")
    PutKeywordResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutKeywordResult", name: "PutKeywordResult")
    PutMessageFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutMessageFeedbackRequest", name: "PutMessageFeedbackRequest")
    PutMessageFeedbackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutMessageFeedbackResult", name: "PutMessageFeedbackResult")
    PutOptedOutNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumberRequest", name: "PutOptedOutNumberRequest")
    PutOptedOutNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumberResult", name: "PutOptedOutNumberResult")
    PutProtectConfigurationRuleSetNumberOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverrideRequest", name: "PutProtectConfigurationRuleSetNumberOverrideRequest")
    PutProtectConfigurationRuleSetNumberOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverrideResult", name: "PutProtectConfigurationRuleSetNumberOverrideResult")
    PutRegistrationFieldValueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValueRequest", name: "PutRegistrationFieldValueRequest")
    PutRegistrationFieldValueResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValueResult", name: "PutRegistrationFieldValueResult")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#PutResourcePolicyResult", name: "PutResourcePolicyResult")
    RcsAgentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentFilter", name: "RcsAgentFilter")
    RcsAgentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentFilterList", name: "RcsAgentFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RcsAgentFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentFilterName", name: "RcsAgentFilterName", traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "two-way-enabled", "name" => "TWO_WAY_ENABLED"}, {"value" => "self-managed-opt-outs-enabled", "name" => "SELF_MANAGED_OPT_OUTS_ENABLED"}, {"value" => "opt-out-list-name", "name" => "OPT_OUT_LIST_NAME"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "two-way-channel-arn", "name" => "TWO_WAY_CHANNEL_ARN"}]})
    RcsAgentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentIdList", name: "RcsAgentIdList", traits: {"smithy.api#length" => {"max" => 5}})
    RcsAgentIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentIdOrArn", name: "RcsAgentIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RcsAgentInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentInformation", name: "RcsAgentInformation")
    RcsAgentInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentInformationList", name: "RcsAgentInformationList")
    RcsAgentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsAgentStatus", name: "RcsAgentStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "TESTING", "name" => "TESTING"}, {"value" => "PARTIAL", "name" => "PARTIAL"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    RcsCalendarEventDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCalendarEventDescription", name: "RcsCalendarEventDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RcsCalendarEventTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCalendarEventTitle", name: "RcsCalendarEventTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RcsCardContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCardContent", name: "RcsCardContent")
    RcsCardDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCardDescription", name: "RcsCardDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    RcsCardMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCardMedia", name: "RcsCardMedia")
    RcsCardSuggestedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCardSuggestedActionList", name: "RcsCardSuggestedActionList", traits: {"smithy.api#length" => {"max" => 4}})
    RcsCardTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCardTitle", name: "RcsCardTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RcsCarousel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCarousel", name: "RcsCarousel")
    RcsCarouselCardContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCarouselCardContent", name: "RcsCarouselCardContent")
    RcsCarouselCardContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCarouselCardContentList", name: "RcsCarouselCardContentList", traits: {"smithy.api#length" => {"min" => 2, "max" => 10}})
    RcsCarouselCardMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCarouselCardMedia", name: "RcsCarouselCardMedia")
    RcsContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsContent", name: "RcsContent")
    RcsCreateCalendarEventAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsCreateCalendarEventAction", name: "RcsCreateCalendarEventAction")
    RcsDialPhoneAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsDialPhoneAction", name: "RcsDialPhoneAction")
    RcsEventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsEventType", name: "RcsEventType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RcsEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsEventTypeList", name: "RcsEventTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RcsFallbackChannel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsFallbackChannel", name: "RcsFallbackChannel", traits: {"smithy.api#enum" => [{"value" => "SMS", "name" => "SMS"}, {"value" => "MMS", "name" => "MMS"}]})
    RcsFallbackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsFallbackConfiguration", name: "RcsFallbackConfiguration")
    RcsFallbackMessageBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsFallbackMessageBody", name: "RcsFallbackMessageBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    RcsFallbackOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsFallbackOriginationIdentity", name: "RcsFallbackOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    RcsFileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsFileMessage", name: "RcsFileMessage")
    RcsLocationLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsLocationLabel", name: "RcsLocationLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RcsMediaUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsMediaUrl", name: "RcsMediaUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^(https://|s3://).+$"})
    RcsMessageContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsMessageContent", name: "RcsMessageContent")
    RcsMessageOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsMessageOriginationIdentity", name: "RcsMessageOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    RcsMessageTrafficType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsMessageTrafficType", name: "RcsMessageTrafficType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RcsOpenUrlAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsOpenUrlAction", name: "RcsOpenUrlAction")
    RcsOpenUrlValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsOpenUrlValue", name: "RcsOpenUrlValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://\\S+$"})
    RcsPostbackData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsPostbackData", name: "RcsPostbackData", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RcsReplyAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsReplyAction", name: "RcsReplyAction")
    RcsRequestLocationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsRequestLocationAction", name: "RcsRequestLocationAction")
    RcsShowLocationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsShowLocationAction", name: "RcsShowLocationAction")
    RcsStandaloneCard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsStandaloneCard", name: "RcsStandaloneCard")
    RcsSuggestedAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsSuggestedAction", name: "RcsSuggestedAction")
    RcsSuggestedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsSuggestedActionList", name: "RcsSuggestedActionList", traits: {"smithy.api#length" => {"max" => 11}})
    RcsSuggestedActionText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsSuggestedActionText", name: "RcsSuggestedActionText", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RcsTextBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsTextBody", name: "RcsTextBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 3072}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    RcsTextMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsTextMessage", name: "RcsTextMessage")
    RcsTimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RcsTimeToLive", name: "RcsTimeToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 172800}})
    RegistrationAssociationBehavior = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationBehavior", name: "RegistrationAssociationBehavior", traits: {"smithy.api#enum" => [{"value" => "ASSOCIATE_BEFORE_SUBMIT", "name" => "ASSOCIATE_BEFORE_SUBMIT"}, {"value" => "ASSOCIATE_ON_APPROVAL", "name" => "ASSOCIATE_ON_APPROVAL"}, {"value" => "ASSOCIATE_AFTER_COMPLETE", "name" => "ASSOCIATE_AFTER_COMPLETE"}]})
    RegistrationAssociationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilter", name: "RegistrationAssociationFilter")
    RegistrationAssociationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilterList", name: "RegistrationAssociationFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationAssociationFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationFilterName", name: "RegistrationAssociationFilterName", traits: {"smithy.api#enum" => [{"value" => "resource-type", "name" => "RESOURCE_TYPE"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}]})
    RegistrationAssociationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationMetadata", name: "RegistrationAssociationMetadata")
    RegistrationAssociationMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAssociationMetadataList", name: "RegistrationAssociationMetadataList")
    RegistrationAttachmentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilter", name: "RegistrationAttachmentFilter")
    RegistrationAttachmentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilterList", name: "RegistrationAttachmentFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationAttachmentFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentFilterName", name: "RegistrationAttachmentFilterName", traits: {"smithy.api#enum" => [{"value" => "attachment-status", "name" => "ATTACHMENT_STATUS"}]})
    RegistrationAttachmentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentIdList", name: "RegistrationAttachmentIdList", traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationAttachmentIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentIdOrArn", name: "RegistrationAttachmentIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RegistrationAttachmentsInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentsInformation", name: "RegistrationAttachmentsInformation")
    RegistrationAttachmentsInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationAttachmentsInformationList", name: "RegistrationAttachmentsInformationList")
    RegistrationDeniedReasonInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationDeniedReasonInformation", name: "RegistrationDeniedReasonInformation")
    RegistrationDeniedReasonInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationDeniedReasonInformationList", name: "RegistrationDeniedReasonInformationList")
    RegistrationDisassociationBehavior = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationDisassociationBehavior", name: "RegistrationDisassociationBehavior", traits: {"smithy.api#enum" => [{"value" => "DISASSOCIATE_ALL_CLOSES_REGISTRATION", "name" => "DISASSOCIATE_ALL_CLOSES_REGISTRATION"}, {"value" => "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION", "name" => "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION"}, {"value" => "DELETE_REGISTRATION_DISASSOCIATES", "name" => "DELETE_REGISTRATION_DISASSOCIATES"}]})
    RegistrationFieldDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDefinition", name: "RegistrationFieldDefinition")
    RegistrationFieldDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDefinitionList", name: "RegistrationFieldDefinitionList")
    RegistrationFieldDisplayHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFieldDisplayHints", name: "RegistrationFieldDisplayHints")
    RegistrationFieldValueInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFieldValueInformation", name: "RegistrationFieldValueInformation")
    RegistrationFieldValueInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFieldValueInformationList", name: "RegistrationFieldValueInformationList")
    RegistrationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFilter", name: "RegistrationFilter")
    RegistrationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFilterList", name: "RegistrationFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationFilterName", name: "RegistrationFilterName", traits: {"smithy.api#enum" => [{"value" => "registration-type", "name" => "REGISTRATION_TYPE"}, {"value" => "registration-status", "name" => "REGISTRATION_STATUS"}]})
    RegistrationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationIdList", name: "RegistrationIdList", traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationIdOrArn", name: "RegistrationIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RegistrationInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationInformation", name: "RegistrationInformation")
    RegistrationInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationInformationList", name: "RegistrationInformationList")
    RegistrationSectionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDefinition", name: "RegistrationSectionDefinition")
    RegistrationSectionDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDefinitionList", name: "RegistrationSectionDefinitionList")
    RegistrationSectionDisplayHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationSectionDisplayHints", name: "RegistrationSectionDisplayHints")
    RegistrationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationStatus", name: "RegistrationStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "AWS_REVIEWING", "name" => "AWS_REVIEWING"}, {"value" => "REVIEWING", "name" => "REVIEWING"}, {"value" => "REQUIRES_AUTHENTICATION", "name" => "REQUIRES_AUTHENTICATION"}, {"value" => "PROVISIONING", "name" => "PROVISIONING"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "REQUIRES_UPDATES", "name" => "REQUIRES_UPDATES"}, {"value" => "CLOSED", "name" => "CLOSED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    RegistrationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationType", name: "RegistrationType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    RegistrationTypeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDefinition", name: "RegistrationTypeDefinition")
    RegistrationTypeDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDefinitionList", name: "RegistrationTypeDefinitionList")
    RegistrationTypeDisplayHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeDisplayHints", name: "RegistrationTypeDisplayHints")
    RegistrationTypeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilter", name: "RegistrationTypeFilter")
    RegistrationTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilterList", name: "RegistrationTypeFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationTypeFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeFilterName", name: "RegistrationTypeFilterName", traits: {"smithy.api#enum" => [{"value" => "supported-association-resource-type", "name" => "SUPPORTED_ASSOCIATION_RESOURCE_TYPE"}, {"value" => "supported-association-iso-country-code", "name" => "SUPPORTED_ASSOCIATION_ISO_COUNTRY_CODE"}]})
    RegistrationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationTypeList", name: "RegistrationTypeList", traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationVersionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilter", name: "RegistrationVersionFilter")
    RegistrationVersionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilterList", name: "RegistrationVersionFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    RegistrationVersionFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionFilterName", name: "RegistrationVersionFilterName", traits: {"smithy.api#enum" => [{"value" => "registration-version-status", "name" => "REGISTRATION_VERSION_STATUS"}]})
    RegistrationVersionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionInformation", name: "RegistrationVersionInformation")
    RegistrationVersionInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionInformationList", name: "RegistrationVersionInformationList")
    RegistrationVersionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionNumber", name: "RegistrationVersionNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}})
    RegistrationVersionNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionNumberList", name: "RegistrationVersionNumberList", traits: {"smithy.api#length" => {"max" => 5}})
    RegistrationVersionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionStatus", name: "RegistrationVersionStatus", traits: {"smithy.api#enum" => [{"value" => "DRAFT", "name" => "DRAFT"}, {"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "AWS_REVIEWING", "name" => "AWS_REVIEWING"}, {"value" => "REVIEWING", "name" => "REVIEWING"}, {"value" => "REQUIRES_AUTHENTICATION", "name" => "REQUIRES_AUTHENTICATION"}, {"value" => "APPROVED", "name" => "APPROVED"}, {"value" => "DISCARDED", "name" => "DISCARDED"}, {"value" => "DENIED", "name" => "DENIED"}, {"value" => "REVOKED", "name" => "REVOKED"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "REQUIRES_OFFLINE_REVIEW", "name" => "REQUIRES_OFFLINE_REVIEW"}]})
    RegistrationVersionStatusHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RegistrationVersionStatusHistory", name: "RegistrationVersionStatusHistory")
    ReleasePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumberRequest", name: "ReleasePhoneNumberRequest")
    ReleasePhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumberResult", name: "ReleasePhoneNumberResult")
    ReleaseSenderIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ReleaseSenderIdRequest", name: "ReleaseSenderIdRequest")
    ReleaseSenderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ReleaseSenderIdResult", name: "ReleaseSenderIdResult")
    RequestPhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumberRequest", name: "RequestPhoneNumberRequest")
    RequestPhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumberResult", name: "RequestPhoneNumberResult")
    RequestSenderIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RequestSenderIdRequest", name: "RequestSenderIdRequest")
    RequestSenderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RequestSenderIdResult", name: "RequestSenderIdResult")
    RequestableNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#RequestableNumberType", name: "RequestableNumberType", traits: {"smithy.api#enum" => [{"value" => "LONG_CODE", "name" => "LONG_CODE"}, {"value" => "TOLL_FREE", "name" => "TOLL_FREE"}, {"value" => "TEN_DLC", "name" => "TEN_DLC"}, {"value" => "SIMULATOR", "name" => "SIMULATOR"}]})
    ResourceIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ResourceIdOrArn", name: "ResourceIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "account", "name" => "ACCOUNT"}, {"value" => "phone-number", "name" => "PHONE_NUMBER"}, {"value" => "sender-id", "name" => "SENDER_ID"}, {"value" => "pool", "name" => "POOL"}, {"value" => "configuration-set", "name" => "CONFIGURATION_SET"}, {"value" => "opt-out-list", "name" => "OPT_OUT_LIST"}, {"value" => "event-destination", "name" => "EVENT_DESTINATION"}, {"value" => "keyword", "name" => "KEYWORD"}, {"value" => "opted-out-number", "name" => "OPTED_OUT_NUMBER"}, {"value" => "registration", "name" => "REGISTRATION"}, {"value" => "registration-attachment", "name" => "REGISTRATION_ATTACHMENT"}, {"value" => "verified-destination-number", "name" => "VERIFIED_DESTINATION_NUMBER"}, {"value" => "protect-configuration", "name" => "PROTECT_CONFIGURATION"}, {"value" => "notify-configuration", "name" => "NOTIFY_CONFIGURATION"}, {"value" => "notify-template", "name" => "NOTIFY_TEMPLATE"}, {"value" => "message-template", "name" => "MESSAGE_TEMPLATE"}, {"value" => "policy", "name" => "POLICY"}, {"value" => "message", "name" => "MESSAGE"}, {"value" => "rcs-agent", "name" => "RCS_AGENT"}]})
    SearchableNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SearchableNumberType", name: "SearchableNumberType", traits: {"smithy.api#enum" => [{"value" => "TEN_DLC", "name" => "TEN_DLC"}]})
    SectionPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SectionPath", name: "SectionPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    SectionPathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SectionPathList", name: "SectionPathList", traits: {"smithy.api#length" => {"max" => 5}})
    SelectChoice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SelectChoice", name: "SelectChoice", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SelectChoiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SelectChoiceList", name: "SelectChoiceList", traits: {"smithy.api#length" => {"max" => 100}})
    SelectOptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SelectOptionDescription", name: "SelectOptionDescription")
    SelectOptionDescriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SelectOptionDescriptionsList", name: "SelectOptionDescriptionsList")
    SelectValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SelectValidation", name: "SelectValidation")
    SendDestinationNumberVerificationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCodeRequest", name: "SendDestinationNumberVerificationCodeRequest")
    SendDestinationNumberVerificationCodeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCodeResult", name: "SendDestinationNumberVerificationCodeResult")
    SendMediaMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendMediaMessageRequest", name: "SendMediaMessageRequest")
    SendMediaMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendMediaMessageResult", name: "SendMediaMessageResult")
    SendNotifyTextMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendNotifyTextMessageRequest", name: "SendNotifyTextMessageRequest")
    SendNotifyTextMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendNotifyTextMessageResult", name: "SendNotifyTextMessageResult")
    SendNotifyVoiceMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendNotifyVoiceMessageRequest", name: "SendNotifyVoiceMessageRequest")
    SendNotifyVoiceMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendNotifyVoiceMessageResult", name: "SendNotifyVoiceMessageResult")
    SendRcsMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendRcsMessageRequest", name: "SendRcsMessageRequest")
    SendRcsMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendRcsMessageResult", name: "SendRcsMessageResult")
    SendTextMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendTextMessageRequest", name: "SendTextMessageRequest")
    SendTextMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendTextMessageResult", name: "SendTextMessageResult")
    SendVoiceMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendVoiceMessageRequest", name: "SendVoiceMessageRequest")
    SendVoiceMessageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SendVoiceMessageResult", name: "SendVoiceMessageResult")
    SenderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderId", name: "SenderId", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    SenderIdAndCountry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdAndCountry", name: "SenderIdAndCountry")
    SenderIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdFilter", name: "SenderIdFilter")
    SenderIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdFilterList", name: "SenderIdFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    SenderIdFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdFilterName", name: "SenderIdFilterName", traits: {"smithy.api#enum" => [{"value" => "sender-id", "name" => "SENDER_ID"}, {"value" => "iso-country-code", "name" => "ISO_COUNTRY_CODE"}, {"value" => "message-type", "name" => "MESSAGE_TYPE"}, {"value" => "deletion-protection-enabled", "name" => "DELETION_PROTECTION_ENABLED"}, {"value" => "registered", "name" => "REGISTERED"}]})
    SenderIdInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdInformation", name: "SenderIdInformation")
    SenderIdInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdInformationList", name: "SenderIdInformationList")
    SenderIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdList", name: "SenderIdList", traits: {"smithy.api#length" => {"max" => 5}})
    SenderIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SenderIdOrArn", name: "SenderIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ServiceQuotaExceededExceptionReason", name: "ServiceQuotaExceededExceptionReason", traits: {"smithy.api#enum" => [{"value" => "ASSOCIATIONS_PER_REGISTRATION", "name" => "ASSOCIATIONS_PER_REGISTRATION"}, {"value" => "CONFIGURATION_SETS_PER_ACCOUNT", "name" => "CONFIGURATION_SETS_PER_ACCOUNT"}, {"value" => "DAILY_DESTINATION_CALL_LIMIT", "name" => "DAILY_DESTINATION_CALL_LIMIT"}, {"value" => "DAILY_NOTIFY_TIER_MESSAGE_LIMIT", "name" => "DAILY_NOTIFY_TIER_MESSAGE_LIMIT"}, {"value" => "EVENT_DESTINATIONS_PER_CONFIGURATION_SET", "name" => "EVENT_DESTINATIONS_PER_CONFIGURATION_SET"}, {"value" => "KEYWORDS_PER_PHONE_NUMBER", "name" => "KEYWORDS_PER_PHONE_NUMBER"}, {"value" => "KEYWORDS_PER_POOL", "name" => "KEYWORDS_PER_POOL"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_NOTIFY", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_NOTIFY"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_RCS", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_RCS"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT"}, {"value" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE", "name" => "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE"}, {"value" => "NOTIFY_CONFIGURATIONS_PER_ACCOUNT", "name" => "NOTIFY_CONFIGURATIONS_PER_ACCOUNT"}, {"value" => "OPT_OUT_LISTS_PER_ACCOUNT", "name" => "OPT_OUT_LISTS_PER_ACCOUNT"}, {"value" => "ORIGINATION_IDENTITIES_PER_POOL", "name" => "ORIGINATION_IDENTITIES_PER_POOL"}, {"value" => "PHONE_NUMBERS_PER_ACCOUNT", "name" => "PHONE_NUMBERS_PER_ACCOUNT"}, {"value" => "PHONE_NUMBERS_PER_REGISTRATION", "name" => "PHONE_NUMBERS_PER_REGISTRATION"}, {"value" => "POOLS_PER_ACCOUNT", "name" => "POOLS_PER_ACCOUNT"}, {"value" => "RCS_AGENTS_PER_ACCOUNT", "name" => "RCS_AGENTS_PER_ACCOUNT"}, {"value" => "REGISTRATION_ATTACHMENTS_CREATED_PER_DAY", "name" => "REGISTRATION_ATTACHMENTS_CREATED_PER_DAY"}, {"value" => "REGISTRATION_ATTACHMENTS_PER_ACCOUNT", "name" => "REGISTRATION_ATTACHMENTS_PER_ACCOUNT"}, {"value" => "REGISTRATION_VERSIONS_CREATED_PER_DAY", "name" => "REGISTRATION_VERSIONS_CREATED_PER_DAY"}, {"value" => "REGISTRATIONS_PER_ACCOUNT", "name" => "REGISTRATIONS_PER_ACCOUNT"}, {"value" => "SENDER_IDS_PER_ACCOUNT", "name" => "SENDER_IDS_PER_ACCOUNT"}, {"value" => "TAGS_PER_RESOURCE", "name" => "TAGS_PER_RESOURCE"}, {"value" => "VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT", "name" => "VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT"}, {"value" => "VERIFICATION_ATTEMPTS_PER_DAY", "name" => "VERIFICATION_ATTEMPTS_PER_DAY"}, {"value" => "PROTECT_CONFIGURATIONS_PER_ACCOUNT", "name" => "PROTECT_CONFIGURATIONS_PER_ACCOUNT"}]})
    SetAccountDefaultProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfigurationRequest", name: "SetAccountDefaultProtectConfigurationRequest")
    SetAccountDefaultProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfigurationResult", name: "SetAccountDefaultProtectConfigurationResult")
    SetDefaultMessageFeedbackEnabledRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabledRequest", name: "SetDefaultMessageFeedbackEnabledRequest")
    SetDefaultMessageFeedbackEnabledResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabledResult", name: "SetDefaultMessageFeedbackEnabledResult")
    SetDefaultMessageTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageTypeRequest", name: "SetDefaultMessageTypeRequest")
    SetDefaultMessageTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageTypeResult", name: "SetDefaultMessageTypeResult")
    SetDefaultSenderIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderIdRequest", name: "SetDefaultSenderIdRequest")
    SetDefaultSenderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderIdResult", name: "SetDefaultSenderIdResult")
    SetMediaMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverrideRequest", name: "SetMediaMessageSpendLimitOverrideRequest")
    SetMediaMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverrideResult", name: "SetMediaMessageSpendLimitOverrideResult")
    SetNotifyMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetNotifyMessageSpendLimitOverrideRequest", name: "SetNotifyMessageSpendLimitOverrideRequest")
    SetNotifyMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetNotifyMessageSpendLimitOverrideResult", name: "SetNotifyMessageSpendLimitOverrideResult")
    SetRcsMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetRcsMessageSpendLimitOverrideRequest", name: "SetRcsMessageSpendLimitOverrideRequest")
    SetRcsMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetRcsMessageSpendLimitOverrideResult", name: "SetRcsMessageSpendLimitOverrideResult")
    SetTextMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverrideRequest", name: "SetTextMessageSpendLimitOverrideRequest")
    SetTextMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverrideResult", name: "SetTextMessageSpendLimitOverrideResult")
    SetVoiceMessageSpendLimitOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverrideRequest", name: "SetVoiceMessageSpendLimitOverrideRequest")
    SetVoiceMessageSpendLimitOverrideResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverrideResult", name: "SetVoiceMessageSpendLimitOverrideResult")
    SnsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SnsDestination", name: "SnsDestination")
    SnsTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SnsTopicArn", name: "SnsTopicArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:\\S+$"})
    SpendLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SpendLimit", name: "SpendLimit")
    SpendLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SpendLimitList", name: "SpendLimitList")
    SpendLimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SpendLimitName", name: "SpendLimitName", traits: {"smithy.api#enum" => [{"value" => "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "NOTIFY_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "NOTIFY_MESSAGE_MONTHLY_SPEND_LIMIT"}, {"value" => "RCS_MESSAGE_MONTHLY_SPEND_LIMIT", "name" => "RCS_MESSAGE_MONTHLY_SPEND_LIMIT"}]})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#StringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#StringMap", name: "StringMap")
    SubmitRegistrationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersionRequest", name: "SubmitRegistrationVersionRequest")
    SubmitRegistrationVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersionResult", name: "SubmitRegistrationVersionResult")
    SupportedAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SupportedAssociation", name: "SupportedAssociation")
    SupportedAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#SupportedAssociationList", name: "SupportedAssociationList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagList", name: "TagList", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagResourceResult", name: "TagResourceResult")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^.*$"})
    TemplateContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateContent", name: "TemplateContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    TemplateVariableMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableMetadata", name: "TemplateVariableMetadata")
    TemplateVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableName", name: "TemplateVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    TemplateVariableSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableSource", name: "TemplateVariableSource", traits: {"smithy.api#enum" => [{"value" => "CUSTOMER", "name" => "CUSTOMER"}, {"value" => "SYSTEM", "name" => "SYSTEM"}]})
    TemplateVariableSubstitutionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableSubstitutionMap", name: "TemplateVariableSubstitutionMap", traits: {"smithy.api#length" => {"max" => 20}})
    TemplateVariableType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableType", name: "TemplateVariableType", traits: {"smithy.api#enum" => [{"value" => "STRING", "name" => "STRING"}, {"value" => "INTEGER", "name" => "INTEGER"}, {"value" => "BOOLEAN", "name" => "BOOLEAN"}]})
    TemplateVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariableValue", name: "TemplateVariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    TemplateVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TemplateVariablesMap", name: "TemplateVariablesMap")
    TestingAgentInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TestingAgentInformation", name: "TestingAgentInformation")
    TestingAgentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TestingAgentStatus", name: "TestingAgentStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}]})
    TextMessageBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TextMessageBody", name: "TextMessageBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    TextMessageOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TextMessageOriginationIdentity", name: "TextMessageOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    TextValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TextValidation", name: "TextValidation")
    TextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TextValue", name: "TextValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#retryable" => {"throttling" => true}})
    TierUpgradeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TierUpgradeStatus", name: "TierUpgradeStatus", traits: {"smithy.api#enum" => [{"value" => "BASIC", "name" => "BASIC"}, {"value" => "PENDING_UPGRADE", "name" => "PENDING_UPGRADE"}, {"value" => "ADVANCED", "name" => "ADVANCED"}, {"value" => "REJECTED", "name" => "REJECTED"}]})
    TimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TimeToLive", name: "TimeToLive", traits: {"smithy.api#range" => {"min" => 5, "max" => 259200}})
    TwoWayChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TwoWayChannelArn", name: "TwoWayChannelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    TwoWayMediaS3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TwoWayMediaS3BucketName", name: "TwoWayMediaS3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$"})
    TwoWayMediaS3BucketNameOrUnset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TwoWayMediaS3BucketNameOrUnset", name: "TwoWayMediaS3BucketNameOrUnset", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^([a-z0-9][a-z0-9.-]*[a-z0-9]|UNSET_RCS_MEDIA_CONFIGURATION)$"})
    TwoWayMediaS3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#TwoWayMediaS3KeyPrefix", name: "TwoWayMediaS3KeyPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UntagResourceResult", name: "UntagResourceResult")
    UpdateEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateEventDestinationRequest", name: "UpdateEventDestinationRequest")
    UpdateEventDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateEventDestinationResult", name: "UpdateEventDestinationResult")
    UpdateNotifyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateNotifyConfigurationRequest", name: "UpdateNotifyConfigurationRequest")
    UpdateNotifyConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateNotifyConfigurationResult", name: "UpdateNotifyConfigurationResult")
    UpdatePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumberRequest", name: "UpdatePhoneNumberRequest")
    UpdatePhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumberResult", name: "UpdatePhoneNumberResult")
    UpdatePoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdatePoolRequest", name: "UpdatePoolRequest")
    UpdatePoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdatePoolResult", name: "UpdatePoolResult")
    UpdateProtectConfigurationCountryRuleSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSetRequest", name: "UpdateProtectConfigurationCountryRuleSetRequest")
    UpdateProtectConfigurationCountryRuleSetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSetResult", name: "UpdateProtectConfigurationCountryRuleSetResult")
    UpdateProtectConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationRequest", name: "UpdateProtectConfigurationRequest")
    UpdateProtectConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationResult", name: "UpdateProtectConfigurationResult")
    UpdateRcsAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateRcsAgentRequest", name: "UpdateRcsAgentRequest")
    UpdateRcsAgentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateRcsAgentResult", name: "UpdateRcsAgentResult")
    UpdateSenderIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateSenderIdRequest", name: "UpdateSenderIdRequest")
    UpdateSenderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#UpdateSenderIdResult", name: "UpdateSenderIdResult")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "CANNOT_ADD_OPTED_OUT_NUMBER", "name" => "CANNOT_ADD_OPTED_OUT_NUMBER"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "CHANNEL_NOT_ENABLED", "name" => "CHANNEL_NOT_ENABLED"}, {"value" => "COUNTRY_CODE_MISMATCH", "name" => "COUNTRY_CODE_MISMATCH"}, {"value" => "COUNTRY_NOT_ENABLED", "name" => "COUNTRY_NOT_ENABLED"}, {"value" => "DESTINATION_COUNTRY_BLOCKED", "name" => "DESTINATION_COUNTRY_BLOCKED"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "ATTACHMENT_TYPE_NOT_SUPPORTED", "name" => "ATTACHMENT_TYPE_NOT_SUPPORTED"}, {"value" => "INTERNATIONAL_SENDING_NOT_SUPPORTED", "name" => "INTERNATIONAL_SENDING_NOT_SUPPORTED"}, {"value" => "INVALID_ARN", "name" => "INVALID_ARN"}, {"value" => "INVALID_FILTER_VALUES", "name" => "INVALID_FILTER_VALUES"}, {"value" => "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY", "name" => "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY"}, {"value" => "INVALID_NEXT_TOKEN", "name" => "INVALID_NEXT_TOKEN"}, {"value" => "INVALID_PARAMETER", "name" => "INVALID_PARAMETER"}, {"value" => "INVALID_REQUEST", "name" => "INVALID_REQUEST"}, {"value" => "INVALID_REGISTRATION_ASSOCIATION", "name" => "INVALID_REGISTRATION_ASSOCIATION"}, {"value" => "MAXIMUM_SIZE_EXCEEDED", "name" => "MAXIMUM_SIZE_EXCEEDED"}, {"value" => "MEDIA_TYPE_NOT_SUPPORTED", "name" => "MEDIA_TYPE_NOT_SUPPORTED"}, {"value" => "MISSING_PARAMETER", "name" => "MISSING_PARAMETER"}, {"value" => "PARAMETERS_CANNOT_BE_USED_TOGETHER", "name" => "PARAMETERS_CANNOT_BE_USED_TOGETHER"}, {"value" => "PHONE_NUMBER_CANNOT_BE_OPTED_IN", "name" => "PHONE_NUMBER_CANNOT_BE_OPTED_IN"}, {"value" => "PHONE_NUMBER_CANNOT_BE_RELEASED", "name" => "PHONE_NUMBER_CANNOT_BE_RELEASED"}, {"value" => "PRICE_OVER_THRESHOLD", "name" => "PRICE_OVER_THRESHOLD"}, {"value" => "RESOURCE_NOT_ACCESSIBLE", "name" => "RESOURCE_NOT_ACCESSIBLE"}, {"value" => "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT", "name" => "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT"}, {"value" => "SENDER_ID_NOT_REGISTERED", "name" => "SENDER_ID_NOT_REGISTERED"}, {"value" => "SENDER_ID_NOT_SUPPORTED", "name" => "SENDER_ID_NOT_SUPPORTED"}, {"value" => "SENDER_ID_REQUIRES_REGISTRATION", "name" => "SENDER_ID_REQUIRES_REGISTRATION"}, {"value" => "TWO_WAY_TOPIC_NOT_PRESENT", "name" => "TWO_WAY_TOPIC_NOT_PRESENT"}, {"value" => "TWO_WAY_NOT_ENABLED", "name" => "TWO_WAY_NOT_ENABLED"}, {"value" => "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY", "name" => "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY"}, {"value" => "TWO_WAY_NOT_SUPPORTED_IN_REGION", "name" => "TWO_WAY_NOT_SUPPORTED_IN_REGION"}, {"value" => "TWO_WAY_CHANNEL_NOT_PRESENT", "name" => "TWO_WAY_CHANNEL_NOT_PRESENT"}, {"value" => "UNKNOWN_REGISTRATION_FIELD", "name" => "UNKNOWN_REGISTRATION_FIELD"}, {"value" => "UNKNOWN_REGISTRATION_SECTION", "name" => "UNKNOWN_REGISTRATION_SECTION"}, {"value" => "UNKNOWN_REGISTRATION_TYPE", "name" => "UNKNOWN_REGISTRATION_TYPE"}, {"value" => "UNKNOWN_REGISTRATION_VERSION", "name" => "UNKNOWN_REGISTRATION_VERSION"}, {"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "REGISTRATION_FIELD_CANNOT_BE_DELETED", "name" => "REGISTRATION_FIELD_CANNOT_BE_DELETED"}, {"value" => "VERIFICATION_CODE_MISMATCH", "name" => "VERIFICATION_CODE_MISMATCH"}, {"value" => "VOICE_CAPABILITY_NOT_AVAILABLE", "name" => "VOICE_CAPABILITY_NOT_AVAILABLE"}, {"value" => "UNSPECIFIED_PARAMETER_NOT_SUPPORTED", "name" => "UNSPECIFIED_PARAMETER_NOT_SUPPORTED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    VerificationChannel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerificationChannel", name: "VerificationChannel", traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}, {"value" => "VOICE", "name" => "VOICE"}]})
    VerificationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerificationCode", name: "VerificationCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    VerificationMessageOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerificationMessageOriginationIdentity", name: "VerificationMessageOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})
    VerificationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerificationStatus", name: "VerificationStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "VERIFIED", "name" => "VERIFIED"}, {"value" => "UNSUPPORTED", "name" => "UNSUPPORTED"}]})
    VerifiedDestinationNumberFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilter", name: "VerifiedDestinationNumberFilter")
    VerifiedDestinationNumberFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilterList", name: "VerifiedDestinationNumberFilterList", traits: {"smithy.api#length" => {"max" => 20}})
    VerifiedDestinationNumberFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberFilterName", name: "VerifiedDestinationNumberFilterName", traits: {"smithy.api#enum" => [{"value" => "status", "name" => "STATUS"}, {"value" => "rcs-agent-id", "name" => "RCS_AGENT_ID"}]})
    VerifiedDestinationNumberIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberIdList", name: "VerifiedDestinationNumberIdList", traits: {"smithy.api#length" => {"max" => 5}})
    VerifiedDestinationNumberIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberIdOrArn", name: "VerifiedDestinationNumberIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    VerifiedDestinationNumberInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberInformation", name: "VerifiedDestinationNumberInformation")
    VerifiedDestinationNumberInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifiedDestinationNumberInformationList", name: "VerifiedDestinationNumberInformationList")
    VerifyDestinationNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumberRequest", name: "VerifyDestinationNumberRequest")
    VerifyDestinationNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumberResult", name: "VerifyDestinationNumberResult")
    VoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VoiceId", name: "VoiceId", traits: {"smithy.api#enum" => [{"value" => "AMY", "name" => "AMY"}, {"value" => "ASTRID", "name" => "ASTRID"}, {"value" => "BIANCA", "name" => "BIANCA"}, {"value" => "BRIAN", "name" => "BRIAN"}, {"value" => "CAMILA", "name" => "CAMILA"}, {"value" => "CARLA", "name" => "CARLA"}, {"value" => "CARMEN", "name" => "CARMEN"}, {"value" => "CELINE", "name" => "CELINE"}, {"value" => "CHANTAL", "name" => "CHANTAL"}, {"value" => "CONCHITA", "name" => "CONCHITA"}, {"value" => "CRISTIANO", "name" => "CRISTIANO"}, {"value" => "DORA", "name" => "DORA"}, {"value" => "EMMA", "name" => "EMMA"}, {"value" => "ENRIQUE", "name" => "ENRIQUE"}, {"value" => "EWA", "name" => "EWA"}, {"value" => "FILIZ", "name" => "FILIZ"}, {"value" => "GERAINT", "name" => "GERAINT"}, {"value" => "GIORGIO", "name" => "GIORGIO"}, {"value" => "GWYNETH", "name" => "GWYNETH"}, {"value" => "HANS", "name" => "HANS"}, {"value" => "INES", "name" => "INES"}, {"value" => "IVY", "name" => "IVY"}, {"value" => "JACEK", "name" => "JACEK"}, {"value" => "JAN", "name" => "JAN"}, {"value" => "JOANNA", "name" => "JOANNA"}, {"value" => "JOEY", "name" => "JOEY"}, {"value" => "JUSTIN", "name" => "JUSTIN"}, {"value" => "KARL", "name" => "KARL"}, {"value" => "KENDRA", "name" => "KENDRA"}, {"value" => "KIMBERLY", "name" => "KIMBERLY"}, {"value" => "LEA", "name" => "LEA"}, {"value" => "LIV", "name" => "LIV"}, {"value" => "LOTTE", "name" => "LOTTE"}, {"value" => "LUCIA", "name" => "LUCIA"}, {"value" => "LUPE", "name" => "LUPE"}, {"value" => "MADS", "name" => "MADS"}, {"value" => "MAJA", "name" => "MAJA"}, {"value" => "MARLENE", "name" => "MARLENE"}, {"value" => "MATHIEU", "name" => "MATHIEU"}, {"value" => "MATTHEW", "name" => "MATTHEW"}, {"value" => "MAXIM", "name" => "MAXIM"}, {"value" => "MIA", "name" => "MIA"}, {"value" => "MIGUEL", "name" => "MIGUEL"}, {"value" => "MIZUKI", "name" => "MIZUKI"}, {"value" => "NAJA", "name" => "NAJA"}, {"value" => "NICOLE", "name" => "NICOLE"}, {"value" => "PENELOPE", "name" => "PENELOPE"}, {"value" => "RAVEENA", "name" => "RAVEENA"}, {"value" => "RICARDO", "name" => "RICARDO"}, {"value" => "RUBEN", "name" => "RUBEN"}, {"value" => "RUSSELL", "name" => "RUSSELL"}, {"value" => "SALLI", "name" => "SALLI"}, {"value" => "SEOYEON", "name" => "SEOYEON"}, {"value" => "TAKUMI", "name" => "TAKUMI"}, {"value" => "TATYANA", "name" => "TATYANA"}, {"value" => "VICKI", "name" => "VICKI"}, {"value" => "VITORIA", "name" => "VITORIA"}, {"value" => "ZEINA", "name" => "ZEINA"}, {"value" => "ZHIYU", "name" => "ZHIYU"}]})
    VoiceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VoiceIdList", name: "VoiceIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    VoiceMessageBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VoiceMessageBody", name: "VoiceMessageBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    VoiceMessageBodyTextType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VoiceMessageBodyTextType", name: "VoiceMessageBodyTextType", traits: {"smithy.api#enum" => [{"value" => "TEXT", "name" => "TEXT"}, {"value" => "SSML", "name" => "SSML"}]})
    VoiceMessageOriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoicev2#VoiceMessageOriginationIdentity", name: "VoiceMessageOriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/\\+-]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "Reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAttributeName, name: "Name", traits: {"smithy.api#required" => {}}))
    AccountAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    AccountAttribute.type = Types::AccountAttribute
    AccountAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAttribute, name: "member"))
    AccountLimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimitName, name: "Name", traits: {"smithy.api#required" => {}}))
    AccountLimit.add_member(:used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveLong, name: "Used", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AccountLimit.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveLong, name: "Max", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AccountLimit.type = Types::AccountLimit
    AccountLimitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimit, name: "member"))
    AssociateOriginationIdentityRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId", traits: {"smithy.api#required" => {}}))
    AssociateOriginationIdentityRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrSenderIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    AssociateOriginationIdentityRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    AssociateOriginationIdentityRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateOriginationIdentityRequest.type = Types::AssociateOriginationIdentityRequest
    AssociateOriginationIdentityResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    AssociateOriginationIdentityResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    AssociateOriginationIdentityResult.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn"))
    AssociateOriginationIdentityResult.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity"))
    AssociateOriginationIdentityResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    AssociateOriginationIdentityResult.type = Types::AssociateOriginationIdentityResult
    AssociateProtectConfigurationRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationRequest.type = Types::AssociateProtectConfigurationRequest
    AssociateProtectConfigurationResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    AssociateProtectConfigurationResult.type = Types::AssociateProtectConfigurationResult
    AvailablePhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    CarrierLookupRequest.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CarrierLookupInputPhoneNumberType, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    CarrierLookupRequest.add_member(:enable_cleansing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EnableCleansing"))
    CarrierLookupRequest.type = Types::CarrierLookupRequest
    CarrierLookupResult.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberType, name: "E164PhoneNumber", traits: {"smithy.api#required" => {}}))
    CarrierLookupResult.add_member(:dialing_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DialingCountryCodeType, name: "DialingCountryCode"))
    CarrierLookupResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    CarrierLookupResult.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Country"))
    CarrierLookupResult.add_member(:mcc, ::Smithy::Schema::Shapes::MemberShape.new(target: MCCType, name: "MCC"))
    CarrierLookupResult.add_member(:mnc, ::Smithy::Schema::Shapes::MemberShape.new(target: MNCType, name: "MNC"))
    CarrierLookupResult.add_member(:carrier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Carrier"))
    CarrierLookupResult.add_member(:phone_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "PhoneNumberType", traits: {"smithy.api#required" => {}}))
    CarrierLookupResult.add_member(:original_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CarrierLookupInputPhoneNumberType, name: "OriginalPhoneNumber"))
    CarrierLookupResult.type = Types::CarrierLookupResult
    CarrierStatusInformation.add_member(:carrier_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CarrierName", traits: {"smithy.api#required" => {}}))
    CarrierStatusInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CarrierStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CarrierStatusInformation.type = Types::CarrierStatusInformation
    CarrierStatusInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CarrierStatusInformation, name: "member"))
    CloudWatchLogsDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsDestination.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "LogGroupArn", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    ConditionValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValue, name: "member"))
    ConditionalBehavior.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalRuleList, name: "Rules", traits: {"smithy.api#required" => {}}))
    ConditionalBehavior.add_member(:default_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalFieldBehavior, name: "DefaultBehavior", traits: {"smithy.api#required" => {}}))
    ConditionalBehavior.type = Types::ConditionalBehavior
    ConditionalRule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldConditionList, name: "Conditions", traits: {"smithy.api#required" => {}}))
    ConditionalRule.add_member(:rule_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalFieldBehavior, name: "RuleBehavior", traits: {"smithy.api#required" => {}}))
    ConditionalRule.add_member(:conditional_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalValidation, name: "ConditionalValidation"))
    ConditionalRule.type = Types::ConditionalRule
    ConditionalRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalRule, name: "member"))
    ConditionalValidation.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLength", traits: {"smithy.api#range" => {"min" => 0}}))
    ConditionalValidation.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLength", traits: {"smithy.api#range" => {"min" => 0}}))
    ConditionalValidation.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Pattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ConditionalValidation.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoiceList, name: "AllowedValues"))
    ConditionalValidation.type = Types::ConditionalValidation
    ConfigurationSetFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ConfigurationSetFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ConfigurationSetFilter.type = Types::ConfigurationSetFilter
    ConfigurationSetFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilter, name: "member"))
    ConfigurationSetInformation.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn", traits: {"smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationList, name: "EventDestinations", traits: {"smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:default_message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "DefaultMessageType"))
    ConfigurationSetInformation.add_member(:default_sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "DefaultSenderId"))
    ConfigurationSetInformation.add_member(:default_message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DefaultMessageFeedbackEnabled"))
    ConfigurationSetInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    ConfigurationSetInformation.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId"))
    ConfigurationSetInformation.type = Types::ConfigurationSetInformation
    ConfigurationSetInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetInformation, name: "member"))
    ConfigurationSetNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ConflictException.type = Types::ConflictException
    ContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKey, name: "key"))
    ContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextValue, name: "value"))
    CountryLaunchStatusFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatusFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusFilter.type = Types::CountryLaunchStatusFilter
    CountryLaunchStatusFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatusFilter, name: "member"))
    CountryLaunchStatusInformation.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusInformation.add_member(:rcs_platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsPlatformId"))
    CountryLaunchStatusInformation.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusInformation.add_member(:carrier_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CarrierStatusInformationList, name: "CarrierStatus", traits: {"smithy.api#required" => {}}))
    CountryLaunchStatusInformation.type = Types::CountryLaunchStatusInformation
    CountryLaunchStatusInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatusInformation, name: "member"))
    CreateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConfigurationSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    CreateConfigurationSetResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    CreateConfigurationSetResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConfigurationSetResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    CreateConfigurationSetResult.type = Types::CreateConfigurationSetResult
    CreateEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList, name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    CreateEventDestinationRequest.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestination, name: "CloudWatchLogsDestination"))
    CreateEventDestinationRequest.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    CreateEventDestinationRequest.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    CreateEventDestinationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventDestinationRequest.type = Types::CreateEventDestinationRequest
    CreateEventDestinationResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    CreateEventDestinationResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    CreateEventDestinationResult.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "EventDestination"))
    CreateEventDestinationResult.type = Types::CreateEventDestinationResult
    CreateNotifyConfigurationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationRequest.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "UseCase", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationRequest.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    CreateNotifyConfigurationRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId"))
    CreateNotifyConfigurationRequest.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    CreateNotifyConfigurationRequest.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    CreateNotifyConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNotifyConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateNotifyConfigurationRequest.type = Types::CreateNotifyConfigurationRequest
    CreateNotifyConfigurationResult.add_member(:notify_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationArn, name: "NotifyConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationId, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "UseCase", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    CreateNotifyConfigurationResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    CreateNotifyConfigurationResult.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    CreateNotifyConfigurationResult.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "Tier", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:tier_upgrade_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TierUpgradeStatus, name: "TierUpgradeStatus", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RejectionReason"))
    CreateNotifyConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateNotifyConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateNotifyConfigurationResult.type = Types::CreateNotifyConfigurationResult
    CreateOptOutListRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    CreateOptOutListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOptOutListRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateOptOutListRequest.type = Types::CreateOptOutListRequest
    CreateOptOutListResult.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn"))
    CreateOptOutListResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    CreateOptOutListResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOptOutListResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    CreateOptOutListResult.type = Types::CreateOptOutListResult
    CreatePoolRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrSenderIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    CreatePoolRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    CreatePoolRequest.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType", traits: {"smithy.api#required" => {}}))
    CreatePoolRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    CreatePoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePoolRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePoolRequest.type = Types::CreatePoolRequest
    CreatePoolResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    CreatePoolResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    CreatePoolResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolStatus, name: "Status"))
    CreatePoolResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    CreatePoolResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    CreatePoolResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    CreatePoolResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    CreatePoolResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    CreatePoolResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    CreatePoolResult.add_member(:shared_routes_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SharedRoutesEnabled", traits: {"smithy.api#default" => false}))
    CreatePoolResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false}))
    CreatePoolResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePoolResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    CreatePoolResult.type = Types::CreatePoolResult
    CreateProtectConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProtectConfigurationRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    CreateProtectConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProtectConfigurationRequest.type = Types::CreateProtectConfigurationRequest
    CreateProtectConfigurationResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:account_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AccountDefault", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateProtectConfigurationResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProtectConfigurationResult.type = Types::CreateProtectConfigurationResult
    CreateRcsAgentRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    CreateRcsAgentRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName"))
    CreateRcsAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRcsAgentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRcsAgentRequest.type = Types::CreateRcsAgentRequest
    CreateRcsAgentResult.add_member(:rcs_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentArn", traits: {"smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    CreateRcsAgentResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    CreateRcsAgentResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    CreateRcsAgentResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateRcsAgentResult.add_member(:two_way_media_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3BucketName, name: "TwoWayMediaS3BucketName"))
    CreateRcsAgentResult.add_member(:two_way_media_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3KeyPrefix, name: "TwoWayMediaS3KeyPrefix"))
    CreateRcsAgentResult.add_member(:two_way_media_s3_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayMediaS3Role"))
    CreateRcsAgentResult.add_member(:two_way_rcs_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventTypeList, name: "TwoWayRcsEventsEnabled"))
    CreateRcsAgentResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRcsAgentResult.type = Types::CreateRcsAgentResult
    CreateRegistrationAssociationRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdOrArn, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationRequest.type = Types::CreateRegistrationAssociationRequest
    CreateRegistrationAssociationResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAssociationResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    CreateRegistrationAssociationResult.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    CreateRegistrationAssociationResult.type = Types::CreateRegistrationAssociationResult
    CreateRegistrationAttachmentRequest.add_member(:attachment_body, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentBody, name: "AttachmentBody"))
    CreateRegistrationAttachmentRequest.add_member(:attachment_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUrl, name: "AttachmentUrl"))
    CreateRegistrationAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRegistrationAttachmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRegistrationAttachmentRequest.type = Types::CreateRegistrationAttachmentRequest
    CreateRegistrationAttachmentResult.add_member(:registration_attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentArn", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, name: "AttachmentStatus", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRegistrationAttachmentResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateRegistrationAttachmentResult.type = Types::CreateRegistrationAttachmentResult
    CreateRegistrationRequest.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    CreateRegistrationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRegistrationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRegistrationRequest.type = Types::CreateRegistrationRequest
    CreateRegistrationResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "RegistrationStatus", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:current_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "CurrentVersionNumber", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "AdditionalAttributes"))
    CreateRegistrationResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRegistrationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateRegistrationResult.type = Types::CreateRegistrationResult
    CreateRegistrationVersionRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionRequest.type = Types::CreateRegistrationVersionRequest
    CreateRegistrationVersionResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatus, name: "RegistrationVersionStatus", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionResult.add_member(:registration_version_status_history, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatusHistory, name: "RegistrationVersionStatusHistory", traits: {"smithy.api#required" => {}}))
    CreateRegistrationVersionResult.type = Types::CreateRegistrationVersionResult
    CreateVerifiedDestinationNumberRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberRequest.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdOrArn, name: "RcsAgentId"))
    CreateVerifiedDestinationNumberRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVerifiedDestinationNumberRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVerifiedDestinationNumberRequest.type = Types::CreateVerifiedDestinationNumberRequest
    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberArn", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId"))
    CreateVerifiedDestinationNumberResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVerifiedDestinationNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    CreateVerifiedDestinationNumberResult.type = Types::CreateVerifiedDestinationNumberResult
    DeleteAccountDefaultProtectConfigurationRequest.type = Types::DeleteAccountDefaultProtectConfigurationRequest
    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "DefaultProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "DefaultProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteAccountDefaultProtectConfigurationResult.type = Types::DeleteAccountDefaultProtectConfigurationResult
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    DeleteConfigurationSetResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    DeleteConfigurationSetResult.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationList, name: "EventDestinations"))
    DeleteConfigurationSetResult.add_member(:default_message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "DefaultMessageType"))
    DeleteConfigurationSetResult.add_member(:default_sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "DefaultSenderId"))
    DeleteConfigurationSetResult.add_member(:default_message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DefaultMessageFeedbackEnabled"))
    DeleteConfigurationSetResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    DeleteConfigurationSetResult.type = Types::DeleteConfigurationSetResult
    DeleteDefaultMessageTypeRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteDefaultMessageTypeRequest.type = Types::DeleteDefaultMessageTypeRequest
    DeleteDefaultMessageTypeResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    DeleteDefaultMessageTypeResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    DeleteDefaultMessageTypeResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    DeleteDefaultMessageTypeResult.type = Types::DeleteDefaultMessageTypeResult
    DeleteDefaultSenderIdRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteDefaultSenderIdRequest.type = Types::DeleteDefaultSenderIdRequest
    DeleteDefaultSenderIdResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    DeleteDefaultSenderIdResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    DeleteDefaultSenderIdResult.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId"))
    DeleteDefaultSenderIdResult.type = Types::DeleteDefaultSenderIdResult
    DeleteEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DeleteEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    DeleteEventDestinationRequest.type = Types::DeleteEventDestinationRequest
    DeleteEventDestinationResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    DeleteEventDestinationResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    DeleteEventDestinationResult.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "EventDestination"))
    DeleteEventDestinationResult.type = Types::DeleteEventDestinationResult
    DeleteKeywordRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrPoolIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    DeleteKeywordRequest.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword", traits: {"smithy.api#required" => {}}))
    DeleteKeywordRequest.type = Types::DeleteKeywordRequest
    DeleteKeywordResult.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn"))
    DeleteKeywordResult.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity"))
    DeleteKeywordResult.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword"))
    DeleteKeywordResult.add_member(:keyword_message, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMessage, name: "KeywordMessage"))
    DeleteKeywordResult.add_member(:keyword_action, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordAction, name: "KeywordAction"))
    DeleteKeywordResult.type = Types::DeleteKeywordResult
    DeleteMediaMessageSpendLimitOverrideRequest.type = Types::DeleteMediaMessageSpendLimitOverrideRequest
    DeleteMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    DeleteMediaMessageSpendLimitOverrideResult.type = Types::DeleteMediaMessageSpendLimitOverrideResult
    DeleteNotifyConfigurationRequest.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdOrArn, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationRequest.type = Types::DeleteNotifyConfigurationRequest
    DeleteNotifyConfigurationResult.add_member(:notify_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationArn, name: "NotifyConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationId, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "UseCase", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    DeleteNotifyConfigurationResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    DeleteNotifyConfigurationResult.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    DeleteNotifyConfigurationResult.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "Tier", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:tier_upgrade_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TierUpgradeStatus, name: "TierUpgradeStatus", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RejectionReason"))
    DeleteNotifyConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteNotifyConfigurationResult.type = Types::DeleteNotifyConfigurationResult
    DeleteNotifyMessageSpendLimitOverrideRequest.type = Types::DeleteNotifyMessageSpendLimitOverrideRequest
    DeleteNotifyMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    DeleteNotifyMessageSpendLimitOverrideResult.type = Types::DeleteNotifyMessageSpendLimitOverrideResult
    DeleteOptOutListRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    DeleteOptOutListRequest.type = Types::DeleteOptOutListRequest
    DeleteOptOutListResult.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn"))
    DeleteOptOutListResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    DeleteOptOutListResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    DeleteOptOutListResult.type = Types::DeleteOptOutListResult
    DeleteOptedOutNumberRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    DeleteOptedOutNumberRequest.add_member(:opted_out_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "OptedOutNumber", traits: {"smithy.api#required" => {}}))
    DeleteOptedOutNumberRequest.type = Types::DeleteOptedOutNumberRequest
    DeleteOptedOutNumberResult.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn"))
    DeleteOptedOutNumberResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    DeleteOptedOutNumberResult.add_member(:opted_out_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "OptedOutNumber"))
    DeleteOptedOutNumberResult.add_member(:opted_out_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "OptedOutTimestamp"))
    DeleteOptedOutNumberResult.add_member(:end_user_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "EndUserOptedOut", traits: {"smithy.api#default" => false}))
    DeleteOptedOutNumberResult.type = Types::DeleteOptedOutNumberResult
    DeletePoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId", traits: {"smithy.api#required" => {}}))
    DeletePoolRequest.type = Types::DeletePoolRequest
    DeletePoolResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    DeletePoolResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    DeletePoolResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolStatus, name: "Status"))
    DeletePoolResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    DeletePoolResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    DeletePoolResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    DeletePoolResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    DeletePoolResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    DeletePoolResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    DeletePoolResult.add_member(:shared_routes_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SharedRoutesEnabled", traits: {"smithy.api#default" => false}))
    DeletePoolResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    DeletePoolResult.type = Types::DeletePoolResult
    DeleteProtectConfigurationRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRequest.type = Types::DeleteProtectConfigurationRequest
    DeleteProtectConfigurationResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:account_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AccountDefault", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteProtectConfigurationResult.type = Types::DeleteProtectConfigurationResult
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.type = Types::DeleteProtectConfigurationRuleSetNumberOverrideRequest
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleOverrideAction, name: "Action", traits: {"smithy.api#required" => {}}))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpirationTimestamp"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.type = Types::DeleteProtectConfigurationRuleSetNumberOverrideResult
    DeleteRcsAgentRequest.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdOrArn, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    DeleteRcsAgentRequest.type = Types::DeleteRcsAgentRequest
    DeleteRcsAgentResult.add_member(:rcs_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentArn", traits: {"smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    DeleteRcsAgentResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    DeleteRcsAgentResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    DeleteRcsAgentResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteRcsAgentResult.add_member(:two_way_rcs_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventTypeList, name: "TwoWayRcsEventsEnabled"))
    DeleteRcsAgentResult.type = Types::DeleteRcsAgentResult
    DeleteRcsMessageSpendLimitOverrideRequest.type = Types::DeleteRcsMessageSpendLimitOverrideRequest
    DeleteRcsMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    DeleteRcsMessageSpendLimitOverrideResult.type = Types::DeleteRcsMessageSpendLimitOverrideResult
    DeleteRegistrationAttachmentRequest.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentIdOrArn, name: "RegistrationAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationAttachmentRequest.type = Types::DeleteRegistrationAttachmentRequest
    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentArn", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, name: "AttachmentStatus", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.add_member(:attachment_upload_error_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUploadErrorReason, name: "AttachmentUploadErrorReason"))
    DeleteRegistrationAttachmentResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationAttachmentResult.type = Types::DeleteRegistrationAttachmentResult
    DeleteRegistrationFieldValueRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueRequest.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueRequest.type = Types::DeleteRegistrationFieldValueRequest
    DeleteRegistrationFieldValueResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationFieldValueResult.add_member(:select_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoiceList, name: "SelectChoices"))
    DeleteRegistrationFieldValueResult.add_member(:text_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TextValue, name: "TextValue"))
    DeleteRegistrationFieldValueResult.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentId"))
    DeleteRegistrationFieldValueResult.type = Types::DeleteRegistrationFieldValueResult
    DeleteRegistrationRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationRequest.type = Types::DeleteRegistrationRequest
    DeleteRegistrationResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "RegistrationStatus", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:current_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "CurrentVersionNumber", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.add_member(:approved_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "ApprovedVersionNumber"))
    DeleteRegistrationResult.add_member(:latest_denied_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "LatestDeniedVersionNumber"))
    DeleteRegistrationResult.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "AdditionalAttributes"))
    DeleteRegistrationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteRegistrationResult.type = Types::DeleteRegistrationResult
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    DeleteResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    DeleteResourcePolicyResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    DeleteResourcePolicyResult.type = Types::DeleteResourcePolicyResult
    DeleteTextMessageSpendLimitOverrideRequest.type = Types::DeleteTextMessageSpendLimitOverrideRequest
    DeleteTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    DeleteTextMessageSpendLimitOverrideResult.type = Types::DeleteTextMessageSpendLimitOverrideResult
    DeleteVerifiedDestinationNumberRequest.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberIdOrArn, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberRequest.type = Types::DeleteVerifiedDestinationNumberRequest
    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberArn", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    DeleteVerifiedDestinationNumberResult.type = Types::DeleteVerifiedDestinationNumberResult
    DeleteVoiceMessageSpendLimitOverrideRequest.type = Types::DeleteVoiceMessageSpendLimitOverrideRequest
    DeleteVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    DeleteVoiceMessageSpendLimitOverrideResult.type = Types::DeleteVoiceMessageSpendLimitOverrideResult
    DescribeAccountAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAccountAttributesRequest.type = Types::DescribeAccountAttributesRequest
    DescribeAccountAttributesResult.add_member(:account_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAttributeList, name: "AccountAttributes"))
    DescribeAccountAttributesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountAttributesResult.type = Types::DescribeAccountAttributesResult
    DescribeAccountLimitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountLimitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAccountLimitsRequest.type = Types::DescribeAccountLimitsRequest
    DescribeAccountLimitsResult.add_member(:account_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimitList, name: "AccountLimits"))
    DescribeAccountLimitsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAccountLimitsResult.type = Types::DescribeAccountLimitsResult
    DescribeConfigurationSetsRequest.add_member(:configuration_set_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameList, name: "ConfigurationSetNames"))
    DescribeConfigurationSetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilterList, name: "Filters"))
    DescribeConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConfigurationSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeConfigurationSetsRequest.type = Types::DescribeConfigurationSetsRequest
    DescribeConfigurationSetsResult.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetInformationList, name: "ConfigurationSets"))
    DescribeConfigurationSetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConfigurationSetsResult.type = Types::DescribeConfigurationSetsResult
    DescribeKeywordsRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrPoolIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    DescribeKeywordsRequest.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordList, name: "Keywords"))
    DescribeKeywordsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordFilterList, name: "Filters"))
    DescribeKeywordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeKeywordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeKeywordsRequest.type = Types::DescribeKeywordsRequest
    DescribeKeywordsResult.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn"))
    DescribeKeywordsResult.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity"))
    DescribeKeywordsResult.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordInformationList, name: "Keywords"))
    DescribeKeywordsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeKeywordsResult.type = Types::DescribeKeywordsResult
    DescribeNotifyConfigurationsRequest.add_member(:notify_configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdList, name: "NotifyConfigurationIds"))
    DescribeNotifyConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationFilterList, name: "Filters"))
    DescribeNotifyConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeNotifyConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeNotifyConfigurationsRequest.type = Types::DescribeNotifyConfigurationsRequest
    DescribeNotifyConfigurationsResult.add_member(:notify_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationInformationList, name: "NotifyConfigurations"))
    DescribeNotifyConfigurationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeNotifyConfigurationsResult.type = Types::DescribeNotifyConfigurationsResult
    DescribeNotifyTemplatesRequest.add_member(:template_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateIdList, name: "TemplateIds"))
    DescribeNotifyTemplatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateFilterList, name: "Filters"))
    DescribeNotifyTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeNotifyTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeNotifyTemplatesRequest.type = Types::DescribeNotifyTemplatesRequest
    DescribeNotifyTemplatesResult.add_member(:notify_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateInformationList, name: "NotifyTemplates"))
    DescribeNotifyTemplatesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeNotifyTemplatesResult.type = Types::DescribeNotifyTemplatesResult
    DescribeOptOutListsRequest.add_member(:opt_out_list_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameList, name: "OptOutListNames"))
    DescribeOptOutListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeOptOutListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeOptOutListsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DescribeOptOutListsRequest.type = Types::DescribeOptOutListsRequest
    DescribeOptOutListsResult.add_member(:opt_out_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListInformationList, name: "OptOutLists"))
    DescribeOptOutListsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeOptOutListsResult.type = Types::DescribeOptOutListsResult
    DescribeOptedOutNumbersRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    DescribeOptedOutNumbersRequest.add_member(:opted_out_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutNumberList, name: "OptedOutNumbers"))
    DescribeOptedOutNumbersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutFilterList, name: "Filters"))
    DescribeOptedOutNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeOptedOutNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeOptedOutNumbersRequest.type = Types::DescribeOptedOutNumbersRequest
    DescribeOptedOutNumbersResult.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn"))
    DescribeOptedOutNumbersResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    DescribeOptedOutNumbersResult.add_member(:opted_out_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutNumberInformationList, name: "OptedOutNumbers"))
    DescribeOptedOutNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeOptedOutNumbersResult.type = Types::DescribeOptedOutNumbersResult
    DescribePhoneNumbersRequest.add_member(:phone_number_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberIdList, name: "PhoneNumberIds"))
    DescribePhoneNumbersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberFilterList, name: "Filters"))
    DescribePhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribePhoneNumbersRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DescribePhoneNumbersRequest.type = Types::DescribePhoneNumbersRequest
    DescribePhoneNumbersResult.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberInformationList, name: "PhoneNumbers"))
    DescribePhoneNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePhoneNumbersResult.type = Types::DescribePhoneNumbersResult
    DescribePoolsRequest.add_member(:pool_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdList, name: "PoolIds"))
    DescribePoolsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolFilterList, name: "Filters"))
    DescribePoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePoolsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribePoolsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DescribePoolsRequest.type = Types::DescribePoolsRequest
    DescribePoolsResult.add_member(:pools, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolInformationList, name: "Pools"))
    DescribePoolsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribePoolsResult.type = Types::DescribePoolsResult
    DescribeProtectConfigurationsRequest.add_member(:protect_configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdList, name: "ProtectConfigurationIds"))
    DescribeProtectConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationFilterList, name: "Filters"))
    DescribeProtectConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeProtectConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeProtectConfigurationsRequest.type = Types::DescribeProtectConfigurationsRequest
    DescribeProtectConfigurationsResult.add_member(:protect_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationInformationList, name: "ProtectConfigurations"))
    DescribeProtectConfigurationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeProtectConfigurationsResult.type = Types::DescribeProtectConfigurationsResult
    DescribeRcsAgentCountryLaunchStatusRequest.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdOrArn, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    DescribeRcsAgentCountryLaunchStatusRequest.add_member(:iso_country_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "IsoCountryCodes"))
    DescribeRcsAgentCountryLaunchStatusRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatusFilterList, name: "Filters"))
    DescribeRcsAgentCountryLaunchStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRcsAgentCountryLaunchStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRcsAgentCountryLaunchStatusRequest.type = Types::DescribeRcsAgentCountryLaunchStatusRequest
    DescribeRcsAgentCountryLaunchStatusResult.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    DescribeRcsAgentCountryLaunchStatusResult.add_member(:rcs_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentArn", traits: {"smithy.api#required" => {}}))
    DescribeRcsAgentCountryLaunchStatusResult.add_member(:country_launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryLaunchStatusInformationList, name: "CountryLaunchStatus"))
    DescribeRcsAgentCountryLaunchStatusResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRcsAgentCountryLaunchStatusResult.type = Types::DescribeRcsAgentCountryLaunchStatusResult
    DescribeRcsAgentsRequest.add_member(:rcs_agent_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdList, name: "RcsAgentIds"))
    DescribeRcsAgentsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DescribeRcsAgentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentFilterList, name: "Filters"))
    DescribeRcsAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRcsAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRcsAgentsRequest.type = Types::DescribeRcsAgentsRequest
    DescribeRcsAgentsResult.add_member(:rcs_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentInformationList, name: "RcsAgents"))
    DescribeRcsAgentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRcsAgentsResult.type = Types::DescribeRcsAgentsResult
    DescribeRegistrationAttachmentsRequest.add_member(:registration_attachment_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentIdList, name: "RegistrationAttachmentIds"))
    DescribeRegistrationAttachmentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentFilterList, name: "Filters"))
    DescribeRegistrationAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationAttachmentsRequest.type = Types::DescribeRegistrationAttachmentsRequest
    DescribeRegistrationAttachmentsResult.add_member(:registration_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentsInformationList, name: "RegistrationAttachments", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationAttachmentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationAttachmentsResult.type = Types::DescribeRegistrationAttachmentsResult
    DescribeRegistrationFieldDefinitionsRequest.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:section_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPath, name: "SectionPath"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:field_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPathList, name: "FieldPaths"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationFieldDefinitionsRequest.type = Types::DescribeRegistrationFieldDefinitionsRequest
    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_field_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFieldDefinitionList, name: "RegistrationFieldDefinitions", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldDefinitionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationFieldDefinitionsResult.type = Types::DescribeRegistrationFieldDefinitionsResult
    DescribeRegistrationFieldValuesRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber"))
    DescribeRegistrationFieldValuesRequest.add_member(:section_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPath, name: "SectionPath"))
    DescribeRegistrationFieldValuesRequest.add_member(:field_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPathList, name: "FieldPaths"))
    DescribeRegistrationFieldValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationFieldValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationFieldValuesRequest.type = Types::DescribeRegistrationFieldValuesRequest
    DescribeRegistrationFieldValuesResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:registration_field_values, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFieldValueInformationList, name: "RegistrationFieldValues", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationFieldValuesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationFieldValuesResult.type = Types::DescribeRegistrationFieldValuesResult
    DescribeRegistrationSectionDefinitionsRequest.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:section_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPathList, name: "SectionPaths"))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationSectionDefinitionsRequest.type = Types::DescribeRegistrationSectionDefinitionsRequest
    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_section_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationSectionDefinitionList, name: "RegistrationSectionDefinitions", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationSectionDefinitionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationSectionDefinitionsResult.type = Types::DescribeRegistrationSectionDefinitionsResult
    DescribeRegistrationTypeDefinitionsRequest.add_member(:registration_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeList, name: "RegistrationTypes"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeFilterList, name: "Filters"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationTypeDefinitionsRequest.type = Types::DescribeRegistrationTypeDefinitionsRequest
    DescribeRegistrationTypeDefinitionsResult.add_member(:registration_type_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeDefinitionList, name: "RegistrationTypeDefinitions", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationTypeDefinitionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationTypeDefinitionsResult.type = Types::DescribeRegistrationTypeDefinitionsResult
    DescribeRegistrationVersionsRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationVersionsRequest.add_member(:version_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumberList, name: "VersionNumbers"))
    DescribeRegistrationVersionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionFilterList, name: "Filters"))
    DescribeRegistrationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationVersionsRequest.type = Types::DescribeRegistrationVersionsRequest
    DescribeRegistrationVersionsResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:registration_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionInformationList, name: "RegistrationVersions", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationVersionsResult.type = Types::DescribeRegistrationVersionsResult
    DescribeRegistrationsRequest.add_member(:registration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdList, name: "RegistrationIds"))
    DescribeRegistrationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFilterList, name: "Filters"))
    DescribeRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeRegistrationsRequest.type = Types::DescribeRegistrationsRequest
    DescribeRegistrationsResult.add_member(:registrations, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationInformationList, name: "Registrations", traits: {"smithy.api#required" => {}}))
    DescribeRegistrationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRegistrationsResult.type = Types::DescribeRegistrationsResult
    DescribeSenderIdsRequest.add_member(:sender_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdList, name: "SenderIds"))
    DescribeSenderIdsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdFilterList, name: "Filters"))
    DescribeSenderIdsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSenderIdsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeSenderIdsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DescribeSenderIdsRequest.type = Types::DescribeSenderIdsRequest
    DescribeSenderIdsResult.add_member(:sender_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdInformationList, name: "SenderIds"))
    DescribeSenderIdsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSenderIdsResult.type = Types::DescribeSenderIdsResult
    DescribeSpendLimitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSpendLimitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeSpendLimitsRequest.type = Types::DescribeSpendLimitsRequest
    DescribeSpendLimitsResult.add_member(:spend_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SpendLimitList, name: "SpendLimits"))
    DescribeSpendLimitsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeSpendLimitsResult.type = Types::DescribeSpendLimitsResult
    DescribeVerifiedDestinationNumbersRequest.add_member(:verified_destination_number_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberIdList, name: "VerifiedDestinationNumberIds"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:destination_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationPhoneNumberList, name: "DestinationPhoneNumbers"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberFilterList, name: "Filters"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeVerifiedDestinationNumbersRequest.type = Types::DescribeVerifiedDestinationNumbersRequest
    DescribeVerifiedDestinationNumbersResult.add_member(:verified_destination_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberInformationList, name: "VerifiedDestinationNumbers", traits: {"smithy.api#required" => {}}))
    DescribeVerifiedDestinationNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeVerifiedDestinationNumbersResult.type = Types::DescribeVerifiedDestinationNumbersResult
    DestinationCountryParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterKey, name: "key"))
    DestinationCountryParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterValue, name: "value"))
    DestinationPhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    DisassociateOriginationIdentityRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId", traits: {"smithy.api#required" => {}}))
    DisassociateOriginationIdentityRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrSenderIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    DisassociateOriginationIdentityRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    DisassociateOriginationIdentityRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateOriginationIdentityRequest.type = Types::DisassociateOriginationIdentityRequest
    DisassociateOriginationIdentityResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    DisassociateOriginationIdentityResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    DisassociateOriginationIdentityResult.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn"))
    DisassociateOriginationIdentityResult.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity"))
    DisassociateOriginationIdentityResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    DisassociateOriginationIdentityResult.type = Types::DisassociateOriginationIdentityResult
    DisassociateProtectConfigurationRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationRequest.type = Types::DisassociateProtectConfigurationRequest
    DisassociateProtectConfigurationResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    DisassociateProtectConfigurationResult.type = Types::DisassociateProtectConfigurationResult
    DiscardRegistrationVersionRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionRequest.type = Types::DiscardRegistrationVersionRequest
    DiscardRegistrationVersionResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatus, name: "RegistrationVersionStatus", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.add_member(:registration_version_status_history, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatusHistory, name: "RegistrationVersionStatusHistory", traits: {"smithy.api#required" => {}}))
    DiscardRegistrationVersionResult.type = Types::DiscardRegistrationVersionResult
    EventDestination.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList, name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestination, name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "member"))
    EventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member"))
    FieldCondition.add_member(:depends_on_field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "DependsOnFieldPath", traits: {"smithy.api#required" => {}}))
    FieldCondition.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    FieldCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionValueList, name: "Values"))
    FieldCondition.type = Types::FieldCondition
    FieldConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldCondition, name: "member"))
    FieldPathList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "member"))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    GetProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "NumberCapability", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetRequest.type = Types::GetProtectConfigurationCountryRuleSetRequest
    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:number_capability, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "NumberCapability", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationCountryRuleSet, name: "CountryRuleSet", traits: {"smithy.api#required" => {}}))
    GetProtectConfigurationCountryRuleSetResult.type = Types::GetProtectConfigurationCountryRuleSetResult
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    GetResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    GetResourcePolicyResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    GetResourcePolicyResult.type = Types::GetResourcePolicyResult
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RequestId"))
    InternalServerException.type = Types::InternalServerException
    IsoCountryCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "member"))
    KeywordFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    KeywordFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    KeywordFilter.type = Types::KeywordFilter
    KeywordFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordFilter, name: "member"))
    KeywordInformation.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword", traits: {"smithy.api#required" => {}}))
    KeywordInformation.add_member(:keyword_message, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMessage, name: "KeywordMessage", traits: {"smithy.api#required" => {}}))
    KeywordInformation.add_member(:keyword_action, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordAction, name: "KeywordAction", traits: {"smithy.api#required" => {}}))
    KeywordInformation.type = Types::KeywordInformation
    KeywordInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordInformation, name: "member"))
    KeywordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "member"))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamArn, name: "DeliveryStreamArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    ListAvailablePhoneNumbersRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    ListAvailablePhoneNumbersRequest.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities", traits: {"smithy.api#required" => {}}))
    ListAvailablePhoneNumbersRequest.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchableNumberType, name: "NumberType", traits: {"smithy.api#required" => {}}))
    ListAvailablePhoneNumbersRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId"))
    ListAvailablePhoneNumbersRequest.add_member(:number_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberPreferenceList, name: "NumberPreference"))
    ListAvailablePhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAvailablePhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAvailablePhoneNumbersMaxResults, name: "MaxResults"))
    ListAvailablePhoneNumbersRequest.type = Types::ListAvailablePhoneNumbersRequest
    ListAvailablePhoneNumbersResult.add_member(:available_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailablePhoneNumberList, name: "AvailablePhoneNumbers", traits: {"smithy.api#required" => {}}))
    ListAvailablePhoneNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAvailablePhoneNumbersResult.type = Types::ListAvailablePhoneNumbersResult
    ListNotifyCountriesRequest.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "Channels"))
    ListNotifyCountriesRequest.add_member(:use_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyUseCaseList, name: "UseCases"))
    ListNotifyCountriesRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "Tier"))
    ListNotifyCountriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotifyCountriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListNotifyCountriesRequest.type = Types::ListNotifyCountriesRequest
    ListNotifyCountriesResult.add_member(:notify_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCountryInformationList, name: "NotifyCountries"))
    ListNotifyCountriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotifyCountriesResult.type = Types::ListNotifyCountriesResult
    ListPoolOriginationIdentitiesRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId", traits: {"smithy.api#required" => {}}))
    ListPoolOriginationIdentitiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolOriginationIdentitiesFilterList, name: "Filters"))
    ListPoolOriginationIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoolOriginationIdentitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPoolOriginationIdentitiesRequest.type = Types::ListPoolOriginationIdentitiesRequest
    ListPoolOriginationIdentitiesResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    ListPoolOriginationIdentitiesResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    ListPoolOriginationIdentitiesResult.add_member(:origination_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationIdentityMetadataList, name: "OriginationIdentities"))
    ListPoolOriginationIdentitiesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPoolOriginationIdentitiesResult.type = Types::ListPoolOriginationIdentitiesResult
    ListProtectConfigurationRuleSetNumberOverrideFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleSetNumberOverrideFilterItem, name: "member"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProtectConfigurationRuleSetNumberOverrideFilter, name: "Filters"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.type = Types::ListProtectConfigurationRuleSetNumberOverridesRequest
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:rule_set_number_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleSetNumberOverrideList, name: "RuleSetNumberOverrides"))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListProtectConfigurationRuleSetNumberOverridesResult.type = Types::ListProtectConfigurationRuleSetNumberOverridesResult
    ListRegistrationAssociationsRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    ListRegistrationAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationFilterList, name: "Filters"))
    ListRegistrationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRegistrationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRegistrationAssociationsRequest.type = Types::ListRegistrationAssociationsRequest
    ListRegistrationAssociationsResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:registration_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationMetadataList, name: "RegistrationAssociations", traits: {"smithy.api#required" => {}}))
    ListRegistrationAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRegistrationAssociationsResult.type = Types::ListRegistrationAssociationsResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    LongMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    LongMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveLong, name: "value"))
    MediaUrlList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaUrlValue, name: "member"))
    MessageTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "member"))
    MessagingLimits.add_member(:rate_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: LongMap, name: "RateLimits"))
    MessagingLimits.add_member(:daily_message_caps, ::Smithy::Schema::Shapes::MemberShape.new(target: LongMap, name: "DailyMessageCaps"))
    MessagingLimits.type = Types::MessagingLimits
    NonEmptyTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    NotifyConfigurationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationFilter.type = Types::NotifyConfigurationFilter
    NotifyConfigurationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationFilter, name: "member"))
    NotifyConfigurationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdOrArn, name: "member"))
    NotifyConfigurationInformation.add_member(:notify_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationArn, name: "NotifyConfigurationArn", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationId, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "UseCase", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    NotifyConfigurationInformation.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    NotifyConfigurationInformation.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    NotifyConfigurationInformation.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "Tier", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:tier_upgrade_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TierUpgradeStatus, name: "TierUpgradeStatus", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RejectionReason"))
    NotifyConfigurationInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    NotifyConfigurationInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    NotifyConfigurationInformation.type = Types::NotifyConfigurationInformation
    NotifyConfigurationInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationInformation, name: "member"))
    NotifyConfigurationTierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "member"))
    NotifyCountryInformation.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    NotifyCountryInformation.add_member(:country_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CountryName", traits: {"smithy.api#required" => {}}))
    NotifyCountryInformation.add_member(:supported_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "SupportedChannels", traits: {"smithy.api#required" => {}}))
    NotifyCountryInformation.add_member(:supported_use_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyUseCaseList, name: "SupportedUseCases", traits: {"smithy.api#required" => {}}))
    NotifyCountryInformation.add_member(:supported_tiers, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTierList, name: "SupportedTiers", traits: {"smithy.api#required" => {}}))
    NotifyCountryInformation.add_member(:customer_owned_identity_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "CustomerOwnedIdentityRequired", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    NotifyCountryInformation.type = Types::NotifyCountryInformation
    NotifyCountryInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCountryInformation, name: "member"))
    NotifyEnabledChannelsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "member"))
    NotifyTemplateFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    NotifyTemplateFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    NotifyTemplateFilter.type = Types::NotifyTemplateFilter
    NotifyTemplateFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateFilter, name: "member"))
    NotifyTemplateIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "member"))
    NotifyTemplateInformation.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "TemplateId", traits: {"smithy.api#required" => {}}))
    NotifyTemplateInformation.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    NotifyTemplateInformation.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateType, name: "TemplateType", traits: {"smithy.api#required" => {}}))
    NotifyTemplateInformation.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "Channels", traits: {"smithy.api#required" => {}}))
    NotifyTemplateInformation.add_member(:tier_access, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTierList, name: "TierAccess"))
    NotifyTemplateInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateStatus, name: "Status"))
    NotifyTemplateInformation.add_member(:supported_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "SupportedCountries"))
    NotifyTemplateInformation.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyLanguageCode, name: "LanguageCode"))
    NotifyTemplateInformation.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, name: "Content"))
    NotifyTemplateInformation.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariablesMap, name: "Variables"))
    NotifyTemplateInformation.add_member(:supported_voice_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceIdList, name: "SupportedVoiceIds"))
    NotifyTemplateInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    NotifyTemplateInformation.type = Types::NotifyTemplateInformation
    NotifyTemplateInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateInformation, name: "member"))
    NotifyTierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "member"))
    NotifyUseCaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "member"))
    NumberCapabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "member"))
    NumberFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterValue, name: "member"))
    NumberPreferenceItem.add_member(:preference_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceTypeList, name: "PreferenceType", traits: {"smithy.api#required" => {}}))
    NumberPreferenceItem.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberFilterList, name: "Filter", traits: {"smithy.api#required" => {}}))
    NumberPreferenceItem.type = Types::NumberPreferenceItem
    NumberPreferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberPreferenceItem, name: "member"))
    OptOutListInformation.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn", traits: {"smithy.api#required" => {}}))
    OptOutListInformation.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    OptOutListInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    OptOutListInformation.type = Types::OptOutListInformation
    OptOutListInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListInformation, name: "member"))
    OptOutListNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "member"))
    OptedOutFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    OptedOutFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    OptedOutFilter.type = Types::OptedOutFilter
    OptedOutFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutFilter, name: "member"))
    OptedOutNumberInformation.add_member(:opted_out_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "OptedOutNumber", traits: {"smithy.api#required" => {}}))
    OptedOutNumberInformation.add_member(:opted_out_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "OptedOutTimestamp", traits: {"smithy.api#required" => {}}))
    OptedOutNumberInformation.add_member(:end_user_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "EndUserOptedOut", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    OptedOutNumberInformation.type = Types::OptedOutNumberInformation
    OptedOutNumberInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptedOutNumberInformation, name: "member"))
    OptedOutNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    OriginationIdentityMetadata.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn", traits: {"smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities", traits: {"smithy.api#required" => {}}))
    OriginationIdentityMetadata.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    OriginationIdentityMetadata.type = Types::OriginationIdentityMetadata
    OriginationIdentityMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationIdentityMetadata, name: "member"))
    PhoneNumberFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    PhoneNumberFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    PhoneNumberFilter.type = Types::PhoneNumberFilter
    PhoneNumberFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberFilter, name: "member"))
    PhoneNumberIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberIdOrArn, name: "member"))
    PhoneNumberInformation.add_member(:phone_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberArn", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberId"))
    PhoneNumberInformation.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberType, name: "NumberType", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    PhoneNumberInformation.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    PhoneNumberInformation.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:international_sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "InternationalSendingEnabled", traits: {"smithy.api#default" => false}))
    PhoneNumberInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PhoneNumberInformation.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    PhoneNumberInformation.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    PhoneNumberInformation.add_member(:messaging_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagingLimits, name: "MessagingLimits"))
    PhoneNumberInformation.add_member(:pricing_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingTier"))
    PhoneNumberInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    PhoneNumberInformation.type = Types::PhoneNumberInformation
    PhoneNumberInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberInformation, name: "member"))
    PoolFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    PoolFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    PoolFilter.type = Types::PoolFilter
    PoolFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolFilter, name: "member"))
    PoolIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "member"))
    PoolInformation.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn", traits: {"smithy.api#required" => {}}))
    PoolInformation.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId", traits: {"smithy.api#required" => {}}))
    PoolInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    PoolInformation.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType", traits: {"smithy.api#required" => {}}))
    PoolInformation.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PoolInformation.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    PoolInformation.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    PoolInformation.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PoolInformation.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    PoolInformation.add_member(:shared_routes_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SharedRoutesEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PoolInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PoolInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    PoolInformation.type = Types::PoolInformation
    PoolInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolInformation, name: "member"))
    PoolOriginationIdentitiesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolOriginationIdentitiesFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    PoolOriginationIdentitiesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    PoolOriginationIdentitiesFilter.type = Types::PoolOriginationIdentitiesFilter
    PoolOriginationIdentitiesFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolOriginationIdentitiesFilter, name: "member"))
    PreferenceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferenceType, name: "member"))
    ProtectConfigurationCountryRuleSet.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "key"))
    ProtectConfigurationCountryRuleSet.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationCountryRuleSetInformation, name: "value"))
    ProtectConfigurationCountryRuleSetInformation.add_member(:protect_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectStatus, name: "ProtectStatus", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationCountryRuleSetInformation.type = Types::ProtectConfigurationCountryRuleSetInformation
    ProtectConfigurationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationFilter.type = Types::ProtectConfigurationFilter
    ProtectConfigurationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationFilter, name: "member"))
    ProtectConfigurationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "member"))
    ProtectConfigurationInformation.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:account_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AccountDefault", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ProtectConfigurationInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ProtectConfigurationInformation.type = Types::ProtectConfigurationInformation
    ProtectConfigurationInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationInformation, name: "member"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleOverrideAction, name: "Action", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverride.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpirationTimestamp"))
    ProtectConfigurationRuleSetNumberOverride.type = Types::ProtectConfigurationRuleSetNumberOverride
    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleSetNumberOverrideFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.type = Types::ProtectConfigurationRuleSetNumberOverrideFilterItem
    ProtectConfigurationRuleSetNumberOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleSetNumberOverride, name: "member"))
    PutKeywordRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneOrPoolIdOrArn, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword", traits: {"smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword_message, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMessage, name: "KeywordMessage", traits: {"smithy.api#required" => {}}))
    PutKeywordRequest.add_member(:keyword_action, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordAction, name: "KeywordAction"))
    PutKeywordRequest.type = Types::PutKeywordRequest
    PutKeywordResult.add_member(:origination_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentityArn"))
    PutKeywordResult.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OriginationIdentity"))
    PutKeywordResult.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword"))
    PutKeywordResult.add_member(:keyword_message, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMessage, name: "KeywordMessage"))
    PutKeywordResult.add_member(:keyword_action, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordAction, name: "KeywordAction"))
    PutKeywordResult.type = Types::PutKeywordResult
    PutMessageFeedbackRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId", traits: {"smithy.api#required" => {}}))
    PutMessageFeedbackRequest.add_member(:message_feedback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageFeedbackStatus, name: "MessageFeedbackStatus", traits: {"smithy.api#required" => {}}))
    PutMessageFeedbackRequest.type = Types::PutMessageFeedbackRequest
    PutMessageFeedbackResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId", traits: {"smithy.api#required" => {}}))
    PutMessageFeedbackResult.add_member(:message_feedback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageFeedbackStatus, name: "MessageFeedbackStatus", traits: {"smithy.api#required" => {}}))
    PutMessageFeedbackResult.type = Types::PutMessageFeedbackResult
    PutOptedOutNumberRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName", traits: {"smithy.api#required" => {}}))
    PutOptedOutNumberRequest.add_member(:opted_out_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "OptedOutNumber", traits: {"smithy.api#required" => {}}))
    PutOptedOutNumberRequest.type = Types::PutOptedOutNumberRequest
    PutOptedOutNumberResult.add_member(:opt_out_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OptOutListArn"))
    PutOptedOutNumberResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    PutOptedOutNumberResult.add_member(:opted_out_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "OptedOutNumber"))
    PutOptedOutNumberResult.add_member(:opted_out_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "OptedOutTimestamp"))
    PutOptedOutNumberResult.add_member(:end_user_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "EndUserOptedOut", traits: {"smithy.api#default" => false}))
    PutOptedOutNumberResult.type = Types::PutOptedOutNumberResult
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleOverrideAction, name: "Action", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpirationTimestamp"))
    PutProtectConfigurationRuleSetNumberOverrideRequest.type = Types::PutProtectConfigurationRuleSetNumberOverrideRequest
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationRuleOverrideAction, name: "Action", traits: {"smithy.api#required" => {}}))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpirationTimestamp"))
    PutProtectConfigurationRuleSetNumberOverrideResult.type = Types::PutProtectConfigurationRuleSetNumberOverrideResult
    PutRegistrationFieldValueRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueRequest.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueRequest.add_member(:select_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoiceList, name: "SelectChoices"))
    PutRegistrationFieldValueRequest.add_member(:text_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TextValue, name: "TextValue"))
    PutRegistrationFieldValueRequest.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentIdOrArn, name: "RegistrationAttachmentId"))
    PutRegistrationFieldValueRequest.type = Types::PutRegistrationFieldValueRequest
    PutRegistrationFieldValueResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    PutRegistrationFieldValueResult.add_member(:select_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoiceList, name: "SelectChoices"))
    PutRegistrationFieldValueResult.add_member(:text_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TextValue, name: "TextValue"))
    PutRegistrationFieldValueResult.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentId"))
    PutRegistrationFieldValueResult.type = Types::PutRegistrationFieldValueResult
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    PutResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    PutResourcePolicyResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    RcsAgentFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RcsAgentFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RcsAgentFilter.type = Types::RcsAgentFilter
    RcsAgentFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentFilter, name: "member"))
    RcsAgentIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdOrArn, name: "member"))
    RcsAgentInformation.add_member(:rcs_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentArn", traits: {"smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    RcsAgentInformation.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    RcsAgentInformation.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    RcsAgentInformation.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RcsAgentInformation.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    RcsAgentInformation.add_member(:two_way_media_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3BucketName, name: "TwoWayMediaS3BucketName"))
    RcsAgentInformation.add_member(:two_way_media_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3KeyPrefix, name: "TwoWayMediaS3KeyPrefix"))
    RcsAgentInformation.add_member(:two_way_media_s3_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayMediaS3Role"))
    RcsAgentInformation.add_member(:two_way_rcs_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventTypeList, name: "TwoWayRcsEventsEnabled"))
    RcsAgentInformation.add_member(:testing_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: TestingAgentInformation, name: "TestingAgent"))
    RcsAgentInformation.add_member(:messaging_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagingLimits, name: "MessagingLimits"))
    RcsAgentInformation.type = Types::RcsAgentInformation
    RcsAgentInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentInformation, name: "member"))
    RcsCardContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardTitle, name: "Title"))
    RcsCardContent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardDescription, name: "Description"))
    RcsCardContent.add_member(:media, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardMedia, name: "Media"))
    RcsCardContent.add_member(:suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardSuggestedActionList, name: "Suggestions"))
    RcsCardContent.type = Types::RcsCardContent
    RcsCardMedia.add_member(:file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "FileUrl", traits: {"smithy.api#required" => {}}))
    RcsCardMedia.add_member(:thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "ThumbnailUrl"))
    RcsCardMedia.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Height", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$"}))
    RcsCardMedia.type = Types::RcsCardMedia
    RcsCardSuggestedActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedAction, name: "member"))
    RcsCarousel.add_member(:card_width, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CardWidth", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$", "smithy.api#required" => {}}))
    RcsCarousel.add_member(:card_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCarouselCardContentList, name: "CardContents", traits: {"smithy.api#required" => {}}))
    RcsCarousel.type = Types::RcsCarousel
    RcsCarouselCardContent.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardTitle, name: "Title"))
    RcsCarouselCardContent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardDescription, name: "Description"))
    RcsCarouselCardContent.add_member(:media, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCarouselCardMedia, name: "Media"))
    RcsCarouselCardContent.add_member(:suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardSuggestedActionList, name: "Suggestions"))
    RcsCarouselCardContent.type = Types::RcsCarouselCardContent
    RcsCarouselCardContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCarouselCardContent, name: "member"))
    RcsCarouselCardMedia.add_member(:file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "FileUrl", traits: {"smithy.api#required" => {}}))
    RcsCarouselCardMedia.add_member(:thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "ThumbnailUrl"))
    RcsCarouselCardMedia.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Height", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$"}))
    RcsCarouselCardMedia.type = Types::RcsCarouselCardMedia
    RcsContent.add_member(:text_message, Types::RcsContent::TextMessage, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsTextMessage, name: "TextMessage"))
    RcsContent.add_member(:file_message, Types::RcsContent::FileMessage, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsFileMessage, name: "FileMessage"))
    RcsContent.add_member(:rich_card, Types::RcsContent::RichCard, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsStandaloneCard, name: "RichCard"))
    RcsContent.add_member(:carousel, Types::RcsContent::Carousel, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCarousel, name: "Carousel"))
    RcsContent.add_member(:unknown, Types::RcsContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RcsContent.type = Types::RcsContent
    RcsCreateCalendarEventAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsCreateCalendarEventAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsCreateCalendarEventAction.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCalendarEventTitle, name: "Title", traits: {"smithy.api#required" => {}}))
    RcsCreateCalendarEventAction.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartTime", traits: {"smithy.api#required" => {}}))
    RcsCreateCalendarEventAction.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndTime", traits: {"smithy.api#required" => {}}))
    RcsCreateCalendarEventAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCalendarEventDescription, name: "Description"))
    RcsCreateCalendarEventAction.type = Types::RcsCreateCalendarEventAction
    RcsDialPhoneAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsDialPhoneAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsDialPhoneAction.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    RcsDialPhoneAction.type = Types::RcsDialPhoneAction
    RcsEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventType, name: "member"))
    RcsFallbackConfiguration.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsFallbackChannel, name: "Channel", traits: {"smithy.api#required" => {}}))
    RcsFallbackConfiguration.add_member(:message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsFallbackMessageBody, name: "MessageBody"))
    RcsFallbackConfiguration.add_member(:media_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaUrlList, name: "MediaUrls"))
    RcsFallbackConfiguration.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsFallbackOriginationIdentity, name: "OriginationIdentity"))
    RcsFallbackConfiguration.type = Types::RcsFallbackConfiguration
    RcsFileMessage.add_member(:file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "FileUrl", traits: {"smithy.api#required" => {}}))
    RcsFileMessage.add_member(:thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMediaUrl, name: "ThumbnailUrl"))
    RcsFileMessage.type = Types::RcsFileMessage
    RcsMessageContent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsContent, name: "Content", traits: {"smithy.api#required" => {}}))
    RcsMessageContent.add_member(:suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionList, name: "Suggestions"))
    RcsMessageContent.type = Types::RcsMessageContent
    RcsOpenUrlAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsOpenUrlAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsOpenUrlAction.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsOpenUrlValue, name: "Url", traits: {"smithy.api#required" => {}}))
    RcsOpenUrlAction.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Application", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$"}))
    RcsOpenUrlAction.add_member(:webview_view_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WebviewViewMode", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$"}))
    RcsOpenUrlAction.type = Types::RcsOpenUrlAction
    RcsReplyAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsReplyAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsReplyAction.type = Types::RcsReplyAction
    RcsRequestLocationAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsRequestLocationAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsRequestLocationAction.type = Types::RcsRequestLocationAction
    RcsShowLocationAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedActionText, name: "Text", traits: {"smithy.api#required" => {}}))
    RcsShowLocationAction.add_member(:postback_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsPostbackData, name: "PostbackData", traits: {"smithy.api#required" => {}}))
    RcsShowLocationAction.add_member(:latitude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Latitude", traits: {"smithy.api#range" => {"min" => -90, "max" => 90}, "smithy.api#required" => {}}))
    RcsShowLocationAction.add_member(:longitude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "Longitude", traits: {"smithy.api#range" => {"min" => -180, "max" => 180}, "smithy.api#required" => {}}))
    RcsShowLocationAction.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsLocationLabel, name: "Label"))
    RcsShowLocationAction.type = Types::RcsShowLocationAction
    RcsStandaloneCard.add_member(:card_orientation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CardOrientation", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$", "smithy.api#required" => {}}))
    RcsStandaloneCard.add_member(:thumbnail_image_alignment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ThumbnailImageAlignment", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Z_]+$"}))
    RcsStandaloneCard.add_member(:card_content, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCardContent, name: "CardContent", traits: {"smithy.api#required" => {}}))
    RcsStandaloneCard.type = Types::RcsStandaloneCard
    RcsSuggestedAction.add_member(:reply, Types::RcsSuggestedAction::Reply, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsReplyAction, name: "Reply"))
    RcsSuggestedAction.add_member(:open_url, Types::RcsSuggestedAction::OpenUrl, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsOpenUrlAction, name: "OpenUrl"))
    RcsSuggestedAction.add_member(:dial_phone, Types::RcsSuggestedAction::DialPhone, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsDialPhoneAction, name: "DialPhone"))
    RcsSuggestedAction.add_member(:show_location, Types::RcsSuggestedAction::ShowLocation, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsShowLocationAction, name: "ShowLocation"))
    RcsSuggestedAction.add_member(:request_location, Types::RcsSuggestedAction::RequestLocation, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsRequestLocationAction, name: "RequestLocation"))
    RcsSuggestedAction.add_member(:create_calendar_event, Types::RcsSuggestedAction::CreateCalendarEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsCreateCalendarEventAction, name: "CreateCalendarEvent"))
    RcsSuggestedAction.add_member(:unknown, Types::RcsSuggestedAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RcsSuggestedAction.type = Types::RcsSuggestedAction
    RcsSuggestedActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsSuggestedAction, name: "member"))
    RcsTextMessage.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsTextBody, name: "Body", traits: {"smithy.api#required" => {}}))
    RcsTextMessage.type = Types::RcsTextMessage
    RegistrationAssociationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationFilter.type = Types::RegistrationAssociationFilter
    RegistrationAssociationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationFilter, name: "member"))
    RegistrationAssociationMetadata.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationMetadata.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    RegistrationAssociationMetadata.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    RegistrationAssociationMetadata.type = Types::RegistrationAssociationMetadata
    RegistrationAssociationMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationMetadata, name: "member"))
    RegistrationAttachmentFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentFilter.type = Types::RegistrationAttachmentFilter
    RegistrationAttachmentFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentFilter, name: "member"))
    RegistrationAttachmentIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "member"))
    RegistrationAttachmentsInformation.add_member(:registration_attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentArn", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationAttachmentId", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, name: "AttachmentStatus", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:attachment_upload_error_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUploadErrorReason, name: "AttachmentUploadErrorReason"))
    RegistrationAttachmentsInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    RegistrationAttachmentsInformation.add_member(:attachment_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AttachmentUrl"))
    RegistrationAttachmentsInformation.type = Types::RegistrationAttachmentsInformation
    RegistrationAttachmentsInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentsInformation, name: "member"))
    RegistrationDeniedReasonInformation.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#required" => {}}))
    RegistrationDeniedReasonInformation.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ShortDescription", traits: {"smithy.api#required" => {}}))
    RegistrationDeniedReasonInformation.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LongDescription"))
    RegistrationDeniedReasonInformation.add_member(:documentation_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationTitle"))
    RegistrationDeniedReasonInformation.add_member(:documentation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationLink"))
    RegistrationDeniedReasonInformation.type = Types::RegistrationDeniedReasonInformation
    RegistrationDeniedReasonInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationDeniedReasonInformation, name: "member"))
    RegistrationFieldDefinition.add_member(:section_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPath, name: "SectionPath", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldType, name: "FieldType", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:field_requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldRequirement, name: "FieldRequirement", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:select_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectValidation, name: "SelectValidation"))
    RegistrationFieldDefinition.add_member(:text_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: TextValidation, name: "TextValidation"))
    RegistrationFieldDefinition.add_member(:display_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFieldDisplayHints, name: "DisplayHints", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDefinition.add_member(:conditional_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalBehavior, name: "ConditionalBehavior"))
    RegistrationFieldDefinition.type = Types::RegistrationFieldDefinition
    RegistrationFieldDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFieldDefinition, name: "member"))
    RegistrationFieldDisplayHints.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDisplayHints.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ShortDescription", traits: {"smithy.api#required" => {}}))
    RegistrationFieldDisplayHints.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LongDescription"))
    RegistrationFieldDisplayHints.add_member(:documentation_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationTitle"))
    RegistrationFieldDisplayHints.add_member(:documentation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationLink"))
    RegistrationFieldDisplayHints.add_member(:select_option_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectOptionDescriptionsList, name: "SelectOptionDescriptions"))
    RegistrationFieldDisplayHints.add_member(:text_validation_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TextValidationDescription"))
    RegistrationFieldDisplayHints.add_member(:example_text_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ExampleTextValue"))
    RegistrationFieldDisplayHints.type = Types::RegistrationFieldDisplayHints
    RegistrationFieldValueInformation.add_member(:field_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPath, name: "FieldPath", traits: {"smithy.api#required" => {}}))
    RegistrationFieldValueInformation.add_member(:select_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoiceList, name: "SelectChoices"))
    RegistrationFieldValueInformation.add_member(:text_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TextValue, name: "TextValue"))
    RegistrationFieldValueInformation.add_member(:registration_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAttachmentIdOrArn, name: "RegistrationAttachmentId"))
    RegistrationFieldValueInformation.add_member(:denied_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DeniedReason"))
    RegistrationFieldValueInformation.add_member(:feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Feedback"))
    RegistrationFieldValueInformation.type = Types::RegistrationFieldValueInformation
    RegistrationFieldValueInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFieldValueInformation, name: "member"))
    RegistrationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegistrationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RegistrationFilter.type = Types::RegistrationFilter
    RegistrationFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationFilter, name: "member"))
    RegistrationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "member"))
    RegistrationInformation.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "RegistrationStatus", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.add_member(:current_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "CurrentVersionNumber", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.add_member(:approved_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "ApprovedVersionNumber"))
    RegistrationInformation.add_member(:latest_denied_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "LatestDeniedVersionNumber"))
    RegistrationInformation.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "AdditionalAttributes"))
    RegistrationInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    RegistrationInformation.type = Types::RegistrationInformation
    RegistrationInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationInformation, name: "member"))
    RegistrationSectionDefinition.add_member(:section_path, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPath, name: "SectionPath", traits: {"smithy.api#required" => {}}))
    RegistrationSectionDefinition.add_member(:display_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationSectionDisplayHints, name: "DisplayHints", traits: {"smithy.api#required" => {}}))
    RegistrationSectionDefinition.type = Types::RegistrationSectionDefinition
    RegistrationSectionDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationSectionDefinition, name: "member"))
    RegistrationSectionDisplayHints.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title", traits: {"smithy.api#required" => {}}))
    RegistrationSectionDisplayHints.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ShortDescription", traits: {"smithy.api#required" => {}}))
    RegistrationSectionDisplayHints.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LongDescription"))
    RegistrationSectionDisplayHints.add_member(:documentation_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationTitle"))
    RegistrationSectionDisplayHints.add_member(:documentation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationLink"))
    RegistrationSectionDisplayHints.type = Types::RegistrationSectionDisplayHints
    RegistrationTypeDefinition.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "RegistrationType", traits: {"smithy.api#required" => {}}))
    RegistrationTypeDefinition.add_member(:supported_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAssociationList, name: "SupportedAssociations"))
    RegistrationTypeDefinition.add_member(:display_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeDisplayHints, name: "DisplayHints", traits: {"smithy.api#required" => {}}))
    RegistrationTypeDefinition.type = Types::RegistrationTypeDefinition
    RegistrationTypeDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeDefinition, name: "member"))
    RegistrationTypeDisplayHints.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title", traits: {"smithy.api#required" => {}}))
    RegistrationTypeDisplayHints.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ShortDescription"))
    RegistrationTypeDisplayHints.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LongDescription"))
    RegistrationTypeDisplayHints.add_member(:documentation_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationTitle"))
    RegistrationTypeDisplayHints.add_member(:documentation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DocumentationLink"))
    RegistrationTypeDisplayHints.type = Types::RegistrationTypeDisplayHints
    RegistrationTypeFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegistrationTypeFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RegistrationTypeFilter.type = Types::RegistrationTypeFilter
    RegistrationTypeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeFilter, name: "member"))
    RegistrationTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "member"))
    RegistrationVersionFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    RegistrationVersionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    RegistrationVersionFilter.type = Types::RegistrationVersionFilter
    RegistrationVersionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionFilter, name: "member"))
    RegistrationVersionInformation.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:registration_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatus, name: "RegistrationVersionStatus", traits: {"smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:registration_version_status_history, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatusHistory, name: "RegistrationVersionStatusHistory", traits: {"smithy.api#required" => {}}))
    RegistrationVersionInformation.add_member(:denied_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationDeniedReasonInformationList, name: "DeniedReasons"))
    RegistrationVersionInformation.add_member(:feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Feedback"))
    RegistrationVersionInformation.type = Types::RegistrationVersionInformation
    RegistrationVersionInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionInformation, name: "member"))
    RegistrationVersionNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "member"))
    RegistrationVersionStatusHistory.add_member(:draft_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DraftTimestamp", traits: {"smithy.api#required" => {}}))
    RegistrationVersionStatusHistory.add_member(:submitted_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "SubmittedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:aws_reviewing_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "AwsReviewingTimestamp"))
    RegistrationVersionStatusHistory.add_member(:reviewing_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ReviewingTimestamp"))
    RegistrationVersionStatusHistory.add_member(:requires_authentication_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "RequiresAuthenticationTimestamp"))
    RegistrationVersionStatusHistory.add_member(:approved_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ApprovedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:discarded_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DiscardedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:denied_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DeniedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:revoked_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "RevokedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:archived_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ArchivedTimestamp"))
    RegistrationVersionStatusHistory.type = Types::RegistrationVersionStatusHistory
    ReleasePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberIdOrArn, name: "PhoneNumberId", traits: {"smithy.api#required" => {}}))
    ReleasePhoneNumberRequest.type = Types::ReleasePhoneNumberRequest
    ReleasePhoneNumberResult.add_member(:phone_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberArn"))
    ReleasePhoneNumberResult.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberId"))
    ReleasePhoneNumberResult.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    ReleasePhoneNumberResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberStatus, name: "Status"))
    ReleasePhoneNumberResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    ReleasePhoneNumberResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    ReleasePhoneNumberResult.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities"))
    ReleasePhoneNumberResult.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberType, name: "NumberType"))
    ReleasePhoneNumberResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice"))
    ReleasePhoneNumberResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    ReleasePhoneNumberResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    ReleasePhoneNumberResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    ReleasePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    ReleasePhoneNumberResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    ReleasePhoneNumberResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    ReleasePhoneNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    ReleasePhoneNumberResult.type = Types::ReleasePhoneNumberResult
    ReleaseSenderIdRequest.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdOrArn, name: "SenderId", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdRequest.type = Types::ReleaseSenderIdRequest
    ReleaseSenderIdResult.add_member(:sender_id_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIdArn", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTypeList, name: "MessageTypes", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice", traits: {"smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Registered", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ReleaseSenderIdResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    ReleaseSenderIdResult.type = Types::ReleaseSenderIdResult
    RequestPhoneNumberRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType", traits: {"smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities", traits: {"smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestableNumberType, name: "NumberType", traits: {"smithy.api#required" => {}}))
    RequestPhoneNumberRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName"))
    RequestPhoneNumberRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId"))
    RequestPhoneNumberRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId"))
    RequestPhoneNumberRequest.add_member(:number_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberPreferenceList, name: "NumberPreference"))
    RequestPhoneNumberRequest.add_member(:international_sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "InternationalSendingEnabled"))
    RequestPhoneNumberRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    RequestPhoneNumberRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RequestPhoneNumberRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RequestPhoneNumberRequest.type = Types::RequestPhoneNumberRequest
    RequestPhoneNumberResult.add_member(:phone_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberArn"))
    RequestPhoneNumberResult.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberId"))
    RequestPhoneNumberResult.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    RequestPhoneNumberResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberStatus, name: "Status"))
    RequestPhoneNumberResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    RequestPhoneNumberResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    RequestPhoneNumberResult.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities"))
    RequestPhoneNumberResult.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestableNumberType, name: "NumberType"))
    RequestPhoneNumberResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice"))
    RequestPhoneNumberResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    RequestPhoneNumberResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    RequestPhoneNumberResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    RequestPhoneNumberResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    RequestPhoneNumberResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    RequestPhoneNumberResult.add_member(:international_sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "InternationalSendingEnabled", traits: {"smithy.api#default" => false}))
    RequestPhoneNumberResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false}))
    RequestPhoneNumberResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    RequestPhoneNumberResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    RequestPhoneNumberResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RequestPhoneNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    RequestPhoneNumberResult.type = Types::RequestPhoneNumberResult
    RequestSenderIdRequest.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    RequestSenderIdRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    RequestSenderIdRequest.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTypeList, name: "MessageTypes"))
    RequestSenderIdRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    RequestSenderIdRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RequestSenderIdRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RequestSenderIdRequest.type = Types::RequestSenderIdRequest
    RequestSenderIdResult.add_member(:sender_id_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIdArn", traits: {"smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTypeList, name: "MessageTypes", traits: {"smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice", traits: {"smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Registered", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RequestSenderIdResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RequestSenderIdResult.type = Types::RequestSenderIdResult
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SectionPathList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionPath, name: "member"))
    SelectChoiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectChoice, name: "member"))
    SelectOptionDescription.add_member(:option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Option", traits: {"smithy.api#required" => {}}))
    SelectOptionDescription.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title"))
    SelectOptionDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    SelectOptionDescription.type = Types::SelectOptionDescription
    SelectOptionDescriptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectOptionDescription, name: "member"))
    SelectValidation.add_member(:min_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinChoices", traits: {"smithy.api#required" => {}}))
    SelectValidation.add_member(:max_choices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxChoices", traits: {"smithy.api#required" => {}}))
    SelectValidation.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Options", traits: {"smithy.api#required" => {}}))
    SelectValidation.type = Types::SelectValidation
    SendDestinationNumberVerificationCodeRequest.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberIdOrArn, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeRequest.add_member(:verification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationChannel, name: "VerificationChannel", traits: {"smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    SendDestinationNumberVerificationCodeRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationMessageOriginationIdentity, name: "OriginationIdentity"))
    SendDestinationNumberVerificationCodeRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendDestinationNumberVerificationCodeRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendDestinationNumberVerificationCodeRequest.add_member(:destination_country_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameters, name: "DestinationCountryParameters"))
    SendDestinationNumberVerificationCodeRequest.type = Types::SendDestinationNumberVerificationCodeRequest
    SendDestinationNumberVerificationCodeResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId", traits: {"smithy.api#required" => {}}))
    SendDestinationNumberVerificationCodeResult.type = Types::SendDestinationNumberVerificationCodeResult
    SendMediaMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendMediaMessageRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaMessageOriginationIdentity, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    SendMediaMessageRequest.add_member(:message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TextMessageBody, name: "MessageBody"))
    SendMediaMessageRequest.add_member(:media_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaUrlList, name: "MediaUrls"))
    SendMediaMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendMediaMessageRequest.add_member(:max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPrice, name: "MaxPrice"))
    SendMediaMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "TimeToLive"))
    SendMediaMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendMediaMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendMediaMessageRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId"))
    SendMediaMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendMediaMessageRequest.type = Types::SendMediaMessageRequest
    SendMediaMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendMediaMessageResult.type = Types::SendMediaMessageResult
    SendNotifyTextMessageRequest.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdOrArn, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    SendNotifyTextMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendNotifyTextMessageRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "TemplateId"))
    SendNotifyTextMessageRequest.add_member(:template_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableSubstitutionMap, name: "TemplateVariables", traits: {"smithy.api#required" => {}}))
    SendNotifyTextMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "TimeToLive"))
    SendNotifyTextMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendNotifyTextMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendNotifyTextMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendNotifyTextMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendNotifyTextMessageRequest.type = Types::SendNotifyTextMessageRequest
    SendNotifyTextMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendNotifyTextMessageResult.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "TemplateId"))
    SendNotifyTextMessageResult.add_member(:resolved_message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResolvedMessageBody"))
    SendNotifyTextMessageResult.type = Types::SendNotifyTextMessageResult
    SendNotifyVoiceMessageRequest.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdOrArn, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    SendNotifyVoiceMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendNotifyVoiceMessageRequest.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "TemplateId"))
    SendNotifyVoiceMessageRequest.add_member(:template_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableSubstitutionMap, name: "TemplateVariables", traits: {"smithy.api#required" => {}}))
    SendNotifyVoiceMessageRequest.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId"))
    SendNotifyVoiceMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "TimeToLive"))
    SendNotifyVoiceMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendNotifyVoiceMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendNotifyVoiceMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendNotifyVoiceMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendNotifyVoiceMessageRequest.type = Types::SendNotifyVoiceMessageRequest
    SendNotifyVoiceMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendNotifyVoiceMessageResult.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "TemplateId"))
    SendNotifyVoiceMessageResult.add_member(:resolved_message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResolvedMessageBody"))
    SendNotifyVoiceMessageResult.type = Types::SendNotifyVoiceMessageResult
    SendRcsMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendRcsMessageRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMessageOriginationIdentity, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    SendRcsMessageRequest.add_member(:rcs_message_content, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMessageContent, name: "RcsMessageContent"))
    SendRcsMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsTimeToLive, name: "TimeToLive"))
    SendRcsMessageRequest.add_member(:message_traffic_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsMessageTrafficType, name: "MessageTrafficType"))
    SendRcsMessageRequest.add_member(:fallback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsFallbackConfiguration, name: "FallbackConfiguration"))
    SendRcsMessageRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId"))
    SendRcsMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendRcsMessageRequest.add_member(:max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPrice, name: "MaxPrice"))
    SendRcsMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendRcsMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendRcsMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendRcsMessageRequest.type = Types::SendRcsMessageRequest
    SendRcsMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendRcsMessageResult.type = Types::SendRcsMessageResult
    SendTextMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendTextMessageRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: TextMessageOriginationIdentity, name: "OriginationIdentity"))
    SendTextMessageRequest.add_member(:message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TextMessageBody, name: "MessageBody"))
    SendTextMessageRequest.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    SendTextMessageRequest.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword"))
    SendTextMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendTextMessageRequest.add_member(:max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPrice, name: "MaxPrice"))
    SendTextMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "TimeToLive"))
    SendTextMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendTextMessageRequest.add_member(:destination_country_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameters, name: "DestinationCountryParameters"))
    SendTextMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendTextMessageRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId"))
    SendTextMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendTextMessageRequest.type = Types::SendTextMessageRequest
    SendTextMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendTextMessageResult.type = Types::SendTextMessageResult
    SendVoiceMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    SendVoiceMessageRequest.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageOriginationIdentity, name: "OriginationIdentity", traits: {"smithy.api#required" => {}}))
    SendVoiceMessageRequest.add_member(:message_body, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageBody, name: "MessageBody"))
    SendVoiceMessageRequest.add_member(:message_body_text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageBodyTextType, name: "MessageBodyTextType"))
    SendVoiceMessageRequest.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "VoiceId"))
    SendVoiceMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName"))
    SendVoiceMessageRequest.add_member(:max_price_per_minute, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPrice, name: "MaxPricePerMinute"))
    SendVoiceMessageRequest.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "TimeToLive"))
    SendVoiceMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "Context"))
    SendVoiceMessageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    SendVoiceMessageRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId"))
    SendVoiceMessageRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SendVoiceMessageRequest.type = Types::SendVoiceMessageRequest
    SendVoiceMessageResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MessageId"))
    SendVoiceMessageResult.type = Types::SendVoiceMessageResult
    SenderIdAndCountry.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdOrArn, name: "SenderId", traits: {"smithy.api#required" => {}}))
    SenderIdAndCountry.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    SenderIdAndCountry.type = Types::SenderIdAndCountry
    SenderIdFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    SenderIdFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    SenderIdFilter.type = Types::SenderIdFilter
    SenderIdFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdFilter, name: "member"))
    SenderIdInformation.add_member(:sender_id_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIdArn", traits: {"smithy.api#required" => {}}))
    SenderIdInformation.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    SenderIdInformation.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    SenderIdInformation.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTypeList, name: "MessageTypes", traits: {"smithy.api#required" => {}}))
    SenderIdInformation.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice", traits: {"smithy.api#required" => {}}))
    SenderIdInformation.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Registered", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SenderIdInformation.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    SenderIdInformation.add_member(:messaging_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagingLimits, name: "MessagingLimits"))
    SenderIdInformation.add_member(:pricing_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricingTier"))
    SenderIdInformation.type = Types::SenderIdInformation
    SenderIdInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdInformation, name: "member"))
    SenderIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdAndCountry, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededExceptionReason, name: "Reason"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SetAccountDefaultProtectConfigurationRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationRequest.type = Types::SetAccountDefaultProtectConfigurationRequest
    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "DefaultProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "DefaultProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    SetAccountDefaultProtectConfigurationResult.type = Types::SetAccountDefaultProtectConfigurationResult
    SetDefaultMessageFeedbackEnabledRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    SetDefaultMessageFeedbackEnabledRequest.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled", traits: {"smithy.api#required" => {}}))
    SetDefaultMessageFeedbackEnabledRequest.type = Types::SetDefaultMessageFeedbackEnabledRequest
    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SetDefaultMessageFeedbackEnabledResult.add_member(:message_feedback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MessageFeedbackEnabled"))
    SetDefaultMessageFeedbackEnabledResult.type = Types::SetDefaultMessageFeedbackEnabledResult
    SetDefaultMessageTypeRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    SetDefaultMessageTypeRequest.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType", traits: {"smithy.api#required" => {}}))
    SetDefaultMessageTypeRequest.type = Types::SetDefaultMessageTypeRequest
    SetDefaultMessageTypeResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    SetDefaultMessageTypeResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SetDefaultMessageTypeResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    SetDefaultMessageTypeResult.type = Types::SetDefaultMessageTypeResult
    SetDefaultSenderIdRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    SetDefaultSenderIdRequest.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    SetDefaultSenderIdRequest.type = Types::SetDefaultSenderIdRequest
    SetDefaultSenderIdResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    SetDefaultSenderIdResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SetDefaultSenderIdResult.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId"))
    SetDefaultSenderIdResult.type = Types::SetDefaultSenderIdResult
    SetMediaMessageSpendLimitOverrideRequest.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit", traits: {"smithy.api#required" => {}}))
    SetMediaMessageSpendLimitOverrideRequest.type = Types::SetMediaMessageSpendLimitOverrideRequest
    SetMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    SetMediaMessageSpendLimitOverrideResult.type = Types::SetMediaMessageSpendLimitOverrideResult
    SetNotifyMessageSpendLimitOverrideRequest.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit", traits: {"smithy.api#required" => {}}))
    SetNotifyMessageSpendLimitOverrideRequest.type = Types::SetNotifyMessageSpendLimitOverrideRequest
    SetNotifyMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    SetNotifyMessageSpendLimitOverrideResult.type = Types::SetNotifyMessageSpendLimitOverrideResult
    SetRcsMessageSpendLimitOverrideRequest.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit", traits: {"smithy.api#required" => {}}))
    SetRcsMessageSpendLimitOverrideRequest.type = Types::SetRcsMessageSpendLimitOverrideRequest
    SetRcsMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    SetRcsMessageSpendLimitOverrideResult.type = Types::SetRcsMessageSpendLimitOverrideResult
    SetTextMessageSpendLimitOverrideRequest.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit", traits: {"smithy.api#required" => {}}))
    SetTextMessageSpendLimitOverrideRequest.type = Types::SetTextMessageSpendLimitOverrideRequest
    SetTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    SetTextMessageSpendLimitOverrideResult.type = Types::SetTextMessageSpendLimitOverrideResult
    SetVoiceMessageSpendLimitOverrideRequest.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit", traits: {"smithy.api#required" => {}}))
    SetVoiceMessageSpendLimitOverrideRequest.type = Types::SetVoiceMessageSpendLimitOverrideRequest
    SetVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyLimit, name: "MonthlyLimit"))
    SetVoiceMessageSpendLimitOverrideResult.type = Types::SetVoiceMessageSpendLimitOverrideResult
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    SpendLimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SpendLimitName, name: "Name", traits: {"smithy.api#required" => {}}))
    SpendLimit.add_member(:enforced_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveLong, name: "EnforcedLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SpendLimit.add_member(:max_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveLong, name: "MaxLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    SpendLimit.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Overridden", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SpendLimit.type = Types::SpendLimit
    SpendLimitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpendLimit, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    SubmitRegistrationVersionRequest.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionRequest.add_member(:aws_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AwsReview", traits: {"smithy.api#default" => false}))
    SubmitRegistrationVersionRequest.type = Types::SubmitRegistrationVersionRequest
    SubmitRegistrationVersionResult.add_member(:registration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationArn", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionNumber, name: "VersionNumber", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatus, name: "RegistrationVersionStatus", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:registration_version_status_history, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationVersionStatusHistory, name: "RegistrationVersionStatusHistory", traits: {"smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.add_member(:aws_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AwsReview", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SubmitRegistrationVersionResult.type = Types::SubmitRegistrationVersionResult
    SupportedAssociation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    SupportedAssociation.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    SupportedAssociation.add_member(:association_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationBehavior, name: "AssociationBehavior", traits: {"smithy.api#required" => {}}))
    SupportedAssociation.add_member(:disassociation_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationDisassociationBehavior, name: "DisassociationBehavior", traits: {"smithy.api#required" => {}}))
    SupportedAssociation.type = Types::SupportedAssociation
    SupportedAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAssociation, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyTagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    TemplateVariableMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableType, name: "Type", traits: {"smithy.api#required" => {}}))
    TemplateVariableMetadata.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Required", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    TemplateVariableMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    TemplateVariableMetadata.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLength"))
    TemplateVariableMetadata.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinValue"))
    TemplateVariableMetadata.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxValue"))
    TemplateVariableMetadata.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DefaultValue"))
    TemplateVariableMetadata.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Pattern"))
    TemplateVariableMetadata.add_member(:sample, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Sample"))
    TemplateVariableMetadata.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableSource, name: "Source"))
    TemplateVariableMetadata.type = Types::TemplateVariableMetadata
    TemplateVariableSubstitutionMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableName, name: "key"))
    TemplateVariableSubstitutionMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableValue, name: "value"))
    TemplateVariablesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TemplateVariablesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateVariableMetadata, name: "value"))
    TestingAgentInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestingAgentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    TestingAgentInformation.add_member(:testing_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TestingAgentId"))
    TestingAgentInformation.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    TestingAgentInformation.type = Types::TestingAgentInformation
    TextValidation.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLength", traits: {"smithy.api#required" => {}}))
    TextValidation.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLength", traits: {"smithy.api#required" => {}}))
    TextValidation.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Pattern", traits: {"smithy.api#required" => {}}))
    TextValidation.type = Types::TextValidation
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameOrArn, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    UpdateEventDestinationRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    UpdateEventDestinationRequest.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList, name: "MatchingEventTypes"))
    UpdateEventDestinationRequest.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestination, name: "CloudWatchLogsDestination"))
    UpdateEventDestinationRequest.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    UpdateEventDestinationRequest.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    UpdateEventDestinationRequest.type = Types::UpdateEventDestinationRequest
    UpdateEventDestinationResult.add_member(:configuration_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationSetArn"))
    UpdateEventDestinationResult.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    UpdateEventDestinationResult.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "EventDestination"))
    UpdateEventDestinationResult.type = Types::UpdateEventDestinationResult
    UpdateNotifyConfigurationRequest.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationIdOrArn, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationRequest.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    UpdateNotifyConfigurationRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyPoolIdOrUnset, name: "PoolId"))
    UpdateNotifyConfigurationRequest.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    UpdateNotifyConfigurationRequest.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels"))
    UpdateNotifyConfigurationRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdateNotifyConfigurationRequest.type = Types::UpdateNotifyConfigurationRequest
    UpdateNotifyConfigurationResult.add_member(:notify_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationArn, name: "NotifyConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:notify_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationId, name: "NotifyConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationUseCase, name: "UseCase", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:default_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "DefaultTemplateId"))
    UpdateNotifyConfigurationResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    UpdateNotifyConfigurationResult.add_member(:enabled_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCodeList, name: "EnabledCountries"))
    UpdateNotifyConfigurationResult.add_member(:enabled_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyEnabledChannelsList, name: "EnabledChannels", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationTier, name: "Tier", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:tier_upgrade_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TierUpgradeStatus, name: "TierUpgradeStatus", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RejectionReason"))
    UpdateNotifyConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    UpdateNotifyConfigurationResult.type = Types::UpdateNotifyConfigurationResult
    UpdatePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberIdOrArn, name: "PhoneNumberId", traits: {"smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "TwoWayEnabled"))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdatePhoneNumberRequest.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "SelfManagedOptOutsEnabled"))
    UpdatePhoneNumberRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName"))
    UpdatePhoneNumberRequest.add_member(:international_sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "InternationalSendingEnabled"))
    UpdatePhoneNumberRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberResult.add_member(:phone_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberArn"))
    UpdatePhoneNumberResult.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PhoneNumberId"))
    UpdatePhoneNumberResult.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    UpdatePhoneNumberResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberStatus, name: "Status"))
    UpdatePhoneNumberResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode"))
    UpdatePhoneNumberResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    UpdatePhoneNumberResult.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities"))
    UpdatePhoneNumberResult.add_member(:number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberType, name: "NumberType"))
    UpdatePhoneNumberResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice"))
    UpdatePhoneNumberResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    UpdatePhoneNumberResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdatePhoneNumberResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdatePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    UpdatePhoneNumberResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    UpdatePhoneNumberResult.add_member(:international_sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "InternationalSendingEnabled", traits: {"smithy.api#default" => false}))
    UpdatePhoneNumberResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false}))
    UpdatePhoneNumberResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    UpdatePhoneNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    UpdatePhoneNumberResult.type = Types::UpdatePhoneNumberResult
    UpdatePoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolIdOrArn, name: "PoolId", traits: {"smithy.api#required" => {}}))
    UpdatePoolRequest.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "TwoWayEnabled"))
    UpdatePoolRequest.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdatePoolRequest.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdatePoolRequest.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "SelfManagedOptOutsEnabled"))
    UpdatePoolRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName"))
    UpdatePoolRequest.add_member(:shared_routes_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "SharedRoutesEnabled"))
    UpdatePoolRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdatePoolRequest.type = Types::UpdatePoolRequest
    UpdatePoolResult.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolArn"))
    UpdatePoolResult.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PoolId"))
    UpdatePoolResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolStatus, name: "Status"))
    UpdatePoolResult.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    UpdatePoolResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false}))
    UpdatePoolResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdatePoolResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdatePoolResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false}))
    UpdatePoolResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    UpdatePoolResult.add_member(:shared_routes_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SharedRoutesEnabled", traits: {"smithy.api#default" => false}))
    UpdatePoolResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false}))
    UpdatePoolResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp"))
    UpdatePoolResult.type = Types::UpdatePoolResult
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "NumberCapability", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:country_rule_set_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationCountryRuleSet, name: "CountryRuleSetUpdates", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetRequest.type = Types::UpdateProtectConfigurationCountryRuleSetRequest
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:number_capability, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "NumberCapability", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationCountryRuleSet, name: "CountryRuleSet", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationCountryRuleSetResult.type = Types::UpdateProtectConfigurationCountryRuleSetResult
    UpdateProtectConfigurationRequest.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationIdOrArn, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdateProtectConfigurationRequest.type = Types::UpdateProtectConfigurationRequest
    UpdateProtectConfigurationResult.add_member(:protect_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationArn, name: "ProtectConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:protect_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectConfigurationId, name: "ProtectConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:account_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "AccountDefault", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateProtectConfigurationResult.type = Types::UpdateProtectConfigurationResult
    UpdateRcsAgentRequest.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentIdOrArn, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    UpdateRcsAgentRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdateRcsAgentRequest.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListNameOrArn, name: "OptOutListName"))
    UpdateRcsAgentRequest.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "SelfManagedOptOutsEnabled"))
    UpdateRcsAgentRequest.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdateRcsAgentRequest.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdateRcsAgentRequest.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "TwoWayEnabled"))
    UpdateRcsAgentRequest.add_member(:two_way_media_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3BucketNameOrUnset, name: "TwoWayMediaS3BucketName"))
    UpdateRcsAgentRequest.add_member(:two_way_media_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3KeyPrefix, name: "TwoWayMediaS3KeyPrefix"))
    UpdateRcsAgentRequest.add_member(:two_way_media_s3_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnOrUnset, name: "TwoWayMediaS3Role"))
    UpdateRcsAgentRequest.add_member(:two_way_rcs_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventTypeList, name: "TwoWayRcsEventsEnabled"))
    UpdateRcsAgentRequest.type = Types::UpdateRcsAgentRequest
    UpdateRcsAgentResult.add_member(:rcs_agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentArn", traits: {"smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId", traits: {"smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsAgentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:opt_out_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptOutListName, name: "OptOutListName"))
    UpdateRcsAgentResult.add_member(:self_managed_opt_outs_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "SelfManagedOptOutsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:two_way_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayChannelArn, name: "TwoWayChannelArn"))
    UpdateRcsAgentResult.add_member(:two_way_channel_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayChannelRole"))
    UpdateRcsAgentResult.add_member(:two_way_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "TwoWayEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateRcsAgentResult.add_member(:two_way_media_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3BucketName, name: "TwoWayMediaS3BucketName"))
    UpdateRcsAgentResult.add_member(:two_way_media_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoWayMediaS3KeyPrefix, name: "TwoWayMediaS3KeyPrefix"))
    UpdateRcsAgentResult.add_member(:two_way_media_s3_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "TwoWayMediaS3Role"))
    UpdateRcsAgentResult.add_member(:two_way_rcs_events_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RcsEventTypeList, name: "TwoWayRcsEventsEnabled"))
    UpdateRcsAgentResult.type = Types::UpdateRcsAgentResult
    UpdateSenderIdRequest.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderIdOrArn, name: "SenderId", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdRequest.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdRequest.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeletionProtectionEnabled"))
    UpdateSenderIdRequest.type = Types::UpdateSenderIdRequest
    UpdateSenderIdResult.add_member(:sender_id_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIdArn", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderId, name: "SenderId", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:iso_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "IsoCountryCode", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:message_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTypeList, name: "MessageTypes", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:monthly_leasing_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MonthlyLeasingPrice", traits: {"smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeletionProtectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Registered", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateSenderIdResult.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegistrationId"))
    UpdateSenderIdResult.type = Types::UpdateSenderIdResult
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VerifiedDestinationNumberFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberFilter.type = Types::VerifiedDestinationNumberFilter
    VerifiedDestinationNumberFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberFilter, name: "member"))
    VerifiedDestinationNumberIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberIdOrArn, name: "member"))
    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberArn", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.add_member(:rcs_agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RcsAgentId"))
    VerifiedDestinationNumberInformation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    VerifiedDestinationNumberInformation.type = Types::VerifiedDestinationNumberInformation
    VerifiedDestinationNumberInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberInformation, name: "member"))
    VerifyDestinationNumberRequest.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifiedDestinationNumberIdOrArn, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberRequest.add_member(:verification_code, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationCode, name: "VerificationCode", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberRequest.type = Types::VerifyDestinationNumberRequest
    VerifyDestinationNumberResult.add_member(:verified_destination_number_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberArn", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:verified_destination_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VerifiedDestinationNumberId", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "DestinationPhoneNumber", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedTimestamp", traits: {"smithy.api#required" => {}}))
    VerifyDestinationNumberResult.type = Types::VerifyDestinationNumberResult
    VoiceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "member"))

    PinpointSMSVoiceV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointsmsvoicev2#PinpointSMSVoiceV2"
      service.name = "PinpointSMSVoiceV2"
      service.version = "2022-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint SMS Voice V2", "endpointPrefix" => "sms-voice", "arnNamespace" => "sms-voice"}, "aws.auth#sigv4" => {"name" => "sms-voice"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Pinpoint SMS Voice V2", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sms-voice-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sms-voice-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sms-voice.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sms-voice.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_origination_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#AssociateOriginationIdentity"
        operation.name = "AssociateOriginationIdentity"
        operation.input = AssociateOriginationIdentityRequest
        operation.output = AssociateOriginationIdentityResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#AssociateProtectConfiguration"
        operation.name = "AssociateProtectConfiguration"
        operation.input = AssociateProtectConfigurationRequest
        operation.output = AssociateProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:carrier_lookup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CarrierLookup"
        operation.name = "CarrierLookup"
        operation.input = CarrierLookupRequest
        operation.output = CarrierLookupResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = CreateConfigurationSetRequest
        operation.output = CreateConfigurationSetResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateEventDestination"
        operation.name = "CreateEventDestination"
        operation.input = CreateEventDestinationRequest
        operation.output = CreateEventDestinationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_notify_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateNotifyConfiguration"
        operation.name = "CreateNotifyConfiguration"
        operation.input = CreateNotifyConfigurationRequest
        operation.output = CreateNotifyConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_opt_out_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateOptOutList"
        operation.name = "CreateOptOutList"
        operation.input = CreateOptOutListRequest
        operation.output = CreateOptOutListResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreatePool"
        operation.name = "CreatePool"
        operation.input = CreatePoolRequest
        operation.output = CreatePoolResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateProtectConfiguration"
        operation.name = "CreateProtectConfiguration"
        operation.input = CreateProtectConfigurationRequest
        operation.output = CreateProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_rcs_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRcsAgent"
        operation.name = "CreateRcsAgent"
        operation.input = CreateRcsAgentRequest
        operation.output = CreateRcsAgentResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistration"
        operation.name = "CreateRegistration"
        operation.input = CreateRegistrationRequest
        operation.output = CreateRegistrationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_registration_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAssociation"
        operation.name = "CreateRegistrationAssociation"
        operation.input = CreateRegistrationAssociationRequest
        operation.output = CreateRegistrationAssociationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_registration_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationAttachment"
        operation.name = "CreateRegistrationAttachment"
        operation.input = CreateRegistrationAttachmentRequest
        operation.output = CreateRegistrationAttachmentResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_registration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateRegistrationVersion"
        operation.name = "CreateRegistrationVersion"
        operation.input = CreateRegistrationVersionRequest
        operation.output = CreateRegistrationVersionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_verified_destination_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#CreateVerifiedDestinationNumber"
        operation.name = "CreateVerifiedDestinationNumber"
        operation.input = CreateVerifiedDestinationNumberRequest
        operation.output = CreateVerifiedDestinationNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_default_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteAccountDefaultProtectConfiguration"
        operation.name = "DeleteAccountDefaultProtectConfiguration"
        operation.input = DeleteAccountDefaultProtectConfigurationRequest
        operation.output = DeleteAccountDefaultProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = DeleteConfigurationSetRequest
        operation.output = DeleteConfigurationSetResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_default_message_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultMessageType"
        operation.name = "DeleteDefaultMessageType"
        operation.input = DeleteDefaultMessageTypeRequest
        operation.output = DeleteDefaultMessageTypeResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_default_sender_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteDefaultSenderId"
        operation.name = "DeleteDefaultSenderId"
        operation.input = DeleteDefaultSenderIdRequest
        operation.output = DeleteDefaultSenderIdResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteEventDestination"
        operation.name = "DeleteEventDestination"
        operation.input = DeleteEventDestinationRequest
        operation.output = DeleteEventDestinationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_keyword, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteKeyword"
        operation.name = "DeleteKeyword"
        operation.input = DeleteKeywordRequest
        operation.output = DeleteKeywordResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_media_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteMediaMessageSpendLimitOverride"
        operation.name = "DeleteMediaMessageSpendLimitOverride"
        operation.input = DeleteMediaMessageSpendLimitOverrideRequest
        operation.output = DeleteMediaMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_notify_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyConfiguration"
        operation.name = "DeleteNotifyConfiguration"
        operation.input = DeleteNotifyConfigurationRequest
        operation.output = DeleteNotifyConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_notify_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteNotifyMessageSpendLimitOverride"
        operation.name = "DeleteNotifyMessageSpendLimitOverride"
        operation.input = DeleteNotifyMessageSpendLimitOverrideRequest
        operation.output = DeleteNotifyMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_opt_out_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteOptOutList"
        operation.name = "DeleteOptOutList"
        operation.input = DeleteOptOutListRequest
        operation.output = DeleteOptOutListResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_opted_out_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteOptedOutNumber"
        operation.name = "DeleteOptedOutNumber"
        operation.input = DeleteOptedOutNumberRequest
        operation.output = DeleteOptedOutNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeletePool"
        operation.name = "DeletePool"
        operation.input = DeletePoolRequest
        operation.output = DeletePoolResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfiguration"
        operation.name = "DeleteProtectConfiguration"
        operation.input = DeleteProtectConfigurationRequest
        operation.output = DeleteProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_protect_configuration_rule_set_number_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteProtectConfigurationRuleSetNumberOverride"
        operation.name = "DeleteProtectConfigurationRuleSetNumberOverride"
        operation.input = DeleteProtectConfigurationRuleSetNumberOverrideRequest
        operation.output = DeleteProtectConfigurationRuleSetNumberOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_rcs_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRcsAgent"
        operation.name = "DeleteRcsAgent"
        operation.input = DeleteRcsAgentRequest
        operation.output = DeleteRcsAgentResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_rcs_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRcsMessageSpendLimitOverride"
        operation.name = "DeleteRcsMessageSpendLimitOverride"
        operation.input = DeleteRcsMessageSpendLimitOverrideRequest
        operation.output = DeleteRcsMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistration"
        operation.name = "DeleteRegistration"
        operation.input = DeleteRegistrationRequest
        operation.output = DeleteRegistrationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_registration_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationAttachment"
        operation.name = "DeleteRegistrationAttachment"
        operation.input = DeleteRegistrationAttachmentRequest
        operation.output = DeleteRegistrationAttachmentResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_registration_field_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteRegistrationFieldValue"
        operation.name = "DeleteRegistrationFieldValue"
        operation.input = DeleteRegistrationFieldValueRequest
        operation.output = DeleteRegistrationFieldValueResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_text_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteTextMessageSpendLimitOverride"
        operation.name = "DeleteTextMessageSpendLimitOverride"
        operation.input = DeleteTextMessageSpendLimitOverrideRequest
        operation.output = DeleteTextMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_verified_destination_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteVerifiedDestinationNumber"
        operation.name = "DeleteVerifiedDestinationNumber"
        operation.input = DeleteVerifiedDestinationNumberRequest
        operation.output = DeleteVerifiedDestinationNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_voice_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DeleteVoiceMessageSpendLimitOverride"
        operation.name = "DeleteVoiceMessageSpendLimitOverride"
        operation.input = DeleteVoiceMessageSpendLimitOverrideRequest
        operation.output = DeleteVoiceMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = DescribeAccountAttributesRequest
        operation.output = DescribeAccountAttributesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountAttributes.new
      end)
      service.add_operation(:describe_account_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = DescribeAccountLimitsRequest
        operation.output = DescribeAccountLimitsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAccountLimits.new
      end)
      service.add_operation(:describe_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeConfigurationSets"
        operation.name = "DescribeConfigurationSets"
        operation.input = DescribeConfigurationSetsRequest
        operation.output = DescribeConfigurationSetsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationSets.new
      end)
      service.add_operation(:describe_keywords, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeKeywords"
        operation.name = "DescribeKeywords"
        operation.input = DescribeKeywordsRequest
        operation.output = DescribeKeywordsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeKeywords.new
      end)
      service.add_operation(:describe_notify_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyConfigurations"
        operation.name = "DescribeNotifyConfigurations"
        operation.input = DescribeNotifyConfigurationsRequest
        operation.output = DescribeNotifyConfigurationsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNotifyConfigurations.new
      end)
      service.add_operation(:describe_notify_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeNotifyTemplates"
        operation.name = "DescribeNotifyTemplates"
        operation.input = DescribeNotifyTemplatesRequest
        operation.output = DescribeNotifyTemplatesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNotifyTemplates.new
      end)
      service.add_operation(:describe_opt_out_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeOptOutLists"
        operation.name = "DescribeOptOutLists"
        operation.input = DescribeOptOutListsRequest
        operation.output = DescribeOptOutListsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptOutLists.new
      end)
      service.add_operation(:describe_opted_out_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeOptedOutNumbers"
        operation.name = "DescribeOptedOutNumbers"
        operation.input = DescribeOptedOutNumbersRequest
        operation.output = DescribeOptedOutNumbersResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptedOutNumbers.new
      end)
      service.add_operation(:describe_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribePhoneNumbers"
        operation.name = "DescribePhoneNumbers"
        operation.input = DescribePhoneNumbersRequest
        operation.output = DescribePhoneNumbersResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePhoneNumbers.new
      end)
      service.add_operation(:describe_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribePools"
        operation.name = "DescribePools"
        operation.input = DescribePoolsRequest
        operation.output = DescribePoolsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePools.new
      end)
      service.add_operation(:describe_protect_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeProtectConfigurations"
        operation.name = "DescribeProtectConfigurations"
        operation.input = DescribeProtectConfigurationsRequest
        operation.output = DescribeProtectConfigurationsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeProtectConfigurations.new
      end)
      service.add_operation(:describe_rcs_agent_country_launch_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgentCountryLaunchStatus"
        operation.name = "DescribeRcsAgentCountryLaunchStatus"
        operation.input = DescribeRcsAgentCountryLaunchStatusRequest
        operation.output = DescribeRcsAgentCountryLaunchStatusResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRcsAgentCountryLaunchStatus.new
      end)
      service.add_operation(:describe_rcs_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRcsAgents"
        operation.name = "DescribeRcsAgents"
        operation.input = DescribeRcsAgentsRequest
        operation.output = DescribeRcsAgentsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRcsAgents.new
      end)
      service.add_operation(:describe_registration_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationAttachments"
        operation.name = "DescribeRegistrationAttachments"
        operation.input = DescribeRegistrationAttachmentsRequest
        operation.output = DescribeRegistrationAttachmentsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationAttachments.new
      end)
      service.add_operation(:describe_registration_field_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldDefinitions"
        operation.name = "DescribeRegistrationFieldDefinitions"
        operation.input = DescribeRegistrationFieldDefinitionsRequest
        operation.output = DescribeRegistrationFieldDefinitionsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationFieldDefinitions.new
      end)
      service.add_operation(:describe_registration_field_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationFieldValues"
        operation.name = "DescribeRegistrationFieldValues"
        operation.input = DescribeRegistrationFieldValuesRequest
        operation.output = DescribeRegistrationFieldValuesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationFieldValues.new
      end)
      service.add_operation(:describe_registration_section_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationSectionDefinitions"
        operation.name = "DescribeRegistrationSectionDefinitions"
        operation.input = DescribeRegistrationSectionDefinitionsRequest
        operation.output = DescribeRegistrationSectionDefinitionsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationSectionDefinitions.new
      end)
      service.add_operation(:describe_registration_type_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationTypeDefinitions"
        operation.name = "DescribeRegistrationTypeDefinitions"
        operation.input = DescribeRegistrationTypeDefinitionsRequest
        operation.output = DescribeRegistrationTypeDefinitionsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationTypeDefinitions.new
      end)
      service.add_operation(:describe_registration_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrationVersions"
        operation.name = "DescribeRegistrationVersions"
        operation.input = DescribeRegistrationVersionsRequest
        operation.output = DescribeRegistrationVersionsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrationVersions.new
      end)
      service.add_operation(:describe_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeRegistrations"
        operation.name = "DescribeRegistrations"
        operation.input = DescribeRegistrationsRequest
        operation.output = DescribeRegistrationsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistrations.new
      end)
      service.add_operation(:describe_sender_ids, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeSenderIds"
        operation.name = "DescribeSenderIds"
        operation.input = DescribeSenderIdsRequest
        operation.output = DescribeSenderIdsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSenderIds.new
      end)
      service.add_operation(:describe_spend_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeSpendLimits"
        operation.name = "DescribeSpendLimits"
        operation.input = DescribeSpendLimitsRequest
        operation.output = DescribeSpendLimitsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSpendLimits.new
      end)
      service.add_operation(:describe_verified_destination_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DescribeVerifiedDestinationNumbers"
        operation.name = "DescribeVerifiedDestinationNumbers"
        operation.input = DescribeVerifiedDestinationNumbersRequest
        operation.output = DescribeVerifiedDestinationNumbersResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeVerifiedDestinationNumbers.new
      end)
      service.add_operation(:disassociate_origination_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DisassociateOriginationIdentity"
        operation.name = "DisassociateOriginationIdentity"
        operation.input = DisassociateOriginationIdentityRequest
        operation.output = DisassociateOriginationIdentityResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DisassociateProtectConfiguration"
        operation.name = "DisassociateProtectConfiguration"
        operation.input = DisassociateProtectConfigurationRequest
        operation.output = DisassociateProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:discard_registration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#DiscardRegistrationVersion"
        operation.name = "DiscardRegistrationVersion"
        operation.input = DiscardRegistrationVersionRequest
        operation.output = DiscardRegistrationVersionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_protect_configuration_country_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#GetProtectConfigurationCountryRuleSet"
        operation.name = "GetProtectConfigurationCountryRuleSet"
        operation.input = GetProtectConfigurationCountryRuleSetRequest
        operation.output = GetProtectConfigurationCountryRuleSetResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_available_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListAvailablePhoneNumbers"
        operation.name = "ListAvailablePhoneNumbers"
        operation.input = ListAvailablePhoneNumbersRequest
        operation.output = ListAvailablePhoneNumbersResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAvailablePhoneNumbers.new
      end)
      service.add_operation(:list_notify_countries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListNotifyCountries"
        operation.name = "ListNotifyCountries"
        operation.input = ListNotifyCountriesRequest
        operation.output = ListNotifyCountriesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListNotifyCountries.new
      end)
      service.add_operation(:list_pool_origination_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListPoolOriginationIdentities"
        operation.name = "ListPoolOriginationIdentities"
        operation.input = ListPoolOriginationIdentitiesRequest
        operation.output = ListPoolOriginationIdentitiesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPoolOriginationIdentities.new
      end)
      service.add_operation(:list_protect_configuration_rule_set_number_overrides, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListProtectConfigurationRuleSetNumberOverrides"
        operation.name = "ListProtectConfigurationRuleSetNumberOverrides"
        operation.input = ListProtectConfigurationRuleSetNumberOverridesRequest
        operation.output = ListProtectConfigurationRuleSetNumberOverridesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtectConfigurationRuleSetNumberOverrides.new
      end)
      service.add_operation(:list_registration_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListRegistrationAssociations"
        operation.name = "ListRegistrationAssociations"
        operation.input = ListRegistrationAssociationsRequest
        operation.output = ListRegistrationAssociationsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRegistrationAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_keyword, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutKeyword"
        operation.name = "PutKeyword"
        operation.input = PutKeywordRequest
        operation.output = PutKeywordResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_message_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutMessageFeedback"
        operation.name = "PutMessageFeedback"
        operation.input = PutMessageFeedbackRequest
        operation.output = PutMessageFeedbackResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_opted_out_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutOptedOutNumber"
        operation.name = "PutOptedOutNumber"
        operation.input = PutOptedOutNumberRequest
        operation.output = PutOptedOutNumberResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_protect_configuration_rule_set_number_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutProtectConfigurationRuleSetNumberOverride"
        operation.name = "PutProtectConfigurationRuleSetNumberOverride"
        operation.input = PutProtectConfigurationRuleSetNumberOverrideRequest
        operation.output = PutProtectConfigurationRuleSetNumberOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_registration_field_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutRegistrationFieldValue"
        operation.name = "PutRegistrationFieldValue"
        operation.input = PutRegistrationFieldValueRequest
        operation.output = PutRegistrationFieldValueResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:release_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ReleasePhoneNumber"
        operation.name = "ReleasePhoneNumber"
        operation.input = ReleasePhoneNumberRequest
        operation.output = ReleasePhoneNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:release_sender_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#ReleaseSenderId"
        operation.name = "ReleaseSenderId"
        operation.input = ReleaseSenderIdRequest
        operation.output = ReleaseSenderIdResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:request_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#RequestPhoneNumber"
        operation.name = "RequestPhoneNumber"
        operation.input = RequestPhoneNumberRequest
        operation.output = RequestPhoneNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:request_sender_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#RequestSenderId"
        operation.name = "RequestSenderId"
        operation.input = RequestSenderIdRequest
        operation.output = RequestSenderIdResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_destination_number_verification_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendDestinationNumberVerificationCode"
        operation.name = "SendDestinationNumberVerificationCode"
        operation.input = SendDestinationNumberVerificationCodeRequest
        operation.output = SendDestinationNumberVerificationCodeResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_media_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendMediaMessage"
        operation.name = "SendMediaMessage"
        operation.input = SendMediaMessageRequest
        operation.output = SendMediaMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_notify_text_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendNotifyTextMessage"
        operation.name = "SendNotifyTextMessage"
        operation.input = SendNotifyTextMessageRequest
        operation.output = SendNotifyTextMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_notify_voice_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendNotifyVoiceMessage"
        operation.name = "SendNotifyVoiceMessage"
        operation.input = SendNotifyVoiceMessageRequest
        operation.output = SendNotifyVoiceMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_rcs_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendRcsMessage"
        operation.name = "SendRcsMessage"
        operation.input = SendRcsMessageRequest
        operation.output = SendRcsMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_text_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendTextMessage"
        operation.name = "SendTextMessage"
        operation.input = SendTextMessageRequest
        operation.output = SendTextMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_voice_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SendVoiceMessage"
        operation.name = "SendVoiceMessage"
        operation.input = SendVoiceMessageRequest
        operation.output = SendVoiceMessageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_account_default_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetAccountDefaultProtectConfiguration"
        operation.name = "SetAccountDefaultProtectConfiguration"
        operation.input = SetAccountDefaultProtectConfigurationRequest
        operation.output = SetAccountDefaultProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_default_message_feedback_enabled, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageFeedbackEnabled"
        operation.name = "SetDefaultMessageFeedbackEnabled"
        operation.input = SetDefaultMessageFeedbackEnabledRequest
        operation.output = SetDefaultMessageFeedbackEnabledResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_default_message_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultMessageType"
        operation.name = "SetDefaultMessageType"
        operation.input = SetDefaultMessageTypeRequest
        operation.output = SetDefaultMessageTypeResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_default_sender_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetDefaultSenderId"
        operation.name = "SetDefaultSenderId"
        operation.input = SetDefaultSenderIdRequest
        operation.output = SetDefaultSenderIdResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_media_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetMediaMessageSpendLimitOverride"
        operation.name = "SetMediaMessageSpendLimitOverride"
        operation.input = SetMediaMessageSpendLimitOverrideRequest
        operation.output = SetMediaMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_notify_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetNotifyMessageSpendLimitOverride"
        operation.name = "SetNotifyMessageSpendLimitOverride"
        operation.input = SetNotifyMessageSpendLimitOverrideRequest
        operation.output = SetNotifyMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_rcs_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetRcsMessageSpendLimitOverride"
        operation.name = "SetRcsMessageSpendLimitOverride"
        operation.input = SetRcsMessageSpendLimitOverrideRequest
        operation.output = SetRcsMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_text_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetTextMessageSpendLimitOverride"
        operation.name = "SetTextMessageSpendLimitOverride"
        operation.input = SetTextMessageSpendLimitOverrideRequest
        operation.output = SetTextMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_voice_message_spend_limit_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SetVoiceMessageSpendLimitOverride"
        operation.name = "SetVoiceMessageSpendLimitOverride"
        operation.input = SetVoiceMessageSpendLimitOverrideRequest
        operation.output = SetVoiceMessageSpendLimitOverrideResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:submit_registration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#SubmitRegistrationVersion"
        operation.name = "SubmitRegistrationVersion"
        operation.input = SubmitRegistrationVersionRequest
        operation.output = SubmitRegistrationVersionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateEventDestination"
        operation.name = "UpdateEventDestination"
        operation.input = UpdateEventDestinationRequest
        operation.output = UpdateEventDestinationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_notify_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateNotifyConfiguration"
        operation.name = "UpdateNotifyConfiguration"
        operation.input = UpdateNotifyConfigurationRequest
        operation.output = UpdateNotifyConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = UpdatePhoneNumberRequest
        operation.output = UpdatePhoneNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdatePool"
        operation.name = "UpdatePool"
        operation.input = UpdatePoolRequest
        operation.output = UpdatePoolResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_protect_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfiguration"
        operation.name = "UpdateProtectConfiguration"
        operation.input = UpdateProtectConfigurationRequest
        operation.output = UpdateProtectConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_protect_configuration_country_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateProtectConfigurationCountryRuleSet"
        operation.name = "UpdateProtectConfigurationCountryRuleSet"
        operation.input = UpdateProtectConfigurationCountryRuleSetRequest
        operation.output = UpdateProtectConfigurationCountryRuleSetResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_rcs_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateRcsAgent"
        operation.name = "UpdateRcsAgent"
        operation.input = UpdateRcsAgentRequest
        operation.output = UpdateRcsAgentResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_sender_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#UpdateSenderId"
        operation.name = "UpdateSenderId"
        operation.input = UpdateSenderIdRequest
        operation.output = UpdateSenderIdResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:verify_destination_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoicev2#VerifyDestinationNumber"
        operation.name = "VerifyDestinationNumber"
        operation.input = VerifyDestinationNumberRequest
        operation.output = VerifyDestinationNumberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
