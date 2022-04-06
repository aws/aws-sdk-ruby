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
    DeleteOptOutListRequest = Shapes::StructureShape.new(name: 'DeleteOptOutListRequest')
    DeleteOptOutListResult = Shapes::StructureShape.new(name: 'DeleteOptOutListResult')
    DeleteOptedOutNumberRequest = Shapes::StructureShape.new(name: 'DeleteOptedOutNumberRequest')
    DeleteOptedOutNumberResult = Shapes::StructureShape.new(name: 'DeleteOptedOutNumberResult')
    DeletePoolRequest = Shapes::StructureShape.new(name: 'DeletePoolRequest')
    DeletePoolResult = Shapes::StructureShape.new(name: 'DeletePoolResult')
    DeleteTextMessageSpendLimitOverrideRequest = Shapes::StructureShape.new(name: 'DeleteTextMessageSpendLimitOverrideRequest')
    DeleteTextMessageSpendLimitOverrideResult = Shapes::StructureShape.new(name: 'DeleteTextMessageSpendLimitOverrideResult')
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
    DescribeSenderIdsRequest = Shapes::StructureShape.new(name: 'DescribeSenderIdsRequest')
    DescribeSenderIdsResult = Shapes::StructureShape.new(name: 'DescribeSenderIdsResult')
    DescribeSpendLimitsRequest = Shapes::StructureShape.new(name: 'DescribeSpendLimitsRequest')
    DescribeSpendLimitsResult = Shapes::StructureShape.new(name: 'DescribeSpendLimitsResult')
    DestinationCountryParameterKey = Shapes::StringShape.new(name: 'DestinationCountryParameterKey')
    DestinationCountryParameterValue = Shapes::StringShape.new(name: 'DestinationCountryParameterValue')
    DestinationCountryParameters = Shapes::MapShape.new(name: 'DestinationCountryParameters')
    DisassociateOriginationIdentityRequest = Shapes::StructureShape.new(name: 'DisassociateOriginationIdentityRequest')
    DisassociateOriginationIdentityResult = Shapes::StructureShape.new(name: 'DisassociateOriginationIdentityResult')
    EventDestination = Shapes::StructureShape.new(name: 'EventDestination')
    EventDestinationList = Shapes::ListShape.new(name: 'EventDestinationList')
    EventDestinationName = Shapes::StringShape.new(name: 'EventDestinationName')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypeList = Shapes::ListShape.new(name: 'EventTypeList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
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
    ListPoolOriginationIdentitiesRequest = Shapes::StructureShape.new(name: 'ListPoolOriginationIdentitiesRequest')
    ListPoolOriginationIdentitiesResult = Shapes::StructureShape.new(name: 'ListPoolOriginationIdentitiesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    MaxPrice = Shapes::StringShape.new(name: 'MaxPrice')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
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
    PutKeywordRequest = Shapes::StructureShape.new(name: 'PutKeywordRequest')
    PutKeywordResult = Shapes::StructureShape.new(name: 'PutKeywordResult')
    PutOptedOutNumberRequest = Shapes::StructureShape.new(name: 'PutOptedOutNumberRequest')
    PutOptedOutNumberResult = Shapes::StructureShape.new(name: 'PutOptedOutNumberResult')
    RegistrationId = Shapes::StringShape.new(name: 'RegistrationId')
    ReleasePhoneNumberRequest = Shapes::StructureShape.new(name: 'ReleasePhoneNumberRequest')
    ReleasePhoneNumberResult = Shapes::StructureShape.new(name: 'ReleasePhoneNumberResult')
    RequestPhoneNumberRequest = Shapes::StructureShape.new(name: 'RequestPhoneNumberRequest')
    RequestPhoneNumberResult = Shapes::StructureShape.new(name: 'RequestPhoneNumberResult')
    RequestableNumberType = Shapes::StringShape.new(name: 'RequestableNumberType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
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
    SetDefaultMessageTypeRequest = Shapes::StructureShape.new(name: 'SetDefaultMessageTypeRequest')
    SetDefaultMessageTypeResult = Shapes::StructureShape.new(name: 'SetDefaultMessageTypeResult')
    SetDefaultSenderIdRequest = Shapes::StructureShape.new(name: 'SetDefaultSenderIdRequest')
    SetDefaultSenderIdResult = Shapes::StructureShape.new(name: 'SetDefaultSenderIdResult')
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
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextMessageBody = Shapes::StringShape.new(name: 'TextMessageBody')
    TextMessageOriginationIdentity = Shapes::StringShape.new(name: 'TextMessageOriginationIdentity')
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
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
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
    ConfigurationSetInformation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTimestamp"))
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
    CreatePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    CreatePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    CreatePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    CreatePoolResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    CreatePoolResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    CreatePoolResult.struct_class = Types::CreatePoolResult

    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetNameOrArn, required: true, location_name: "ConfigurationSetName"))
    DeleteConfigurationSetRequest.struct_class = Types::DeleteConfigurationSetRequest

    DeleteConfigurationSetResult.add_member(:configuration_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetArn"))
    DeleteConfigurationSetResult.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    DeleteConfigurationSetResult.add_member(:event_destinations, Shapes::ShapeRef.new(shape: EventDestinationList, location_name: "EventDestinations"))
    DeleteConfigurationSetResult.add_member(:default_message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "DefaultMessageType"))
    DeleteConfigurationSetResult.add_member(:default_sender_id, Shapes::ShapeRef.new(shape: SenderId, location_name: "DefaultSenderId"))
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
    DeletePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    DeletePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    DeletePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    DeletePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    DeletePoolResult.struct_class = Types::DeletePoolResult

    DeleteTextMessageSpendLimitOverrideRequest.struct_class = Types::DeleteTextMessageSpendLimitOverrideRequest

    DeleteTextMessageSpendLimitOverrideResult.add_member(:monthly_limit, Shapes::ShapeRef.new(shape: MonthlyLimit, location_name: "MonthlyLimit"))
    DeleteTextMessageSpendLimitOverrideResult.struct_class = Types::DeleteTextMessageSpendLimitOverrideResult

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
    DescribePhoneNumbersRequest.struct_class = Types::DescribePhoneNumbersRequest

    DescribePhoneNumbersResult.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberInformationList, location_name: "PhoneNumbers"))
    DescribePhoneNumbersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePhoneNumbersResult.struct_class = Types::DescribePhoneNumbersResult

    DescribePoolsRequest.add_member(:pool_ids, Shapes::ShapeRef.new(shape: PoolIdList, location_name: "PoolIds"))
    DescribePoolsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PoolFilterList, location_name: "Filters"))
    DescribePoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePoolsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribePoolsRequest.struct_class = Types::DescribePoolsRequest

    DescribePoolsResult.add_member(:pools, Shapes::ShapeRef.new(shape: PoolInformationList, location_name: "Pools"))
    DescribePoolsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePoolsResult.struct_class = Types::DescribePoolsResult

    DescribeSenderIdsRequest.add_member(:sender_ids, Shapes::ShapeRef.new(shape: SenderIdList, location_name: "SenderIds"))
    DescribeSenderIdsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SenderIdFilterList, location_name: "Filters"))
    DescribeSenderIdsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSenderIdsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
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

    DestinationCountryParameters.key = Shapes::ShapeRef.new(shape: DestinationCountryParameterKey)
    DestinationCountryParameters.value = Shapes::ShapeRef.new(shape: DestinationCountryParameterValue)

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

    EventDestination.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    EventDestination.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    EventDestination.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypeList, required: true, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.struct_class = Types::EventDestination

    EventDestinationList.member = Shapes::ShapeRef.new(shape: EventDestination)

    EventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

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
    PhoneNumberInformation.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "SelfManagedOptOutsEnabled"))
    PhoneNumberInformation.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, required: true, location_name: "OptOutListName"))
    PhoneNumberInformation.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, required: true, location_name: "DeletionProtectionEnabled"))
    PhoneNumberInformation.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
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

    PutOptedOutNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, required: true, location_name: "OptOutListName"))
    PutOptedOutNumberRequest.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "OptedOutNumber"))
    PutOptedOutNumberRequest.struct_class = Types::PutOptedOutNumberRequest

    PutOptedOutNumberResult.add_member(:opt_out_list_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptOutListArn"))
    PutOptedOutNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    PutOptedOutNumberResult.add_member(:opted_out_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "OptedOutNumber"))
    PutOptedOutNumberResult.add_member(:opted_out_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "OptedOutTimestamp"))
    PutOptedOutNumberResult.add_member(:end_user_opted_out, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "EndUserOptedOut"))
    PutOptedOutNumberResult.struct_class = Types::PutOptedOutNumberResult

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
    ReleasePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    ReleasePhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    ReleasePhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ReleasePhoneNumberResult.struct_class = Types::ReleasePhoneNumberResult

    RequestPhoneNumberRequest.add_member(:iso_country_code, Shapes::ShapeRef.new(shape: IsoCountryCode, required: true, location_name: "IsoCountryCode"))
    RequestPhoneNumberRequest.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "MessageType"))
    RequestPhoneNumberRequest.add_member(:number_capabilities, Shapes::ShapeRef.new(shape: NumberCapabilityList, required: true, location_name: "NumberCapabilities"))
    RequestPhoneNumberRequest.add_member(:number_type, Shapes::ShapeRef.new(shape: RequestableNumberType, required: true, location_name: "NumberType"))
    RequestPhoneNumberRequest.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListNameOrArn, location_name: "OptOutListName"))
    RequestPhoneNumberRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, location_name: "PoolId"))
    RequestPhoneNumberRequest.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, location_name: "RegistrationId"))
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
    RequestPhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    RequestPhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    RequestPhoneNumberResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    RequestPhoneNumberResult.add_member(:pool_id, Shapes::ShapeRef.new(shape: String, location_name: "PoolId"))
    RequestPhoneNumberResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestPhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    RequestPhoneNumberResult.struct_class = Types::RequestPhoneNumberResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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
    SenderIdInformation.struct_class = Types::SenderIdInformation

    SenderIdInformationList.member = Shapes::ShapeRef.new(shape: SenderIdInformation)

    SenderIdList.member = Shapes::ShapeRef.new(shape: SenderIdAndCountry)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: NonEmptyTagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

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
    UpdatePhoneNumberResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePhoneNumberResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    UpdatePhoneNumberResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    UpdatePhoneNumberResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    UpdatePhoneNumberResult.struct_class = Types::UpdatePhoneNumberResult

    UpdatePoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: PoolIdOrArn, required: true, location_name: "PoolId"))
    UpdatePoolRequest.add_member(:two_way_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TwoWayEnabled"))
    UpdatePoolRequest.add_member(:two_way_channel_arn, Shapes::ShapeRef.new(shape: TwoWayChannelArn, location_name: "TwoWayChannelArn"))
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
    UpdatePoolResult.add_member(:self_managed_opt_outs_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SelfManagedOptOutsEnabled"))
    UpdatePoolResult.add_member(:opt_out_list_name, Shapes::ShapeRef.new(shape: OptOutListName, location_name: "OptOutListName"))
    UpdatePoolResult.add_member(:shared_routes_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "SharedRoutesEnabled"))
    UpdatePoolResult.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeletionProtectionEnabled"))
    UpdatePoolResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    UpdatePoolResult.struct_class = Types::UpdatePoolResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-03-31"

      api.metadata = {
        "apiVersion" => "2022-03-31",
        "endpointPrefix" => "sms-voice",
        "jsonVersion" => "1.0",
        "protocol" => "json",
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
    end

  end
end
