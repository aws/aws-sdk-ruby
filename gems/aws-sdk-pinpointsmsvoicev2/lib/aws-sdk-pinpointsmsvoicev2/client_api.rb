# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PinpointSMSVoiceV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AccountAttribute = Shapes::StructureShape.new(name: 'AccountAttribute')
    AccountAttributeList = Shapes::ListShape.new(name: 'AccountAttributeList')
    AccountAttributeName = Shapes::StringShape.new(name: 'AccountAttributeName')
    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountLimitList = Shapes::ListShape.new(name: 'AccountLimitList')
    AccountLimitName = Shapes::StringShape.new(name: 'AccountLimitName')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociateOriginationIdentityRequest = Shapes::StructureShape.new(name: 'AssociateOriginationIdentityRequest')
    AssociateOriginationIdentityResult = Shapes::StructureShape.new(name: 'AssociateOriginationIdentityResult')
    AssociateProtectConfigurationRequest = Shapes::StructureShape.new(name: 'AssociateProtectConfigurationRequest')
    AssociateProtectConfigurationResult = Shapes::StructureShape.new(name: 'AssociateProtectConfigurationResult')
    AttachmentBody = Shapes::BlobShape.new(name: 'AttachmentBody')
    AttachmentStatus = Shapes::StringShape.new(name: 'AttachmentStatus')
    AttachmentUploadErrorReason = Shapes::StringShape.new(name: 'AttachmentUploadErrorReason')
    AttachmentUrl = Shapes::StringShape.new(name: 'AttachmentUrl')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogsDestination = Shapes::StructureShape.new(name: 'CloudWatchLogsDestination')
    ConfigurationSetFilter = Shapes::StructureShape.new(name: 'ConfigurationSetFilter')
    ConfigurationSetFilterList = Shapes::ListShape.new(name: 'ConfigurationSetFilterList')
    ConfigurationSetFilterName = Shapes::StringShape.new(name: 'ConfigurationSetFilterName')
    ConfigurationSetInformation = Shapes::StructureShape.new(name: 'ConfigurationSetInformation')
    ConfigurationSetInformationList = Shapes::ListShape.new(name: 'ConfigurationSetInformationList')
    ConfigurationSetName = Shapes::StringShape.new(name: 'ConfigurationSetName')
    ConfigurationSetNameList = Shapes::ListShape.new(name: 'ConfigurationSetNameList')
    ConfigurationSetNameOrArn = Shapes::StringShape.new(name: 'ConfigurationSetNameOrArn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    ContextKey = Shapes::StringShape.new(name: 'ContextKey')
    ContextMap = Shapes::MapShape.new(name: 'ContextMap')
    ContextValue = Shapes::StringShape.new(name: 'ContextValue')
    CreateConfigurationSetRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResult = Shapes::StructureShape.new(name: 'CreateConfigurationSetResult')
    CreateEventDestinationRequest = Shapes::StructureShape.new(name: 'CreateEventDestinationRequest')
    CreateEventDestinationResult = Shapes::StructureShape.new(name: 'CreateEventDestinationResult')
    CreateOptOutListRequest = Shapes::StructureShape.new(name: 'CreateOptOutListRequest')
    CreateOptOutListResult = Shapes::StructureShape.new(name: 'CreateOptOutListResult')
    CreatePoolRequest = Shapes::StructureShape.new(name: 'CreatePoolRequest')
    CreatePoolResult = Shapes::StructureShape.new(name: 'CreatePoolResult')
    CreateProtectConfigurationRequest = Shapes::StructureShape.new(name: 'CreateProtectConfigurationRequest')
    CreateProtectConfigurationResult = Shapes::StructureShape.new(name: 'CreateProtectConfigurationResult')
    CreateRegistrationAssociationRequest = Shapes::StructureShape.new(name: 'CreateRegistrationAssociationRequest')
    CreateRegistrationAssociationResult = Shapes::StructureShape.new(name: 'CreateRegistrationAssociationResult')
    CreateRegistrationAttachmentRequest = Shapes::StructureShape.new(name: 'CreateRegistrationAttachmentRequest')
    CreateRegistrationAttachmentResult = Shapes::StructureShape.new(name: 'CreateRegistrationAttachmentResult')
    CreateRegistrationRequest = Shapes::StructureShape.new(name: 'CreateRegistrationRequest')
    CreateRegistrationResult = Shapes::StructureShape.new(name: 'CreateRegistrationResult')
    CreateRegistrationVersionRequest = Shapes::StructureShape.new(name: 'CreateRegistrationVersionRequest')
    CreateRegistrationVersionResult = Shapes::StructureShape.new(name: 'CreateRegistrationVersionResult')
    CreateVerifiedDestinationNumberRequest = Shapes::StructureShape.new(name: 'CreateVerifiedDestinationNumberRequest')
    CreateVerifiedDestinationNumberResult = Shapes::StructureShape.new(name: 'CreateVerifiedDestinationNumberResult')
    DeleteAccountDefaultProtectConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAccountDefaultProtectConfigurationRequest')
    DeleteAccountDefaultProtectConfigurationResult = Shapes::StructureShape.new(name: 'DeleteAccountDefaultProtectConfigurationResult')
    DeleteConfigurationSetRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResult = Shapes::StructureShape.new(name: 'DeleteConfigurationSetResult')
    DeleteDefaultMessageTypeRequest = Shapes::StructureShape.new(name: 'DeleteDefaultMessageTypeRequest')
    DeleteDefaultMessageTypeResult = Shapes::StructureShape.new(name: 'DeleteDefaultMessageTypeResult')
    DeleteDefaultSenderIdRequest = Shapes::StructureShape.new(name: 'DeleteDefaultSenderIdRequest')
    DeleteDefaultSenderIdResult = Shapes::StructureShape.new(name: 'DeleteDefaultSenderIdResult')
    DeleteEventDestinationRequest = Shapes::StructureShape.new(name: 'DeleteEventDestinationRequest')
    DeleteEventDestinationResult = Shapes::StructureShape.new(name: 'DeleteEventDestinationResult')
    DeleteKeywordRequest = Shapes::StructureShape.new(name: 'DeleteKeywordRequest')
    DeleteKeywordResult = Shapes::StructureShape.new(name: 'DeleteKeywordResult')
    DeleteMediaMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'DeleteMediaMessageSpendLimitOverrideRequest')
    DeleteMediaMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'DeleteMediaMessageSpendLimitOverrideResult')
    DeleteOptOutListRequest = Shapes::StructureShape.new(name: 'DeleteOptOutListRequest')
    DeleteOptOutListResult = Shapes::StructureShape.new(name: 'DeleteOptOutListResult')
    DeleteOptedOutNumberRequest = Shapes::StructureShape.new(name: 'DeleteOptedOutNumberRequest')
    DeleteOptedOutNumberResult = Shapes::StructureShape.new(name: 'DeleteOptedOutNumberResult')
    DeletePoolRequest = Shapes::StructureShape.new(name: 'DeletePoolRequest')
    DeletePoolResult = Shapes::StructureShape.new(name: 'DeletePoolResult')
    DeleteProtectConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteProtectConfigurationRequest')
    DeleteProtectConfigurationResult = Shapes::StructureShape.new(name: 'DeleteProtectConfigurationResult')
    DeleteProtectConfigurationRuleSetNumberOverrideRequest = Shapes::StructureShape.new(name: 'DeleteProtectConfigurationRuleSetNumberOverrideRequest')
    DeleteProtectConfigurationRuleSetNumberOverrideResult = Shapes::StructureShape.new(name: 'DeleteProtectConfigurationRuleSetNumberOverrideResult')
    DeleteRegistrationAttachmentRequest = Shapes::StructureShape.new(name: 'DeleteRegistrationAttachmentRequest')
    DeleteRegistrationAttachmentResult = Shapes::StructureShape.new(name: 'DeleteRegistrationAttachmentResult')
    DeleteRegistrationFieldValueRequest = Shapes::StructureShape.new(name: 'DeleteRegistrationFieldValueRequest')
    DeleteRegistrationFieldValueResult = Shapes::StructureShape.new(name: 'DeleteRegistrationFieldValueResult')
    DeleteRegistrationRequest = Shapes::StructureShape.new(name: 'DeleteRegistrationRequest')
    DeleteRegistrationResult = Shapes::StructureShape.new(name: 'DeleteRegistrationResult')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResult = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResult')
    DeleteTextMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'DeleteTextMessageSpendLimitOverrideRequest')
    DeleteTextMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'DeleteTextMessageSpendLimitOverrideResult')
    DeleteVerifiedDestinationNumberRequest = Shapes::StructureShape.new(name: 'DeleteVerifiedDestinationNumberRequest')
    DeleteVerifiedDestinationNumberResult = Shapes::StructureShape.new(name: 'DeleteVerifiedDestinationNumberResult')
    DeleteVoiceMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'DeleteVoiceMessageSpendLimitOverrideRequest')
    DeleteVoiceMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'DeleteVoiceMessageSpendLimitOverrideResult')
    DeliveryStreamArn = Shapes::StringShape.new(name: 'DeliveryStreamArn')
    DescribeAccountAttributesRequest = Shapes::StructureShape.new(name: 'DescribeAccountAttributesRequest')
    DescribeAccountAttributesResult = Shapes::StructureShape.new(name: 'DescribeAccountAttributesResult')
    DescribeAccountLimitsRequest = Shapes::StructureShape.new(name: 'DescribeAccountLimitsRequest')
    DescribeAccountLimitsResult = Shapes::StructureShape.new(name: 'DescribeAccountLimitsResult')
    DescribeConfigurationSetsRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationSetsRequest')
    DescribeConfigurationSetsResult = Shapes::StructureShape.new(name: 'DescribeConfigurationSetsResult')
    DescribeKeywordsRequest = Shapes::StructureShape.new(name: 'DescribeKeywordsRequest')
    DescribeKeywordsResult = Shapes::StructureShape.new(name: 'DescribeKeywordsResult')
    DescribeOptOutListsRequest = Shapes::StructureShape.new(name: 'DescribeOptOutListsRequest')
    DescribeOptOutListsResult = Shapes::StructureShape.new(name: 'DescribeOptOutListsResult')
    DescribeOptedOutNumbersRequest = Shapes::StructureShape.new(name: 'DescribeOptedOutNumbersRequest')
    DescribeOptedOutNumbersResult = Shapes::StructureShape.new(name: 'DescribeOptedOutNumbersResult')
    DescribePhoneNumbersRequest = Shapes::StructureShape.new(name: 'DescribePhoneNumbersRequest')
    DescribePhoneNumbersResult = Shapes::StructureShape.new(name: 'DescribePhoneNumbersResult')
    DescribePoolsRequest = Shapes::StructureShape.new(name: 'DescribePoolsRequest')
    DescribePoolsResult = Shapes::StructureShape.new(name: 'DescribePoolsResult')
    DescribeProtectConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeProtectConfigurationsRequest')
    DescribeProtectConfigurationsResult = Shapes::StructureShape.new(name: 'DescribeProtectConfigurationsResult')
    DescribeRegistrationAttachmentsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationAttachmentsRequest')
    DescribeRegistrationAttachmentsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationAttachmentsResult')
    DescribeRegistrationFieldDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationFieldDefinitionsRequest')
    DescribeRegistrationFieldDefinitionsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationFieldDefinitionsResult')
    DescribeRegistrationFieldValuesRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationFieldValuesRequest')
    DescribeRegistrationFieldValuesResult = Shapes::StructureShape.new(name: 'DescribeRegistrationFieldValuesResult')
    DescribeRegistrationSectionDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationSectionDefinitionsRequest')
    DescribeRegistrationSectionDefinitionsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationSectionDefinitionsResult')
    DescribeRegistrationTypeDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationTypeDefinitionsRequest')
    DescribeRegistrationTypeDefinitionsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationTypeDefinitionsResult')
    DescribeRegistrationVersionsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationVersionsRequest')
    DescribeRegistrationVersionsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationVersionsResult')
    DescribeRegistrationsRequest = Shapes::StructureShape.new(name: 'DescribeRegistrationsRequest')
    DescribeRegistrationsResult = Shapes::StructureShape.new(name: 'DescribeRegistrationsResult')
    DescribeSenderIdsRequest = Shapes::StructureShape.new(name: 'DescribeSenderIdsRequest')
    DescribeSenderIdsResult = Shapes::StructureShape.new(name: 'DescribeSenderIdsResult')
    DescribeSpendLimitsRequest = Shapes::StructureShape.new(name: 'DescribeSpendLimitsRequest')
    DescribeSpendLimitsResult = Shapes::StructureShape.new(name: 'DescribeSpendLimitsResult')
    DescribeVerifiedDestinationNumbersRequest = Shapes::StructureShape.new(name: 'DescribeVerifiedDestinationNumbersRequest')
    DescribeVerifiedDestinationNumbersResult = Shapes::StructureShape.new(name: 'DescribeVerifiedDestinationNumbersResult')
    DestinationCountryParameterKey = Shapes::StringShape.new(name: 'DestinationCountryParameterKey')
    DestinationCountryParameterValue = Shapes::StringShape.new(name: 'DestinationCountryParameterValue')
    DestinationCountryParameters = Shapes::MapShape.new(name: 'DestinationCountryParameters')
    DestinationPhoneNumberList = Shapes::ListShape.new(name: 'DestinationPhoneNumberList')
    DisassociateOriginationIdentityRequest = Shapes::StructureShape.new(name: 'DisassociateOriginationIdentityRequest')
    DisassociateOriginationIdentityResult = Shapes::StructureShape.new(name: 'DisassociateOriginationIdentityResult')
    DisassociateProtectConfigurationRequest = Shapes::StructureShape.new(name: 'DisassociateProtectConfigurationRequest')
    DisassociateProtectConfigurationResult = Shapes::StructureShape.new(name: 'DisassociateProtectConfigurationResult')
    DiscardRegistrationVersionRequest = Shapes::StructureShape.new(name: 'DiscardRegistrationVersionRequest')
    DiscardRegistrationVersionResult = Shapes::StructureShape.new(name: 'DiscardRegistrationVersionResult')
    EventDestination = Shapes::StructureShape.new(name: 'EventDestination')
    EventDestinationList = Shapes::ListShape.new(name: 'EventDestinationList')
    EventDestinationName = Shapes::StringShape.new(name: 'EventDestinationName')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypeList = Shapes::ListShape.new(name: 'EventTypeList')
    FieldPath = Shapes::StringShape.new(name: 'FieldPath')
    FieldPathList = Shapes::ListShape.new(name: 'FieldPathList')
    FieldRequirement = Shapes::StringShape.new(name: 'FieldRequirement')
    FieldType = Shapes::StringShape.new(name: 'FieldType')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GetProtectConfigurationCountryRuleSetRequest = Shapes::StructureShape.new(name: 'GetProtectConfigurationCountryRuleSetRequest')
    GetProtectConfigurationCountryRuleSetResult = Shapes::StructureShape.new(name: 'GetProtectConfigurationCountryRuleSetResult')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResult = Shapes::StructureShape.new(name: 'GetResourcePolicyResult')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsoCountryCode = Shapes::StringShape.new(name: 'IsoCountryCode')
    Keyword = Shapes::StringShape.new(name: 'Keyword')
    KeywordAction = Shapes::StringShape.new(name: 'KeywordAction')
    KeywordFilter = Shapes::StructureShape.new(name: 'KeywordFilter')
    KeywordFilterList = Shapes::ListShape.new(name: 'KeywordFilterList')
    KeywordFilterName = Shapes::StringShape.new(name: 'KeywordFilterName')
    KeywordInformation = Shapes::StructureShape.new(name: 'KeywordInformation')
    KeywordInformationList = Shapes::ListShape.new(name: 'KeywordInformationList')
    KeywordList = Shapes::ListShape.new(name: 'KeywordList')
    KeywordMessage = Shapes::StringShape.new(name: 'KeywordMessage')
    KinesisFirehoseDestination = Shapes::StructureShape.new(name: 'KinesisFirehoseDestination')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListPoolOriginationIdentitiesRequest = Shapes::StructureShape.new(name: 'ListPoolOriginationIdentitiesRequest')
    ListPoolOriginationIdentitiesResult = Shapes::StructureShape.new(name: 'ListPoolOriginationIdentitiesResult')
    ListProtectConfigurationRuleSetNumberOverrideFilter = Shapes::ListShape.new(name: 'ListProtectConfigurationRuleSetNumberOverrideFilter')
    ListProtectConfigurationRuleSetNumberOverridesRequest = Shapes::StructureShape.new(name: 'ListProtectConfigurationRuleSetNumberOverridesRequest')
    ListProtectConfigurationRuleSetNumberOverridesResult = Shapes::StructureShape.new(name: 'ListProtectConfigurationRuleSetNumberOverridesResult')
    ListRegistrationAssociationsRequest = Shapes::StructureShape.new(name: 'ListRegistrationAssociationsRequest')
    ListRegistrationAssociationsResult = Shapes::StructureShape.new(name: 'ListRegistrationAssociationsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    MaxPrice = Shapes::StringShape.new(name: 'MaxPrice')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaMessageOriginationIdentity = Shapes::StringShape.new(name: 'MediaMessageOriginationIdentity')
    MediaUrlList = Shapes::ListShape.new(name: 'MediaUrlList')
    MediaUrlValue = Shapes::StringShape.new(name: 'MediaUrlValue')
    MessageFeedbackStatus = Shapes::StringShape.new(name: 'MessageFeedbackStatus')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    MessageTypeList = Shapes::ListShape.new(name: 'MessageTypeList')
    MonthlyLimit = Shapes::IntegerShape.new(name: 'MonthlyLimit')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyTagList = Shapes::ListShape.new(name: 'NonEmptyTagList')
    NumberCapability = Shapes::StringShape.new(name: 'NumberCapability')
    NumberCapabilityList = Shapes::ListShape.new(name: 'NumberCapabilityList')
    NumberStatus = Shapes::StringShape.new(name: 'NumberStatus')
    NumberType = Shapes::StringShape.new(name: 'NumberType')
    OptOutListInformation = Shapes::StructureShape.new(name: 'OptOutListInformation')
    OptOutListInformationList = Shapes::ListShape.new(name: 'OptOutListInformationList')
    OptOutListName = Shapes::StringShape.new(name: 'OptOutListName')
    OptOutListNameList = Shapes::ListShape.new(name: 'OptOutListNameList')
    OptOutListNameOrArn = Shapes::StringShape.new(name: 'OptOutListNameOrArn')
    OptedOutFilter = Shapes::StructureShape.new(name: 'OptedOutFilter')
    OptedOutFilterList = Shapes::ListShape.new(name: 'OptedOutFilterList')
    OptedOutFilterName = Shapes::StringShape.new(name: 'OptedOutFilterName')
    OptedOutNumberInformation = Shapes::StructureShape.new(name: 'OptedOutNumberInformation')
    OptedOutNumberInformationList = Shapes::ListShape.new(name: 'OptedOutNumberInformationList')
    OptedOutNumberList = Shapes::ListShape.new(name: 'OptedOutNumberList')
    OriginationIdentityMetadata = Shapes::StructureShape.new(name: 'OriginationIdentityMetadata')
    OriginationIdentityMetadataList = Shapes::ListShape.new(name: 'OriginationIdentityMetadataList')
    Owner = Shapes::StringShape.new(name: 'Owner')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PhoneNumberFilter = Shapes::StructureShape.new(name: 'PhoneNumberFilter')
    PhoneNumberFilterList = Shapes::ListShape.new(name: 'PhoneNumberFilterList')
    PhoneNumberFilterName = Shapes::StringShape.new(name: 'PhoneNumberFilterName')
    PhoneNumberIdList = Shapes::ListShape.new(name: 'PhoneNumberIdList')
    PhoneNumberIdOrArn = Shapes::StringShape.new(name: 'PhoneNumberIdOrArn')
    PhoneNumberInformation = Shapes::StructureShape.new(name: 'PhoneNumberInformation')
    PhoneNumberInformationList = Shapes::ListShape.new(name: 'PhoneNumberInformationList')
    PhoneOrPoolIdOrArn = Shapes::StringShape.new(name: 'PhoneOrPoolIdOrArn')
    PhoneOrSenderIdOrArn = Shapes::StringShape.new(name: 'PhoneOrSenderIdOrArn')
    PoolFilter = Shapes::StructureShape.new(name: 'PoolFilter')
    PoolFilterList = Shapes::ListShape.new(name: 'PoolFilterList')
    PoolFilterName = Shapes::StringShape.new(name: 'PoolFilterName')
    PoolIdList = Shapes::ListShape.new(name: 'PoolIdList')
    PoolIdOrArn = Shapes::StringShape.new(name: 'PoolIdOrArn')
    PoolInformation = Shapes::StructureShape.new(name: 'PoolInformation')
    PoolInformationList = Shapes::ListShape.new(name: 'PoolInformationList')
    PoolOriginationIdentitiesFilter = Shapes::StructureShape.new(name: 'PoolOriginationIdentitiesFilter')
    PoolOriginationIdentitiesFilterList = Shapes::ListShape.new(name: 'PoolOriginationIdentitiesFilterList')
    PoolOriginationIdentitiesFilterName = Shapes::StringShape.new(name: 'PoolOriginationIdentitiesFilterName')
    PoolStatus = Shapes::StringShape.new(name: 'PoolStatus')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    PrimitiveLong = Shapes::IntegerShape.new(name: 'PrimitiveLong')
    ProtectConfigurationArn = Shapes::StringShape.new(name: 'ProtectConfigurationArn')
    ProtectConfigurationCountryRuleSet = Shapes::MapShape.new(name: 'ProtectConfigurationCountryRuleSet')
    ProtectConfigurationCountryRuleSetInformation = Shapes::StructureShape.new(name: 'ProtectConfigurationCountryRuleSetInformation')
    ProtectConfigurationFilter = Shapes::StructureShape.new(name: 'ProtectConfigurationFilter')
    ProtectConfigurationFilterList = Shapes::ListShape.new(name: 'ProtectConfigurationFilterList')
    ProtectConfigurationFilterName = Shapes::StringShape.new(name: 'ProtectConfigurationFilterName')
    ProtectConfigurationId = Shapes::StringShape.new(name: 'ProtectConfigurationId')
    ProtectConfigurationIdList = Shapes::ListShape.new(name: 'ProtectConfigurationIdList')
    ProtectConfigurationIdOrArn = Shapes::StringShape.new(name: 'ProtectConfigurationIdOrArn')
    ProtectConfigurationInformation = Shapes::StructureShape.new(name: 'ProtectConfigurationInformation')
    ProtectConfigurationInformationList = Shapes::ListShape.new(name: 'ProtectConfigurationInformationList')
    ProtectConfigurationRuleOverrideAction = Shapes::StringShape.new(name: 'ProtectConfigurationRuleOverrideAction')
    ProtectConfigurationRuleSetNumberOverride = Shapes::StructureShape.new(name: 'ProtectConfigurationRuleSetNumberOverride')
    ProtectConfigurationRuleSetNumberOverrideFilterItem = Shapes::StructureShape.new(name: 'ProtectConfigurationRuleSetNumberOverrideFilterItem')
    ProtectConfigurationRuleSetNumberOverrideFilterName = Shapes::StringShape.new(name: 'ProtectConfigurationRuleSetNumberOverrideFilterName')
    ProtectConfigurationRuleSetNumberOverrideList = Shapes::ListShape.new(name: 'ProtectConfigurationRuleSetNumberOverrideList')
    ProtectStatus = Shapes::StringShape.new(name: 'ProtectStatus')
    PutKeywordRequest = Shapes::StructureShape.new(name: 'PutKeywordRequest')
    PutKeywordResult = Shapes::StructureShape.new(name: 'PutKeywordResult')
    PutMessageFeedbackRequest = Shapes::StructureShape.new(name: 'PutMessageFeedbackRequest')
    PutMessageFeedbackResult = Shapes::StructureShape.new(name: 'PutMessageFeedbackResult')
    PutOptedOutNumberRequest = Shapes::StructureShape.new(name: 'PutOptedOutNumberRequest')
    PutOptedOutNumberResult = Shapes::StructureShape.new(name: 'PutOptedOutNumberResult')
    PutProtectConfigurationRuleSetNumberOverrideRequest = Shapes::StructureShape.new(name: 'PutProtectConfigurationRuleSetNumberOverrideRequest')
    PutProtectConfigurationRuleSetNumberOverrideResult = Shapes::StructureShape.new(name: 'PutProtectConfigurationRuleSetNumberOverrideResult')
    PutRegistrationFieldValueRequest = Shapes::StructureShape.new(name: 'PutRegistrationFieldValueRequest')
    PutRegistrationFieldValueResult = Shapes::StructureShape.new(name: 'PutRegistrationFieldValueResult')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResult = Shapes::StructureShape.new(name: 'PutResourcePolicyResult')
    RegistrationAssociationBehavior = Shapes::StringShape.new(name: 'RegistrationAssociationBehavior')
    RegistrationAssociationFilter = Shapes::StructureShape.new(name: 'RegistrationAssociationFilter')
    RegistrationAssociationFilterList = Shapes::ListShape.new(name: 'RegistrationAssociationFilterList')
    RegistrationAssociationFilterName = Shapes::StringShape.new(name: 'RegistrationAssociationFilterName')
    RegistrationAssociationMetadata = Shapes::StructureShape.new(name: 'RegistrationAssociationMetadata')
    RegistrationAssociationMetadataList = Shapes::ListShape.new(name: 'RegistrationAssociationMetadataList')
    RegistrationAttachmentFilter = Shapes::StructureShape.new(name: 'RegistrationAttachmentFilter')
    RegistrationAttachmentFilterList = Shapes::ListShape.new(name: 'RegistrationAttachmentFilterList')
    RegistrationAttachmentFilterName = Shapes::StringShape.new(name: 'RegistrationAttachmentFilterName')
    RegistrationAttachmentIdList = Shapes::ListShape.new(name: 'RegistrationAttachmentIdList')
    RegistrationAttachmentIdOrArn = Shapes::StringShape.new(name: 'RegistrationAttachmentIdOrArn')
    RegistrationAttachmentsInformation = Shapes::StructureShape.new(name: 'RegistrationAttachmentsInformation')
    RegistrationAttachmentsInformationList = Shapes::ListShape.new(name: 'RegistrationAttachmentsInformationList')
    RegistrationDeniedReasonInformation = Shapes::StructureShape.new(name: 'RegistrationDeniedReasonInformation')
    RegistrationDeniedReasonInformationList = Shapes::ListShape.new(name: 'RegistrationDeniedReasonInformationList')
    RegistrationDisassociationBehavior = Shapes::StringShape.new(name: 'RegistrationDisassociationBehavior')
    RegistrationFieldDefinition = Shapes::StructureShape.new(name: 'RegistrationFieldDefinition')
    RegistrationFieldDefinitionList = Shapes::ListShape.new(name: 'RegistrationFieldDefinitionList')
    RegistrationFieldDisplayHints = Shapes::StructureShape.new(name: 'RegistrationFieldDisplayHints')
    RegistrationFieldValueInformation = Shapes::StructureShape.new(name: 'RegistrationFieldValueInformation')
    RegistrationFieldValueInformationList = Shapes::ListShape.new(name: 'RegistrationFieldValueInformationList')
    RegistrationFilter = Shapes::StructureShape.new(name: 'RegistrationFilter')
    RegistrationFilterList = Shapes::ListShape.new(name: 'RegistrationFilterList')
    RegistrationFilterName = Shapes::StringShape.new(name: 'RegistrationFilterName')
    RegistrationIdList = Shapes::ListShape.new(name: 'RegistrationIdList')
    RegistrationIdOrArn = Shapes::StringShape.new(name: 'RegistrationIdOrArn')
    RegistrationInformation = Shapes::StructureShape.new(name: 'RegistrationInformation')
    RegistrationInformationList = Shapes::ListShape.new(name: 'RegistrationInformationList')
    RegistrationSectionDefinition = Shapes::StructureShape.new(name: 'RegistrationSectionDefinition')
    RegistrationSectionDefinitionList = Shapes::ListShape.new(name: 'RegistrationSectionDefinitionList')
    RegistrationSectionDisplayHints = Shapes::StructureShape.new(name: 'RegistrationSectionDisplayHints')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    RegistrationType = Shapes::StringShape.new(name: 'RegistrationType')
    RegistrationTypeDefinition = Shapes::StructureShape.new(name: 'RegistrationTypeDefinition')
    RegistrationTypeDefinitionList = Shapes::ListShape.new(name: 'RegistrationTypeDefinitionList')
    RegistrationTypeDisplayHints = Shapes::StructureShape.new(name: 'RegistrationTypeDisplayHints')
    RegistrationTypeFilter = Shapes::StructureShape.new(name: 'RegistrationTypeFilter')
    RegistrationTypeFilterList = Shapes::ListShape.new(name: 'RegistrationTypeFilterList')
    RegistrationTypeFilterName = Shapes::StringShape.new(name: 'RegistrationTypeFilterName')
    RegistrationTypeList = Shapes::ListShape.new(name: 'RegistrationTypeList')
    RegistrationVersionFilter = Shapes::StructureShape.new(name: 'RegistrationVersionFilter')
    RegistrationVersionFilterList = Shapes::ListShape.new(name: 'RegistrationVersionFilterList')
    RegistrationVersionFilterName = Shapes::StringShape.new(name: 'RegistrationVersionFilterName')
    RegistrationVersionInformation = Shapes::StructureShape.new(name: 'RegistrationVersionInformation')
    RegistrationVersionInformationList = Shapes::ListShape.new(name: 'RegistrationVersionInformationList')
    RegistrationVersionNumber = Shapes::IntegerShape.new(name: 'RegistrationVersionNumber')
    RegistrationVersionNumberList = Shapes::ListShape.new(name: 'RegistrationVersionNumberList')
    RegistrationVersionStatus = Shapes::StringShape.new(name: 'RegistrationVersionStatus')
    RegistrationVersionStatusHistory = Shapes::StructureShape.new(name: 'RegistrationVersionStatusHistory')
    ReleasePhoneNumberRequest = Shapes::StructureShape.new(name: 'ReleasePhoneNumberRequest')
    ReleasePhoneNumberResult = Shapes::StructureShape.new(name: 'ReleasePhoneNumberResult')
    ReleaseSenderIdRequest = Shapes::StructureShape.new(name: 'ReleaseSenderIdRequest')
    ReleaseSenderIdResult = Shapes::StructureShape.new(name: 'ReleaseSenderIdResult')
    RequestPhoneNumberRequest = Shapes::StructureShape.new(name: 'RequestPhoneNumberRequest')
    RequestPhoneNumberResult = Shapes::StructureShape.new(name: 'RequestPhoneNumberResult')
    RequestSenderIdRequest = Shapes::StructureShape.new(name: 'RequestSenderIdRequest')
    RequestSenderIdResult = Shapes::StructureShape.new(name: 'RequestSenderIdResult')
    RequestableNumberType = Shapes::StringShape.new(name: 'RequestableNumberType')
    ResourceIdOrArn = Shapes::StringShape.new(name: 'ResourceIdOrArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SectionPath = Shapes::StringShape.new(name: 'SectionPath')
    SectionPathList = Shapes::ListShape.new(name: 'SectionPathList')
    SelectChoice = Shapes::StringShape.new(name: 'SelectChoice')
    SelectChoiceList = Shapes::ListShape.new(name: 'SelectChoiceList')
    SelectOptionDescription = Shapes::StructureShape.new(name: 'SelectOptionDescription')
    SelectOptionDescriptionsList = Shapes::ListShape.new(name: 'SelectOptionDescriptionsList')
    SelectValidation = Shapes::StructureShape.new(name: 'SelectValidation')
    SendDestinationNumberVerificationCodeRequest = Shapes::StructureShape.new(name: 'SendDestinationNumberVerificationCodeRequest')
    SendDestinationNumberVerificationCodeResult = Shapes::StructureShape.new(name: 'SendDestinationNumberVerificationCodeResult')
    SendMediaMessageRequest = Shapes::StructureShape.new(name: 'SendMediaMessageRequest')
    SendMediaMessageResult = Shapes::StructureShape.new(name: 'SendMediaMessageResult')
    SendTextMessageRequest = Shapes::StructureShape.new(name: 'SendTextMessageRequest')
    SendTextMessageResult = Shapes::StructureShape.new(name: 'SendTextMessageResult')
    SendVoiceMessageRequest = Shapes::StructureShape.new(name: 'SendVoiceMessageRequest')
    SendVoiceMessageResult = Shapes::StructureShape.new(name: 'SendVoiceMessageResult')
    SenderId = Shapes::StringShape.new(name: 'SenderId')
    SenderIdAndCountry = Shapes::StructureShape.new(name: 'SenderIdAndCountry')
    SenderIdFilter = Shapes::StructureShape.new(name: 'SenderIdFilter')
    SenderIdFilterList = Shapes::ListShape.new(name: 'SenderIdFilterList')
    SenderIdFilterName = Shapes::StringShape.new(name: 'SenderIdFilterName')
    SenderIdInformation = Shapes::StructureShape.new(name: 'SenderIdInformation')
    SenderIdInformationList = Shapes::ListShape.new(name: 'SenderIdInformationList')
    SenderIdList = Shapes::ListShape.new(name: 'SenderIdList')
    SenderIdOrArn = Shapes::StringShape.new(name: 'SenderIdOrArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    SetAccountDefaultProtectConfigurationRequest = Shapes::StructureShape.new(name: 'SetAccountDefaultProtectConfigurationRequest')
    SetAccountDefaultProtectConfigurationResult = Shapes::StructureShape.new(name: 'SetAccountDefaultProtectConfigurationResult')
    SetDefaultMessageFeedbackEnabledRequest = Shapes::StructureShape.new(name: 'SetDefaultMessageFeedbackEnabledRequest')
    SetDefaultMessageFeedbackEnabledResult = Shapes::StructureShape.new(name: 'SetDefaultMessageFeedbackEnabledResult')
    SetDefaultMessageTypeRequest = Shapes::StructureShape.new(name: 'SetDefaultMessageTypeRequest')
    SetDefaultMessageTypeResult = Shapes::StructureShape.new(name: 'SetDefaultMessageTypeResult')
    SetDefaultSenderIdRequest = Shapes::StructureShape.new(name: 'SetDefaultSenderIdRequest')
    SetDefaultSenderIdResult = Shapes::StructureShape.new(name: 'SetDefaultSenderIdResult')
    SetMediaMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'SetMediaMessageSpendLimitOverrideRequest')
    SetMediaMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'SetMediaMessageSpendLimitOverrideResult')
    SetTextMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'SetTextMessageSpendLimitOverrideRequest')
    SetTextMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'SetTextMessageSpendLimitOverrideResult')
    SetVoiceMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'SetVoiceMessageSpendLimitOverrideRequest')
    SetVoiceMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'SetVoiceMessageSpendLimitOverrideResult')
    SnsDestination = Shapes::StructureShape.new(name: 'SnsDestination')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SpendLimit = Shapes::StructureShape.new(name: 'SpendLimit')
    SpendLimitList = Shapes::ListShape.new(name: 'SpendLimitList')
    SpendLimitName = Shapes::StringShape.new(name: 'SpendLimitName')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SubmitRegistrationVersionRequest = Shapes::StructureShape.new(name: 'SubmitRegistrationVersionRequest')
    SubmitRegistrationVersionResult = Shapes::StructureShape.new(name: 'SubmitRegistrationVersionResult')
    SupportedAssociation = Shapes::StructureShape.new(name: 'SupportedAssociation')
    SupportedAssociationList = Shapes::ListShape.new(name: 'SupportedAssociationList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextMessageBody = Shapes::StringShape.new(name: 'TextMessageBody')
    TextMessageOriginationIdentity = Shapes::StringShape.new(name: 'TextMessageOriginationIdentity')
    TextValidation = Shapes::StructureShape.new(name: 'TextValidation')
    TextValue = Shapes::StringShape.new(name: 'TextValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeToLive = Shapes::IntegerShape.new(name: 'TimeToLive')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TwoWayChannelArn = Shapes::StringShape.new(name: 'TwoWayChannelArn')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateEventDestinationRequest = Shapes::StructureShape.new(name: 'UpdateEventDestinationRequest')
    UpdateEventDestinationResult = Shapes::StructureShape.new(name: 'UpdateEventDestinationResult')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberResult = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResult')
    UpdatePoolRequest = Shapes::StructureShape.new(name: 'UpdatePoolRequest')
    UpdatePoolResult = Shapes::StructureShape.new(name: 'UpdatePoolResult')
    UpdateProtectConfigurationCountryRuleSetRequest = Shapes::StructureShape.new(name: 'UpdateProtectConfigurationCountryRuleSetRequest')
    UpdateProtectConfigurationCountryRuleSetResult = Shapes::StructureShape.new(name: 'UpdateProtectConfigurationCountryRuleSetResult')
    UpdateProtectConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateProtectConfigurationRequest')
    UpdateProtectConfigurationResult = Shapes::StructureShape.new(name: 'UpdateProtectConfigurationResult')
    UpdateSenderIdRequest = Shapes::StructureShape.new(name: 'UpdateSenderIdRequest')
    UpdateSenderIdResult = Shapes::StructureShape.new(name: 'UpdateSenderIdResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VerificationChannel = Shapes::StringShape.new(name: 'VerificationChannel')
    VerificationCode = Shapes::StringShape.new(name: 'VerificationCode')
    VerificationMessageOriginationIdentity = Shapes::StringShape.new(name: 'VerificationMessageOriginationIdentity')
    VerificationStatus = Shapes::StringShape.new(name: 'VerificationStatus')
    VerifiedDestinationNumberFilter = Shapes::StructureShape.new(name: 'VerifiedDestinationNumberFilter')
    VerifiedDestinationNumberFilterList = Shapes::ListShape.new(name: 'VerifiedDestinationNumberFilterList')
    VerifiedDestinationNumberFilterName = Shapes::StringShape.new(name: 'VerifiedDestinationNumberFilterName')
    VerifiedDestinationNumberIdList = Shapes::ListShape.new(name: 'VerifiedDestinationNumberIdList')
    VerifiedDestinationNumberIdOrArn = Shapes::StringShape.new(name: 'VerifiedDestinationNumberIdOrArn')
    VerifiedDestinationNumberInformation = Shapes::StructureShape.new(name: 'VerifiedDestinationNumberInformation')
    VerifiedDestinationNumberInformationList = Shapes::ListShape.new(name: 'VerifiedDestinationNumberInformationList')
    VerifyDestinationNumberRequest = Shapes::StructureShape.new(name: 'VerifyDestinationNumberRequest')
    VerifyDestinationNumberResult = Shapes::StructureShape.new(name: 'VerifyDestinationNumberResult')
    VoiceId = Shapes::StringShape.new(name: 'VoiceId')
    VoiceMessageBody = Shapes::StringShape.new(name: 'VoiceMessageBody')
    VoiceMessageBodyTextType = Shapes::StringShape.new(name: 'VoiceMessageBodyTextType')
    VoiceMessageOriginationIdentity = Shapes::StringShape.new(name: 'VoiceMessageOriginationIdentity')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountAttribute.add_member(:name, Shapes::ShapeRef.new(shape: AccountAttributeName, required: true, location_name: "Name"))
    AccountAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    AccountAttribute.struct_class = Types::AccountAttribute

    AccountAttributeList.member = Shapes::ShapeRef.new(shape: AccountAttribute)

    AccountLimit.add_member(:name, Shapes::ShapeRef.new(shape: AccountLimitName, required: true, location_name: "Name"))
    AccountLimit.add_member(:used, Shapes::ShapeRef.new(shape: PrimitiveLong, required: true, location_name: "Used"))
    AccountLimit.add_member(:max, Shapes::ShapeRef.new(shape: PrimitiveLong, required: true, location_name: "Max"))
    AccountLimit.struct_class = Types::AccountLimit

    AccountLimitList.member = Shapes::ShapeRef.new(shape: AccountLimit)

    AssociateOriginationIdentityRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    AssociateOriginationIdentityRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, required: true, location_name: "OriginationIdentity"))
    AssociateOriginationIdentityRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    AssociateOriginationIdentityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    AssociateOriginationIdentityRequest.struct_class = Types::AssociateOriginationIdentityRequest

    AssociateOriginationIdentityResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    AssociateOriginationIdentityResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    AssociateOriginationIdentityResult.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentityArn"))
    AssociateOriginationIdentityResult.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentity"))
    AssociateOriginationIdentityResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    AssociateOriginationIdentityResult.struct_class = Types::AssociateOriginationIdentityResult

    AssociateProtectConfigurationRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    AssociateProtectConfigurationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    AssociateProtectConfigurationRequest.struct_class = Types::AssociateProtectConfigurationRequest

    AssociateProtectConfigurationResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConfigurationSetArn"))
    AssociateProtectConfigurationResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location_name: "ConfigurationSetName"))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    AssociateProtectConfigurationResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    AssociateProtectConfigurationResult.struct_class = Types::AssociateProtectConfigurationResult

    CloudWatchLogsDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "IamRoleArn"))
    CloudWatchLogsDestination.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "LogGroupArn"))
    CloudWatchLogsDestination.struct_class = Types::CloudWatchLogsDestination

    ConfigurationSetFilter.add_member(:name, Shapes::ShapeRef.new(shape: ConfigurationSetFilterName, required: true, location_name: "Name"))
    ConfigurationSetFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    ConfigurationSetFilter.struct_class = Types::ConfigurationSetFilter

    ConfigurationSetFilterList.member = Shapes::ShapeRef.new(shape: ConfigurationSetFilter)

    ConfigurationSetInformation.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConfigurationSetArn"))
    ConfigurationSetInformation.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location_name: "ConfigurationSetName"))
    ConfigurationSetInformation.add_member(:event_destinations, Shapes::ShapeRef.new(shape: EventDestinationList, required: true, location_name: "EventDestinations"))
    ConfigurationSetInformation.add_member(:default_message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "DefaultMessageType"))
    ConfigurationSetInformation.add_member(:default_sender_id, Shapes::ShapeRef.new(shape: SenderId, location_name: "DefaultSenderId"))
    ConfigurationSetInformation.add_member(:default_message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultMessageFeedbackEnabled"))
    ConfigurationSetInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    ConfigurationSetInformation.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: "ProtectConfigurationId"))
    ConfigurationSetInformation.struct_class = Types::ConfigurationSetInformation

    ConfigurationSetInformationList.member = Shapes::ShapeRef.new(shape: ConfigurationSetInformation)

    ConfigurationSetNameList.member = Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "Reason"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.struct_class = Types::ConflictException

    ContextMap.key = Shapes::ShapeRef.new(shape: ContextKey)
    ContextMap.value = Shapes::ShapeRef.new(shape: ContextValue)

    CreateConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location_name: "ConfigurationSetName"))
    CreateConfigurationSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConfigurationSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateConfigurationSetRequest.struct_class = Types::CreateConfigurationSetRequest

    CreateConfigurationSetResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    CreateConfigurationSetResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    CreateConfigurationSetResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConfigurationSetResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    CreateConfigurationSetResult.struct_class = Types::CreateConfigurationSetResult

    CreateEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    CreateEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    CreateEventDestinationRequest.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypeList, required: true, location_name: "MatchingEventTypes"))
    CreateEventDestinationRequest.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    CreateEventDestinationRequest.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    CreateEventDestinationRequest.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    CreateEventDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEventDestinationRequest.struct_class = Types::CreateEventDestinationRequest

    CreateEventDestinationResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    CreateEventDestinationResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    CreateEventDestinationResult.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestination, location_name: "EventDestination"))
    CreateEventDestinationResult.struct_class = Types::CreateEventDestinationResult

    CreateOptOutListRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, required: true, location_name: "OptOutListName"))
    CreateOptOutListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOptOutListRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateOptOutListRequest.struct_class = Types::CreateOptOutListRequest

    CreateOptOutListResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    CreateOptOutListResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    CreateOptOutListResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOptOutListResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    CreateOptOutListResult.struct_class = Types::CreateOptOutListResult

    CreatePoolRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, required: true, location_name: "OriginationIdentity"))
    CreatePoolRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    CreatePoolRequest.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    CreatePoolRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    CreatePoolRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePoolRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreatePoolRequest.struct_class = Types::CreatePoolRequest

    CreatePoolResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    CreatePoolResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    CreatePoolResult.add_member(:status, Shapes::ShapeRef.new(shape: PoolStatus, location_name: "Status"))
    CreatePoolResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    CreatePoolResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    CreatePoolResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    CreatePoolResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    CreatePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    CreatePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    CreatePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    CreatePoolResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    CreatePoolResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    CreatePoolResult.struct_class = Types::CreatePoolResult

    CreateProtectConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateProtectConfigurationRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    CreateProtectConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProtectConfigurationRequest.struct_class = Types::CreateProtectConfigurationRequest

    CreateProtectConfigurationResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    CreateProtectConfigurationResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    CreateProtectConfigurationResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    CreateProtectConfigurationResult.add_member(:account_default, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "AccountDefault"))
    CreateProtectConfigurationResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    CreateProtectConfigurationResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProtectConfigurationResult.struct_class = Types::CreateProtectConfigurationResult

    CreateRegistrationAssociationRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    CreateRegistrationAssociationRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdOrArn, required: true, location_name: "ResourceId"))
    CreateRegistrationAssociationRequest.struct_class = Types::CreateRegistrationAssociationRequest

    CreateRegistrationAssociationResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    CreateRegistrationAssociationResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    CreateRegistrationAssociationResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    CreateRegistrationAssociationResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    CreateRegistrationAssociationResult.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    CreateRegistrationAssociationResult.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    CreateRegistrationAssociationResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    CreateRegistrationAssociationResult.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    CreateRegistrationAssociationResult.struct_class = Types::CreateRegistrationAssociationResult

    CreateRegistrationAttachmentRequest.add_member(:attachment_body, Shapes::ShapeRef.new(shape: AttachmentBody, location_name: "AttachmentBody"))
    CreateRegistrationAttachmentRequest.add_member(:attachment_url, Shapes::ShapeRef.new(shape: AttachmentUrl, location_name: "AttachmentUrl"))
    CreateRegistrationAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRegistrationAttachmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRegistrationAttachmentRequest.struct_class = Types::CreateRegistrationAttachmentRequest

    CreateRegistrationAttachmentResult.add_member(:registration_attachment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentArn"))
    CreateRegistrationAttachmentResult.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentId"))
    CreateRegistrationAttachmentResult.add_member(:attachment_status, Shapes::ShapeRef.new(shape: AttachmentStatus, required: true, location_name: "AttachmentStatus"))
    CreateRegistrationAttachmentResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRegistrationAttachmentResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    CreateRegistrationAttachmentResult.struct_class = Types::CreateRegistrationAttachmentResult

    CreateRegistrationRequest.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    CreateRegistrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRegistrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRegistrationRequest.struct_class = Types::CreateRegistrationRequest

    CreateRegistrationResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    CreateRegistrationResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    CreateRegistrationResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    CreateRegistrationResult.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "RegistrationStatus"))
    CreateRegistrationResult.add_member(:current_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "CurrentVersionNumber"))
    CreateRegistrationResult.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "AdditionalAttributes"))
    CreateRegistrationResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRegistrationResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    CreateRegistrationResult.struct_class = Types::CreateRegistrationResult

    CreateRegistrationVersionRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    CreateRegistrationVersionRequest.struct_class = Types::CreateRegistrationVersionRequest

    CreateRegistrationVersionResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    CreateRegistrationVersionResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    CreateRegistrationVersionResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    CreateRegistrationVersionResult.add_member(:registration_version_status, Shapes::ShapeRef.new(shape: RegistrationVersionStatus, required: true, location_name: "RegistrationVersionStatus"))
    CreateRegistrationVersionResult.add_member(:registration_version_status_history, Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, required: true, location_name: "RegistrationVersionStatusHistory"))
    CreateRegistrationVersionResult.struct_class = Types::CreateRegistrationVersionResult

    CreateVerifiedDestinationNumberRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    CreateVerifiedDestinationNumberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVerifiedDestinationNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateVerifiedDestinationNumberRequest.struct_class = Types::CreateVerifiedDestinationNumberRequest

    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberArn"))
    CreateVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberId"))
    CreateVerifiedDestinationNumberResult.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    CreateVerifiedDestinationNumberResult.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "Status"))
    CreateVerifiedDestinationNumberResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVerifiedDestinationNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    CreateVerifiedDestinationNumberResult.struct_class = Types::CreateVerifiedDestinationNumberResult

    DeleteAccountDefaultProtectConfigurationRequest.struct_class = Types::DeleteAccountDefaultProtectConfigurationRequest

    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "DefaultProtectConfigurationArn"))
    DeleteAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "DefaultProtectConfigurationId"))
    DeleteAccountDefaultProtectConfigurationResult.struct_class = Types::DeleteAccountDefaultProtectConfigurationResult

    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DeleteConfigurationSetRequest.struct_class = Types::DeleteConfigurationSetRequest

    DeleteConfigurationSetResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    DeleteConfigurationSetResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    DeleteConfigurationSetResult.add_member(:event_destinations, Shapes::ShapeRef.new(shape: EventDestinationList, location_name: "EventDestinations"))
    DeleteConfigurationSetResult.add_member(:default_message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "DefaultMessageType"))
    DeleteConfigurationSetResult.add_member(:default_sender_id, Shapes::ShapeRef.new(shape: SenderId, location_name: "DefaultSenderId"))
    DeleteConfigurationSetResult.add_member(:default_message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultMessageFeedbackEnabled"))
    DeleteConfigurationSetResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    DeleteConfigurationSetResult.struct_class = Types::DeleteConfigurationSetResult

    DeleteDefaultMessageTypeRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DeleteDefaultMessageTypeRequest.struct_class = Types::DeleteDefaultMessageTypeRequest

    DeleteDefaultMessageTypeResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    DeleteDefaultMessageTypeResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    DeleteDefaultMessageTypeResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    DeleteDefaultMessageTypeResult.struct_class = Types::DeleteDefaultMessageTypeResult

    DeleteDefaultSenderIdRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DeleteDefaultSenderIdRequest.struct_class = Types::DeleteDefaultSenderIdRequest

    DeleteDefaultSenderIdResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    DeleteDefaultSenderIdResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    DeleteDefaultSenderIdResult.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, location_name: "SenderId"))
    DeleteDefaultSenderIdResult.struct_class = Types::DeleteDefaultSenderIdResult

    DeleteEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DeleteEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    DeleteEventDestinationRequest.struct_class = Types::DeleteEventDestinationRequest

    DeleteEventDestinationResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    DeleteEventDestinationResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    DeleteEventDestinationResult.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestination, location_name: "EventDestination"))
    DeleteEventDestinationResult.struct_class = Types::DeleteEventDestinationResult

    DeleteKeywordRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, required: true, location_name: "OriginationIdentity"))
    DeleteKeywordRequest.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, required: true, location_name: "Keyword"))
    DeleteKeywordRequest.struct_class = Types::DeleteKeywordRequest

    DeleteKeywordResult.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentityArn"))
    DeleteKeywordResult.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentity"))
    DeleteKeywordResult.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, location_name: "Keyword"))
    DeleteKeywordResult.add_member(:keyword_message, Shapes::ShapeRef.new(shape: KeywordMessage, location_name: "KeywordMessage"))
    DeleteKeywordResult.add_member(:keyword_action, Shapes::ShapeRef.new(shape: KeywordAction, location_name: "KeywordAction"))
    DeleteKeywordResult.struct_class = Types::DeleteKeywordResult

    DeleteMediaMessageSpendLimitOverrideRequest.struct_class = Types::DeleteMediaMessageSpendLimitOverrideRequest

    DeleteMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    DeleteMediaMessageSpendLimitOverrideResult.struct_class = Types::DeleteMediaMessageSpendLimitOverrideResult

    DeleteOptOutListRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, required: true, location_name: "OptOutListName"))
    DeleteOptOutListRequest.struct_class = Types::DeleteOptOutListRequest

    DeleteOptOutListResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    DeleteOptOutListResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    DeleteOptOutListResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    DeleteOptOutListResult.struct_class = Types::DeleteOptOutListResult

    DeleteOptedOutNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, required: true, location_name: "OptOutListName"))
    DeleteOptedOutNumberRequest.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "OptedOutNumber"))
    DeleteOptedOutNumberRequest.struct_class = Types::DeleteOptedOutNumberRequest

    DeleteOptedOutNumberResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    DeleteOptedOutNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    DeleteOptedOutNumberResult.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "OptedOutNumber"))
    DeleteOptedOutNumberResult.add_member(:opted_out_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "OptedOutTimestamp"))
    DeleteOptedOutNumberResult.add_member(:end_user_opted_out, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "EndUserOptedOut"))
    DeleteOptedOutNumberResult.struct_class = Types::DeleteOptedOutNumberResult

    DeletePoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    DeletePoolRequest.struct_class = Types::DeletePoolRequest

    DeletePoolResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    DeletePoolResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    DeletePoolResult.add_member(:status, Shapes::ShapeRef.new(shape: PoolStatus, location_name: "Status"))
    DeletePoolResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    DeletePoolResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    DeletePoolResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    DeletePoolResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    DeletePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    DeletePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    DeletePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    DeletePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    DeletePoolResult.struct_class = Types::DeletePoolResult

    DeleteProtectConfigurationRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    DeleteProtectConfigurationRequest.struct_class = Types::DeleteProtectConfigurationRequest

    DeleteProtectConfigurationResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    DeleteProtectConfigurationResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    DeleteProtectConfigurationResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    DeleteProtectConfigurationResult.add_member(:account_default, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "AccountDefault"))
    DeleteProtectConfigurationResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    DeleteProtectConfigurationResult.struct_class = Types::DeleteProtectConfigurationResult

    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    DeleteProtectConfigurationRuleSetNumberOverrideRequest.struct_class = Types::DeleteProtectConfigurationRuleSetNumberOverrideRequest

    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, required: true, location_name: "Action"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTimestamp"))
    DeleteProtectConfigurationRuleSetNumberOverrideResult.struct_class = Types::DeleteProtectConfigurationRuleSetNumberOverrideResult

    DeleteRegistrationAttachmentRequest.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, required: true, location_name: "RegistrationAttachmentId"))
    DeleteRegistrationAttachmentRequest.struct_class = Types::DeleteRegistrationAttachmentRequest

    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentArn"))
    DeleteRegistrationAttachmentResult.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentId"))
    DeleteRegistrationAttachmentResult.add_member(:attachment_status, Shapes::ShapeRef.new(shape: AttachmentStatus, required: true, location_name: "AttachmentStatus"))
    DeleteRegistrationAttachmentResult.add_member(:attachment_upload_error_reason, Shapes::ShapeRef.new(shape: AttachmentUploadErrorReason, location_name: "AttachmentUploadErrorReason"))
    DeleteRegistrationAttachmentResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    DeleteRegistrationAttachmentResult.struct_class = Types::DeleteRegistrationAttachmentResult

    DeleteRegistrationFieldValueRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    DeleteRegistrationFieldValueRequest.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    DeleteRegistrationFieldValueRequest.struct_class = Types::DeleteRegistrationFieldValueRequest

    DeleteRegistrationFieldValueResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    DeleteRegistrationFieldValueResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    DeleteRegistrationFieldValueResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    DeleteRegistrationFieldValueResult.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    DeleteRegistrationFieldValueResult.add_member(:select_choices, Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: "SelectChoices"))
    DeleteRegistrationFieldValueResult.add_member(:text_value, Shapes::ShapeRef.new(shape: TextValue, location_name: "TextValue"))
    DeleteRegistrationFieldValueResult.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationAttachmentId"))
    DeleteRegistrationFieldValueResult.struct_class = Types::DeleteRegistrationFieldValueResult

    DeleteRegistrationRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    DeleteRegistrationRequest.struct_class = Types::DeleteRegistrationRequest

    DeleteRegistrationResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    DeleteRegistrationResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    DeleteRegistrationResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    DeleteRegistrationResult.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "RegistrationStatus"))
    DeleteRegistrationResult.add_member(:current_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "CurrentVersionNumber"))
    DeleteRegistrationResult.add_member(:approved_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: "ApprovedVersionNumber"))
    DeleteRegistrationResult.add_member(:latest_denied_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: "LatestDeniedVersionNumber"))
    DeleteRegistrationResult.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "AdditionalAttributes"))
    DeleteRegistrationResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    DeleteRegistrationResult.struct_class = Types::DeleteRegistrationResult

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    DeleteResourcePolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    DeleteResourcePolicyResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    DeleteResourcePolicyResult.struct_class = Types::DeleteResourcePolicyResult

    DeleteTextMessageSpendLimitOverrideRequest.struct_class = Types::DeleteTextMessageSpendLimitOverrideRequest

    DeleteTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    DeleteTextMessageSpendLimitOverrideResult.struct_class = Types::DeleteTextMessageSpendLimitOverrideResult

    DeleteVerifiedDestinationNumberRequest.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, required: true, location_name: "VerifiedDestinationNumberId"))
    DeleteVerifiedDestinationNumberRequest.struct_class = Types::DeleteVerifiedDestinationNumberRequest

    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberArn"))
    DeleteVerifiedDestinationNumberResult.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberId"))
    DeleteVerifiedDestinationNumberResult.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    DeleteVerifiedDestinationNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    DeleteVerifiedDestinationNumberResult.struct_class = Types::DeleteVerifiedDestinationNumberResult

    DeleteVoiceMessageSpendLimitOverrideRequest.struct_class = Types::DeleteVoiceMessageSpendLimitOverrideRequest

    DeleteVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    DeleteVoiceMessageSpendLimitOverrideResult.struct_class = Types::DeleteVoiceMessageSpendLimitOverrideResult

    DescribeAccountAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeAccountAttributesRequest.struct_class = Types::DescribeAccountAttributesRequest

    DescribeAccountAttributesResult.add_member(:account_attributes, Shapes::ShapeRef.new(shape: AccountAttributeList, location_name: "AccountAttributes"))
    DescribeAccountAttributesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountAttributesResult.struct_class = Types::DescribeAccountAttributesResult

    DescribeAccountLimitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeAccountLimitsRequest.struct_class = Types::DescribeAccountLimitsRequest

    DescribeAccountLimitsResult.add_member(:account_limits, Shapes::ShapeRef.new(shape: AccountLimitList, location_name: "AccountLimits"))
    DescribeAccountLimitsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAccountLimitsResult.struct_class = Types::DescribeAccountLimitsResult

    DescribeConfigurationSetsRequest.add_member(:configuration_set_names, Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: "ConfigurationSetNames"))
    DescribeConfigurationSetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ConfigurationSetFilterList, location_name: "Filters"))
    DescribeConfigurationSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConfigurationSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeConfigurationSetsRequest.struct_class = Types::DescribeConfigurationSetsRequest

    DescribeConfigurationSetsResult.add_member(:configuration_sets, Shapes::ShapeRef.new(shape: ConfigurationSetInformationList, location_name: "ConfigurationSets"))
    DescribeConfigurationSetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConfigurationSetsResult.struct_class = Types::DescribeConfigurationSetsResult

    DescribeKeywordsRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, required: true, location_name: "OriginationIdentity"))
    DescribeKeywordsRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: KeywordList, location_name: "Keywords"))
    DescribeKeywordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: KeywordFilterList, location_name: "Filters"))
    DescribeKeywordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeKeywordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeKeywordsRequest.struct_class = Types::DescribeKeywordsRequest

    DescribeKeywordsResult.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentityArn"))
    DescribeKeywordsResult.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentity"))
    DescribeKeywordsResult.add_member(:keywords, Shapes::ShapeRef.new(shape: KeywordInformationList, location_name: "Keywords"))
    DescribeKeywordsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeKeywordsResult.struct_class = Types::DescribeKeywordsResult

    DescribeOptOutListsRequest.add_member(:opt_out_list_names, Shapes::ShapeRef.new(shape: OptOutListNameList, location_name: "OptOutListNames"))
    DescribeOptOutListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOptOutListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeOptOutListsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    DescribeOptOutListsRequest.struct_class = Types::DescribeOptOutListsRequest

    DescribeOptOutListsResult.add_member(:opt_out_lists, Shapes::ShapeRef.new(shape: OptOutListInformationList, location_name: "OptOutLists"))
    DescribeOptOutListsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOptOutListsResult.struct_class = Types::DescribeOptOutListsResult

    DescribeOptedOutNumbersRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, required: true, location_name: "OptOutListName"))
    DescribeOptedOutNumbersRequest.add_member(:opted_out_numbers, Shapes::ShapeRef.new(shape: OptedOutNumberList, location_name: "OptedOutNumbers"))
    DescribeOptedOutNumbersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OptedOutFilterList, location_name: "Filters"))
    DescribeOptedOutNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOptedOutNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeOptedOutNumbersRequest.struct_class = Types::DescribeOptedOutNumbersRequest

    DescribeOptedOutNumbersResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    DescribeOptedOutNumbersResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    DescribeOptedOutNumbersResult.add_member(:opted_out_numbers, Shapes::ShapeRef.new(shape: OptedOutNumberInformationList, location_name: "OptedOutNumbers"))
    DescribeOptedOutNumbersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOptedOutNumbersResult.struct_class = Types::DescribeOptedOutNumbersResult

    DescribePhoneNumbersRequest.add_member(:phone_number_ids, Shapes::ShapeRef.new(shape: PhoneNumberIdList, location_name: "PhoneNumberIds"))
    DescribePhoneNumbersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PhoneNumberFilterList, location_name: "Filters"))
    DescribePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribePhoneNumbersRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    DescribePhoneNumbersRequest.struct_class = Types::DescribePhoneNumbersRequest

    DescribePhoneNumbersResult.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberInformationList, location_name: "PhoneNumbers"))
    DescribePhoneNumbersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePhoneNumbersResult.struct_class = Types::DescribePhoneNumbersResult

    DescribePoolsRequest.add_member(:pool_ids, Shapes::ShapeRef.new(shape: PoolIdList, location_name: "PoolIds"))
    DescribePoolsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PoolFilterList, location_name: "Filters"))
    DescribePoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePoolsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribePoolsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    DescribePoolsRequest.struct_class = Types::DescribePoolsRequest

    DescribePoolsResult.add_member(:pools, Shapes::ShapeRef.new(shape: PoolInformationList, location_name: "Pools"))
    DescribePoolsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePoolsResult.struct_class = Types::DescribePoolsResult

    DescribeProtectConfigurationsRequest.add_member(:protect_configuration_ids, Shapes::ShapeRef.new(shape: ProtectConfigurationIdList, location_name: "ProtectConfigurationIds"))
    DescribeProtectConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ProtectConfigurationFilterList, location_name: "Filters"))
    DescribeProtectConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeProtectConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeProtectConfigurationsRequest.struct_class = Types::DescribeProtectConfigurationsRequest

    DescribeProtectConfigurationsResult.add_member(:protect_configurations, Shapes::ShapeRef.new(shape: ProtectConfigurationInformationList, location_name: "ProtectConfigurations"))
    DescribeProtectConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeProtectConfigurationsResult.struct_class = Types::DescribeProtectConfigurationsResult

    DescribeRegistrationAttachmentsRequest.add_member(:registration_attachment_ids, Shapes::ShapeRef.new(shape: RegistrationAttachmentIdList, location_name: "RegistrationAttachmentIds"))
    DescribeRegistrationAttachmentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistrationAttachmentFilterList, location_name: "Filters"))
    DescribeRegistrationAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationAttachmentsRequest.struct_class = Types::DescribeRegistrationAttachmentsRequest

    DescribeRegistrationAttachmentsResult.add_member(:registration_attachments, Shapes::ShapeRef.new(shape: RegistrationAttachmentsInformationList, required: true, location_name: "RegistrationAttachments"))
    DescribeRegistrationAttachmentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationAttachmentsResult.struct_class = Types::DescribeRegistrationAttachmentsResult

    DescribeRegistrationFieldDefinitionsRequest.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:section_path, Shapes::ShapeRef.new(shape: SectionPath, location_name: "SectionPath"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:field_paths, Shapes::ShapeRef.new(shape: FieldPathList, location_name: "FieldPaths"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationFieldDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationFieldDefinitionsRequest.struct_class = Types::DescribeRegistrationFieldDefinitionsRequest

    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    DescribeRegistrationFieldDefinitionsResult.add_member(:registration_field_definitions, Shapes::ShapeRef.new(shape: RegistrationFieldDefinitionList, required: true, location_name: "RegistrationFieldDefinitions"))
    DescribeRegistrationFieldDefinitionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationFieldDefinitionsResult.struct_class = Types::DescribeRegistrationFieldDefinitionsResult

    DescribeRegistrationFieldValuesRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    DescribeRegistrationFieldValuesRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: "VersionNumber"))
    DescribeRegistrationFieldValuesRequest.add_member(:section_path, Shapes::ShapeRef.new(shape: SectionPath, location_name: "SectionPath"))
    DescribeRegistrationFieldValuesRequest.add_member(:field_paths, Shapes::ShapeRef.new(shape: FieldPathList, location_name: "FieldPaths"))
    DescribeRegistrationFieldValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationFieldValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationFieldValuesRequest.struct_class = Types::DescribeRegistrationFieldValuesRequest

    DescribeRegistrationFieldValuesResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    DescribeRegistrationFieldValuesResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    DescribeRegistrationFieldValuesResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    DescribeRegistrationFieldValuesResult.add_member(:registration_field_values, Shapes::ShapeRef.new(shape: RegistrationFieldValueInformationList, required: true, location_name: "RegistrationFieldValues"))
    DescribeRegistrationFieldValuesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationFieldValuesResult.struct_class = Types::DescribeRegistrationFieldValuesResult

    DescribeRegistrationSectionDefinitionsRequest.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:section_paths, Shapes::ShapeRef.new(shape: SectionPathList, location_name: "SectionPaths"))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationSectionDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationSectionDefinitionsRequest.struct_class = Types::DescribeRegistrationSectionDefinitionsRequest

    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    DescribeRegistrationSectionDefinitionsResult.add_member(:registration_section_definitions, Shapes::ShapeRef.new(shape: RegistrationSectionDefinitionList, required: true, location_name: "RegistrationSectionDefinitions"))
    DescribeRegistrationSectionDefinitionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationSectionDefinitionsResult.struct_class = Types::DescribeRegistrationSectionDefinitionsResult

    DescribeRegistrationTypeDefinitionsRequest.add_member(:registration_types, Shapes::ShapeRef.new(shape: RegistrationTypeList, location_name: "RegistrationTypes"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistrationTypeFilterList, location_name: "Filters"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationTypeDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationTypeDefinitionsRequest.struct_class = Types::DescribeRegistrationTypeDefinitionsRequest

    DescribeRegistrationTypeDefinitionsResult.add_member(:registration_type_definitions, Shapes::ShapeRef.new(shape: RegistrationTypeDefinitionList, required: true, location_name: "RegistrationTypeDefinitions"))
    DescribeRegistrationTypeDefinitionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationTypeDefinitionsResult.struct_class = Types::DescribeRegistrationTypeDefinitionsResult

    DescribeRegistrationVersionsRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    DescribeRegistrationVersionsRequest.add_member(:version_numbers, Shapes::ShapeRef.new(shape: RegistrationVersionNumberList, location_name: "VersionNumbers"))
    DescribeRegistrationVersionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistrationVersionFilterList, location_name: "Filters"))
    DescribeRegistrationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationVersionsRequest.struct_class = Types::DescribeRegistrationVersionsRequest

    DescribeRegistrationVersionsResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    DescribeRegistrationVersionsResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    DescribeRegistrationVersionsResult.add_member(:registration_versions, Shapes::ShapeRef.new(shape: RegistrationVersionInformationList, required: true, location_name: "RegistrationVersions"))
    DescribeRegistrationVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationVersionsResult.struct_class = Types::DescribeRegistrationVersionsResult

    DescribeRegistrationsRequest.add_member(:registration_ids, Shapes::ShapeRef.new(shape: RegistrationIdList, location_name: "RegistrationIds"))
    DescribeRegistrationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistrationFilterList, location_name: "Filters"))
    DescribeRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeRegistrationsRequest.struct_class = Types::DescribeRegistrationsRequest

    DescribeRegistrationsResult.add_member(:registrations, Shapes::ShapeRef.new(shape: RegistrationInformationList, required: true, location_name: "Registrations"))
    DescribeRegistrationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRegistrationsResult.struct_class = Types::DescribeRegistrationsResult

    DescribeSenderIdsRequest.add_member(:sender_ids, Shapes::ShapeRef.new(shape: SenderIdList, location_name: "SenderIds"))
    DescribeSenderIdsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SenderIdFilterList, location_name: "Filters"))
    DescribeSenderIdsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSenderIdsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSenderIdsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    DescribeSenderIdsRequest.struct_class = Types::DescribeSenderIdsRequest

    DescribeSenderIdsResult.add_member(:sender_ids, Shapes::ShapeRef.new(shape: SenderIdInformationList, location_name: "SenderIds"))
    DescribeSenderIdsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSenderIdsResult.struct_class = Types::DescribeSenderIdsResult

    DescribeSpendLimitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSpendLimitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSpendLimitsRequest.struct_class = Types::DescribeSpendLimitsRequest

    DescribeSpendLimitsResult.add_member(:spend_limits, Shapes::ShapeRef.new(shape: SpendLimitList, location_name: "SpendLimits"))
    DescribeSpendLimitsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSpendLimitsResult.struct_class = Types::DescribeSpendLimitsResult

    DescribeVerifiedDestinationNumbersRequest.add_member(:verified_destination_number_ids, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdList, location_name: "VerifiedDestinationNumberIds"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:destination_phone_numbers, Shapes::ShapeRef.new(shape: DestinationPhoneNumberList, location_name: "DestinationPhoneNumbers"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilterList, location_name: "Filters"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeVerifiedDestinationNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeVerifiedDestinationNumbersRequest.struct_class = Types::DescribeVerifiedDestinationNumbersRequest

    DescribeVerifiedDestinationNumbersResult.add_member(:verified_destination_numbers, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberInformationList, required: true, location_name: "VerifiedDestinationNumbers"))
    DescribeVerifiedDestinationNumbersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeVerifiedDestinationNumbersResult.struct_class = Types::DescribeVerifiedDestinationNumbersResult

    DestinationCountryParameters.key = Shapes::ShapeRef.new(shape: DestinationCountryParameterKey)
    DestinationCountryParameters.value = Shapes::ShapeRef.new(shape: DestinationCountryParameterValue)

    DestinationPhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    DisassociateOriginationIdentityRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    DisassociateOriginationIdentityRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrSenderIdOrArn, required: true, location_name: "OriginationIdentity"))
    DisassociateOriginationIdentityRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    DisassociateOriginationIdentityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DisassociateOriginationIdentityRequest.struct_class = Types::DisassociateOriginationIdentityRequest

    DisassociateOriginationIdentityResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    DisassociateOriginationIdentityResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    DisassociateOriginationIdentityResult.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentityArn"))
    DisassociateOriginationIdentityResult.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentity"))
    DisassociateOriginationIdentityResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    DisassociateOriginationIdentityResult.struct_class = Types::DisassociateOriginationIdentityResult

    DisassociateProtectConfigurationRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    DisassociateProtectConfigurationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DisassociateProtectConfigurationRequest.struct_class = Types::DisassociateProtectConfigurationRequest

    DisassociateProtectConfigurationResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConfigurationSetArn"))
    DisassociateProtectConfigurationResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location_name: "ConfigurationSetName"))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    DisassociateProtectConfigurationResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    DisassociateProtectConfigurationResult.struct_class = Types::DisassociateProtectConfigurationResult

    DiscardRegistrationVersionRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    DiscardRegistrationVersionRequest.struct_class = Types::DiscardRegistrationVersionRequest

    DiscardRegistrationVersionResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    DiscardRegistrationVersionResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    DiscardRegistrationVersionResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    DiscardRegistrationVersionResult.add_member(:registration_version_status, Shapes::ShapeRef.new(shape: RegistrationVersionStatus, required: true, location_name: "RegistrationVersionStatus"))
    DiscardRegistrationVersionResult.add_member(:registration_version_status_history, Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, required: true, location_name: "RegistrationVersionStatusHistory"))
    DiscardRegistrationVersionResult.struct_class = Types::DiscardRegistrationVersionResult

    EventDestination.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    EventDestination.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    EventDestination.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypeList, required: true, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.struct_class = Types::EventDestination

    EventDestinationList.member = Shapes::ShapeRef.new(shape: EventDestination)

    EventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    FieldPathList.member = Shapes::ShapeRef.new(shape: FieldPath)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    GetProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, Shapes::ShapeRef.new(shape: NumberCapability, required: true, location_name: "NumberCapability"))
    GetProtectConfigurationCountryRuleSetRequest.struct_class = Types::GetProtectConfigurationCountryRuleSetRequest

    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    GetProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    GetProtectConfigurationCountryRuleSetResult.add_member(:number_capability, Shapes::ShapeRef.new(shape: NumberCapability, required: true, location_name: "NumberCapability"))
    GetProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, required: true, location_name: "CountryRuleSet"))
    GetProtectConfigurationCountryRuleSetResult.struct_class = Types::GetProtectConfigurationCountryRuleSetResult

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    GetResourcePolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    GetResourcePolicyResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetResourcePolicyResult.struct_class = Types::GetResourcePolicyResult

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InternalServerException.struct_class = Types::InternalServerException

    KeywordFilter.add_member(:name, Shapes::ShapeRef.new(shape: KeywordFilterName, required: true, location_name: "Name"))
    KeywordFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    KeywordFilter.struct_class = Types::KeywordFilter

    KeywordFilterList.member = Shapes::ShapeRef.new(shape: KeywordFilter)

    KeywordInformation.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, required: true, location_name: "Keyword"))
    KeywordInformation.add_member(:keyword_message, Shapes::ShapeRef.new(shape: KeywordMessage, required: true, location_name: "KeywordMessage"))
    KeywordInformation.add_member(:keyword_action, Shapes::ShapeRef.new(shape: KeywordAction, required: true, location_name: "KeywordAction"))
    KeywordInformation.struct_class = Types::KeywordInformation

    KeywordInformationList.member = Shapes::ShapeRef.new(shape: KeywordInformation)

    KeywordList.member = Shapes::ShapeRef.new(shape: Keyword)

    KinesisFirehoseDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "IamRoleArn"))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamArn, required: true, location_name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.struct_class = Types::KinesisFirehoseDestination

    ListPoolOriginationIdentitiesRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    ListPoolOriginationIdentitiesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilterList, location_name: "Filters"))
    ListPoolOriginationIdentitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoolOriginationIdentitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPoolOriginationIdentitiesRequest.struct_class = Types::ListPoolOriginationIdentitiesRequest

    ListPoolOriginationIdentitiesResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    ListPoolOriginationIdentitiesResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    ListPoolOriginationIdentitiesResult.add_member(:origination_identities, Shapes::ShapeRef.new(shape: OriginationIdentityMetadataList, location_name: "OriginationIdentities"))
    ListPoolOriginationIdentitiesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPoolOriginationIdentitiesResult.struct_class = Types::ListPoolOriginationIdentitiesResult

    ListProtectConfigurationRuleSetNumberOverrideFilter.member = Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideFilterItem)

    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverrideFilter, location_name: "Filters"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProtectConfigurationRuleSetNumberOverridesRequest.struct_class = Types::ListProtectConfigurationRuleSetNumberOverridesRequest

    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:rule_set_number_overrides, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideList, location_name: "RuleSetNumberOverrides"))
    ListProtectConfigurationRuleSetNumberOverridesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProtectConfigurationRuleSetNumberOverridesResult.struct_class = Types::ListProtectConfigurationRuleSetNumberOverridesResult

    ListRegistrationAssociationsRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    ListRegistrationAssociationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistrationAssociationFilterList, location_name: "Filters"))
    ListRegistrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegistrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRegistrationAssociationsRequest.struct_class = Types::ListRegistrationAssociationsRequest

    ListRegistrationAssociationsResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    ListRegistrationAssociationsResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    ListRegistrationAssociationsResult.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    ListRegistrationAssociationsResult.add_member(:registration_associations, Shapes::ShapeRef.new(shape: RegistrationAssociationMetadataList, required: true, location_name: "RegistrationAssociations"))
    ListRegistrationAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRegistrationAssociationsResult.struct_class = Types::ListRegistrationAssociationsResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    MediaUrlList.member = Shapes::ShapeRef.new(shape: MediaUrlValue)

    MessageTypeList.member = Shapes::ShapeRef.new(shape: MessageType)

    NonEmptyTagList.member = Shapes::ShapeRef.new(shape: Tag)

    NumberCapabilityList.member = Shapes::ShapeRef.new(shape: NumberCapability)

    OptOutListInformation.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptOutListArn"))
    OptOutListInformation.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, required: true, location_name: "OptOutListName"))
    OptOutListInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    OptOutListInformation.struct_class = Types::OptOutListInformation

    OptOutListInformationList.member = Shapes::ShapeRef.new(shape: OptOutListInformation)

    OptOutListNameList.member = Shapes::ShapeRef.new(shape: OptOutListNameOrArn)

    OptedOutFilter.add_member(:name, Shapes::ShapeRef.new(shape: OptedOutFilterName, required: true, location_name: "Name"))
    OptedOutFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    OptedOutFilter.struct_class = Types::OptedOutFilter

    OptedOutFilterList.member = Shapes::ShapeRef.new(shape: OptedOutFilter)

    OptedOutNumberInformation.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "OptedOutNumber"))
    OptedOutNumberInformation.add_member(:opted_out_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "OptedOutTimestamp"))
    OptedOutNumberInformation.add_member(:end_user_opted_out, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "EndUserOptedOut"))
    OptedOutNumberInformation.struct_class = Types::OptedOutNumberInformation

    OptedOutNumberInformationList.member = Shapes::ShapeRef.new(shape: OptedOutNumberInformation)

    OptedOutNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    OriginationIdentityMetadata.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OriginationIdentityArn"))
    OriginationIdentityMetadata.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OriginationIdentity"))
    OriginationIdentityMetadata.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    OriginationIdentityMetadata.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, required: true, location_name: "NumberCapabilities"))
    OriginationIdentityMetadata.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    OriginationIdentityMetadata.struct_class = Types::OriginationIdentityMetadata

    OriginationIdentityMetadataList.member = Shapes::ShapeRef.new(shape: OriginationIdentityMetadata)

    PhoneNumberFilter.add_member(:name, Shapes::ShapeRef.new(shape: PhoneNumberFilterName, required: true, location_name: "Name"))
    PhoneNumberFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    PhoneNumberFilter.struct_class = Types::PhoneNumberFilter

    PhoneNumberFilterList.member = Shapes::ShapeRef.new(shape: PhoneNumberFilter)

    PhoneNumberIdList.member = Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn)

    PhoneNumberInformation.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PhoneNumberArn"))
    PhoneNumberInformation.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    PhoneNumberInformation.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    PhoneNumberInformation.add_member(:status, Shapes::ShapeRef.new(shape: NumberStatus, required: true, location_name: "Status"))
    PhoneNumberInformation.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    PhoneNumberInformation.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    PhoneNumberInformation.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, required: true, location_name: "NumberCapabilities"))
    PhoneNumberInformation.add_member(:number_type, Shapes::ShapeRef.new(shape: NumberType, required: true, location_name: "NumberType"))
    PhoneNumberInformation.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MonthlyLeasingPrice"))
    PhoneNumberInformation.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "TwoWayEnabled"))
    PhoneNumberInformation.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    PhoneNumberInformation.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    PhoneNumberInformation.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "SelfManagedOptOutsEnabled"))
    PhoneNumberInformation.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, required: true, location_name: "OptOutListName"))
    PhoneNumberInformation.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    PhoneNumberInformation.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    PhoneNumberInformation.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    PhoneNumberInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    PhoneNumberInformation.struct_class = Types::PhoneNumberInformation

    PhoneNumberInformationList.member = Shapes::ShapeRef.new(shape: PhoneNumberInformation)

    PoolFilter.add_member(:name, Shapes::ShapeRef.new(shape: PoolFilterName, required: true, location_name: "Name"))
    PoolFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    PoolFilter.struct_class = Types::PoolFilter

    PoolFilterList.member = Shapes::ShapeRef.new(shape: PoolFilter)

    PoolIdList.member = Shapes::ShapeRef.new(shape: PoolIdOrArn)

    PoolInformation.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PoolArn"))
    PoolInformation.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PoolId"))
    PoolInformation.add_member(:status, Shapes::ShapeRef.new(shape: PoolStatus, required: true, location_name: "Status"))
    PoolInformation.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    PoolInformation.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "TwoWayEnabled"))
    PoolInformation.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    PoolInformation.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    PoolInformation.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "SelfManagedOptOutsEnabled"))
    PoolInformation.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, required: true, location_name: "OptOutListName"))
    PoolInformation.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "SharedRoutesEnabled"))
    PoolInformation.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    PoolInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    PoolInformation.struct_class = Types::PoolInformation

    PoolInformationList.member = Shapes::ShapeRef.new(shape: PoolInformation)

    PoolOriginationIdentitiesFilter.add_member(:name, Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilterName, required: true, location_name: "Name"))
    PoolOriginationIdentitiesFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    PoolOriginationIdentitiesFilter.struct_class = Types::PoolOriginationIdentitiesFilter

    PoolOriginationIdentitiesFilterList.member = Shapes::ShapeRef.new(shape: PoolOriginationIdentitiesFilter)

    ProtectConfigurationCountryRuleSet.key = Shapes::ShapeRef.new(shape: IsoCountryCode)
    ProtectConfigurationCountryRuleSet.value = Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSetInformation)

    ProtectConfigurationCountryRuleSetInformation.add_member(:protect_status, Shapes::ShapeRef.new(shape: ProtectStatus, required: true, location_name: "ProtectStatus"))
    ProtectConfigurationCountryRuleSetInformation.struct_class = Types::ProtectConfigurationCountryRuleSetInformation

    ProtectConfigurationFilter.add_member(:name, Shapes::ShapeRef.new(shape: ProtectConfigurationFilterName, required: true, location_name: "Name"))
    ProtectConfigurationFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    ProtectConfigurationFilter.struct_class = Types::ProtectConfigurationFilter

    ProtectConfigurationFilterList.member = Shapes::ShapeRef.new(shape: ProtectConfigurationFilter)

    ProtectConfigurationIdList.member = Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn)

    ProtectConfigurationInformation.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    ProtectConfigurationInformation.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    ProtectConfigurationInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    ProtectConfigurationInformation.add_member(:account_default, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "AccountDefault"))
    ProtectConfigurationInformation.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    ProtectConfigurationInformation.struct_class = Types::ProtectConfigurationInformation

    ProtectConfigurationInformationList.member = Shapes::ShapeRef.new(shape: ProtectConfigurationInformation)

    ProtectConfigurationRuleSetNumberOverride.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:action, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, required: true, location_name: "Action"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    ProtectConfigurationRuleSetNumberOverride.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTimestamp"))
    ProtectConfigurationRuleSetNumberOverride.struct_class = Types::ProtectConfigurationRuleSetNumberOverride

    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:name, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverrideFilterName, required: true, location_name: "Name"))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    ProtectConfigurationRuleSetNumberOverrideFilterItem.struct_class = Types::ProtectConfigurationRuleSetNumberOverrideFilterItem

    ProtectConfigurationRuleSetNumberOverrideList.member = Shapes::ShapeRef.new(shape: ProtectConfigurationRuleSetNumberOverride)

    PutKeywordRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: PhoneOrPoolIdOrArn, required: true, location_name: "OriginationIdentity"))
    PutKeywordRequest.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, required: true, location_name: "Keyword"))
    PutKeywordRequest.add_member(:keyword_message, Shapes::ShapeRef.new(shape: KeywordMessage, required: true, location_name: "KeywordMessage"))
    PutKeywordRequest.add_member(:keyword_action, Shapes::ShapeRef.new(shape: KeywordAction, location_name: "KeywordAction"))
    PutKeywordRequest.struct_class = Types::PutKeywordRequest

    PutKeywordResult.add_member(:origination_identity_arn, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentityArn"))
    PutKeywordResult.add_member(:origination_identity, Shapes::ShapeRef.new(shape: String, location_name: "OriginationIdentity"))
    PutKeywordResult.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, location_name: "Keyword"))
    PutKeywordResult.add_member(:keyword_message, Shapes::ShapeRef.new(shape: KeywordMessage, location_name: "KeywordMessage"))
    PutKeywordResult.add_member(:keyword_action, Shapes::ShapeRef.new(shape: KeywordAction, location_name: "KeywordAction"))
    PutKeywordResult.struct_class = Types::PutKeywordResult

    PutMessageFeedbackRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "MessageId"))
    PutMessageFeedbackRequest.add_member(:message_feedback_status, Shapes::ShapeRef.new(shape: MessageFeedbackStatus, required: true, location_name: "MessageFeedbackStatus"))
    PutMessageFeedbackRequest.struct_class = Types::PutMessageFeedbackRequest

    PutMessageFeedbackResult.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "MessageId"))
    PutMessageFeedbackResult.add_member(:message_feedback_status, Shapes::ShapeRef.new(shape: MessageFeedbackStatus, required: true, location_name: "MessageFeedbackStatus"))
    PutMessageFeedbackResult.struct_class = Types::PutMessageFeedbackResult

    PutOptedOutNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, required: true, location_name: "OptOutListName"))
    PutOptedOutNumberRequest.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "OptedOutNumber"))
    PutOptedOutNumberRequest.struct_class = Types::PutOptedOutNumberRequest

    PutOptedOutNumberResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    PutOptedOutNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    PutOptedOutNumberResult.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "OptedOutNumber"))
    PutOptedOutNumberResult.add_member(:opted_out_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "OptedOutTimestamp"))
    PutOptedOutNumberResult.add_member(:end_user_opted_out, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "EndUserOptedOut"))
    PutOptedOutNumberResult.struct_class = Types::PutOptedOutNumberResult

    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:action, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, required: true, location_name: "Action"))
    PutProtectConfigurationRuleSetNumberOverrideRequest.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTimestamp"))
    PutProtectConfigurationRuleSetNumberOverrideRequest.struct_class = Types::PutProtectConfigurationRuleSetNumberOverrideRequest

    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:action, Shapes::ShapeRef.new(shape: ProtectConfigurationRuleOverrideAction, required: true, location_name: "Action"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    PutProtectConfigurationRuleSetNumberOverrideResult.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTimestamp"))
    PutProtectConfigurationRuleSetNumberOverrideResult.struct_class = Types::PutProtectConfigurationRuleSetNumberOverrideResult

    PutRegistrationFieldValueRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    PutRegistrationFieldValueRequest.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    PutRegistrationFieldValueRequest.add_member(:select_choices, Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: "SelectChoices"))
    PutRegistrationFieldValueRequest.add_member(:text_value, Shapes::ShapeRef.new(shape: TextValue, location_name: "TextValue"))
    PutRegistrationFieldValueRequest.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, location_name: "RegistrationAttachmentId"))
    PutRegistrationFieldValueRequest.struct_class = Types::PutRegistrationFieldValueRequest

    PutRegistrationFieldValueResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    PutRegistrationFieldValueResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    PutRegistrationFieldValueResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    PutRegistrationFieldValueResult.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    PutRegistrationFieldValueResult.add_member(:select_choices, Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: "SelectChoices"))
    PutRegistrationFieldValueResult.add_member(:text_value, Shapes::ShapeRef.new(shape: TextValue, location_name: "TextValue"))
    PutRegistrationFieldValueResult.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationAttachmentId"))
    PutRegistrationFieldValueResult.struct_class = Types::PutRegistrationFieldValueResult

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    PutResourcePolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    PutResourcePolicyResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    PutResourcePolicyResult.struct_class = Types::PutResourcePolicyResult

    RegistrationAssociationFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistrationAssociationFilterName, required: true, location_name: "Name"))
    RegistrationAssociationFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    RegistrationAssociationFilter.struct_class = Types::RegistrationAssociationFilter

    RegistrationAssociationFilterList.member = Shapes::ShapeRef.new(shape: RegistrationAssociationFilter)

    RegistrationAssociationMetadata.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    RegistrationAssociationMetadata.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    RegistrationAssociationMetadata.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    RegistrationAssociationMetadata.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    RegistrationAssociationMetadata.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RegistrationAssociationMetadata.struct_class = Types::RegistrationAssociationMetadata

    RegistrationAssociationMetadataList.member = Shapes::ShapeRef.new(shape: RegistrationAssociationMetadata)

    RegistrationAttachmentFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistrationAttachmentFilterName, required: true, location_name: "Name"))
    RegistrationAttachmentFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    RegistrationAttachmentFilter.struct_class = Types::RegistrationAttachmentFilter

    RegistrationAttachmentFilterList.member = Shapes::ShapeRef.new(shape: RegistrationAttachmentFilter)

    RegistrationAttachmentIdList.member = Shapes::ShapeRef.new(shape: RegistrationIdOrArn)

    RegistrationAttachmentsInformation.add_member(:registration_attachment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentArn"))
    RegistrationAttachmentsInformation.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationAttachmentId"))
    RegistrationAttachmentsInformation.add_member(:attachment_status, Shapes::ShapeRef.new(shape: AttachmentStatus, required: true, location_name: "AttachmentStatus"))
    RegistrationAttachmentsInformation.add_member(:attachment_upload_error_reason, Shapes::ShapeRef.new(shape: AttachmentUploadErrorReason, location_name: "AttachmentUploadErrorReason"))
    RegistrationAttachmentsInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    RegistrationAttachmentsInformation.struct_class = Types::RegistrationAttachmentsInformation

    RegistrationAttachmentsInformationList.member = Shapes::ShapeRef.new(shape: RegistrationAttachmentsInformation)

    RegistrationDeniedReasonInformation.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Reason"))
    RegistrationDeniedReasonInformation.add_member(:short_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ShortDescription"))
    RegistrationDeniedReasonInformation.add_member(:long_description, Shapes::ShapeRef.new(shape: String, location_name: "LongDescription"))
    RegistrationDeniedReasonInformation.add_member(:documentation_title, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationTitle"))
    RegistrationDeniedReasonInformation.add_member(:documentation_link, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationLink"))
    RegistrationDeniedReasonInformation.struct_class = Types::RegistrationDeniedReasonInformation

    RegistrationDeniedReasonInformationList.member = Shapes::ShapeRef.new(shape: RegistrationDeniedReasonInformation)

    RegistrationFieldDefinition.add_member(:section_path, Shapes::ShapeRef.new(shape: SectionPath, required: true, location_name: "SectionPath"))
    RegistrationFieldDefinition.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    RegistrationFieldDefinition.add_member(:field_type, Shapes::ShapeRef.new(shape: FieldType, required: true, location_name: "FieldType"))
    RegistrationFieldDefinition.add_member(:field_requirement, Shapes::ShapeRef.new(shape: FieldRequirement, required: true, location_name: "FieldRequirement"))
    RegistrationFieldDefinition.add_member(:select_validation, Shapes::ShapeRef.new(shape: SelectValidation, location_name: "SelectValidation"))
    RegistrationFieldDefinition.add_member(:text_validation, Shapes::ShapeRef.new(shape: TextValidation, location_name: "TextValidation"))
    RegistrationFieldDefinition.add_member(:display_hints, Shapes::ShapeRef.new(shape: RegistrationFieldDisplayHints, required: true, location_name: "DisplayHints"))
    RegistrationFieldDefinition.struct_class = Types::RegistrationFieldDefinition

    RegistrationFieldDefinitionList.member = Shapes::ShapeRef.new(shape: RegistrationFieldDefinition)

    RegistrationFieldDisplayHints.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Title"))
    RegistrationFieldDisplayHints.add_member(:short_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ShortDescription"))
    RegistrationFieldDisplayHints.add_member(:long_description, Shapes::ShapeRef.new(shape: String, location_name: "LongDescription"))
    RegistrationFieldDisplayHints.add_member(:documentation_title, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationTitle"))
    RegistrationFieldDisplayHints.add_member(:documentation_link, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationLink"))
    RegistrationFieldDisplayHints.add_member(:select_option_descriptions, Shapes::ShapeRef.new(shape: SelectOptionDescriptionsList, location_name: "SelectOptionDescriptions"))
    RegistrationFieldDisplayHints.add_member(:text_validation_description, Shapes::ShapeRef.new(shape: String, location_name: "TextValidationDescription"))
    RegistrationFieldDisplayHints.add_member(:example_text_value, Shapes::ShapeRef.new(shape: String, location_name: "ExampleTextValue"))
    RegistrationFieldDisplayHints.struct_class = Types::RegistrationFieldDisplayHints

    RegistrationFieldValueInformation.add_member(:field_path, Shapes::ShapeRef.new(shape: FieldPath, required: true, location_name: "FieldPath"))
    RegistrationFieldValueInformation.add_member(:select_choices, Shapes::ShapeRef.new(shape: SelectChoiceList, location_name: "SelectChoices"))
    RegistrationFieldValueInformation.add_member(:text_value, Shapes::ShapeRef.new(shape: TextValue, location_name: "TextValue"))
    RegistrationFieldValueInformation.add_member(:registration_attachment_id, Shapes::ShapeRef.new(shape: RegistrationAttachmentIdOrArn, location_name: "RegistrationAttachmentId"))
    RegistrationFieldValueInformation.add_member(:denied_reason, Shapes::ShapeRef.new(shape: String, location_name: "DeniedReason"))
    RegistrationFieldValueInformation.struct_class = Types::RegistrationFieldValueInformation

    RegistrationFieldValueInformationList.member = Shapes::ShapeRef.new(shape: RegistrationFieldValueInformation)

    RegistrationFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistrationFilterName, required: true, location_name: "Name"))
    RegistrationFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    RegistrationFilter.struct_class = Types::RegistrationFilter

    RegistrationFilterList.member = Shapes::ShapeRef.new(shape: RegistrationFilter)

    RegistrationIdList.member = Shapes::ShapeRef.new(shape: RegistrationIdOrArn)

    RegistrationInformation.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    RegistrationInformation.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    RegistrationInformation.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    RegistrationInformation.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "RegistrationStatus"))
    RegistrationInformation.add_member(:current_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "CurrentVersionNumber"))
    RegistrationInformation.add_member(:approved_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: "ApprovedVersionNumber"))
    RegistrationInformation.add_member(:latest_denied_version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, location_name: "LatestDeniedVersionNumber"))
    RegistrationInformation.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "AdditionalAttributes"))
    RegistrationInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    RegistrationInformation.struct_class = Types::RegistrationInformation

    RegistrationInformationList.member = Shapes::ShapeRef.new(shape: RegistrationInformation)

    RegistrationSectionDefinition.add_member(:section_path, Shapes::ShapeRef.new(shape: SectionPath, required: true, location_name: "SectionPath"))
    RegistrationSectionDefinition.add_member(:display_hints, Shapes::ShapeRef.new(shape: RegistrationSectionDisplayHints, required: true, location_name: "DisplayHints"))
    RegistrationSectionDefinition.struct_class = Types::RegistrationSectionDefinition

    RegistrationSectionDefinitionList.member = Shapes::ShapeRef.new(shape: RegistrationSectionDefinition)

    RegistrationSectionDisplayHints.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Title"))
    RegistrationSectionDisplayHints.add_member(:short_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ShortDescription"))
    RegistrationSectionDisplayHints.add_member(:long_description, Shapes::ShapeRef.new(shape: String, location_name: "LongDescription"))
    RegistrationSectionDisplayHints.add_member(:documentation_title, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationTitle"))
    RegistrationSectionDisplayHints.add_member(:documentation_link, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationLink"))
    RegistrationSectionDisplayHints.struct_class = Types::RegistrationSectionDisplayHints

    RegistrationTypeDefinition.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "RegistrationType"))
    RegistrationTypeDefinition.add_member(:supported_associations, Shapes::ShapeRef.new(shape: SupportedAssociationList, location_name: "SupportedAssociations"))
    RegistrationTypeDefinition.add_member(:display_hints, Shapes::ShapeRef.new(shape: RegistrationTypeDisplayHints, required: true, location_name: "DisplayHints"))
    RegistrationTypeDefinition.struct_class = Types::RegistrationTypeDefinition

    RegistrationTypeDefinitionList.member = Shapes::ShapeRef.new(shape: RegistrationTypeDefinition)

    RegistrationTypeDisplayHints.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Title"))
    RegistrationTypeDisplayHints.add_member(:short_description, Shapes::ShapeRef.new(shape: String, location_name: "ShortDescription"))
    RegistrationTypeDisplayHints.add_member(:long_description, Shapes::ShapeRef.new(shape: String, location_name: "LongDescription"))
    RegistrationTypeDisplayHints.add_member(:documentation_title, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationTitle"))
    RegistrationTypeDisplayHints.add_member(:documentation_link, Shapes::ShapeRef.new(shape: String, location_name: "DocumentationLink"))
    RegistrationTypeDisplayHints.struct_class = Types::RegistrationTypeDisplayHints

    RegistrationTypeFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistrationTypeFilterName, required: true, location_name: "Name"))
    RegistrationTypeFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    RegistrationTypeFilter.struct_class = Types::RegistrationTypeFilter

    RegistrationTypeFilterList.member = Shapes::ShapeRef.new(shape: RegistrationTypeFilter)

    RegistrationTypeList.member = Shapes::ShapeRef.new(shape: RegistrationType)

    RegistrationVersionFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistrationVersionFilterName, required: true, location_name: "Name"))
    RegistrationVersionFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    RegistrationVersionFilter.struct_class = Types::RegistrationVersionFilter

    RegistrationVersionFilterList.member = Shapes::ShapeRef.new(shape: RegistrationVersionFilter)

    RegistrationVersionInformation.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    RegistrationVersionInformation.add_member(:registration_version_status, Shapes::ShapeRef.new(shape: RegistrationVersionStatus, required: true, location_name: "RegistrationVersionStatus"))
    RegistrationVersionInformation.add_member(:registration_version_status_history, Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, required: true, location_name: "RegistrationVersionStatusHistory"))
    RegistrationVersionInformation.add_member(:denied_reasons, Shapes::ShapeRef.new(shape: RegistrationDeniedReasonInformationList, location_name: "DeniedReasons"))
    RegistrationVersionInformation.struct_class = Types::RegistrationVersionInformation

    RegistrationVersionInformationList.member = Shapes::ShapeRef.new(shape: RegistrationVersionInformation)

    RegistrationVersionNumberList.member = Shapes::ShapeRef.new(shape: RegistrationVersionNumber)

    RegistrationVersionStatusHistory.add_member(:draft_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "DraftTimestamp"))
    RegistrationVersionStatusHistory.add_member(:submitted_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:reviewing_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReviewingTimestamp"))
    RegistrationVersionStatusHistory.add_member(:requires_authentication_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RequiresAuthenticationTimestamp"))
    RegistrationVersionStatusHistory.add_member(:approved_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApprovedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:discarded_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DiscardedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:denied_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeniedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:revoked_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RevokedTimestamp"))
    RegistrationVersionStatusHistory.add_member(:archived_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ArchivedTimestamp"))
    RegistrationVersionStatusHistory.struct_class = Types::RegistrationVersionStatusHistory

    ReleasePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn, required: true, location_name: "PhoneNumberId"))
    ReleasePhoneNumberRequest.struct_class = Types::ReleasePhoneNumberRequest

    ReleasePhoneNumberResult.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberArn"))
    ReleasePhoneNumberResult.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    ReleasePhoneNumberResult.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    ReleasePhoneNumberResult.add_member(:status, Shapes::ShapeRef.new(shape: NumberStatus, location_name: "Status"))
    ReleasePhoneNumberResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    ReleasePhoneNumberResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    ReleasePhoneNumberResult.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: "NumberCapabilities"))
    ReleasePhoneNumberResult.add_member(:number_type, Shapes::ShapeRef.new(shape: NumberType, location_name: "NumberType"))
    ReleasePhoneNumberResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, location_name: "MonthlyLeasingPrice"))
    ReleasePhoneNumberResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    ReleasePhoneNumberResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    ReleasePhoneNumberResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    ReleasePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    ReleasePhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    ReleasePhoneNumberResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    ReleasePhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ReleasePhoneNumberResult.struct_class = Types::ReleasePhoneNumberResult

    ReleaseSenderIdRequest.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderIdOrArn, required: true, location_name: "SenderId"))
    ReleaseSenderIdRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    ReleaseSenderIdRequest.struct_class = Types::ReleaseSenderIdRequest

    ReleaseSenderIdResult.add_member(:sender_id_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SenderIdArn"))
    ReleaseSenderIdResult.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    ReleaseSenderIdResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    ReleaseSenderIdResult.add_member(:message_types, Shapes::ShapeRef.new(shape: MessageTypeList, required: true, location_name: "MessageTypes"))
    ReleaseSenderIdResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MonthlyLeasingPrice"))
    ReleaseSenderIdResult.add_member(:registered, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "Registered"))
    ReleaseSenderIdResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    ReleaseSenderIdResult.struct_class = Types::ReleaseSenderIdResult

    RequestPhoneNumberRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    RequestPhoneNumberRequest.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    RequestPhoneNumberRequest.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, required: true, location_name: "NumberCapabilities"))
    RequestPhoneNumberRequest.add_member(:number_type, Shapes::ShapeRef.new(shape: RequestableNumberType, required: true, location_name: "NumberType"))
    RequestPhoneNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: "OptOutListName"))
    RequestPhoneNumberRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: "PoolId"))
    RequestPhoneNumberRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, location_name: "RegistrationId"))
    RequestPhoneNumberRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    RequestPhoneNumberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestPhoneNumberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RequestPhoneNumberRequest.struct_class = Types::RequestPhoneNumberRequest

    RequestPhoneNumberResult.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberArn"))
    RequestPhoneNumberResult.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    RequestPhoneNumberResult.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RequestPhoneNumberResult.add_member(:status, Shapes::ShapeRef.new(shape: NumberStatus, location_name: "Status"))
    RequestPhoneNumberResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    RequestPhoneNumberResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    RequestPhoneNumberResult.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: "NumberCapabilities"))
    RequestPhoneNumberResult.add_member(:number_type, Shapes::ShapeRef.new(shape: RequestableNumberType, location_name: "NumberType"))
    RequestPhoneNumberResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, location_name: "MonthlyLeasingPrice"))
    RequestPhoneNumberResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    RequestPhoneNumberResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    RequestPhoneNumberResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    RequestPhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    RequestPhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    RequestPhoneNumberResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    RequestPhoneNumberResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    RequestPhoneNumberResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    RequestPhoneNumberResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestPhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    RequestPhoneNumberResult.struct_class = Types::RequestPhoneNumberResult

    RequestSenderIdRequest.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    RequestSenderIdRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    RequestSenderIdRequest.add_member(:message_types, Shapes::ShapeRef.new(shape: MessageTypeList, location_name: "MessageTypes"))
    RequestSenderIdRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    RequestSenderIdRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestSenderIdRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RequestSenderIdRequest.struct_class = Types::RequestSenderIdRequest

    RequestSenderIdResult.add_member(:sender_id_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SenderIdArn"))
    RequestSenderIdResult.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    RequestSenderIdResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    RequestSenderIdResult.add_member(:message_types, Shapes::ShapeRef.new(shape: MessageTypeList, required: true, location_name: "MessageTypes"))
    RequestSenderIdResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MonthlyLeasingPrice"))
    RequestSenderIdResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    RequestSenderIdResult.add_member(:registered, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "Registered"))
    RequestSenderIdResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestSenderIdResult.struct_class = Types::RequestSenderIdResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SectionPathList.member = Shapes::ShapeRef.new(shape: SectionPath)

    SelectChoiceList.member = Shapes::ShapeRef.new(shape: SelectChoice)

    SelectOptionDescription.add_member(:option, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Option"))
    SelectOptionDescription.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "Title"))
    SelectOptionDescription.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    SelectOptionDescription.struct_class = Types::SelectOptionDescription

    SelectOptionDescriptionsList.member = Shapes::ShapeRef.new(shape: SelectOptionDescription)

    SelectValidation.add_member(:min_choices, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinChoices"))
    SelectValidation.add_member(:max_choices, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxChoices"))
    SelectValidation.add_member(:options, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Options"))
    SelectValidation.struct_class = Types::SelectValidation

    SendDestinationNumberVerificationCodeRequest.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, required: true, location_name: "VerifiedDestinationNumberId"))
    SendDestinationNumberVerificationCodeRequest.add_member(:verification_channel, Shapes::ShapeRef.new(shape: VerificationChannel, required: true, location_name: "VerificationChannel"))
    SendDestinationNumberVerificationCodeRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    SendDestinationNumberVerificationCodeRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: VerificationMessageOriginationIdentity, location_name: "OriginationIdentity"))
    SendDestinationNumberVerificationCodeRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: "ConfigurationSetName"))
    SendDestinationNumberVerificationCodeRequest.add_member(:context, Shapes::ShapeRef.new(shape: ContextMap, location_name: "Context"))
    SendDestinationNumberVerificationCodeRequest.add_member(:destination_country_parameters, Shapes::ShapeRef.new(shape: DestinationCountryParameters, location_name: "DestinationCountryParameters"))
    SendDestinationNumberVerificationCodeRequest.struct_class = Types::SendDestinationNumberVerificationCodeRequest

    SendDestinationNumberVerificationCodeResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageId"))
    SendDestinationNumberVerificationCodeResult.struct_class = Types::SendDestinationNumberVerificationCodeResult

    SendMediaMessageRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    SendMediaMessageRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: MediaMessageOriginationIdentity, required: true, location_name: "OriginationIdentity"))
    SendMediaMessageRequest.add_member(:message_body, Shapes::ShapeRef.new(shape: TextMessageBody, location_name: "MessageBody"))
    SendMediaMessageRequest.add_member(:media_urls, Shapes::ShapeRef.new(shape: MediaUrlList, location_name: "MediaUrls"))
    SendMediaMessageRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: "ConfigurationSetName"))
    SendMediaMessageRequest.add_member(:max_price, Shapes::ShapeRef.new(shape: MaxPrice, location_name: "MaxPrice"))
    SendMediaMessageRequest.add_member(:time_to_live, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "TimeToLive"))
    SendMediaMessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: ContextMap, location_name: "Context"))
    SendMediaMessageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DryRun"))
    SendMediaMessageRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: "ProtectConfigurationId"))
    SendMediaMessageRequest.add_member(:message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MessageFeedbackEnabled"))
    SendMediaMessageRequest.struct_class = Types::SendMediaMessageRequest

    SendMediaMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendMediaMessageResult.struct_class = Types::SendMediaMessageResult

    SendTextMessageRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    SendTextMessageRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: TextMessageOriginationIdentity, location_name: "OriginationIdentity"))
    SendTextMessageRequest.add_member(:message_body, Shapes::ShapeRef.new(shape: TextMessageBody, location_name: "MessageBody"))
    SendTextMessageRequest.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SendTextMessageRequest.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, location_name: "Keyword"))
    SendTextMessageRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: "ConfigurationSetName"))
    SendTextMessageRequest.add_member(:max_price, Shapes::ShapeRef.new(shape: MaxPrice, location_name: "MaxPrice"))
    SendTextMessageRequest.add_member(:time_to_live, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "TimeToLive"))
    SendTextMessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: ContextMap, location_name: "Context"))
    SendTextMessageRequest.add_member(:destination_country_parameters, Shapes::ShapeRef.new(shape: DestinationCountryParameters, location_name: "DestinationCountryParameters"))
    SendTextMessageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DryRun"))
    SendTextMessageRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: "ProtectConfigurationId"))
    SendTextMessageRequest.add_member(:message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MessageFeedbackEnabled"))
    SendTextMessageRequest.struct_class = Types::SendTextMessageRequest

    SendTextMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendTextMessageResult.struct_class = Types::SendTextMessageResult

    SendVoiceMessageRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    SendVoiceMessageRequest.add_member(:origination_identity, Shapes::ShapeRef.new(shape: VoiceMessageOriginationIdentity, required: true, location_name: "OriginationIdentity"))
    SendVoiceMessageRequest.add_member(:message_body, Shapes::ShapeRef.new(shape: VoiceMessageBody, location_name: "MessageBody"))
    SendVoiceMessageRequest.add_member(:message_body_text_type, Shapes::ShapeRef.new(shape: VoiceMessageBodyTextType, location_name: "MessageBodyTextType"))
    SendVoiceMessageRequest.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, location_name: "VoiceId"))
    SendVoiceMessageRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, location_name: "ConfigurationSetName"))
    SendVoiceMessageRequest.add_member(:max_price_per_minute, Shapes::ShapeRef.new(shape: MaxPrice, location_name: "MaxPricePerMinute"))
    SendVoiceMessageRequest.add_member(:time_to_live, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "TimeToLive"))
    SendVoiceMessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: ContextMap, location_name: "Context"))
    SendVoiceMessageRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DryRun"))
    SendVoiceMessageRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, location_name: "ProtectConfigurationId"))
    SendVoiceMessageRequest.add_member(:message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MessageFeedbackEnabled"))
    SendVoiceMessageRequest.struct_class = Types::SendVoiceMessageRequest

    SendVoiceMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendVoiceMessageResult.struct_class = Types::SendVoiceMessageResult

    SenderIdAndCountry.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderIdOrArn, required: true, location_name: "SenderId"))
    SenderIdAndCountry.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    SenderIdAndCountry.struct_class = Types::SenderIdAndCountry

    SenderIdFilter.add_member(:name, Shapes::ShapeRef.new(shape: SenderIdFilterName, required: true, location_name: "Name"))
    SenderIdFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    SenderIdFilter.struct_class = Types::SenderIdFilter

    SenderIdFilterList.member = Shapes::ShapeRef.new(shape: SenderIdFilter)

    SenderIdInformation.add_member(:sender_id_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SenderIdArn"))
    SenderIdInformation.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    SenderIdInformation.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    SenderIdInformation.add_member(:message_types, Shapes::ShapeRef.new(shape: MessageTypeList, required: true, location_name: "MessageTypes"))
    SenderIdInformation.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MonthlyLeasingPrice"))
    SenderIdInformation.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    SenderIdInformation.add_member(:registered, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "Registered"))
    SenderIdInformation.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    SenderIdInformation.struct_class = Types::SenderIdInformation

    SenderIdInformationList.member = Shapes::ShapeRef.new(shape: SenderIdInformation)

    SenderIdList.member = Shapes::ShapeRef.new(shape: SenderIdAndCountry)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SetAccountDefaultProtectConfigurationRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    SetAccountDefaultProtectConfigurationRequest.struct_class = Types::SetAccountDefaultProtectConfigurationRequest

    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "DefaultProtectConfigurationArn"))
    SetAccountDefaultProtectConfigurationResult.add_member(:default_protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "DefaultProtectConfigurationId"))
    SetAccountDefaultProtectConfigurationResult.struct_class = Types::SetAccountDefaultProtectConfigurationResult

    SetDefaultMessageFeedbackEnabledRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    SetDefaultMessageFeedbackEnabledRequest.add_member(:message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "MessageFeedbackEnabled"))
    SetDefaultMessageFeedbackEnabledRequest.struct_class = Types::SetDefaultMessageFeedbackEnabledRequest

    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    SetDefaultMessageFeedbackEnabledResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SetDefaultMessageFeedbackEnabledResult.add_member(:message_feedback_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MessageFeedbackEnabled"))
    SetDefaultMessageFeedbackEnabledResult.struct_class = Types::SetDefaultMessageFeedbackEnabledResult

    SetDefaultMessageTypeRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    SetDefaultMessageTypeRequest.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    SetDefaultMessageTypeRequest.struct_class = Types::SetDefaultMessageTypeRequest

    SetDefaultMessageTypeResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    SetDefaultMessageTypeResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SetDefaultMessageTypeResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SetDefaultMessageTypeResult.struct_class = Types::SetDefaultMessageTypeResult

    SetDefaultSenderIdRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    SetDefaultSenderIdRequest.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    SetDefaultSenderIdRequest.struct_class = Types::SetDefaultSenderIdRequest

    SetDefaultSenderIdResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    SetDefaultSenderIdResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SetDefaultSenderIdResult.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, location_name: "SenderId"))
    SetDefaultSenderIdResult.struct_class = Types::SetDefaultSenderIdResult

    SetMediaMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, required: true, location_name: "MonthlyLimit"))
    SetMediaMessageSpendLimitOverrideRequest.struct_class = Types::SetMediaMessageSpendLimitOverrideRequest

    SetMediaMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    SetMediaMessageSpendLimitOverrideResult.struct_class = Types::SetMediaMessageSpendLimitOverrideResult

    SetTextMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, required: true, location_name: "MonthlyLimit"))
    SetTextMessageSpendLimitOverrideRequest.struct_class = Types::SetTextMessageSpendLimitOverrideRequest

    SetTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    SetTextMessageSpendLimitOverrideResult.struct_class = Types::SetTextMessageSpendLimitOverrideResult

    SetVoiceMessageSpendLimitOverrideRequest.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, required: true, location_name: "MonthlyLimit"))
    SetVoiceMessageSpendLimitOverrideRequest.struct_class = Types::SetVoiceMessageSpendLimitOverrideRequest

    SetVoiceMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    SetVoiceMessageSpendLimitOverrideResult.struct_class = Types::SetVoiceMessageSpendLimitOverrideResult

    SnsDestination.add_member(:topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, required: true, location_name: "TopicArn"))
    SnsDestination.struct_class = Types::SnsDestination

    SpendLimit.add_member(:name, Shapes::ShapeRef.new(shape: SpendLimitName, required: true, location_name: "Name"))
    SpendLimit.add_member(:enforced_limit, Shapes::ShapeRef.new(shape: PrimitiveLong, required: true, location_name: "EnforcedLimit"))
    SpendLimit.add_member(:max_limit, Shapes::ShapeRef.new(shape: PrimitiveLong, required: true, location_name: "MaxLimit"))
    SpendLimit.add_member(:overridden, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "Overridden"))
    SpendLimit.struct_class = Types::SpendLimit

    SpendLimitList.member = Shapes::ShapeRef.new(shape: SpendLimit)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    SubmitRegistrationVersionRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "RegistrationId"))
    SubmitRegistrationVersionRequest.struct_class = Types::SubmitRegistrationVersionRequest

    SubmitRegistrationVersionResult.add_member(:registration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationArn"))
    SubmitRegistrationVersionResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RegistrationId"))
    SubmitRegistrationVersionResult.add_member(:version_number, Shapes::ShapeRef.new(shape: RegistrationVersionNumber, required: true, location_name: "VersionNumber"))
    SubmitRegistrationVersionResult.add_member(:registration_version_status, Shapes::ShapeRef.new(shape: RegistrationVersionStatus, required: true, location_name: "RegistrationVersionStatus"))
    SubmitRegistrationVersionResult.add_member(:registration_version_status_history, Shapes::ShapeRef.new(shape: RegistrationVersionStatusHistory, required: true, location_name: "RegistrationVersionStatusHistory"))
    SubmitRegistrationVersionResult.struct_class = Types::SubmitRegistrationVersionResult

    SupportedAssociation.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    SupportedAssociation.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    SupportedAssociation.add_member(:association_behavior, Shapes::ShapeRef.new(shape: RegistrationAssociationBehavior, required: true, location_name: "AssociationBehavior"))
    SupportedAssociation.add_member(:disassociation_behavior, Shapes::ShapeRef.new(shape: RegistrationDisassociationBehavior, required: true, location_name: "DisassociationBehavior"))
    SupportedAssociation.struct_class = Types::SupportedAssociation

    SupportedAssociationList.member = Shapes::ShapeRef.new(shape: SupportedAssociation)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: NonEmptyTagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    TextValidation.add_member(:min_length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinLength"))
    TextValidation.add_member(:max_length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxLength"))
    TextValidation.add_member(:pattern, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Pattern"))
    TextValidation.struct_class = Types::TextValidation

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    UpdateEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    UpdateEventDestinationRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    UpdateEventDestinationRequest.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypeList, location_name: "MatchingEventTypes"))
    UpdateEventDestinationRequest.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    UpdateEventDestinationRequest.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    UpdateEventDestinationRequest.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    UpdateEventDestinationRequest.struct_class = Types::UpdateEventDestinationRequest

    UpdateEventDestinationResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    UpdateEventDestinationResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    UpdateEventDestinationResult.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestination, location_name: "EventDestination"))
    UpdateEventDestinationResult.struct_class = Types::UpdateEventDestinationResult

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: PhoneNumberIdOrArn, required: true, location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TwoWayEnabled"))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    UpdatePhoneNumberRequest.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    UpdatePhoneNumberRequest.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePhoneNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: "OptOutListName"))
    UpdatePhoneNumberRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberResult.add_member(:phone_number_arn, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberArn"))
    UpdatePhoneNumberResult.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    UpdatePhoneNumberResult.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    UpdatePhoneNumberResult.add_member(:status, Shapes::ShapeRef.new(shape: NumberStatus, location_name: "Status"))
    UpdatePhoneNumberResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: "IsoCountryCode"))
    UpdatePhoneNumberResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    UpdatePhoneNumberResult.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, location_name: "NumberCapabilities"))
    UpdatePhoneNumberResult.add_member(:number_type, Shapes::ShapeRef.new(shape: NumberType, location_name: "NumberType"))
    UpdatePhoneNumberResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, location_name: "MonthlyLeasingPrice"))
    UpdatePhoneNumberResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    UpdatePhoneNumberResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    UpdatePhoneNumberResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    UpdatePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    UpdatePhoneNumberResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    UpdatePhoneNumberResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    UpdatePhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    UpdatePhoneNumberResult.struct_class = Types::UpdatePhoneNumberResult

    UpdatePoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    UpdatePoolRequest.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TwoWayEnabled"))
    UpdatePoolRequest.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    UpdatePoolRequest.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    UpdatePoolRequest.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePoolRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: "OptOutListName"))
    UpdatePoolRequest.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SharedRoutesEnabled"))
    UpdatePoolRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    UpdatePoolRequest.struct_class = Types::UpdatePoolRequest

    UpdatePoolResult.add_member(:pool_arn, Shapes::ShapeRef.new(shape: String, location_name: "PoolArn"))
    UpdatePoolResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    UpdatePoolResult.add_member(:status, Shapes::ShapeRef.new(shape: PoolStatus, location_name: "Status"))
    UpdatePoolResult.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    UpdatePoolResult.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "TwoWayEnabled"))
    UpdatePoolResult.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
    UpdatePoolResult.add_member(:two_way_channel_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "TwoWayChannelRole"))
    UpdatePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    UpdatePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    UpdatePoolResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    UpdatePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    UpdatePoolResult.struct_class = Types::UpdatePoolResult

    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:number_capability, Shapes::ShapeRef.new(shape: NumberCapability, required: true, location_name: "NumberCapability"))
    UpdateProtectConfigurationCountryRuleSetRequest.add_member(:country_rule_set_updates, Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, required: true, location_name: "CountryRuleSetUpdates"))
    UpdateProtectConfigurationCountryRuleSetRequest.struct_class = Types::UpdateProtectConfigurationCountryRuleSetRequest

    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:number_capability, Shapes::ShapeRef.new(shape: NumberCapability, required: true, location_name: "NumberCapability"))
    UpdateProtectConfigurationCountryRuleSetResult.add_member(:country_rule_set, Shapes::ShapeRef.new(shape: ProtectConfigurationCountryRuleSet, required: true, location_name: "CountryRuleSet"))
    UpdateProtectConfigurationCountryRuleSetResult.struct_class = Types::UpdateProtectConfigurationCountryRuleSetResult

    UpdateProtectConfigurationRequest.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationIdOrArn, required: true, location_name: "ProtectConfigurationId"))
    UpdateProtectConfigurationRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    UpdateProtectConfigurationRequest.struct_class = Types::UpdateProtectConfigurationRequest

    UpdateProtectConfigurationResult.add_member(:protect_configuration_arn, Shapes::ShapeRef.new(shape: ProtectConfigurationArn, required: true, location_name: "ProtectConfigurationArn"))
    UpdateProtectConfigurationResult.add_member(:protect_configuration_id, Shapes::ShapeRef.new(shape: ProtectConfigurationId, required: true, location_name: "ProtectConfigurationId"))
    UpdateProtectConfigurationResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    UpdateProtectConfigurationResult.add_member(:account_default, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "AccountDefault"))
    UpdateProtectConfigurationResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    UpdateProtectConfigurationResult.struct_class = Types::UpdateProtectConfigurationResult

    UpdateSenderIdRequest.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderIdOrArn, required: true, location_name: "SenderId"))
    UpdateSenderIdRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    UpdateSenderIdRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtectionEnabled"))
    UpdateSenderIdRequest.struct_class = Types::UpdateSenderIdRequest

    UpdateSenderIdResult.add_member(:sender_id_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SenderIdArn"))
    UpdateSenderIdResult.add_member(:sender_id, Shapes::ShapeRef.new(shape: SenderId, required: true, location_name: "SenderId"))
    UpdateSenderIdResult.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    UpdateSenderIdResult.add_member(:message_types, Shapes::ShapeRef.new(shape: MessageTypeList, required: true, location_name: "MessageTypes"))
    UpdateSenderIdResult.add_member(:monthly_leasing_price, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MonthlyLeasingPrice"))
    UpdateSenderIdResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    UpdateSenderIdResult.add_member(:registered, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "Registered"))
    UpdateSenderIdResult.add_member(:registration_id, Shapes::ShapeRef.new(shape: String, location_name: "RegistrationId"))
    UpdateSenderIdResult.struct_class = Types::UpdateSenderIdResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VerifiedDestinationNumberFilter.add_member(:name, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilterName, required: true, location_name: "Name"))
    VerifiedDestinationNumberFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    VerifiedDestinationNumberFilter.struct_class = Types::VerifiedDestinationNumberFilter

    VerifiedDestinationNumberFilterList.member = Shapes::ShapeRef.new(shape: VerifiedDestinationNumberFilter)

    VerifiedDestinationNumberIdList.member = Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn)

    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberArn"))
    VerifiedDestinationNumberInformation.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberId"))
    VerifiedDestinationNumberInformation.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    VerifiedDestinationNumberInformation.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "Status"))
    VerifiedDestinationNumberInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    VerifiedDestinationNumberInformation.struct_class = Types::VerifiedDestinationNumberInformation

    VerifiedDestinationNumberInformationList.member = Shapes::ShapeRef.new(shape: VerifiedDestinationNumberInformation)

    VerifyDestinationNumberRequest.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: VerifiedDestinationNumberIdOrArn, required: true, location_name: "VerifiedDestinationNumberId"))
    VerifyDestinationNumberRequest.add_member(:verification_code, Shapes::ShapeRef.new(shape: VerificationCode, required: true, location_name: "VerificationCode"))
    VerifyDestinationNumberRequest.struct_class = Types::VerifyDestinationNumberRequest

    VerifyDestinationNumberResult.add_member(:verified_destination_number_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberArn"))
    VerifyDestinationNumberResult.add_member(:verified_destination_number_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VerifiedDestinationNumberId"))
    VerifyDestinationNumberResult.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "DestinationPhoneNumber"))
    VerifyDestinationNumberResult.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "Status"))
    VerifyDestinationNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
    VerifyDestinationNumberResult.struct_class = Types::VerifyDestinationNumberResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-03-31"

      api.metadata = {
        "apiVersion" => "2022-03-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "sms-voice",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon Pinpoint SMS Voice V2",
        "serviceId" => "Pinpoint SMS Voice V2",
        "signatureVersion" => "v4",
        "signingName" => "sms-voice",
        "targetPrefix" => "PinpointSMSVoiceV2",
        "uid" => "pinpoint-sms-voice-v2-2022-03-31",
      }

      api.add_operation(:associate_origination_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateOriginationIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateOriginationIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateOriginationIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationSetResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventDestinationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_opt_out_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOptOutList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOptOutListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOptOutListResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePoolRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePoolResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistrationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_registration_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistrationAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistrationAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistrationAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_registration_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistrationAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistrationAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistrationAttachmentResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_registration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistrationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistrationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistrationVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_verified_destination_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVerifiedDestinationNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVerifiedDestinationNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVerifiedDestinationNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_account_default_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountDefaultProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountDefaultProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountDefaultProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationSetResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_default_message_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDefaultMessageType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDefaultMessageTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDefaultMessageTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_default_sender_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDefaultSenderId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDefaultSenderIdRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDefaultSenderIdResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventDestinationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_keyword, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKeyword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeywordRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeywordResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_media_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMediaMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_opt_out_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOptOutList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOptOutListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOptOutListResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_opted_out_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOptedOutNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOptedOutNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOptedOutNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePoolRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePoolResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_protect_configuration_rule_set_number_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtectConfigurationRuleSetNumberOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRuleSetNumberOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProtectConfigurationRuleSetNumberOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistrationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_registration_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistrationAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistrationAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistrationAttachmentResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_registration_field_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistrationFieldValue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistrationFieldValueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistrationFieldValueResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_text_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTextMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTextMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTextMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_verified_destination_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVerifiedDestinationNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVerifiedDestinationNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVerifiedDestinationNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_voice_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVoiceMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_configuration_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationSetsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_keywords, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeKeywords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeKeywordsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeKeywordsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_opt_out_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOptOutLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOptOutListsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOptOutListsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_opted_out_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOptedOutNumbers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOptedOutNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOptedOutNumbersResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePhoneNumbers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePhoneNumbersResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePools"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePoolsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePoolsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_protect_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProtectConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProtectConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProtectConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationAttachments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationAttachmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_field_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationFieldDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationFieldDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationFieldDefinitionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_field_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationFieldValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationFieldValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationFieldValuesResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_section_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationSectionDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationSectionDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationSectionDefinitionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_type_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationTypeDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationTypeDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationTypeDefinitionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registration_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrationVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistrationsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_sender_ids, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSenderIds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSenderIdsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSenderIdsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_spend_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSpendLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSpendLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSpendLimitsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_verified_destination_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVerifiedDestinationNumbers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVerifiedDestinationNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVerifiedDestinationNumbersResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_origination_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateOriginationIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateOriginationIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateOriginationIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:discard_registration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DiscardRegistrationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DiscardRegistrationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DiscardRegistrationVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_protect_configuration_country_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectConfigurationCountryRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProtectConfigurationCountryRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProtectConfigurationCountryRuleSetResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_pool_origination_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPoolOriginationIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoolOriginationIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoolOriginationIdentitiesResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protect_configuration_rule_set_number_overrides, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectConfigurationRuleSetNumberOverrides"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverridesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtectConfigurationRuleSetNumberOverridesResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistrationAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRegistrationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistrationAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_keyword, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutKeyword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutKeywordRequest)
        o.output = Shapes::ShapeRef.new(shape: PutKeywordResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_message_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMessageFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMessageFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutMessageFeedbackResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_opted_out_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOptedOutNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutOptedOutNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOptedOutNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_protect_configuration_rule_set_number_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProtectConfigurationRuleSetNumberOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProtectConfigurationRuleSetNumberOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProtectConfigurationRuleSetNumberOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_registration_field_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRegistrationFieldValue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRegistrationFieldValueRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRegistrationFieldValueResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:release_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReleasePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReleasePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: ReleasePhoneNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:release_sender_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReleaseSenderId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReleaseSenderIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ReleaseSenderIdResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:request_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestPhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: RequestPhoneNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:request_sender_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestSenderId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestSenderIdRequest)
        o.output = Shapes::ShapeRef.new(shape: RequestSenderIdResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_destination_number_verification_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDestinationNumberVerificationCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendDestinationNumberVerificationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDestinationNumberVerificationCodeResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_media_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMediaMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendMediaMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMediaMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_text_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTextMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTextMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendTextMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_voice_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendVoiceMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendVoiceMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendVoiceMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_account_default_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetAccountDefaultProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetAccountDefaultProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: SetAccountDefaultProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_default_message_feedback_enabled, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultMessageFeedbackEnabled"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultMessageFeedbackEnabledRequest)
        o.output = Shapes::ShapeRef.new(shape: SetDefaultMessageFeedbackEnabledResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_default_message_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultMessageType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultMessageTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: SetDefaultMessageTypeResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_default_sender_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultSenderId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultSenderIdRequest)
        o.output = Shapes::ShapeRef.new(shape: SetDefaultSenderIdResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_media_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetMediaMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetMediaMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: SetMediaMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_text_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTextMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTextMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: SetTextMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:set_voice_message_spend_limit_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetVoiceMessageSpendLimitOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetVoiceMessageSpendLimitOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: SetVoiceMessageSpendLimitOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:submit_registration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitRegistrationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitRegistrationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitRegistrationVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventDestinationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePhoneNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePoolRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePoolResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_protect_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_protect_configuration_country_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectConfigurationCountryRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectConfigurationCountryRuleSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectConfigurationCountryRuleSetResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_sender_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSenderId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSenderIdRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSenderIdResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:verify_destination_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyDestinationNumber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: VerifyDestinationNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: VerifyDestinationNumberResult)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
