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
    CreateContactChannelRequest = Shapes::StructureShape.new(name: 'CreateContactChannelRequest')
    CreateContactChannelResult = Shapes::StructureShape.new(name: 'CreateContactChannelResult')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResult = Shapes::StructureShape.new(name: 'CreateContactResult')
    DataEncryptionException = Shapes::StructureShape.new(name: 'DataEncryptionException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeactivateContactChannelRequest = Shapes::StructureShape.new(name: 'DeactivateContactChannelRequest')
    DeactivateContactChannelResult = Shapes::StructureShape.new(name: 'DeactivateContactChannelResult')
    DeferActivation = Shapes::BooleanShape.new(name: 'DeferActivation')
    DeleteContactChannelRequest = Shapes::StructureShape.new(name: 'DeleteContactChannelRequest')
    DeleteContactChannelResult = Shapes::StructureShape.new(name: 'DeleteContactChannelResult')
    DeleteContactRequest = Shapes::StructureShape.new(name: 'DeleteContactRequest')
    DeleteContactResult = Shapes::StructureShape.new(name: 'DeleteContactResult')
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
    ListPagesByContactRequest = Shapes::StructureShape.new(name: 'ListPagesByContactRequest')
    ListPagesByContactResult = Shapes::StructureShape.new(name: 'ListPagesByContactResult')
    ListPagesByEngagementRequest = Shapes::StructureShape.new(name: 'ListPagesByEngagementRequest')
    ListPagesByEngagementResult = Shapes::StructureShape.new(name: 'ListPagesByEngagementResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Page = Shapes::StructureShape.new(name: 'Page')
    PagesList = Shapes::ListShape.new(name: 'PagesList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Plan = Shapes::StructureShape.new(name: 'Plan')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PublicContent = Shapes::StringShape.new(name: 'PublicContent')
    PublicSubject = Shapes::StringShape.new(name: 'PublicSubject')
    PutContactPolicyRequest = Shapes::StructureShape.new(name: 'PutContactPolicyRequest')
    PutContactPolicyResult = Shapes::StructureShape.new(name: 'PutContactPolicyResult')
    Receipt = Shapes::StructureShape.new(name: 'Receipt')
    ReceiptInfo = Shapes::StringShape.new(name: 'ReceiptInfo')
    ReceiptType = Shapes::StringShape.new(name: 'ReceiptType')
    ReceiptsList = Shapes::ListShape.new(name: 'ReceiptsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RetryIntervalInMinutes = Shapes::IntegerShape.new(name: 'RetryIntervalInMinutes')
    SendActivationCodeRequest = Shapes::StructureShape.new(name: 'SendActivationCodeRequest')
    SendActivationCodeResult = Shapes::StructureShape.new(name: 'SendActivationCodeResult')
    Sender = Shapes::StringShape.new(name: 'Sender')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SimpleAddress = Shapes::StringShape.new(name: 'SimpleAddress')
    SsmContactsArn = Shapes::StringShape.new(name: 'SsmContactsArn')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageDurationInMins = Shapes::IntegerShape.new(name: 'StageDurationInMins')
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
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateContactChannelRequest = Shapes::StructureShape.new(name: 'UpdateContactChannelRequest')
    UpdateContactChannelResult = Shapes::StructureShape.new(name: 'UpdateContactChannelResult')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResult = Shapes::StructureShape.new(name: 'UpdateContactResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

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

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListContactChannelsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    ListContactChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListContactChannelsRequest.struct_class = Types::ListContactChannelsRequest

    ListContactChannelsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactChannelsResult.add_member(:contact_channels, Shapes::ShapeRef.new(shape: ContactChannelList, required: true, location_name: "ContactChannels"))
    ListContactChannelsResult.struct_class = Types::ListContactChannelsResult

    ListContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListContactsRequest.add_member(:alias_prefix, Shapes::ShapeRef.new(shape: ContactAlias, location_name: "AliasPrefix"))
    ListContactsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ContactType, location_name: "Type"))
    ListContactsRequest.struct_class = Types::ListContactsRequest

    ListContactsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContactsResult.add_member(:contacts, Shapes::ShapeRef.new(shape: ContactsList, location_name: "Contacts"))
    ListContactsResult.struct_class = Types::ListContactsResult

    ListEngagementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEngagementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEngagementsRequest.add_member(:incident_id, Shapes::ShapeRef.new(shape: IncidentId, location_name: "IncidentId"))
    ListEngagementsRequest.add_member(:time_range_value, Shapes::ShapeRef.new(shape: TimeRange, location_name: "TimeRangeValue"))
    ListEngagementsRequest.struct_class = Types::ListEngagementsRequest

    ListEngagementsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEngagementsResult.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementsList, required: true, location_name: "Engagements"))
    ListEngagementsResult.struct_class = Types::ListEngagementsResult

    ListPageReceiptsRequest.add_member(:page_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "PageId"))
    ListPageReceiptsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageReceiptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPageReceiptsRequest.struct_class = Types::ListPageReceiptsRequest

    ListPageReceiptsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPageReceiptsResult.add_member(:receipts, Shapes::ShapeRef.new(shape: ReceiptsList, location_name: "Receipts"))
    ListPageReceiptsResult.struct_class = Types::ListPageReceiptsResult

    ListPagesByContactRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactId"))
    ListPagesByContactRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByContactRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPagesByContactRequest.struct_class = Types::ListPagesByContactRequest

    ListPagesByContactResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByContactResult.add_member(:pages, Shapes::ShapeRef.new(shape: PagesList, required: true, location_name: "Pages"))
    ListPagesByContactResult.struct_class = Types::ListPagesByContactResult

    ListPagesByEngagementRequest.add_member(:engagement_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "EngagementId"))
    ListPagesByEngagementRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByEngagementRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPagesByEngagementRequest.struct_class = Types::ListPagesByEngagementRequest

    ListPagesByEngagementResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPagesByEngagementResult.add_member(:pages, Shapes::ShapeRef.new(shape: PagesList, required: true, location_name: "Pages"))
    ListPagesByEngagementResult.struct_class = Types::ListPagesByEngagementResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

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

    Plan.add_member(:stages, Shapes::ShapeRef.new(shape: StagesList, required: true, location_name: "Stages"))
    Plan.struct_class = Types::Plan

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

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendActivationCodeRequest.add_member(:contact_channel_id, Shapes::ShapeRef.new(shape: SsmContactsArn, required: true, location_name: "ContactChannelId"))
    SendActivationCodeRequest.struct_class = Types::SendActivationCodeRequest

    SendActivationCodeResult.struct_class = Types::SendActivationCodeResult

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


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
    end

  end
end
