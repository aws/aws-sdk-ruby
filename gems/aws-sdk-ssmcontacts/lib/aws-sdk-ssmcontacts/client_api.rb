# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMContacts
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptCode = Shapes::StringShape.new(name: 'AcceptCode')
    AcceptCodeValidation = Shapes::StringShape.new(name: 'AcceptCodeValidation')
    AcceptPageRequest = Shapes::StructureShape.new(name: 'AcceptPageRequest')
    AcceptPageResult = Shapes::StructureShape.new(name: 'AcceptPageResult')
    AcceptType = Shapes::StringShape.new(name: 'AcceptType')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivateContactChannelRequest = Shapes::StructureShape.new(name: 'ActivateContactChannelRequest')
    ActivateContactChannelResult = Shapes::StructureShape.new(name: 'ActivateContactChannelResult')
    ActivationCode = Shapes::StringShape.new(name: 'ActivationCode')
    ActivationStatus = Shapes::StringShape.new(name: 'ActivationStatus')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelTargetInfo = Shapes::StructureShape.new(name: 'ChannelTargetInfo')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactAlias = Shapes::StringShape.new(name: 'ContactAlias')
    ContactChannel = Shapes::StructureShape.new(name: 'ContactChannel')
    ContactChannelAddress = Shapes::StructureShape.new(name: 'ContactChannelAddress')
    ContactChannelList = Shapes::ListShape.new(name: 'ContactChannelList')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    ContactTargetInfo = Shapes::StructureShape.new(name: 'ContactTargetInfo')
    ContactType = Shapes::StringShape.new(name: 'ContactType')
    ContactsList = Shapes::ListShape.new(name: 'ContactsList')
    Content = Shapes::StringShape.new(name: 'Content')
    CoverageTime = Shapes::StructureShape.new(name: 'CoverageTime')
    CoverageTimes = Shapes::ListShape.new(name: 'CoverageTimes')
    CreateContactChannelRequest = Shapes::StructureShape.new(name: 'CreateContactChannelRequest')
    CreateContactChannelResult = Shapes::StructureShape.new(name: 'CreateContactChannelResult')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResult = Shapes::StructureShape.new(name: 'CreateContactResult')
    CreateRotationOverrideRequest = Shapes::StructureShape.new(name: 'CreateRotationOverrideRequest')
    CreateRotationOverrideResult = Shapes::StructureShape.new(name: 'CreateRotationOverrideResult')
    CreateRotationRequest = Shapes::StructureShape.new(name: 'CreateRotationRequest')
    CreateRotationResult = Shapes::StructureShape.new(name: 'CreateRotationResult')
    DailySettings = Shapes::ListShape.new(name: 'DailySettings')
    DataEncryptionException = Shapes::StructureShape.new(name: 'DataEncryptionException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DayOfMonth = Shapes::IntegerShape.new(name: 'DayOfMonth')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeactivateContactChannelRequest = Shapes::StructureShape.new(name: 'DeactivateContactChannelRequest')
    DeactivateContactChannelResult = Shapes::StructureShape.new(name: 'DeactivateContactChannelResult')
    DeferActivation = Shapes::BooleanShape.new(name: 'DeferActivation')
    DeleteContactChannelRequest = Shapes::StructureShape.new(name: 'DeleteContactChannelRequest')
    DeleteContactChannelResult = Shapes::StructureShape.new(name: 'DeleteContactChannelResult')
    DeleteContactRequest = Shapes::StructureShape.new(name: 'DeleteContactRequest')
    DeleteContactResult = Shapes::StructureShape.new(name: 'DeleteContactResult')
    DeleteRotationOverrideRequest = Shapes::StructureShape.new(name: 'DeleteRotationOverrideRequest')
    DeleteRotationOverrideResult = Shapes::StructureShape.new(name: 'DeleteRotationOverrideResult')
    DeleteRotationRequest = Shapes::StructureShape.new(name: 'DeleteRotationRequest')
    DeleteRotationResult = Shapes::StructureShape.new(name: 'DeleteRotationResult')
    DependentEntity = Shapes::StructureShape.new(name: 'DependentEntity')
    DependentEntityList = Shapes::ListShape.new(name: 'DependentEntityList')
    DescribeEngagementRequest = Shapes::StructureShape.new(name: 'DescribeEngagementRequest')
    DescribeEngagementResult = Shapes::StructureShape.new(name: 'DescribeEngagementResult')
    DescribePageRequest = Shapes::StructureShape.new(name: 'DescribePageRequest')
    DescribePageResult = Shapes::StructureShape.new(name: 'DescribePageResult')
    Engagement = Shapes::StructureShape.new(name: 'Engagement')
    EngagementsList = Shapes::ListShape.new(name: 'EngagementsList')
    GetContactChannelRequest = Shapes::StructureShape.new(name: 'GetContactChannelRequest')
    GetContactChannelResult = Shapes::StructureShape.new(name: 'GetContactChannelResult')
    GetContactPolicyRequest = Shapes::StructureShape.new(name: 'GetContactPolicyRequest')
    GetContactPolicyResult = Shapes::StructureShape.new(name: 'GetContactPolicyResult')
    GetContactRequest = Shapes::StructureShape.new(name: 'GetContactRequest')
    GetContactResult = Shapes::StructureShape.new(name: 'GetContactResult')
    GetRotationOverrideRequest = Shapes::StructureShape.new(name: 'GetRotationOverrideRequest')
    GetRotationOverrideResult = Shapes::StructureShape.new(name: 'GetRotationOverrideResult')
    GetRotationRequest = Shapes::StructureShape.new(name: 'GetRotationRequest')
    GetRotationResult = Shapes::StructureShape.new(name: 'GetRotationResult')
    HandOffTime = Shapes::StructureShape.new(name: 'HandOffTime')
    HourOfDay = Shapes::IntegerShape.new(name: 'HourOfDay')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IncidentId = Shapes::StringShape.new(name: 'IncidentId')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsEssential = Shapes::BooleanShape.new(name: 'IsEssential')
    ListContactChannelsRequest = Shapes::StructureShape.new(name: 'ListContactChannelsRequest')
    ListContactChannelsResult = Shapes::StructureShape.new(name: 'ListContactChannelsResult')
    ListContactsRequest = Shapes::StructureShape.new(name: 'ListContactsRequest')
    ListContactsResult = Shapes::StructureShape.new(name: 'ListContactsResult')
    ListEngagementsRequest = Shapes::StructureShape.new(name: 'ListEngagementsRequest')
    ListEngagementsResult = Shapes::StructureShape.new(name: 'ListEngagementsResult')
    ListPageReceiptsRequest = Shapes::StructureShape.new(name: 'ListPageReceiptsRequest')
    ListPageReceiptsResult = Shapes::StructureShape.new(name: 'ListPageReceiptsResult')
    ListPageResolutionsRequest = Shapes::StructureShape.new(name: 'ListPageResolutionsRequest')
    ListPageResolutionsResult = Shapes::StructureShape.new(name: 'ListPageResolutionsResult')
    ListPagesByContactRequest = Shapes::StructureShape.new(name: 'ListPagesByContactRequest')
    ListPagesByContactResult = Shapes::StructureShape.new(name: 'ListPagesByContactResult')
    ListPagesByEngagementRequest = Shapes::StructureShape.new(name: 'ListPagesByEngagementRequest')
    ListPagesByEngagementResult = Shapes::StructureShape.new(name: 'ListPagesByEngagementResult')
    ListPreviewRotationShiftsRequest = Shapes::StructureShape.new(name: 'ListPreviewRotationShiftsRequest')
    ListPreviewRotationShiftsResult = Shapes::StructureShape.new(name: 'ListPreviewRotationShiftsResult')
    ListRotationOverridesRequest = Shapes::StructureShape.new(name: 'ListRotationOverridesRequest')
    ListRotationOverridesResult = Shapes::StructureShape.new(name: 'ListRotationOverridesResult')
    ListRotationShiftsRequest = Shapes::StructureShape.new(name: 'ListRotationShiftsRequest')
    ListRotationShiftsResult = Shapes::StructureShape.new(name: 'ListRotationShiftsResult')
    ListRotationsRequest = Shapes::StructureShape.new(name: 'ListRotationsRequest')
    ListRotationsResult = Shapes::StructureShape.new(name: 'ListRotationsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StringShape.new(name: 'Member')
    MinuteOfHour = Shapes::IntegerShape.new(name: 'MinuteOfHour')
    MonthlySetting = Shapes::StructureShape.new(name: 'MonthlySetting')
    MonthlySettings = Shapes::ListShape.new(name: 'MonthlySettings')
    NumberOfOnCalls = Shapes::IntegerShape.new(name: 'NumberOfOnCalls')
    OverrideList = Shapes::ListShape.new(name: 'OverrideList')
    Page = Shapes::StructureShape.new(name: 'Page')
    PagesList = Shapes::ListShape.new(name: 'PagesList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Plan = Shapes::StructureShape.new(name: 'Plan')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PreviewOverride = Shapes::StructureShape.new(name: 'PreviewOverride')
    PublicContent = Shapes::StringShape.new(name: 'PublicContent')
    PublicSubject = Shapes::StringShape.new(name: 'PublicSubject')
    PutContactPolicyRequest = Shapes::StructureShape.new(name: 'PutContactPolicyRequest')
    PutContactPolicyResult = Shapes::StructureShape.new(name: 'PutContactPolicyResult')
    Receipt = Shapes::StructureShape.new(name: 'Receipt')
    ReceiptInfo = Shapes::StringShape.new(name: 'ReceiptInfo')
    ReceiptType = Shapes::StringShape.new(name: 'ReceiptType')
    ReceiptsList = Shapes::ListShape.new(name: 'ReceiptsList')
    RecurrenceMultiplier = Shapes::IntegerShape.new(name: 'RecurrenceMultiplier')
    RecurrenceSettings = Shapes::StructureShape.new(name: 'RecurrenceSettings')
    ResolutionContact = Shapes::StructureShape.new(name: 'ResolutionContact')
    ResolutionList = Shapes::ListShape.new(name: 'ResolutionList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RetryIntervalInMinutes = Shapes::IntegerShape.new(name: 'RetryIntervalInMinutes')
    Rotation = Shapes::StructureShape.new(name: 'Rotation')
    RotationContactsArnList = Shapes::ListShape.new(name: 'RotationContactsArnList')
    RotationName = Shapes::StringShape.new(name: 'RotationName')
    RotationOverride = Shapes::StructureShape.new(name: 'RotationOverride')
    RotationOverrideContactsArnList = Shapes::ListShape.new(name: 'RotationOverrideContactsArnList')
    RotationOverridePreviewMemberList = Shapes::ListShape.new(name: 'RotationOverridePreviewMemberList')
    RotationOverrides = Shapes::ListShape.new(name: 'RotationOverrides')
    RotationPreviewMemberList = Shapes::ListShape.new(name: 'RotationPreviewMemberList')
    RotationShift = Shapes::StructureShape.new(name: 'RotationShift')
    RotationShifts = Shapes::ListShape.new(name: 'RotationShifts')
    Rotations = Shapes::ListShape.new(name: 'Rotations')
    SendActivationCodeRequest = Shapes::StructureShape.new(name: 'SendActivationCodeRequest')
    SendActivationCodeResult = Shapes::StructureShape.new(name: 'SendActivationCodeResult')
    Sender = Shapes::StringShape.new(name: 'Sender')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShiftCoveragesMap = Shapes::MapShape.new(name: 'ShiftCoveragesMap')
    ShiftDetails = Shapes::StructureShape.new(name: 'ShiftDetails')
    ShiftType = Shapes::StringShape.new(name: 'ShiftType')
    SimpleAddress = Shapes::StringShape.new(name: 'SimpleAddress')
    SsmContactsArn = Shapes::StringShape.new(name: 'SsmContactsArn')
    SsmContactsArnList = Shapes::ListShape.new(name: 'SsmContactsArnList')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageDurationInMins = Shapes::IntegerShape.new(name: 'StageDurationInMins')
    StageIndex = Shapes::IntegerShape.new(name: 'StageIndex')
    StagesList = Shapes::ListShape.new(name: 'StagesList')
    StartEngagementRequest = Shapes::StructureShape.new(name: 'StartEngagementRequest')
    StartEngagementResult = Shapes::StructureShape.new(name: 'StartEngagementResult')
    StopEngagementRequest = Shapes::StructureShape.new(name: 'StopEngagementRequest')
    StopEngagementResult = Shapes::StructureShape.new(name: 'StopEngagementResult')
    StopReason = Shapes::StringShape.new(name: 'StopReason')
    String = Shapes::StringShape.new(name: 'String')
    Subject = Shapes::StringShape.new(name: 'Subject')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetsList = Shapes::ListShape.new(name: 'TargetsList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    TimeZoneId = Shapes::StringShape.new(name: 'TimeZoneId')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateContactChannelRequest = Shapes::StructureShape.new(name: 'UpdateContactChannelRequest')
    UpdateContactChannelResult = Shapes::StructureShape.new(name: 'UpdateContactChannelResult')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResult = Shapes::StructureShape.new(name: 'UpdateContactResult')
    UpdateRotationRequest = Shapes::StructureShape.new(name: 'UpdateRotationRequest')
    UpdateRotationResult = Shapes::StructureShape.new(name: 'UpdateRotationResult')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WeeklySetting = Shapes::StructureShape.new(name: 'WeeklySetting')
    WeeklySettings = Shapes::ListShape.new(name: 'WeeklySettings')

    AcceptPageRequest.add_member(:page_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageId"))
    AcceptPageRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: "ContactChannelId"))
    AcceptPageRequest.add_member(:accept_type, Shapes::ShapeRef.new(shape: AcceptType, required: true, location_name: "AcceptType"))
    AcceptPageRequest.add_member(:note, Shapes::ShapeRef.new(shape: ReceiptInfo, location_name: "Note"))
    AcceptPageRequest.add_member(:accept_code, Shapes::ShapeRef.new(shape: AcceptCode, required: true, location_name: "AcceptCode"))
    AcceptPageRequest.add_member(:accept_code_validation, Shapes::ShapeRef.new(shape: AcceptCodeValidation, location_name: "AcceptCodeValidation"))
    AcceptPageRequest.struct_class = Types::AcceptPageRequest

    AcceptPageResult.struct_class = Types::AcceptPageResult

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActivateContactChannelRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    ActivateContactChannelRequest.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, required: true, location_name: "ActivationCode"))
    ActivateContactChannelRequest.struct_class = Types::ActivateContactChannelRequest

    ActivateContactChannelResult.struct_class = Types::ActivateContactChannelResult

    ChannelTargetInfo.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    ChannelTargetInfo.add_member(:retry_interval_in_minutes, Shapes::ShapeRef.new(shape: RetryIntervalInMinutes, location_name: "RetryIntervalInMinutes"))
    ChannelTargetInfo.struct_class = Types::ChannelTargetInfo

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.add_member(:dependent_entities, Shapes::ShapeRef.new(shape: DependentEntityList, location_name: "DependentEntities"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    Contact.add_member(:alias, Shapes::ShapeRef.new(shape: ContactAlias, required: true, location_name: "Alias"))
    Contact.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    Contact.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, required: true, location_name: "Type"))
    Contact.struct_class = Types::Contact

    ContactChannel.add_member(:contact_channel_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelArn"))
    ContactChannel.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    ContactChannel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    ContactChannel.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "Type"))
    ContactChannel.add_member(:delivery_address, Shapes::ShapeRef.new(shape: ContactChannelAddress, required: true, location_name: "DeliveryAddress"))
    ContactChannel.add_member(:activation_status, Shapes::ShapeRef.new(shape: ActivationStatus, required: true, location_name: "ActivationStatus"))
    ContactChannel.struct_class = Types::ContactChannel

    ContactChannelAddress.add_member(:simple_address, Shapes::ShapeRef.new(shape: SimpleAddress, location_name: "SimpleAddress"))
    ContactChannelAddress.struct_class = Types::ContactChannelAddress

    ContactChannelList.member = Shapes::ShapeRef.new(shape: ContactChannel)

    ContactTargetInfo.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: "ContactId"))
    ContactTargetInfo.add_member(:is_essential, Shapes::ShapeRef.new(shape: IsEssential, required: true, location_name: "IsEssential"))
    ContactTargetInfo.struct_class = Types::ContactTargetInfo

    ContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    CoverageTime.add_member(:start, Shapes::ShapeRef.new(shape: HandOffTime, location_name: "Start"))
    CoverageTime.add_member(:end, Shapes::ShapeRef.new(shape: HandOffTime, location_name: "End"))
    CoverageTime.struct_class = Types::CoverageTime

    CoverageTimes.member = Shapes::ShapeRef.new(shape: CoverageTime)

    CreateContactChannelRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    CreateContactChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    CreateContactChannelRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, required: true, location_name: "Type"))
    CreateContactChannelRequest.add_member(:delivery_address, Shapes::ShapeRef.new(shape: ContactChannelAddress, required: true, location_name: "DeliveryAddress"))
    CreateContactChannelRequest.add_member(:defer_activation, Shapes::ShapeRef.new(shape: DeferActivation, location_name: "DeferActivation"))
    CreateContactChannelRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateContactChannelRequest.struct_class = Types::CreateContactChannelRequest

    CreateContactChannelResult.add_member(:contact_channel_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelArn"))
    CreateContactChannelResult.struct_class = Types::CreateContactChannelResult

    CreateContactRequest.add_member(:alias, Shapes::ShapeRef.new(shape: ContactAlias, required: true, location_name: "Alias"))
    CreateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    CreateContactRequest.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, required: true, location_name: "Type"))
    CreateContactRequest.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, required: true, location_name: "Plan"))
    CreateContactRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    CreateContactRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateContactRequest.struct_class = Types::CreateContactRequest

    CreateContactResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    CreateContactResult.struct_class = Types::CreateContactResult

    CreateRotationOverrideRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    CreateRotationOverrideRequest.add_member(:new_contact_ids, Shapes::ShapeRef.new(shape: RotationOverrideContactsArnList, required: true, location_name: "NewContactIds"))
    CreateRotationOverrideRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    CreateRotationOverrideRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    CreateRotationOverrideRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    CreateRotationOverrideRequest.struct_class = Types::CreateRotationOverrideRequest

    CreateRotationOverrideResult.add_member(:rotation_override_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "RotationOverrideId"))
    CreateRotationOverrideResult.struct_class = Types::CreateRotationOverrideResult

    CreateRotationRequest.add_member(:name, Shapes::ShapeRef.new(shape: RotationName, required: true, location_name: "Name"))
    CreateRotationRequest.add_member(:contact_ids, Shapes::ShapeRef.new(shape: RotationContactsArnList, required: true, location_name: "ContactIds"))
    CreateRotationRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    CreateRotationRequest.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneId, required: true, location_name: "TimeZoneId"))
    CreateRotationRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: RecurrenceSettings, required: true, location_name: "Recurrence"))
    CreateRotationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    CreateRotationRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    CreateRotationRequest.struct_class = Types::CreateRotationRequest

    CreateRotationResult.add_member(:rotation_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationArn"))
    CreateRotationResult.struct_class = Types::CreateRotationResult

    DailySettings.member = Shapes::ShapeRef.new(shape: HandOffTime)

    DataEncryptionException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    DataEncryptionException.struct_class = Types::DataEncryptionException

    DeactivateContactChannelRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    DeactivateContactChannelRequest.struct_class = Types::DeactivateContactChannelRequest

    DeactivateContactChannelResult.struct_class = Types::DeactivateContactChannelResult

    DeleteContactChannelRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    DeleteContactChannelRequest.struct_class = Types::DeleteContactChannelRequest

    DeleteContactChannelResult.struct_class = Types::DeleteContactChannelResult

    DeleteContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    DeleteContactRequest.struct_class = Types::DeleteContactRequest

    DeleteContactResult.struct_class = Types::DeleteContactResult

    DeleteRotationOverrideRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    DeleteRotationOverrideRequest.add_member(:rotation_override_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "RotationOverrideId"))
    DeleteRotationOverrideRequest.struct_class = Types::DeleteRotationOverrideRequest

    DeleteRotationOverrideResult.struct_class = Types::DeleteRotationOverrideResult

    DeleteRotationRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    DeleteRotationRequest.struct_class = Types::DeleteRotationRequest

    DeleteRotationResult.struct_class = Types::DeleteRotationResult

    DependentEntity.add_member(:relation_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RelationType"))
    DependentEntity.add_member(:dependent_resource_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, required: true, location_name: "DependentResourceIds"))
    DependentEntity.struct_class = Types::DependentEntity

    DependentEntityList.member = Shapes::ShapeRef.new(shape: DependentEntity)

    DescribeEngagementRequest.add_member(:engagement_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementId"))
    DescribeEngagementRequest.struct_class = Types::DescribeEngagementRequest

    DescribeEngagementResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    DescribeEngagementResult.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementArn"))
    DescribeEngagementResult.add_member(:sender, Shapes::ShapeRef.new(shape: Sender, required: true, location_name: "Sender"))
    DescribeEngagementResult.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, required: true, location_name: "Subject"))
    DescribeEngagementResult.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    DescribeEngagementResult.add_member(:public_subject, Shapes::ShapeRef.new(shape: PublicSubject, location_name: "PublicSubject"))
    DescribeEngagementResult.add_member(:public_content, Shapes::ShapeRef.new(shape: PublicContent, location_name: "PublicContent"))
    DescribeEngagementResult.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    DescribeEngagementResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    DescribeEngagementResult.add_member(:stop_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StopTime"))
    DescribeEngagementResult.struct_class = Types::DescribeEngagementResult

    DescribePageRequest.add_member(:page_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageId"))
    DescribePageRequest.struct_class = Types::DescribePageRequest

    DescribePageResult.add_member(:page_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageArn"))
    DescribePageResult.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementArn"))
    DescribePageResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    DescribePageResult.add_member(:sender, Shapes::ShapeRef.new(shape: Sender, required: true, location_name: "Sender"))
    DescribePageResult.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, required: true, location_name: "Subject"))
    DescribePageResult.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    DescribePageResult.add_member(:public_subject, Shapes::ShapeRef.new(shape: PublicSubject, location_name: "PublicSubject"))
    DescribePageResult.add_member(:public_content, Shapes::ShapeRef.new(shape: PublicContent, location_name: "PublicContent"))
    DescribePageResult.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    DescribePageResult.add_member(:sent_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "SentTime"))
    DescribePageResult.add_member(:read_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ReadTime"))
    DescribePageResult.add_member(:delivery_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "DeliveryTime"))
    DescribePageResult.struct_class = Types::DescribePageResult

    Engagement.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementArn"))
    Engagement.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    Engagement.add_member(:sender, Shapes::ShapeRef.new(shape: Sender, required: true, location_name: "Sender"))
    Engagement.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    Engagement.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    Engagement.add_member(:stop_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StopTime"))
    Engagement.struct_class = Types::Engagement

    EngagementsList.member = Shapes::ShapeRef.new(shape: Engagement)

    GetContactChannelRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    GetContactChannelRequest.struct_class = Types::GetContactChannelRequest

    GetContactChannelResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    GetContactChannelResult.add_member(:contact_channel_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelArn"))
    GetContactChannelResult.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    GetContactChannelResult.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, required: true, location_name: "Type"))
    GetContactChannelResult.add_member(:delivery_address, Shapes::ShapeRef.new(shape: ContactChannelAddress, required: true, location_name: "DeliveryAddress"))
    GetContactChannelResult.add_member(:activation_status, Shapes::ShapeRef.new(shape: ActivationStatus, location_name: "ActivationStatus"))
    GetContactChannelResult.struct_class = Types::GetContactChannelResult

    GetContactPolicyRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    GetContactPolicyRequest.struct_class = Types::GetContactPolicyRequest

    GetContactPolicyResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: "ContactArn"))
    GetContactPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetContactPolicyResult.struct_class = Types::GetContactPolicyResult

    GetContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    GetContactRequest.struct_class = Types::GetContactRequest

    GetContactResult.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    GetContactResult.add_member(:alias, Shapes::ShapeRef.new(shape: ContactAlias, required: true, location_name: "Alias"))
    GetContactResult.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    GetContactResult.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, required: true, location_name: "Type"))
    GetContactResult.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, required: true, location_name: "Plan"))
    GetContactResult.struct_class = Types::GetContactResult

    GetRotationOverrideRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    GetRotationOverrideRequest.add_member(:rotation_override_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "RotationOverrideId"))
    GetRotationOverrideRequest.struct_class = Types::GetRotationOverrideRequest

    GetRotationOverrideResult.add_member(:rotation_override_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "RotationOverrideId"))
    GetRotationOverrideResult.add_member(:rotation_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: "RotationArn"))
    GetRotationOverrideResult.add_member(:new_contact_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: "NewContactIds"))
    GetRotationOverrideResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetRotationOverrideResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetRotationOverrideResult.add_member(:create_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreateTime"))
    GetRotationOverrideResult.struct_class = Types::GetRotationOverrideResult

    GetRotationRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    GetRotationRequest.struct_class = Types::GetRotationRequest

    GetRotationResult.add_member(:rotation_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationArn"))
    GetRotationResult.add_member(:name, Shapes::ShapeRef.new(shape: RotationName, required: true, location_name: "Name"))
    GetRotationResult.add_member(:contact_ids, Shapes::ShapeRef.new(shape: RotationContactsArnList, required: true, location_name: "ContactIds"))
    GetRotationResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    GetRotationResult.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneId, required: true, location_name: "TimeZoneId"))
    GetRotationResult.add_member(:recurrence, Shapes::ShapeRef.new(shape: RecurrenceSettings, required: true, location_name: "Recurrence"))
    GetRotationResult.struct_class = Types::GetRotationResult

    HandOffTime.add_member(:hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "HourOfDay"))
    HandOffTime.add_member(:minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "MinuteOfHour"))
    HandOffTime.struct_class = Types::HandOffTime

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListContactChannelsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    ListContactChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListContactChannelsRequest.struct_class = Types::ListContactChannelsRequest

    ListContactChannelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactChannelsResult.add_member(:contact_channels, Shapes::ShapeRef.new(shape: ContactChannelList, required: true, location_name: "ContactChannels"))
    ListContactChannelsResult.struct_class = Types::ListContactChannelsResult

    ListContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListContactsRequest.add_member(:alias_prefix, Shapes::ShapeRef.new(shape: ContactAlias, location_name: "AliasPrefix"))
    ListContactsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, location_name: "Type"))
    ListContactsRequest.struct_class = Types::ListContactsRequest

    ListContactsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactsResult.add_member(:contacts, Shapes::ShapeRef.new(shape: ContactsList, location_name: "Contacts"))
    ListContactsResult.struct_class = Types::ListContactsResult

    ListEngagementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEngagementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListEngagementsRequest.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    ListEngagementsRequest.add_member(:time_range_value, Shapes::ShapeRef.new(shape: TimeRange, location_name: "TimeRangeValue"))
    ListEngagementsRequest.struct_class = Types::ListEngagementsRequest

    ListEngagementsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEngagementsResult.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementsList, required: true, location_name: "Engagements"))
    ListEngagementsResult.struct_class = Types::ListEngagementsResult

    ListPageReceiptsRequest.add_member(:page_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageId"))
    ListPageReceiptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageReceiptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListPageReceiptsRequest.struct_class = Types::ListPageReceiptsRequest

    ListPageReceiptsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageReceiptsResult.add_member(:receipts, Shapes::ShapeRef.new(shape: ReceiptsList, location_name: "Receipts"))
    ListPageReceiptsResult.struct_class = Types::ListPageReceiptsResult

    ListPageResolutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageResolutionsRequest.add_member(:page_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageId"))
    ListPageResolutionsRequest.struct_class = Types::ListPageResolutionsRequest

    ListPageResolutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageResolutionsResult.add_member(:page_resolutions, Shapes::ShapeRef.new(shape: ResolutionList, required: true, location_name: "PageResolutions"))
    ListPageResolutionsResult.struct_class = Types::ListPageResolutionsResult

    ListPagesByContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    ListPagesByContactRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByContactRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListPagesByContactRequest.struct_class = Types::ListPagesByContactRequest

    ListPagesByContactResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByContactResult.add_member(:pages, Shapes::ShapeRef.new(shape: PagesList, required: true, location_name: "Pages"))
    ListPagesByContactResult.struct_class = Types::ListPagesByContactResult

    ListPagesByEngagementRequest.add_member(:engagement_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementId"))
    ListPagesByEngagementRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByEngagementRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListPagesByEngagementRequest.struct_class = Types::ListPagesByEngagementRequest

    ListPagesByEngagementResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByEngagementResult.add_member(:pages, Shapes::ShapeRef.new(shape: PagesList, required: true, location_name: "Pages"))
    ListPagesByEngagementResult.struct_class = Types::ListPagesByEngagementResult

    ListPreviewRotationShiftsRequest.add_member(:rotation_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RotationStartTime"))
    ListPreviewRotationShiftsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ListPreviewRotationShiftsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    ListPreviewRotationShiftsRequest.add_member(:members, Shapes::ShapeRef.new(shape: RotationPreviewMemberList, required: true, location_name: "Members"))
    ListPreviewRotationShiftsRequest.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneId, required: true, location_name: "TimeZoneId"))
    ListPreviewRotationShiftsRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: RecurrenceSettings, required: true, location_name: "Recurrence"))
    ListPreviewRotationShiftsRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: OverrideList, location_name: "Overrides"))
    ListPreviewRotationShiftsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPreviewRotationShiftsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListPreviewRotationShiftsRequest.struct_class = Types::ListPreviewRotationShiftsRequest

    ListPreviewRotationShiftsResult.add_member(:rotation_shifts, Shapes::ShapeRef.new(shape: RotationShifts, location_name: "RotationShifts"))
    ListPreviewRotationShiftsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPreviewRotationShiftsResult.struct_class = Types::ListPreviewRotationShiftsResult

    ListRotationOverridesRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    ListRotationOverridesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    ListRotationOverridesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    ListRotationOverridesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationOverridesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListRotationOverridesRequest.struct_class = Types::ListRotationOverridesRequest

    ListRotationOverridesResult.add_member(:rotation_overrides, Shapes::ShapeRef.new(shape: RotationOverrides, location_name: "RotationOverrides"))
    ListRotationOverridesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationOverridesResult.struct_class = Types::ListRotationOverridesResult

    ListRotationShiftsRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    ListRotationShiftsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ListRotationShiftsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    ListRotationShiftsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationShiftsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListRotationShiftsRequest.struct_class = Types::ListRotationShiftsRequest

    ListRotationShiftsResult.add_member(:rotation_shifts, Shapes::ShapeRef.new(shape: RotationShifts, location_name: "RotationShifts"))
    ListRotationShiftsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationShiftsResult.struct_class = Types::ListRotationShiftsResult

    ListRotationsRequest.add_member(:rotation_name_prefix, Shapes::ShapeRef.new(shape: RotationName, location_name: "RotationNamePrefix"))
    ListRotationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListRotationsRequest.struct_class = Types::ListRotationsRequest

    ListRotationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRotationsResult.add_member(:rotations, Shapes::ShapeRef.new(shape: Rotations, required: true, location_name: "Rotations"))
    ListRotationsResult.struct_class = Types::ListRotationsResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    MonthlySetting.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, required: true, location_name: "DayOfMonth"))
    MonthlySetting.add_member(:hand_off_time, Shapes::ShapeRef.new(shape: HandOffTime, required: true, location_name: "HandOffTime"))
    MonthlySetting.struct_class = Types::MonthlySetting

    MonthlySettings.member = Shapes::ShapeRef.new(shape: MonthlySetting)

    OverrideList.member = Shapes::ShapeRef.new(shape: PreviewOverride)

    Page.add_member(:page_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageArn"))
    Page.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementArn"))
    Page.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    Page.add_member(:sender, Shapes::ShapeRef.new(shape: Sender, required: true, location_name: "Sender"))
    Page.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    Page.add_member(:sent_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "SentTime"))
    Page.add_member(:delivery_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "DeliveryTime"))
    Page.add_member(:read_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ReadTime"))
    Page.struct_class = Types::Page

    PagesList.member = Shapes::ShapeRef.new(shape: Page)

    Plan.add_member(:stages, Shapes::ShapeRef.new(shape: StagesList, location_name: "Stages"))
    Plan.add_member(:rotation_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: "RotationIds"))
    Plan.struct_class = Types::Plan

    PreviewOverride.add_member(:new_members, Shapes::ShapeRef.new(shape: RotationOverridePreviewMemberList, location_name: "NewMembers"))
    PreviewOverride.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    PreviewOverride.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    PreviewOverride.struct_class = Types::PreviewOverride

    PutContactPolicyRequest.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    PutContactPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutContactPolicyRequest.struct_class = Types::PutContactPolicyRequest

    PutContactPolicyResult.struct_class = Types::PutContactPolicyResult

    Receipt.add_member(:contact_channel_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: "ContactChannelArn"))
    Receipt.add_member(:receipt_type, Shapes::ShapeRef.new(shape: ReceiptType, required: true, location_name: "ReceiptType"))
    Receipt.add_member(:receipt_info, Shapes::ShapeRef.new(shape: ReceiptInfo, location_name: "ReceiptInfo"))
    Receipt.add_member(:receipt_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "ReceiptTime"))
    Receipt.struct_class = Types::Receipt

    ReceiptsList.member = Shapes::ShapeRef.new(shape: Receipt)

    RecurrenceSettings.add_member(:monthly_settings, Shapes::ShapeRef.new(shape: MonthlySettings, location_name: "MonthlySettings"))
    RecurrenceSettings.add_member(:weekly_settings, Shapes::ShapeRef.new(shape: WeeklySettings, location_name: "WeeklySettings"))
    RecurrenceSettings.add_member(:daily_settings, Shapes::ShapeRef.new(shape: DailySettings, location_name: "DailySettings"))
    RecurrenceSettings.add_member(:number_of_on_calls, Shapes::ShapeRef.new(shape: NumberOfOnCalls, required: true, location_name: "NumberOfOnCalls", metadata: {"box"=>true}))
    RecurrenceSettings.add_member(:shift_coverages, Shapes::ShapeRef.new(shape: ShiftCoveragesMap, location_name: "ShiftCoverages"))
    RecurrenceSettings.add_member(:recurrence_multiplier, Shapes::ShapeRef.new(shape: RecurrenceMultiplier, required: true, location_name: "RecurrenceMultiplier", metadata: {"box"=>true}))
    RecurrenceSettings.struct_class = Types::RecurrenceSettings

    ResolutionContact.add_member(:contact_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactArn"))
    ResolutionContact.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, required: true, location_name: "Type"))
    ResolutionContact.add_member(:stage_index, Shapes::ShapeRef.new(shape: StageIndex, location_name: "StageIndex", metadata: {"box"=>true}))
    ResolutionContact.struct_class = Types::ResolutionContact

    ResolutionList.member = Shapes::ShapeRef.new(shape: ResolutionContact)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Rotation.add_member(:rotation_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationArn"))
    Rotation.add_member(:name, Shapes::ShapeRef.new(shape: RotationName, required: true, location_name: "Name"))
    Rotation.add_member(:contact_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: "ContactIds"))
    Rotation.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    Rotation.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneId, location_name: "TimeZoneId"))
    Rotation.add_member(:recurrence, Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: "Recurrence"))
    Rotation.struct_class = Types::Rotation

    RotationContactsArnList.member = Shapes::ShapeRef.new(shape: SsmContactsArn)

    RotationOverride.add_member(:rotation_override_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "RotationOverrideId"))
    RotationOverride.add_member(:new_contact_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, required: true, location_name: "NewContactIds"))
    RotationOverride.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    RotationOverride.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    RotationOverride.add_member(:create_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreateTime"))
    RotationOverride.struct_class = Types::RotationOverride

    RotationOverrideContactsArnList.member = Shapes::ShapeRef.new(shape: SsmContactsArn)

    RotationOverridePreviewMemberList.member = Shapes::ShapeRef.new(shape: Member)

    RotationOverrides.member = Shapes::ShapeRef.new(shape: RotationOverride)

    RotationPreviewMemberList.member = Shapes::ShapeRef.new(shape: Member)

    RotationShift.add_member(:contact_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: "ContactIds"))
    RotationShift.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    RotationShift.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EndTime"))
    RotationShift.add_member(:type, Shapes::ShapeRef.new(shape: ShiftType, location_name: "Type"))
    RotationShift.add_member(:shift_details, Shapes::ShapeRef.new(shape: ShiftDetails, location_name: "ShiftDetails"))
    RotationShift.struct_class = Types::RotationShift

    RotationShifts.member = Shapes::ShapeRef.new(shape: RotationShift)

    Rotations.member = Shapes::ShapeRef.new(shape: Rotation)

    SendActivationCodeRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    SendActivationCodeRequest.struct_class = Types::SendActivationCodeRequest

    SendActivationCodeResult.struct_class = Types::SendActivationCodeResult

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShiftCoveragesMap.key = Shapes::ShapeRef.new(shape: DayOfWeek)
    ShiftCoveragesMap.value = Shapes::ShapeRef.new(shape: CoverageTimes)

    ShiftDetails.add_member(:overridden_contact_ids, Shapes::ShapeRef.new(shape: SsmContactsArnList, required: true, location_name: "OverriddenContactIds"))
    ShiftDetails.struct_class = Types::ShiftDetails

    SsmContactsArnList.member = Shapes::ShapeRef.new(shape: SsmContactsArn)

    Stage.add_member(:duration_in_minutes, Shapes::ShapeRef.new(shape: StageDurationInMins, required: true, location_name: "DurationInMinutes"))
    Stage.add_member(:targets, Shapes::ShapeRef.new(shape: TargetsList, required: true, location_name: "Targets"))
    Stage.struct_class = Types::Stage

    StagesList.member = Shapes::ShapeRef.new(shape: Stage)

    StartEngagementRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    StartEngagementRequest.add_member(:sender, Shapes::ShapeRef.new(shape: Sender, required: true, location_name: "Sender"))
    StartEngagementRequest.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, required: true, location_name: "Subject"))
    StartEngagementRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Content"))
    StartEngagementRequest.add_member(:public_subject, Shapes::ShapeRef.new(shape: PublicSubject, location_name: "PublicSubject"))
    StartEngagementRequest.add_member(:public_content, Shapes::ShapeRef.new(shape: PublicContent, location_name: "PublicContent"))
    StartEngagementRequest.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    StartEngagementRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    StartEngagementRequest.struct_class = Types::StartEngagementRequest

    StartEngagementResult.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementArn"))
    StartEngagementResult.struct_class = Types::StartEngagementResult

    StopEngagementRequest.add_member(:engagement_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementId"))
    StopEngagementRequest.add_member(:reason, Shapes::ShapeRef.new(shape: StopReason, location_name: "Reason"))
    StopEngagementRequest.struct_class = Types::StopEngagementRequest

    StopEngagementResult.struct_class = Types::StopEngagementResult

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    TagsList.member = Shapes::ShapeRef.new(shape: Tag)

    Target.add_member(:channel_target_info, Shapes::ShapeRef.new(shape: ChannelTargetInfo, location_name: "ChannelTargetInfo"))
    Target.add_member(:contact_target_info, Shapes::ShapeRef.new(shape: ContactTargetInfo, location_name: "ContactTargetInfo"))
    Target.struct_class = Types::Target

    TargetsList.member = Shapes::ShapeRef.new(shape: Target)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    TimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    TimeRange.struct_class = Types::TimeRange

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateContactChannelRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    UpdateContactChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    UpdateContactChannelRequest.add_member(:delivery_address, Shapes::ShapeRef.new(shape: ContactChannelAddress, location_name: "DeliveryAddress"))
    UpdateContactChannelRequest.struct_class = Types::UpdateContactChannelRequest

    UpdateContactChannelResult.struct_class = Types::UpdateContactChannelResult

    UpdateContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    UpdateContactRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "DisplayName"))
    UpdateContactRequest.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "Plan"))
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResult.struct_class = Types::UpdateContactResult

    UpdateRotationRequest.add_member(:rotation_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "RotationId"))
    UpdateRotationRequest.add_member(:contact_ids, Shapes::ShapeRef.new(shape: RotationContactsArnList, location_name: "ContactIds"))
    UpdateRotationRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    UpdateRotationRequest.add_member(:time_zone_id, Shapes::ShapeRef.new(shape: TimeZoneId, location_name: "TimeZoneId"))
    UpdateRotationRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: RecurrenceSettings, required: true, location_name: "Recurrence"))
    UpdateRotationRequest.struct_class = Types::UpdateRotationRequest

    UpdateRotationResult.struct_class = Types::UpdateRotationResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WeeklySetting.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, required: true, location_name: "DayOfWeek"))
    WeeklySetting.add_member(:hand_off_time, Shapes::ShapeRef.new(shape: HandOffTime, required: true, location_name: "HandOffTime"))
    WeeklySetting.struct_class = Types::WeeklySetting

    WeeklySettings.member = Shapes::ShapeRef.new(shape: WeeklySetting)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-05-03"

      api.metadata = {
        "apiVersion" => "2021-05-03",
        "endpointPrefix" => "ssm-contacts",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SSM Contacts",
        "serviceFullName" => "AWS Systems Manager Incident Manager Contacts",
        "serviceId" => "SSM Contacts",
        "signatureVersion" => "v4",
        "signingName" => "ssm-contacts",
        "targetPrefix" => "SSMContacts",
        "uid" => "ssm-contacts-2021-05-03",
      }

      api.add_operation(:accept_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptPage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptPageRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptPageResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:activate_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivateContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
      end)

      api.add_operation(:create_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_rotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRotationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRotationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_rotation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRotationOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRotationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRotationOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:deactivate_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeactivateContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_rotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRotationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRotationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_rotation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRotationOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRotationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRotationOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngagementResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_page, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePageResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
      end)

      api.add_operation(:get_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_contact_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_rotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRotationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRotationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_rotation_override, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRotationOverride"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRotationOverrideRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRotationOverrideResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_contact_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactChannels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContactChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactChannelsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContacts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_page_receipts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPageReceipts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPageReceiptsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPageReceiptsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_page_resolutions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPageResolutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPageResolutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPageResolutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pages_by_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPagesByContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPagesByContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPagesByContactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pages_by_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPagesByEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPagesByEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPagesByEngagementResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_preview_rotation_shifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPreviewRotationShifts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPreviewRotationShiftsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPreviewRotationShiftsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rotation_overrides, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRotationOverrides"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRotationOverridesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRotationOverridesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rotation_shifts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRotationShifts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRotationShiftsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRotationShiftsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rotations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRotations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRotationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRotationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_contact_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutContactPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutContactPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutContactPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_activation_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendActivationCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendActivationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: SendActivationCodeResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEngagementResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEngagementResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
      end)

      api.add_operation(:update_contact_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactChannelResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DataEncryptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_rotation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRotation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRotationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRotationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
