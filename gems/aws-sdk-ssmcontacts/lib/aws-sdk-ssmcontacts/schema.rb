# frozen_string_literal: true

# This is generated code!

module Aws::SSMContacts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#AcceptCode', name: 'AcceptCode', traits: {"smithy.api#length" => {"min" => 6, "max" => 10}, "smithy.api#pattern" => "^[0-9]*$"})
    AcceptCodeValidation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#AcceptCodeValidation', name: 'AcceptCodeValidation')
    AcceptPageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#AcceptPageRequest', name: 'AcceptPageRequest')
    AcceptPageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#AcceptPageResult', name: 'AcceptPageResult')
    AcceptType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#AcceptType', name: 'AcceptType')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivateContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ActivateContactChannelRequest', name: 'ActivateContactChannelRequest')
    ActivateContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ActivateContactChannelResult', name: 'ActivateContactChannelResult')
    ActivationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#ActivationCode', name: 'ActivationCode', traits: {"smithy.api#length" => {"min" => 6, "max" => 10}, "smithy.api#pattern" => "^[0-9]*$"})
    ActivationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ActivationStatus', name: 'ActivationStatus')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.\\-]*$"})
    ChannelTargetInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ChannelTargetInfo', name: 'ChannelTargetInfo')
    ChannelType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ChannelType', name: 'ChannelType')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Contact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Contact', name: 'Contact')
    ContactAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#ContactAlias', name: 'ContactAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9_\\-]*$"})
    ContactChannel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ContactChannel', name: 'ContactChannel')
    ContactChannelAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ContactChannelAddress', name: 'ContactChannelAddress')
    ContactChannelList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#ContactChannelList', name: 'ContactChannelList')
    ContactName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#ContactName', name: 'ContactName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.\\-]*$"})
    ContactTargetInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ContactTargetInfo', name: 'ContactTargetInfo')
    ContactType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ContactType', name: 'ContactType')
    ContactsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#ContactsList', name: 'ContactsList')
    Content = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Content', name: 'Content', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    CoverageTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CoverageTime', name: 'CoverageTime')
    CoverageTimes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#CoverageTimes', name: 'CoverageTimes')
    CreateContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateContactChannelRequest', name: 'CreateContactChannelRequest')
    CreateContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateContactChannelResult', name: 'CreateContactChannelResult')
    CreateContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateContactRequest', name: 'CreateContactRequest')
    CreateContactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateContactResult', name: 'CreateContactResult')
    CreateRotationOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateRotationOverrideRequest', name: 'CreateRotationOverrideRequest')
    CreateRotationOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateRotationOverrideResult', name: 'CreateRotationOverrideResult')
    CreateRotationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateRotationRequest', name: 'CreateRotationRequest')
    CreateRotationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#CreateRotationResult', name: 'CreateRotationResult')
    DailySettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#DailySettings', name: 'DailySettings')
    DataEncryptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DataEncryptionException', name: 'DataEncryptionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ssmcontacts#DateTime', name: 'DateTime')
    DayOfMonth = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#DayOfMonth', name: 'DayOfMonth', traits: {"smithy.api#range" => {"min" => 1, "max" => 31}})
    DayOfWeek = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#DayOfWeek', name: 'DayOfWeek')
    DeactivateContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeactivateContactChannelRequest', name: 'DeactivateContactChannelRequest')
    DeactivateContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeactivateContactChannelResult', name: 'DeactivateContactChannelResult')
    DeferActivation = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ssmcontacts#DeferActivation', name: 'DeferActivation')
    DeleteContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteContactChannelRequest', name: 'DeleteContactChannelRequest')
    DeleteContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteContactChannelResult', name: 'DeleteContactChannelResult')
    DeleteContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteContactRequest', name: 'DeleteContactRequest')
    DeleteContactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteContactResult', name: 'DeleteContactResult')
    DeleteRotationOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteRotationOverrideRequest', name: 'DeleteRotationOverrideRequest')
    DeleteRotationOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteRotationOverrideResult', name: 'DeleteRotationOverrideResult')
    DeleteRotationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteRotationRequest', name: 'DeleteRotationRequest')
    DeleteRotationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DeleteRotationResult', name: 'DeleteRotationResult')
    DependentEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DependentEntity', name: 'DependentEntity')
    DependentEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#DependentEntityList', name: 'DependentEntityList')
    DescribeEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DescribeEngagementRequest', name: 'DescribeEngagementRequest')
    DescribeEngagementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DescribeEngagementResult', name: 'DescribeEngagementResult')
    DescribePageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DescribePageRequest', name: 'DescribePageRequest')
    DescribePageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#DescribePageResult', name: 'DescribePageResult')
    Engagement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Engagement', name: 'Engagement')
    EngagementsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#EngagementsList', name: 'EngagementsList')
    GetContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactChannelRequest', name: 'GetContactChannelRequest')
    GetContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactChannelResult', name: 'GetContactChannelResult')
    GetContactPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactPolicyRequest', name: 'GetContactPolicyRequest')
    GetContactPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactPolicyResult', name: 'GetContactPolicyResult')
    GetContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactRequest', name: 'GetContactRequest')
    GetContactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetContactResult', name: 'GetContactResult')
    GetRotationOverrideRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetRotationOverrideRequest', name: 'GetRotationOverrideRequest')
    GetRotationOverrideResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetRotationOverrideResult', name: 'GetRotationOverrideResult')
    GetRotationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetRotationRequest', name: 'GetRotationRequest')
    GetRotationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#GetRotationResult', name: 'GetRotationResult')
    HandOffTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#HandOffTime', name: 'HandOffTime')
    HourOfDay = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#HourOfDay', name: 'HourOfDay', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 23}})
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\\\\\/a-zA-Z0-9_+=\\-]*$"})
    IncidentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#IncidentId', name: 'IncidentId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\\\a-zA-Z0-9_@#%*+=:?.\\/!\\s-]*$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsEssential = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ssmcontacts#IsEssential', name: 'IsEssential')
    ListContactChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListContactChannelsRequest', name: 'ListContactChannelsRequest')
    ListContactChannelsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListContactChannelsResult', name: 'ListContactChannelsResult')
    ListContactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListContactsRequest', name: 'ListContactsRequest')
    ListContactsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListContactsResult', name: 'ListContactsResult')
    ListEngagementsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListEngagementsRequest', name: 'ListEngagementsRequest')
    ListEngagementsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListEngagementsResult', name: 'ListEngagementsResult')
    ListPageReceiptsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPageReceiptsRequest', name: 'ListPageReceiptsRequest')
    ListPageReceiptsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPageReceiptsResult', name: 'ListPageReceiptsResult')
    ListPageResolutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPageResolutionsRequest', name: 'ListPageResolutionsRequest')
    ListPageResolutionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPageResolutionsResult', name: 'ListPageResolutionsResult')
    ListPagesByContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPagesByContactRequest', name: 'ListPagesByContactRequest')
    ListPagesByContactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPagesByContactResult', name: 'ListPagesByContactResult')
    ListPagesByEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPagesByEngagementRequest', name: 'ListPagesByEngagementRequest')
    ListPagesByEngagementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPagesByEngagementResult', name: 'ListPagesByEngagementResult')
    ListPreviewRotationShiftsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPreviewRotationShiftsRequest', name: 'ListPreviewRotationShiftsRequest')
    ListPreviewRotationShiftsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListPreviewRotationShiftsResult', name: 'ListPreviewRotationShiftsResult')
    ListRotationOverridesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationOverridesRequest', name: 'ListRotationOverridesRequest')
    ListRotationOverridesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationOverridesResult', name: 'ListRotationOverridesResult')
    ListRotationShiftsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationShiftsRequest', name: 'ListRotationShiftsRequest')
    ListRotationShiftsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationShiftsResult', name: 'ListRotationShiftsResult')
    ListRotationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationsRequest', name: 'ListRotationsRequest')
    ListRotationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListRotationsResult', name: 'ListRotationsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 1024}})
    Member = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Member', name: 'Member', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "\\S"})
    MinuteOfHour = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#MinuteOfHour', name: 'MinuteOfHour', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 59}})
    MonthlySetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#MonthlySetting', name: 'MonthlySetting')
    MonthlySettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#MonthlySettings', name: 'MonthlySettings')
    NumberOfOnCalls = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#NumberOfOnCalls', name: 'NumberOfOnCalls', traits: {"smithy.api#range" => {"min" => 1}})
    OverrideList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#OverrideList', name: 'OverrideList')
    Page = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Page', name: 'Page')
    PagesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#PagesList', name: 'PagesList')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\\\\\/a-zA-Z0-9_+=\\-]*$"})
    Plan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Plan', name: 'Plan')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PreviewOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#PreviewOverride', name: 'PreviewOverride')
    PublicContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#PublicContent', name: 'PublicContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    PublicSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#PublicSubject', name: 'PublicSubject', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    PutContactPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#PutContactPolicyRequest', name: 'PutContactPolicyRequest')
    PutContactPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#PutContactPolicyResult', name: 'PutContactPolicyResult')
    Receipt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Receipt', name: 'Receipt')
    ReceiptInfo = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#ReceiptInfo', name: 'ReceiptInfo', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    ReceiptType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ReceiptType', name: 'ReceiptType')
    ReceiptsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#ReceiptsList', name: 'ReceiptsList')
    RecurrenceMultiplier = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#RecurrenceMultiplier', name: 'RecurrenceMultiplier', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RecurrenceSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#RecurrenceSettings', name: 'RecurrenceSettings')
    ResolutionContact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ResolutionContact', name: 'ResolutionContact')
    ResolutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#ResolutionList', name: 'ResolutionList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    RetryIntervalInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#RetryIntervalInMinutes', name: 'RetryIntervalInMinutes', traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    Rotation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Rotation', name: 'Rotation')
    RotationContactsArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationContactsArnList', name: 'RotationContactsArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RotationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#RotationName', name: 'RotationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\s\\.]*$"})
    RotationOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#RotationOverride', name: 'RotationOverride')
    RotationOverrideContactsArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationOverrideContactsArnList', name: 'RotationOverrideContactsArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    RotationOverridePreviewMemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationOverridePreviewMemberList', name: 'RotationOverridePreviewMemberList', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    RotationOverrides = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationOverrides', name: 'RotationOverrides')
    RotationPreviewMemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationPreviewMemberList', name: 'RotationPreviewMemberList', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RotationShift = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#RotationShift', name: 'RotationShift')
    RotationShifts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#RotationShifts', name: 'RotationShifts')
    Rotations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#Rotations', name: 'Rotations')
    SendActivationCodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#SendActivationCodeRequest', name: 'SendActivationCodeRequest')
    SendActivationCodeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#SendActivationCodeResult', name: 'SendActivationCodeResult')
    Sender = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Sender', name: 'Sender', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\\\a-zA-Z0-9_@#%*+=:?.\\/!\\s-]*$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShiftCoveragesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ssmcontacts#ShiftCoveragesMap', name: 'ShiftCoveragesMap')
    ShiftDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ShiftDetails', name: 'ShiftDetails')
    ShiftType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ShiftType', name: 'ShiftType')
    SimpleAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#SimpleAddress', name: 'SimpleAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}})
    SsmContactsArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#SsmContactsArn', name: 'SsmContactsArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):ssm-contacts:[-\\w+=\\/,.@]*:[0-9]+:([\\w+=\\/,.@:-]+)*$"})
    SsmContactsArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#SsmContactsArnList', name: 'SsmContactsArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Stage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Stage', name: 'Stage')
    StageDurationInMins = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#StageDurationInMins', name: 'StageDurationInMins', traits: {"smithy.api#range" => {"min" => 0, "max" => 30}})
    StageIndex = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssmcontacts#StageIndex', name: 'StageIndex', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    StagesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#StagesList', name: 'StagesList')
    StartEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#StartEngagementRequest', name: 'StartEngagementRequest')
    StartEngagementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#StartEngagementResult', name: 'StartEngagementResult')
    StopEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#StopEngagementRequest', name: 'StopEngagementRequest')
    StopEngagementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#StopEngagementResult', name: 'StopEngagementResult')
    StopReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#StopReason', name: 'StopReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#String', name: 'String')
    Subject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Subject', name: 'Subject', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[.\\s\\S]*$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\\\\\/a-zA-Z0-9_+=\\-]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#TagResourceResult', name: 'TagResourceResult')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*$"})
    TagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#TagsList', name: 'TagsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#Target', name: 'Target')
    TargetsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#TargetsList', name: 'TargetsList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#TimeRange', name: 'TimeRange')
    TimeZoneId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#TimeZoneId', name: 'TimeZoneId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[:a-zA-Z0-9_\\-\\s\\.\\\\/]*$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UntagResourceResult', name: 'UntagResourceResult')
    UpdateContactChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateContactChannelRequest', name: 'UpdateContactChannelRequest')
    UpdateContactChannelResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateContactChannelResult', name: 'UpdateContactChannelResult')
    UpdateContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateContactRequest', name: 'UpdateContactRequest')
    UpdateContactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateContactResult', name: 'UpdateContactResult')
    UpdateRotationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateRotationRequest', name: 'UpdateRotationRequest')
    UpdateRotationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#UpdateRotationResult', name: 'UpdateRotationResult')
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssmcontacts#Uuid', name: 'Uuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 39}, "smithy.api#pattern" => "^([a-fA-Z0-9]{8,11}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}){1}$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssmcontacts#ValidationExceptionReason', name: 'ValidationExceptionReason')
    WeeklySetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssmcontacts#WeeklySetting', name: 'WeeklySetting')
    WeeklySettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssmcontacts#WeeklySettings', name: 'WeeklySettings')

    AcceptCodeValidation.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGNORE', traits: {"smithy.api#enumValue" => "IGNORE"}))
    AcceptCodeValidation.add_member(:enforce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENFORCE', traits: {"smithy.api#enumValue" => "ENFORCE"}))
    AcceptPageRequest.add_member(:page_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>", "smithy.api#required" => {}}))
    AcceptPageRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The ARN of the contact channel.</p>"}))
    AcceptPageRequest.add_member(:accept_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptType, location_name: 'AcceptType', traits: {"smithy.api#documentation" => "<p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>", "smithy.api#required" => {}}))
    AcceptPageRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptInfo, location_name: 'Note', traits: {"smithy.api#documentation" => "<p>Information provided by the user when the user acknowledges the page.</p>"}))
    AcceptPageRequest.add_member(:accept_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptCode, location_name: 'AcceptCode', traits: {"smithy.api#documentation" => "<p>A 6-digit code used to acknowledge the page.</p>", "smithy.api#required" => {}}))
    AcceptPageRequest.add_member(:accept_code_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptCodeValidation, location_name: 'AcceptCodeValidation', traits: {"smithy.api#documentation" => "<p>An optional field that Incident Manager uses to <code>ENFORCE</code>\n            <code>AcceptCode</code> validation when acknowledging an page. Acknowledgement can occur by\n         replying to a page, or when entering the AcceptCode in the console. Enforcing AcceptCode\n         validation causes Incident Manager to verify that the code entered by the user matches the\n         code sent by Incident Manager with the page.</p>\n         <p>Incident Manager can also <code>IGNORE</code>\n            <code>AcceptCode</code> validation. Ignoring <code>AcceptCode</code> validation causes\n         Incident Manager to accept any value entered for the <code>AcceptCode</code>.</p>"}))
    AcceptPageRequest.type = Types::AcceptPageRequest
    AcceptPageResult.type = Types::AcceptPageResult
    AcceptType.add_member(:delivered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERED', traits: {"smithy.api#enumValue" => "DELIVERED"}))
    AcceptType.add_member(:read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateContactChannelRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    ActivateContactChannelRequest.add_member(:activation_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationCode, location_name: 'ActivationCode', traits: {"smithy.api#documentation" => "<p>The code sent to the contact channel when it was created in the contact.</p>", "smithy.api#required" => {}}))
    ActivateContactChannelRequest.type = Types::ActivateContactChannelRequest
    ActivateContactChannelResult.type = Types::ActivateContactChannelResult
    ActivationStatus.add_member(:activated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATED', traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    ActivationStatus.add_member(:not_activated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ACTIVATED', traits: {"smithy.api#enumValue" => "NOT_ACTIVATED"}))
    ChannelTargetInfo.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    ChannelTargetInfo.add_member(:retry_interval_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryIntervalInMinutes, location_name: 'RetryIntervalInMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes to wait to retry sending engagement in the case the engagement\n         initially fails.</p>"}))
    ChannelTargetInfo.type = Types::ChannelTargetInfo
    ChannelType.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    ChannelType.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE', traits: {"smithy.api#enumValue" => "VOICE"}))
    ChannelType.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "Identifier of the resource in use", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "Type of the resource in use", "smithy.api#required" => {}}))
    ConflictException.add_member(:dependent_entities, Smithy::Schema::Shapes::ShapeRef.new(shape: DependentEntityList, location_name: 'DependentEntities', traits: {"smithy.api#documentation" => "List of dependent entities containing information on relation type and resourceArns linked to the resource in use"}))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    Contact.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The unique and identifiable alias of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    Contact.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The full name of the contact or escalation plan.</p>"}))
    Contact.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Refers to the type of contact. A single contact is type <code>PERSONAL</code> and an\n         escalation plan is type <code>ESCALATION</code>.</p>", "smithy.api#required" => {}}))
    Contact.type = Types::Contact
    ContactChannel.add_member(:contact_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    ContactChannel.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact that contains the contact channel.</p>", "smithy.api#required" => {}}))
    ContactChannel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the contact channel.</p>", "smithy.api#required" => {}}))
    ContactChannel.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the contact channel. Incident Manager supports three contact methods:</p>\n         <ul>\n            <li>\n               <p>SMS</p>\n            </li>\n            <li>\n               <p>VOICE</p>\n            </li>\n            <li>\n               <p>EMAIL</p>\n            </li>\n         </ul>"}))
    ContactChannel.add_member(:delivery_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannelAddress, location_name: 'DeliveryAddress', traits: {"smithy.api#documentation" => "<p>The details that Incident Manager uses when trying to engage the contact channel.</p>", "smithy.api#required" => {}}))
    ContactChannel.add_member(:activation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationStatus, location_name: 'ActivationStatus', traits: {"smithy.api#documentation" => "<p>A Boolean value describing if the contact channel has been activated or not. If the\n         contact channel isn't activated, Incident Manager can't engage the contact through it.</p>", "smithy.api#required" => {}}))
    ContactChannel.type = Types::ContactChannel
    ContactChannelAddress.add_member(:simple_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleAddress, location_name: 'SimpleAddress', traits: {"smithy.api#documentation" => "<p>The format is dependent on the type of the contact channel. The following are the\n         expected formats:</p>\n         <ul>\n            <li>\n               <p>SMS - '+' followed by the country code and phone number</p>\n            </li>\n            <li>\n               <p>VOICE - '+' followed by the country code and phone number</p>\n            </li>\n            <li>\n               <p>EMAIL - any standard email format</p>\n            </li>\n         </ul>"}))
    ContactChannelAddress.type = Types::ContactChannelAddress
    ContactChannelList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannel)
    ContactTargetInfo.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact.</p>"}))
    ContactTargetInfo.add_member(:is_essential, Smithy::Schema::Shapes::ShapeRef.new(shape: IsEssential, location_name: 'IsEssential', traits: {"smithy.api#documentation" => "<p>A Boolean value determining if the contact's acknowledgement stops the progress of\n         stages in the plan.</p>", "smithy.api#required" => {}}))
    ContactTargetInfo.type = Types::ContactTargetInfo
    ContactType.add_member(:personal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSONAL', traits: {"smithy.api#enumValue" => "PERSONAL"}))
    ContactType.add_member(:escalation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ESCALATION', traits: {"smithy.api#enumValue" => "ESCALATION"}))
    ContactType.add_member(:oncall_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONCALL_SCHEDULE', traits: {"smithy.api#enumValue" => "ONCALL_SCHEDULE"}))
    ContactsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Contact)
    CoverageTime.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: HandOffTime, location_name: 'Start', traits: {"smithy.api#documentation" => "<p>Information about when the on-call rotation shift begins.</p>"}))
    CoverageTime.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: HandOffTime, location_name: 'End', traits: {"smithy.api#documentation" => "<p>Information about when the on-call rotation shift ends.</p>"}))
    CoverageTime.type = Types::CoverageTime
    CoverageTimes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageTime)
    CreateContactChannelRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact you are adding the contact channel\n         to.</p>", "smithy.api#required" => {}}))
    CreateContactChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the contact channel.</p>", "smithy.api#required" => {}}))
    CreateContactChannelRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Incident Manager supports three types of contact channels:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SMS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>VOICE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>EMAIL</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateContactChannelRequest.add_member(:delivery_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannelAddress, location_name: 'DeliveryAddress', traits: {"smithy.api#documentation" => "<p>The details that Incident Manager uses when trying to engage the contact channel. The format\n         is dependent on the type of the contact channel. The following are the expected\n         formats:</p>\n         <ul>\n            <li>\n               <p>SMS - '+' followed by the country code and phone number</p>\n            </li>\n            <li>\n               <p>VOICE - '+' followed by the country code and phone number</p>\n            </li>\n            <li>\n               <p>EMAIL - any standard email format</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateContactChannelRequest.add_member(:defer_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: DeferActivation, location_name: 'DeferActivation', traits: {"smithy.api#documentation" => "<p>If you want to activate the channel at a later time, you can choose to defer activation.\n         Incident Manager can't engage your contact channel until it has been activated.</p>"}))
    CreateContactChannelRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A token ensuring that the operation is called only once with the specified\n         details.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateContactChannelRequest.type = Types::CreateContactChannelRequest
    CreateContactChannelResult.add_member(:contact_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    CreateContactChannelResult.type = Types::CreateContactChannelResult
    CreateContactRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The short name to quickly identify a contact or escalation plan. The contact alias must\n         be unique and identifiable.</p>", "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The full name of the contact or escalation plan.</p>"}))
    CreateContactRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>To create an escalation plan use <code>ESCALATION</code>. To create a contact use\n            <code>PERSONAL</code>.</p>", "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:plan, Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'Plan', traits: {"smithy.api#documentation" => "<p>A list of stages. A contact has an engagement plan with stages that contact specified\n         contact channels. An escalation plan uses stages that contact specified contacts.</p>", "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Adds a tag to the target. You can only tag resources created in the first Region of your\n         replication set.</p>"}))
    CreateContactRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A token ensuring that the operation is called only once with the specified\n         details.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateContactRequest.type = Types::CreateContactRequest
    CreateContactResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created contact or escalation plan.</p>", "smithy.api#required" => {}}))
    CreateContactResult.type = Types::CreateContactResult
    CreateRotationOverrideRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation to create an override for.</p>", "smithy.api#required" => {}}))
    CreateRotationOverrideRequest.add_member(:new_contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationOverrideContactsArnList, location_name: 'NewContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts to replace those in the current on-call\n         rotation with.</p>\n         <p>If you want to include any current team members in the override shift, you must include\n         their ARNs in the new contact ID list.</p>", "smithy.api#required" => {}}))
    CreateRotationOverrideRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the override goes into effect.</p>", "smithy.api#required" => {}}))
    CreateRotationOverrideRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time when the override ends.</p>", "smithy.api#required" => {}}))
    CreateRotationOverrideRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A token that ensures that the operation is called only once with the specified\n         details.</p>"}))
    CreateRotationOverrideRequest.type = Types::CreateRotationOverrideRequest
    CreateRotationOverrideResult.add_member(:rotation_override_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'RotationOverrideId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created rotation override.</p>", "smithy.api#required" => {}}))
    CreateRotationOverrideResult.type = Types::CreateRotationOverrideResult
    CreateRotationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rotation.</p>", "smithy.api#required" => {}}))
    CreateRotationRequest.add_member(:contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationContactsArnList, location_name: 'ContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts to add to the rotation.</p>\n         <p>The order that you list the contacts in is their shift order in the rotation schedule.\n         To change the order of the contact's shifts, use the <a>UpdateRotation</a>\n         operation.</p>", "smithy.api#required" => {}}))
    CreateRotationRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time that the rotation goes into effect.</p>"}))
    CreateRotationRequest.add_member(:time_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneId, location_name: 'TimeZoneId', traits: {"smithy.api#documentation" => "<p>The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority\n         (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or \"Asia/Seoul\". For more\n         information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone\n            Database</a> on the IANA website.</p>\n         <note>\n            <p>Designators for time zones that don’t support Daylight Savings Time rules, such as\n            Pacific Standard Time (PST) and Pacific Daylight Time (PDT), are not supported.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateRotationRequest.add_member(:recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: 'Recurrence', traits: {"smithy.api#documentation" => "<p>Information about the rule that specifies when a shift's team members rotate.</p>", "smithy.api#required" => {}}))
    CreateRotationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Optional metadata to assign to the rotation. Tags enable you to categorize a resource in\n         different ways, such as by purpose, owner, or environment. For more information, see <a href=\"https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html\">Tagging\n            Incident Manager resources</a> in the <i>Incident Manager User\n            Guide</i>.</p>"}))
    CreateRotationRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A token that ensures that the operation is called only once with the specified\n         details.</p>"}))
    CreateRotationRequest.type = Types::CreateRotationRequest
    CreateRotationResult.add_member(:rotation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created rotation.</p>", "smithy.api#required" => {}}))
    CreateRotationResult.type = Types::CreateRotationResult
    DailySettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HandOffTime)
    DataEncryptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    DataEncryptionException.type = Types::DataEncryptionException
    DayOfWeek.add_member(:mon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MON', traits: {"smithy.api#enumValue" => "MON"}))
    DayOfWeek.add_member(:tue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUE', traits: {"smithy.api#enumValue" => "TUE"}))
    DayOfWeek.add_member(:wed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WED', traits: {"smithy.api#enumValue" => "WED"}))
    DayOfWeek.add_member(:thu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THU', traits: {"smithy.api#enumValue" => "THU"}))
    DayOfWeek.add_member(:fri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRI', traits: {"smithy.api#enumValue" => "FRI"}))
    DayOfWeek.add_member(:sat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAT', traits: {"smithy.api#enumValue" => "SAT"}))
    DayOfWeek.add_member(:sun, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUN', traits: {"smithy.api#enumValue" => "SUN"}))
    DeactivateContactChannelRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>", "smithy.api#required" => {}}))
    DeactivateContactChannelRequest.type = Types::DeactivateContactChannelRequest
    DeactivateContactChannelResult.type = Types::DeactivateContactChannelResult
    DeleteContactChannelRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    DeleteContactChannelRequest.type = Types::DeleteContactChannelRequest
    DeleteContactChannelResult.type = Types::DeleteContactChannelResult
    DeleteContactRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>", "smithy.api#required" => {}}))
    DeleteContactRequest.type = Types::DeleteContactRequest
    DeleteContactResult.type = Types::DeleteContactResult
    DeleteRotationOverrideRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation that was overridden.</p>", "smithy.api#required" => {}}))
    DeleteRotationOverrideRequest.add_member(:rotation_override_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'RotationOverrideId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation override to delete.</p>", "smithy.api#required" => {}}))
    DeleteRotationOverrideRequest.type = Types::DeleteRotationOverrideRequest
    DeleteRotationOverrideResult.type = Types::DeleteRotationOverrideResult
    DeleteRotationRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation to delete.</p>", "smithy.api#required" => {}}))
    DeleteRotationRequest.type = Types::DeleteRotationRequest
    DeleteRotationResult.type = Types::DeleteRotationResult
    DependentEntity.add_member(:relation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RelationType', traits: {"smithy.api#documentation" => "<p>The type of relationship between one resource and the other resource that it is related\n         to or depends on.</p>", "smithy.api#required" => {}}))
    DependentEntity.add_member(:dependent_resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'DependentResourceIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the dependent resources.</p>", "smithy.api#required" => {}}))
    DependentEntity.type = Types::DependentEntity
    DependentEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DependentEntity)
    DescribeEngagementRequest.add_member(:engagement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>", "smithy.api#required" => {}}))
    DescribeEngagementRequest.type = Types::DescribeEngagementRequest
    DescribeEngagementResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the escalation plan or contacts involved in the engagement.</p>", "smithy.api#required" => {}}))
    DescribeEngagementResult.add_member(:engagement_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementArn', traits: {"smithy.api#documentation" => "<p>The ARN of the engagement.</p>", "smithy.api#required" => {}}))
    DescribeEngagementResult.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The user that started the engagement.</p>", "smithy.api#required" => {}}))
    DescribeEngagementResult.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The secure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    DescribeEngagementResult.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The secure content of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    DescribeEngagementResult.add_member(:public_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicSubject, location_name: 'PublicSubject', traits: {"smithy.api#documentation" => "<p>The insecure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    DescribeEngagementResult.add_member(:public_content, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicContent, location_name: 'PublicContent', traits: {"smithy.api#documentation" => "<p>The insecure content of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    DescribeEngagementResult.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The ARN of the incident in which the engagement occurred.</p>"}))
    DescribeEngagementResult.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time that the engagement started.</p>"}))
    DescribeEngagementResult.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StopTime', traits: {"smithy.api#documentation" => "<p>The time that the engagement ended.</p>"}))
    DescribeEngagementResult.type = Types::DescribeEngagementResult
    DescribePageRequest.add_member(:page_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageId', traits: {"smithy.api#documentation" => "<p>The ID of the engagement to a contact channel.</p>", "smithy.api#required" => {}}))
    DescribePageRequest.type = Types::DescribePageRequest
    DescribePageResult.add_member(:page_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:engagement_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementArn', traits: {"smithy.api#documentation" => "<p>The ARN of the engagement that engaged the contact channel.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact that was engaged.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The user that started the engagement.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The secure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The secure content of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    DescribePageResult.add_member(:public_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicSubject, location_name: 'PublicSubject', traits: {"smithy.api#documentation" => "<p>The insecure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    DescribePageResult.add_member(:public_content, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicContent, location_name: 'PublicContent', traits: {"smithy.api#documentation" => "<p>The insecure content of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    DescribePageResult.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The ARN of the incident that engaged the contact channel.</p>"}))
    DescribePageResult.add_member(:sent_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'SentTime', traits: {"smithy.api#documentation" => "<p>The time the engagement was sent to the contact channel.</p>"}))
    DescribePageResult.add_member(:read_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'ReadTime', traits: {"smithy.api#documentation" => "<p>The time that the contact channel acknowledged the engagement.</p>"}))
    DescribePageResult.add_member(:delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'DeliveryTime', traits: {"smithy.api#documentation" => "<p>The time that the contact channel received the engagement.</p>"}))
    DescribePageResult.type = Types::DescribePageResult
    Engagement.add_member(:engagement_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement.</p>", "smithy.api#required" => {}}))
    Engagement.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the escalation plan or contact that Incident Manager is engaging.</p>", "smithy.api#required" => {}}))
    Engagement.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The user that started the engagement.</p>", "smithy.api#required" => {}}))
    Engagement.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The ARN of the incident that's engaging the contact.</p>"}))
    Engagement.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time that the engagement began.</p>"}))
    Engagement.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StopTime', traits: {"smithy.api#documentation" => "<p>The time that the engagement ended.</p>"}))
    Engagement.type = Types::Engagement
    EngagementsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Engagement)
    GetContactChannelRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>", "smithy.api#required" => {}}))
    GetContactChannelRequest.type = Types::GetContactChannelRequest
    GetContactChannelResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact that the channel belongs to.</p>", "smithy.api#required" => {}}))
    GetContactChannelResult.add_member(:contact_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact channel.</p>", "smithy.api#required" => {}}))
    GetContactChannelResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the contact channel</p>", "smithy.api#required" => {}}))
    GetContactChannelResult.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of contact channel. The type is <code>SMS</code>, <code>VOICE</code>, or\n            <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    GetContactChannelResult.add_member(:delivery_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannelAddress, location_name: 'DeliveryAddress', traits: {"smithy.api#documentation" => "<p>The details that Incident Manager uses when trying to engage the contact channel.</p>", "smithy.api#required" => {}}))
    GetContactChannelResult.add_member(:activation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationStatus, location_name: 'ActivationStatus', traits: {"smithy.api#documentation" => "<p>A Boolean value indicating if the contact channel has been activated or not.</p>"}))
    GetContactChannelResult.type = Types::GetContactChannelResult
    GetContactPolicyRequest.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    GetContactPolicyRequest.type = Types::GetContactPolicyRequest
    GetContactPolicyResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact or escalation plan.</p>"}))
    GetContactPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>Details about the resource policy attached to the contact or escalation plan.</p>"}))
    GetContactPolicyResult.type = Types::GetContactPolicyResult
    GetContactRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    GetContactRequest.type = Types::GetContactRequest
    GetContactResult.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    GetContactResult.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAlias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias of the contact or escalation plan. The alias is unique and\n         identifiable.</p>", "smithy.api#required" => {}}))
    GetContactResult.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The full name of the contact or escalation plan.</p>"}))
    GetContactResult.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of contact, either <code>PERSONAL</code> or <code>ESCALATION</code>.</p>", "smithy.api#required" => {}}))
    GetContactResult.add_member(:plan, Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'Plan', traits: {"smithy.api#documentation" => "<p>Details about the specific timing or stages and targets of the escalation plan or\n         engagement plan.</p>", "smithy.api#required" => {}}))
    GetContactResult.type = Types::GetContactResult
    GetRotationOverrideRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the overridden rotation to retrieve information\n         about.</p>", "smithy.api#required" => {}}))
    GetRotationOverrideRequest.add_member(:rotation_override_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'RotationOverrideId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation override to retrieve information\n         about.</p>", "smithy.api#required" => {}}))
    GetRotationOverrideRequest.type = Types::GetRotationOverrideRequest
    GetRotationOverrideResult.add_member(:rotation_override_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'RotationOverrideId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the override to an on-call rotation.</p>"}))
    GetRotationOverrideResult.add_member(:rotation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation that was overridden.</p>"}))
    GetRotationOverrideResult.add_member(:new_contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'NewContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts assigned to the override of the on-call\n         rotation.</p>"}))
    GetRotationOverrideResult.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time when the override goes into effect.</p>"}))
    GetRotationOverrideResult.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time when the override ends.</p>"}))
    GetRotationOverrideResult.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the override was created.</p>"}))
    GetRotationOverrideResult.type = Types::GetRotationOverrideResult
    GetRotationRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation to retrieve information\n         about.</p>", "smithy.api#required" => {}}))
    GetRotationRequest.type = Types::GetRotationRequest
    GetRotationResult.add_member(:rotation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the on-call rotation.</p>", "smithy.api#required" => {}}))
    GetRotationResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the on-call rotation.</p>", "smithy.api#required" => {}}))
    GetRotationResult.add_member(:contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationContactsArnList, location_name: 'ContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts assigned to the on-call rotation\n         team.</p>", "smithy.api#required" => {}}))
    GetRotationResult.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The specified start time for the on-call rotation.</p>", "smithy.api#required" => {}}))
    GetRotationResult.add_member(:time_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneId, location_name: 'TimeZoneId', traits: {"smithy.api#documentation" => "<p>The time zone that the rotation’s activity is based on, in Internet Assigned Numbers\n         Authority (IANA) format.</p>", "smithy.api#required" => {}}))
    GetRotationResult.add_member(:recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: 'Recurrence', traits: {"smithy.api#documentation" => "<p>Specifies how long a rotation lasts before restarting at the beginning of the shift\n         order.</p>", "smithy.api#required" => {}}))
    GetRotationResult.type = Types::GetRotationResult
    HandOffTime.add_member(:hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'HourOfDay', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The hour when an on-call rotation shift begins or ends.</p>", "smithy.api#required" => {}}))
    HandOffTime.add_member(:minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'MinuteOfHour', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minute when an on-call rotation shift begins or ends.</p>", "smithy.api#required" => {}}))
    HandOffTime.type = Types::HandOffTime
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "Advice to clients on when the call can be safely retried", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListContactChannelsRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact.</p>", "smithy.api#required" => {}}))
    ListContactChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListContactChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of contact channels per page.</p>"}))
    ListContactChannelsRequest.type = Types::ListContactChannelsRequest
    ListContactChannelsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListContactChannelsResult.add_member(:contact_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannelList, location_name: 'ContactChannels', traits: {"smithy.api#documentation" => "<p>A list of contact channels related to the specified contact.</p>", "smithy.api#required" => {}}))
    ListContactChannelsResult.type = Types::ListContactChannelsResult
    ListContactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListContactsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of contacts and escalation plans per page of results.</p>"}))
    ListContactsRequest.add_member(:alias_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactAlias, location_name: 'AliasPrefix', traits: {"smithy.api#documentation" => "<p>Used to list only contacts who's aliases start with the specified prefix.</p>"}))
    ListContactsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is\n         type <code>ESCALATION</code>.</p>"}))
    ListContactsRequest.type = Types::ListContactsRequest
    ListContactsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListContactsResult.add_member(:contacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactsList, location_name: 'Contacts', traits: {"smithy.api#documentation" => "<p>A list of the contacts and escalation plans in your Incident Manager account.</p>"}))
    ListContactsResult.type = Types::ListContactsResult
    ListEngagementsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListEngagementsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of engagements per page of results.</p>"}))
    ListEngagementsRequest.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>"}))
    ListEngagementsRequest.add_member(:time_range_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'TimeRangeValue', traits: {"smithy.api#documentation" => "<p>The time range to lists engagements for an incident.</p>"}))
    ListEngagementsRequest.type = Types::ListEngagementsRequest
    ListEngagementsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListEngagementsResult.add_member(:engagements, Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementsList, location_name: 'Engagements', traits: {"smithy.api#documentation" => "<p>A list of each engagement that occurred during the specified time range of an\n         incident.</p>", "smithy.api#required" => {}}))
    ListEngagementsResult.type = Types::ListEngagementsResult
    ListPageReceiptsRequest.add_member(:page_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>", "smithy.api#required" => {}}))
    ListPageReceiptsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPageReceiptsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of acknowledgements per page of results.</p>"}))
    ListPageReceiptsRequest.type = Types::ListPageReceiptsRequest
    ListPageReceiptsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPageReceiptsResult.add_member(:receipts, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptsList, location_name: 'Receipts', traits: {"smithy.api#documentation" => "<p>A list of each acknowledgement.</p>"}))
    ListPageReceiptsResult.type = Types::ListPageReceiptsResult
    ListPageResolutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>"}))
    ListPageResolutionsRequest.add_member(:page_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact engaged for the incident.</p>", "smithy.api#required" => {}}))
    ListPageResolutionsRequest.type = Types::ListPageResolutionsRequest
    ListPageResolutionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListPageResolutionsResult.add_member(:page_resolutions, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionList, location_name: 'PageResolutions', traits: {"smithy.api#documentation" => "<p>Information about the resolution for an engagement.</p>", "smithy.api#required" => {}}))
    ListPageResolutionsResult.type = Types::ListPageResolutionsResult
    ListPagesByContactRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>", "smithy.api#required" => {}}))
    ListPagesByContactRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPagesByContactRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of engagements to contact channels to list per page of results.\n      </p>"}))
    ListPagesByContactRequest.type = Types::ListPagesByContactRequest
    ListPagesByContactResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPagesByContactResult.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: PagesList, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>The list of engagements to a contact's contact channel.</p>", "smithy.api#required" => {}}))
    ListPagesByContactResult.type = Types::ListPagesByContactResult
    ListPagesByEngagementRequest.add_member(:engagement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement.</p>", "smithy.api#required" => {}}))
    ListPagesByEngagementRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPagesByEngagementRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of engagements to contact channels to list per page of\n         results.</p>"}))
    ListPagesByEngagementRequest.type = Types::ListPagesByEngagementRequest
    ListPagesByEngagementResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to continue to the next page of results.</p>"}))
    ListPagesByEngagementResult.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: PagesList, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>The list of engagements to contact channels.</p>", "smithy.api#required" => {}}))
    ListPagesByEngagementResult.type = Types::ListPagesByEngagementResult
    ListPreviewRotationShiftsRequest.add_member(:rotation_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'RotationStartTime', traits: {"smithy.api#documentation" => "<p>The date and time a rotation would begin. The first shift is calculated from this date\n         and time.</p>"}))
    ListPreviewRotationShiftsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Used to filter the range of calculated shifts before sending the response back to the\n         user. </p>"}))
    ListPreviewRotationShiftsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time a rotation shift would end.</p>", "smithy.api#required" => {}}))
    ListPreviewRotationShiftsRequest.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationPreviewMemberList, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>The contacts that would be assigned to a rotation.</p>", "smithy.api#required" => {}}))
    ListPreviewRotationShiftsRequest.add_member(:time_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneId, location_name: 'TimeZoneId', traits: {"smithy.api#documentation" => "<p>The time zone the rotation’s activity would be based on, in Internet Assigned Numbers\n         Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or \"Asia/Seoul\".\n      </p>", "smithy.api#required" => {}}))
    ListPreviewRotationShiftsRequest.add_member(:recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: 'Recurrence', traits: {"smithy.api#documentation" => "<p>Information about how long a rotation would last before restarting at the beginning of\n         the shift order.</p>", "smithy.api#required" => {}}))
    ListPreviewRotationShiftsRequest.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideList, location_name: 'Overrides', traits: {"smithy.api#documentation" => "<p>Information about changes that would be made in a rotation override.</p>"}))
    ListPreviewRotationShiftsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. This token is used to get the next set of results.</p>"}))
    ListPreviewRotationShiftsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         can be specified in a subsequent call to get the next set of results.</p>"}))
    ListPreviewRotationShiftsRequest.type = Types::ListPreviewRotationShiftsRequest
    ListPreviewRotationShiftsResult.add_member(:rotation_shifts, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationShifts, location_name: 'RotationShifts', traits: {"smithy.api#documentation" => "<p>Details about a rotation shift, including times, types, and contacts.</p>"}))
    ListPreviewRotationShiftsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. This token is used to get the next set of\n         results.</p>"}))
    ListPreviewRotationShiftsResult.type = Types::ListPreviewRotationShiftsResult
    ListRotationOverridesRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation to retrieve information about.</p>", "smithy.api#required" => {}}))
    ListRotationOverridesRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time for the beginning of a time range for listing overrides.</p>", "smithy.api#required" => {}}))
    ListRotationOverridesRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time for the end of a time range for listing overrides.</p>", "smithy.api#required" => {}}))
    ListRotationOverridesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>"}))
    ListRotationOverridesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>"}))
    ListRotationOverridesRequest.type = Types::ListRotationOverridesRequest
    ListRotationOverridesResult.add_member(:rotation_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationOverrides, location_name: 'RotationOverrides', traits: {"smithy.api#documentation" => "<p>A list of rotation overrides in the specified time range.</p>"}))
    ListRotationOverridesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListRotationOverridesResult.type = Types::ListRotationOverridesResult
    ListRotationShiftsRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation to retrieve shift information about.\n      </p>", "smithy.api#required" => {}}))
    ListRotationShiftsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time for the beginning of the time range to list shifts for.</p>"}))
    ListRotationShiftsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time for the end of the time range to list shifts for.</p>", "smithy.api#required" => {}}))
    ListRotationShiftsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>"}))
    ListRotationShiftsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>"}))
    ListRotationShiftsRequest.type = Types::ListRotationShiftsRequest
    ListRotationShiftsResult.add_member(:rotation_shifts, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationShifts, location_name: 'RotationShifts', traits: {"smithy.api#documentation" => "<p>Information about shifts that meet the filter criteria.</p>"}))
    ListRotationShiftsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListRotationShiftsResult.type = Types::ListRotationShiftsResult
    ListRotationsRequest.add_member(:rotation_name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationName, location_name: 'RotationNamePrefix', traits: {"smithy.api#documentation" => "<p>A filter to include rotations in list results based on their common prefix. For example,\n         entering prod returns a list of all rotation names that begin with <code>prod</code>, such\n         as <code>production</code> and <code>prod-1</code>.</p>"}))
    ListRotationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>"}))
    ListRotationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>"}))
    ListRotationsRequest.type = Types::ListRotationsRequest
    ListRotationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListRotationsResult.add_member(:rotations, Smithy::Schema::Shapes::ShapeRef.new(shape: Rotations, location_name: 'Rotations', traits: {"smithy.api#documentation" => "<p>Information about rotations that meet the filter criteria.</p>", "smithy.api#required" => {}}))
    ListRotationsResult.type = Types::ListRotationsResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags related to the contact or escalation plan.</p>"}))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    MonthlySetting.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: 'DayOfMonth', traits: {"smithy.api#documentation" => "<p>The day of the month when monthly recurring on-call rotations begin.</p>", "smithy.api#required" => {}}))
    MonthlySetting.add_member(:hand_off_time, Smithy::Schema::Shapes::ShapeRef.new(shape: HandOffTime, location_name: 'HandOffTime', traits: {"smithy.api#documentation" => "<p>The time of day when a monthly recurring on-call shift rotation begins.</p>", "smithy.api#required" => {}}))
    MonthlySetting.type = Types::MonthlySetting
    MonthlySettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlySetting)
    OverrideList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewOverride)
    Page.add_member(:page_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'PageArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the page to the contact channel.</p>", "smithy.api#required" => {}}))
    Page.add_member(:engagement_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementArn', traits: {"smithy.api#documentation" => "<p>The ARN of the engagement that this page is part of.</p>", "smithy.api#required" => {}}))
    Page.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The ARN of the contact that Incident Manager is engaging.</p>", "smithy.api#required" => {}}))
    Page.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The user that started the engagement.</p>", "smithy.api#required" => {}}))
    Page.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The ARN of the incident that's engaging the contact channel.</p>"}))
    Page.add_member(:sent_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'SentTime', traits: {"smithy.api#documentation" => "<p>The time that Incident Manager engaged the contact channel.</p>"}))
    Page.add_member(:delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'DeliveryTime', traits: {"smithy.api#documentation" => "<p>The time the message was delivered to the contact channel.</p>"}))
    Page.add_member(:read_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'ReadTime', traits: {"smithy.api#documentation" => "<p>The time that the contact channel acknowledged engagement.</p>"}))
    Page.type = Types::Page
    PagesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Page)
    Plan.add_member(:stages, Smithy::Schema::Shapes::ShapeRef.new(shape: StagesList, location_name: 'Stages', traits: {"smithy.api#documentation" => "<p>A list of stages that the escalation plan or engagement plan uses to engage contacts and\n         contact methods.</p>"}))
    Plan.add_member(:rotation_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'RotationIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the on-call rotations associated with the plan.\n      </p>"}))
    Plan.type = Types::Plan
    PreviewOverride.add_member(:new_members, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationOverridePreviewMemberList, location_name: 'NewMembers', traits: {"smithy.api#documentation" => "<p>Information about contacts to add to an on-call rotation override.</p>"}))
    PreviewOverride.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Information about the time a rotation override would begin.</p>"}))
    PreviewOverride.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Information about the time a rotation override would end.</p>"}))
    PreviewOverride.type = Types::PreviewOverride
    PutContactPolicyRequest.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    PutContactPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>Details of the resource policy.</p>", "smithy.api#required" => {}}))
    PutContactPolicyRequest.type = Types::PutContactPolicyRequest
    PutContactPolicyResult.type = Types::PutContactPolicyResult
    Receipt.add_member(:contact_channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel Incident Manager engaged.</p>"}))
    Receipt.add_member(:receipt_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptType, location_name: 'ReceiptType', traits: {"smithy.api#documentation" => "<p>The type follows the engagement cycle, <code>SENT</code>, <code>DELIVERED</code>, and\n            <code>READ</code>.</p>", "smithy.api#required" => {}}))
    Receipt.add_member(:receipt_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiptInfo, location_name: 'ReceiptInfo', traits: {"smithy.api#documentation" => "<p>Information provided during the page acknowledgement.</p>"}))
    Receipt.add_member(:receipt_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'ReceiptTime', traits: {"smithy.api#documentation" => "<p>The time receipt was <code>SENT</code>, <code>DELIVERED</code>, or\n         <code>READ</code>.</p>", "smithy.api#required" => {}}))
    Receipt.type = Types::Receipt
    ReceiptType.add_member(:delivered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERED', traits: {"smithy.api#enumValue" => "DELIVERED"}))
    ReceiptType.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ReceiptType.add_member(:read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    ReceiptType.add_member(:sent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENT', traits: {"smithy.api#enumValue" => "SENT"}))
    ReceiptType.add_member(:stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP', traits: {"smithy.api#enumValue" => "STOP"}))
    ReceiptsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Receipt)
    RecurrenceSettings.add_member(:monthly_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlySettings, location_name: 'MonthlySettings', traits: {"smithy.api#documentation" => "<p>Information about on-call rotations that recur monthly.</p>"}))
    RecurrenceSettings.add_member(:weekly_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklySettings, location_name: 'WeeklySettings', traits: {"smithy.api#documentation" => "<p>Information about on-call rotations that recur weekly.</p>"}))
    RecurrenceSettings.add_member(:daily_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DailySettings, location_name: 'DailySettings', traits: {"smithy.api#documentation" => "<p>Information about on-call rotations that recur daily.</p>"}))
    RecurrenceSettings.add_member(:number_of_on_calls, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfOnCalls, location_name: 'NumberOfOnCalls', traits: {"smithy.api#documentation" => "<p>The number of contacts, or shift team members designated to be on call concurrently\n         during a shift. For example, in an on-call schedule containing ten contacts, a value of\n            <code>2</code> designates that two of them are on call at any given time.</p>", "smithy.api#required" => {}}))
    RecurrenceSettings.add_member(:shift_coverages, Smithy::Schema::Shapes::ShapeRef.new(shape: ShiftCoveragesMap, location_name: 'ShiftCoverages', traits: {"smithy.api#documentation" => "<p>Information about the days of the week included in on-call rotation coverage.</p>"}))
    RecurrenceSettings.add_member(:recurrence_multiplier, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceMultiplier, location_name: 'RecurrenceMultiplier', traits: {"smithy.api#documentation" => "<p>The number of days, weeks, or months a single rotation lasts.</p>", "smithy.api#required" => {}}))
    RecurrenceSettings.type = Types::RecurrenceSettings
    ResolutionContact.add_member(:contact_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a contact in the engagement resolution process.\n      </p>", "smithy.api#required" => {}}))
    ResolutionContact.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of contact for a resolution step.</p>", "smithy.api#required" => {}}))
    ResolutionContact.add_member(:stage_index, Smithy::Schema::Shapes::ShapeRef.new(shape: StageIndex, location_name: 'StageIndex', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The stage in the escalation plan that resolves to this contact.</p>"}))
    ResolutionContact.type = Types::ResolutionContact
    ResolutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionContact)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "Hypothetical resource identifier that was not found", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "Hypothetical resource type that was not found", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Rotation.add_member(:rotation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation.</p>", "smithy.api#required" => {}}))
    Rotation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rotation.</p>", "smithy.api#required" => {}}))
    Rotation.add_member(:contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'ContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts assigned to the rotation team.</p>"}))
    Rotation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time the rotation becomes active.</p>"}))
    Rotation.add_member(:time_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneId, location_name: 'TimeZoneId', traits: {"smithy.api#documentation" => "<p>The time zone the rotation’s activity is based on, in Internet Assigned Numbers\n         Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or \"Asia/Seoul\".\n      </p>"}))
    Rotation.add_member(:recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: 'Recurrence', traits: {"smithy.api#documentation" => "<p>Information about when an on-call rotation is in effect and how long the rotation period\n         lasts.</p>"}))
    Rotation.type = Types::Rotation
    RotationContactsArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn)
    RotationOverride.add_member(:rotation_override_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'RotationOverrideId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the override to an on-call rotation.</p>", "smithy.api#required" => {}}))
    RotationOverride.add_member(:new_contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'NewContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts assigned to the override of the on-call\n         rotation.</p>", "smithy.api#required" => {}}))
    RotationOverride.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time a rotation override begins.</p>", "smithy.api#required" => {}}))
    RotationOverride.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time a rotation override ends.</p>", "smithy.api#required" => {}}))
    RotationOverride.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time a rotation override was created.</p>", "smithy.api#required" => {}}))
    RotationOverride.type = Types::RotationOverride
    RotationOverrideContactsArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn)
    RotationOverridePreviewMemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    RotationOverrides.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RotationOverride)
    RotationPreviewMemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    RotationShift.add_member(:contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'ContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts who are part of the shift rotation.\n      </p>"}))
    RotationShift.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time a shift rotation begins.</p>", "smithy.api#required" => {}}))
    RotationShift.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time a shift rotation ends.</p>", "smithy.api#required" => {}}))
    RotationShift.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShiftType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of shift rotation.</p>"}))
    RotationShift.add_member(:shift_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ShiftDetails, location_name: 'ShiftDetails', traits: {"smithy.api#documentation" => "<p>Additional information about an on-call rotation shift.</p>"}))
    RotationShift.type = Types::RotationShift
    RotationShifts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RotationShift)
    Rotations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rotation)
    SendActivationCodeRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel.</p>", "smithy.api#required" => {}}))
    SendActivationCodeRequest.type = Types::SendActivationCodeRequest
    SendActivationCodeResult.type = Types::SendActivationCodeResult
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "Identifier of the resource affected"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "Type of the resource affected"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "Service Quotas requirement to identify originating service", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "Service Quotas requirement to identify originating quota", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShiftCoveragesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    ShiftCoveragesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageTimes)
    ShiftDetails.add_member(:overridden_contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArnList, location_name: 'OverriddenContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resources Names (ARNs) of the contacts who were replaced in a shift when an\n         override was created. If the override is deleted, these contacts are restored to the\n         shift.</p>", "smithy.api#required" => {}}))
    ShiftDetails.type = Types::ShiftDetails
    ShiftType.add_member(:regular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGULAR', traits: {"smithy.api#enumValue" => "REGULAR"}))
    ShiftType.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDDEN', traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    SsmContactsArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn)
    Stage.add_member(:duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: StageDurationInMins, location_name: 'DurationInMinutes', traits: {"smithy.api#documentation" => "<p>The time to wait until beginning the next stage. The duration can only be set to 0 if a\n         target is specified.</p>", "smithy.api#required" => {}}))
    Stage.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetsList, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The contacts or contact methods that the escalation plan or engagement plan is\n         engaging.</p>", "smithy.api#required" => {}}))
    Stage.type = Types::Stage
    StagesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stage)
    StartEngagementRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact being engaged.</p>", "smithy.api#required" => {}}))
    StartEngagementRequest.add_member(:sender, Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'Sender', traits: {"smithy.api#documentation" => "<p>The user that started the engagement.</p>", "smithy.api#required" => {}}))
    StartEngagementRequest.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The secure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    StartEngagementRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The secure content of the message that was sent to the contact. Use this field for\n         engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>", "smithy.api#required" => {}}))
    StartEngagementRequest.add_member(:public_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicSubject, location_name: 'PublicSubject', traits: {"smithy.api#documentation" => "<p>The insecure subject of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    StartEngagementRequest.add_member(:public_content, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicContent, location_name: 'PublicContent', traits: {"smithy.api#documentation" => "<p>The insecure content of the message that was sent to the contact. Use this field for\n         engagements to <code>SMS</code>.</p>"}))
    StartEngagementRequest.add_member(:incident_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IncidentId, location_name: 'IncidentId', traits: {"smithy.api#documentation" => "<p>The ARN of the incident that the engagement is part of.</p>"}))
    StartEngagementRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A token ensuring that the operation is called only once with the specified\n         details.</p>", "smithy.api#idempotencyToken" => {}}))
    StartEngagementRequest.type = Types::StartEngagementRequest
    StartEngagementResult.add_member(:engagement_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementArn', traits: {"smithy.api#documentation" => "<p>The ARN of the engagement.</p>", "smithy.api#required" => {}}))
    StartEngagementResult.type = Types::StartEngagementResult
    StopEngagementRequest.add_member(:engagement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'EngagementId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the engagement.</p>", "smithy.api#required" => {}}))
    StopEngagementRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StopReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason that you're stopping the engagement.</p>"}))
    StopEngagementRequest.type = Types::StopEngagementRequest
    StopEngagementResult.type = Types::StopEngagementResult
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Name of the object key.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags that you are adding to the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    TagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    Target.add_member(:channel_target_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelTargetInfo, location_name: 'ChannelTargetInfo', traits: {"smithy.api#documentation" => "<p>Information about the contact channel Incident Manager is engaging.</p>"}))
    Target.add_member(:contact_target_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactTargetInfo, location_name: 'ContactTargetInfo', traits: {"smithy.api#documentation" => "<p>Information about the contact that Incident Manager is engaging.</p>"}))
    Target.type = Types::Target
    TargetsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "Service Quotas requirement to identify originating service"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "Service Quotas requirement to identify originating quota"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "Advice to clients on when the call can be safely retried", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time range.</p>"}))
    TimeRange.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time range.</p>"}))
    TimeRange.type = Types::TimeRange
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The key of the tag that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateContactChannelRequest.add_member(:contact_channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactChannelId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>", "smithy.api#required" => {}}))
    UpdateContactChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the contact channel.</p>"}))
    UpdateContactChannelRequest.add_member(:delivery_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactChannelAddress, location_name: 'DeliveryAddress', traits: {"smithy.api#documentation" => "<p>The details that Incident Manager uses when trying to engage the contact channel.</p>"}))
    UpdateContactChannelRequest.type = Types::UpdateContactChannelRequest
    UpdateContactChannelResult.type = Types::UpdateContactChannelResult
    UpdateContactRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>", "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The full name of the contact or escalation plan.</p>"}))
    UpdateContactRequest.add_member(:plan, Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'Plan', traits: {"smithy.api#documentation" => "<p>A list of stages. A contact has an engagement plan with stages for specified contact\n         channels. An escalation plan uses these stages to contact specified contacts.</p>"}))
    UpdateContactRequest.type = Types::UpdateContactRequest
    UpdateContactResult.type = Types::UpdateContactResult
    UpdateRotationRequest.add_member(:rotation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmContactsArn, location_name: 'RotationId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rotation to update.</p>", "smithy.api#required" => {}}))
    UpdateRotationRequest.add_member(:contact_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RotationContactsArnList, location_name: 'ContactIds', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the contacts to include in the updated rotation. </p>\n         <p>The order in which you list the contacts is their shift order in the rotation\n         schedule.</p>"}))
    UpdateRotationRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The date and time the rotation goes into effect.</p>"}))
    UpdateRotationRequest.add_member(:time_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZoneId, location_name: 'TimeZoneId', traits: {"smithy.api#documentation" => "<p>The time zone to base the updated rotation’s activity on, in Internet Assigned Numbers\n         Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or \"Asia/Seoul\". For\n         more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone\n            Database</a> on the IANA website.</p>\n         <note>\n            <p>Designators for time zones that don’t support Daylight Savings Time Rules, such as\n            Pacific Standard Time (PST) and Pacific Daylight Time (PDT), aren't supported.</p>\n         </note>"}))
    UpdateRotationRequest.add_member(:recurrence, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceSettings, location_name: 'Recurrence', traits: {"smithy.api#documentation" => "<p>Information about how long the updated rotation lasts before restarting at the beginning\n         of the shift order.</p>", "smithy.api#required" => {}}))
    UpdateRotationRequest.type = Types::UpdateRotationRequest
    UpdateRotationResult.type = Types::UpdateRotationResult
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "Reason the request failed validation"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "The fields that caused the error"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the field that caused the exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Information about what caused the field to cause an exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    WeeklySetting.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#documentation" => "<p>The day of the week when weekly recurring on-call shift rotations begins.</p>", "smithy.api#required" => {}}))
    WeeklySetting.add_member(:hand_off_time, Smithy::Schema::Shapes::ShapeRef.new(shape: HandOffTime, location_name: 'HandOffTime', traits: {"smithy.api#documentation" => "<p>The time of day when a weekly recurring on-call shift rotation begins.</p>", "smithy.api#required" => {}}))
    WeeklySetting.type = Types::WeeklySetting
    WeeklySettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklySetting)

    SSMContacts = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmcontacts#SSMContacts"
      service.name = "SSMContacts"
      service.version = "2021-05-03"
      service.traits = {"aws.api#service" => {"sdkId" => "SSM Contacts", "arnNamespace" => "ssm-contacts", "cloudFormationName" => "SSMContacts", "cloudTrailEventSource" => "ssmcontacts.amazonaws.com", "endpointPrefix" => "ssm-contacts"}, "aws.auth#sigv4" => {"name" => "ssm-contacts"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Systems Manager Incident Manager Contacts"}
      service.add_operation(:accept_page, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#AcceptPage"
        operation.name = "AcceptPage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:activate_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ActivateContactChannel"
        operation.name = "ActivateContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#CreateContact"
        operation.name = "CreateContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#CreateContactChannel"
        operation.name = "CreateContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_rotation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#CreateRotation"
        operation.name = "CreateRotation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRotationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRotationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_rotation_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#CreateRotationOverride"
        operation.name = "CreateRotationOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRotationOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRotationOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deactivate_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DeactivateContactChannel"
        operation.name = "DeactivateContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeactivateContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DeleteContact"
        operation.name = "DeleteContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DeleteContactChannel"
        operation.name = "DeleteContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rotation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DeleteRotation"
        operation.name = "DeleteRotation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRotationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRotationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rotation_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DeleteRotationOverride"
        operation.name = "DeleteRotationOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRotationOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRotationOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DescribeEngagement"
        operation.name = "DescribeEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngagementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_page, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#DescribePage"
        operation.name = "DescribePage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#GetContact"
        operation.name = "GetContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#GetContactChannel"
        operation.name = "GetContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_contact_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#GetContactPolicy"
        operation.name = "GetContactPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_rotation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#GetRotation"
        operation.name = "GetRotation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRotationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRotationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_rotation_override, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#GetRotationOverride"
        operation.name = "GetRotationOverride"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRotationOverrideRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRotationOverrideResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_contact_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListContactChannels"
        operation.name = "ListContactChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactChannelsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListContactChannels.new
      end)
      service.add_operation(:list_contacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListContacts"
        operation.name = "ListContacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListContacts.new
      end)
      service.add_operation(:list_engagements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListEngagements"
        operation.name = "ListEngagements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngagementsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngagementsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEngagements.new
      end)
      service.add_operation(:list_page_receipts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListPageReceipts"
        operation.name = "ListPageReceipts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPageReceiptsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPageReceiptsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPageReceipts.new
      end)
      service.add_operation(:list_page_resolutions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListPageResolutions"
        operation.name = "ListPageResolutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPageResolutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPageResolutionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPageResolutions.new
      end)
      service.add_operation(:list_pages_by_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListPagesByContact"
        operation.name = "ListPagesByContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPagesByContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPagesByContactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPagesByContact.new
      end)
      service.add_operation(:list_pages_by_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListPagesByEngagement"
        operation.name = "ListPagesByEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPagesByEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPagesByEngagementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPagesByEngagement.new
      end)
      service.add_operation(:list_preview_rotation_shifts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListPreviewRotationShifts"
        operation.name = "ListPreviewRotationShifts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreviewRotationShiftsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreviewRotationShiftsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPreviewRotationShifts.new
      end)
      service.add_operation(:list_rotation_overrides, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListRotationOverrides"
        operation.name = "ListRotationOverrides"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationOverridesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationOverridesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRotationOverrides.new
      end)
      service.add_operation(:list_rotation_shifts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListRotationShifts"
        operation.name = "ListRotationShifts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationShiftsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationShiftsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRotationShifts.new
      end)
      service.add_operation(:list_rotations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListRotations"
        operation.name = "ListRotations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRotationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRotations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#ListTagsForResource"
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
      service.add_operation(:put_contact_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#PutContactPolicy"
        operation.name = "PutContactPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutContactPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutContactPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:send_activation_code, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#SendActivationCode"
        operation.name = "SendActivationCode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendActivationCodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendActivationCodeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#StartEngagement"
        operation.name = "StartEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEngagementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#StopEngagement"
        operation.name = "StopEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEngagementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#TagResource"
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
        operation.id = "com.amazonaws.ssmcontacts#UntagResource"
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
      service.add_operation(:update_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#UpdateContact"
        operation.name = "UpdateContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_contact_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#UpdateContactChannel"
        operation.name = "UpdateContactChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactChannelResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DataEncryptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rotation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmcontacts#UpdateRotation"
        operation.name = "UpdateRotation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRotationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRotationResult)
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
