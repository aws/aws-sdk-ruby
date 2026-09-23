# frozen_string_literal: true

# This is generated code!

module Aws::SNS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#ActionsList", name: "ActionsList")
    AddPermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#AddPermissionInput", name: "AddPermissionInput")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AuthorizationErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#AuthorizationErrorException", name: "AuthorizationErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationError", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchEntryIdsNotDistinctException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#BatchEntryIdsNotDistinctException", name: "BatchEntryIdsNotDistinctException", traits: {"aws.protocols#awsQueryError" => {"code" => "BatchEntryIdsNotDistinct", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchRequestTooLongException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#BatchRequestTooLongException", name: "BatchRequestTooLongException", traits: {"aws.protocols#awsQueryError" => {"code" => "BatchRequestTooLong", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchResultErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#BatchResultErrorEntry", name: "BatchResultErrorEntry")
    BatchResultErrorEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#BatchResultErrorEntryList", name: "BatchResultErrorEntryList")
    Binary = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sns#Binary", name: "Binary")
    CheckIfPhoneNumberIsOptedOutInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CheckIfPhoneNumberIsOptedOutInput", name: "CheckIfPhoneNumberIsOptedOutInput")
    CheckIfPhoneNumberIsOptedOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CheckIfPhoneNumberIsOptedOutResponse", name: "CheckIfPhoneNumberIsOptedOutResponse")
    ConcurrentAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ConcurrentAccessException", name: "ConcurrentAccessException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentAccess", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfirmSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ConfirmSubscriptionInput", name: "ConfirmSubscriptionInput")
    ConfirmSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ConfirmSubscriptionResponse", name: "ConfirmSubscriptionResponse")
    CreateEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreateEndpointResponse", name: "CreateEndpointResponse")
    CreatePlatformApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreatePlatformApplicationInput", name: "CreatePlatformApplicationInput")
    CreatePlatformApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreatePlatformApplicationResponse", name: "CreatePlatformApplicationResponse")
    CreatePlatformEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreatePlatformEndpointInput", name: "CreatePlatformEndpointInput")
    CreateSMSSandboxPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreateSMSSandboxPhoneNumberInput", name: "CreateSMSSandboxPhoneNumberInput")
    CreateSMSSandboxPhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreateSMSSandboxPhoneNumberResult", name: "CreateSMSSandboxPhoneNumberResult")
    CreateTopicInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreateTopicInput", name: "CreateTopicInput")
    CreateTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#CreateTopicResponse", name: "CreateTopicResponse")
    DelegatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#DelegatesList", name: "DelegatesList")
    DeleteEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#DeleteEndpointInput", name: "DeleteEndpointInput")
    DeletePlatformApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#DeletePlatformApplicationInput", name: "DeletePlatformApplicationInput")
    DeleteSMSSandboxPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#DeleteSMSSandboxPhoneNumberInput", name: "DeleteSMSSandboxPhoneNumberInput")
    DeleteSMSSandboxPhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#DeleteSMSSandboxPhoneNumberResult", name: "DeleteSMSSandboxPhoneNumberResult")
    DeleteTopicInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#DeleteTopicInput", name: "DeleteTopicInput")
    EmptyBatchRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#EmptyBatchRequestException", name: "EmptyBatchRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "EmptyBatchRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#Endpoint", name: "Endpoint")
    Endpoint2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#Endpoint2", name: "Endpoint2")
    EndpointDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#EndpointDisabledException", name: "EndpointDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointDisabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FilterPolicyLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#FilterPolicyLimitExceededException", name: "FilterPolicyLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "FilterPolicyLimitExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetDataProtectionPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetDataProtectionPolicyInput", name: "GetDataProtectionPolicyInput")
    GetDataProtectionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetDataProtectionPolicyResponse", name: "GetDataProtectionPolicyResponse")
    GetEndpointAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetEndpointAttributesInput", name: "GetEndpointAttributesInput")
    GetEndpointAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetEndpointAttributesResponse", name: "GetEndpointAttributesResponse")
    GetPlatformApplicationAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetPlatformApplicationAttributesInput", name: "GetPlatformApplicationAttributesInput")
    GetPlatformApplicationAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetPlatformApplicationAttributesResponse", name: "GetPlatformApplicationAttributesResponse")
    GetSMSAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSMSAttributesInput", name: "GetSMSAttributesInput")
    GetSMSAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSMSAttributesResponse", name: "GetSMSAttributesResponse")
    GetSMSSandboxAccountStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSMSSandboxAccountStatusInput", name: "GetSMSSandboxAccountStatusInput")
    GetSMSSandboxAccountStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSMSSandboxAccountStatusResult", name: "GetSMSSandboxAccountStatusResult")
    GetSubscriptionAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSubscriptionAttributesInput", name: "GetSubscriptionAttributesInput")
    GetSubscriptionAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetSubscriptionAttributesResponse", name: "GetSubscriptionAttributesResponse")
    GetTopicAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetTopicAttributesInput", name: "GetTopicAttributesInput")
    GetTopicAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#GetTopicAttributesResponse", name: "GetTopicAttributesResponse")
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InternalErrorException", name: "InternalErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidBatchEntryIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InvalidBatchEntryIdException", name: "InvalidBatchEntryIdException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidBatchEntryId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InvalidParameterException", name: "InvalidParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterValueInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSecurityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InvalidSecurityException", name: "InvalidSecurityException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSecurity", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#InvalidStateException", name: "InvalidStateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Iso2CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#Iso2CountryCode", name: "Iso2CountryCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]{2}$"})
    KMSAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSAccessDeniedException", name: "KMSAccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSAccessDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSDisabledException", name: "KMSDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSDisabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSInvalidStateException", name: "KMSInvalidStateException", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSInvalidState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSNotFoundException", name: "KMSNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSOptInRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSOptInRequired", name: "KMSOptInRequired", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSOptInRequired", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    KMSThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#KMSThrottlingException", name: "KMSThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSThrottling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LanguageCodeString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sns#LanguageCodeString", name: "LanguageCodeString")
    ListEndpointsByPlatformApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListEndpointsByPlatformApplicationInput", name: "ListEndpointsByPlatformApplicationInput")
    ListEndpointsByPlatformApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListEndpointsByPlatformApplicationResponse", name: "ListEndpointsByPlatformApplicationResponse")
    ListOfEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#ListOfEndpoints", name: "ListOfEndpoints")
    ListOfPlatformApplications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#ListOfPlatformApplications", name: "ListOfPlatformApplications")
    ListOriginationNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListOriginationNumbersRequest", name: "ListOriginationNumbersRequest")
    ListOriginationNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListOriginationNumbersResult", name: "ListOriginationNumbersResult")
    ListPhoneNumbersOptedOutInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListPhoneNumbersOptedOutInput", name: "ListPhoneNumbersOptedOutInput")
    ListPhoneNumbersOptedOutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListPhoneNumbersOptedOutResponse", name: "ListPhoneNumbersOptedOutResponse")
    ListPlatformApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListPlatformApplicationsInput", name: "ListPlatformApplicationsInput")
    ListPlatformApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListPlatformApplicationsResponse", name: "ListPlatformApplicationsResponse")
    ListSMSSandboxPhoneNumbersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSMSSandboxPhoneNumbersInput", name: "ListSMSSandboxPhoneNumbersInput")
    ListSMSSandboxPhoneNumbersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSMSSandboxPhoneNumbersResult", name: "ListSMSSandboxPhoneNumbersResult")
    ListString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#ListString", name: "ListString")
    ListSubscriptionsByTopicInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSubscriptionsByTopicInput", name: "ListSubscriptionsByTopicInput")
    ListSubscriptionsByTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSubscriptionsByTopicResponse", name: "ListSubscriptionsByTopicResponse")
    ListSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSubscriptionsInput", name: "ListSubscriptionsInput")
    ListSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListSubscriptionsResponse", name: "ListSubscriptionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTopicsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListTopicsInput", name: "ListTopicsInput")
    ListTopicsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ListTopicsResponse", name: "ListTopicsResponse")
    MapStringToString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sns#MapStringToString", name: "MapStringToString")
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sns#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxItemsListOriginationNumbers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sns#MaxItemsListOriginationNumbers", name: "MaxItemsListOriginationNumbers", traits: {"smithy.api#range" => {"min" => 1, "max" => 30}})
    MessageAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sns#MessageAttributeMap", name: "MessageAttributeMap")
    MessageAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#MessageAttributeValue", name: "MessageAttributeValue")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#NotFoundException", name: "NotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumberCapability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sns#NumberCapability", name: "NumberCapability")
    NumberCapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#NumberCapabilityList", name: "NumberCapabilityList")
    OTPCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#OTPCode", name: "OTPCode", traits: {"smithy.api#length" => {"min" => 5, "max" => 8}, "smithy.api#pattern" => "^[0-9]+$"})
    OptInPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#OptInPhoneNumberInput", name: "OptInPhoneNumberInput")
    OptInPhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#OptInPhoneNumberResponse", name: "OptInPhoneNumberResponse")
    OptedOutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#OptedOutException", name: "OptedOutException", traits: {"aws.protocols#awsQueryError" => {"code" => "OptedOut", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#sensitive" => {}})
    PhoneNumberInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PhoneNumberInformation", name: "PhoneNumberInformation")
    PhoneNumberInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#PhoneNumberInformationList", name: "PhoneNumberInformationList")
    PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#PhoneNumberList", name: "PhoneNumberList")
    PhoneNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#PhoneNumberString", name: "PhoneNumberString", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#pattern" => "^(\\+[0-9]{8,}|[0-9]{0,9})$", "smithy.api#sensitive" => {}})
    PlatformApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PlatformApplication", name: "PlatformApplication")
    PlatformApplicationDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PlatformApplicationDisabledException", name: "PlatformApplicationDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "PlatformApplicationDisabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PublishBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishBatchInput", name: "PublishBatchInput")
    PublishBatchRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishBatchRequestEntry", name: "PublishBatchRequestEntry")
    PublishBatchRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#PublishBatchRequestEntryList", name: "PublishBatchRequestEntryList")
    PublishBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishBatchResponse", name: "PublishBatchResponse")
    PublishBatchResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishBatchResultEntry", name: "PublishBatchResultEntry")
    PublishBatchResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#PublishBatchResultEntryList", name: "PublishBatchResultEntryList")
    PublishInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishInput", name: "PublishInput")
    PublishResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PublishResponse", name: "PublishResponse")
    PutDataProtectionPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#PutDataProtectionPolicyInput", name: "PutDataProtectionPolicyInput")
    RemovePermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#RemovePermissionInput", name: "RemovePermissionInput")
    ReplayLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ReplayLimitExceededException", name: "ReplayLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ReplayLimitExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RouteType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sns#RouteType", name: "RouteType")
    SMSSandboxPhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SMSSandboxPhoneNumber", name: "SMSSandboxPhoneNumber")
    SMSSandboxPhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#SMSSandboxPhoneNumberList", name: "SMSSandboxPhoneNumberList")
    SMSSandboxPhoneNumberVerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sns#SMSSandboxPhoneNumberVerificationStatus", name: "SMSSandboxPhoneNumberVerificationStatus")
    SetEndpointAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetEndpointAttributesInput", name: "SetEndpointAttributesInput")
    SetPlatformApplicationAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetPlatformApplicationAttributesInput", name: "SetPlatformApplicationAttributesInput")
    SetSMSAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetSMSAttributesInput", name: "SetSMSAttributesInput")
    SetSMSAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetSMSAttributesResponse", name: "SetSMSAttributesResponse")
    SetSubscriptionAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetSubscriptionAttributesInput", name: "SetSubscriptionAttributesInput")
    SetTopicAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SetTopicAttributesInput", name: "SetTopicAttributesInput")
    StaleTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#StaleTagException", name: "StaleTagException", traits: {"aws.protocols#awsQueryError" => {"code" => "StaleTag", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#String", name: "String")
    SubscribeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SubscribeInput", name: "SubscribeInput")
    SubscribeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SubscribeResponse", name: "SubscribeResponse")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#Subscription", name: "Subscription")
    SubscriptionAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sns#SubscriptionAttributesMap", name: "SubscriptionAttributesMap")
    SubscriptionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#SubscriptionLimitExceededException", name: "SubscriptionLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionLimitExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    SubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#SubscriptionsList", name: "SubscriptionsList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#TagKeyList", name: "TagKeyList")
    TagLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TagLimitExceededException", name: "TagLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "TagLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#TagList", name: "TagList")
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TagPolicyException", name: "TagPolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "TagPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ThrottledException", name: "ThrottledException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttled", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sns#Timestamp", name: "Timestamp")
    TooManyEntriesInBatchRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TooManyEntriesInBatchRequestException", name: "TooManyEntriesInBatchRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyEntriesInBatchRequest", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Topic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#Topic", name: "Topic")
    TopicAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sns#TopicAttributesMap", name: "TopicAttributesMap")
    TopicLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#TopicLimitExceededException", name: "TopicLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "TopicLimitExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    TopicsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sns#TopicsList", name: "TopicsList")
    UnsubscribeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#UnsubscribeInput", name: "UnsubscribeInput")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#UntagResourceResponse", name: "UntagResourceResponse")
    UserErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#UserErrorException", name: "UserErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "UserError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VerificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#VerificationException", name: "VerificationException", traits: {"smithy.api#error" => "client"})
    VerifySMSSandboxPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#VerifySMSSandboxPhoneNumberInput", name: "VerifySMSSandboxPhoneNumberInput")
    VerifySMSSandboxPhoneNumberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sns#VerifySMSSandboxPhoneNumberResult", name: "VerifySMSSandboxPhoneNumberResult")
    Account = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#account", name: "Account")
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#action", name: "Action")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#attributeName", name: "AttributeName")
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#attributeValue", name: "AttributeValue")
    AuthenticateOnUnsubscribe = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#authenticateOnUnsubscribe", name: "AuthenticateOnUnsubscribe")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sns#boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Delegate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#delegate", name: "Delegate")
    Label = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#label", name: "Label")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#message", name: "Message")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#messageId", name: "MessageId")
    MessageStructure = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#messageStructure", name: "MessageStructure")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#nextToken", name: "NextToken")
    Protocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#protocol", name: "Protocol")
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#subject", name: "Subject")
    SubscriptionARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#subscriptionARN", name: "SubscriptionARN")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#token", name: "Token")
    TopicARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#topicARN", name: "TopicARN")
    TopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sns#topicName", name: "TopicName")

    ActionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "member"))
    AddPermissionInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    AddPermissionInput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, name: "Label", traits: {"smithy.api#required" => {}}))
    AddPermissionInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegatesList, name: "AWSAccountId", traits: {"smithy.api#required" => {}}))
    AddPermissionInput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsList, name: "ActionName", traits: {"smithy.api#required" => {}}))
    AddPermissionInput.type = Types::AddPermissionInput
    AuthorizationErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AuthorizationErrorException.type = Types::AuthorizationErrorException
    BatchEntryIdsNotDistinctException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BatchEntryIdsNotDistinctException.type = Types::BatchEntryIdsNotDistinctException
    BatchRequestTooLongException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BatchRequestTooLongException.type = Types::BatchRequestTooLongException
    BatchResultErrorEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchResultErrorEntry.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#required" => {}}))
    BatchResultErrorEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchResultErrorEntry.add_member(:sender_fault, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SenderFault", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    BatchResultErrorEntry.type = Types::BatchResultErrorEntry
    BatchResultErrorEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchResultErrorEntry, name: "member"))
    CheckIfPhoneNumberIsOptedOutInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    CheckIfPhoneNumberIsOptedOutInput.type = Types::CheckIfPhoneNumberIsOptedOutInput
    CheckIfPhoneNumberIsOptedOutResponse.add_member(:is_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isOptedOut", traits: {"smithy.api#default" => false}))
    CheckIfPhoneNumberIsOptedOutResponse.type = Types::CheckIfPhoneNumberIsOptedOutResponse
    ConcurrentAccessException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConcurrentAccessException.type = Types::ConcurrentAccessException
    ConfirmSubscriptionInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    ConfirmSubscriptionInput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "Token", traits: {"smithy.api#required" => {}}))
    ConfirmSubscriptionInput.add_member(:authenticate_on_unsubscribe, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticateOnUnsubscribe, name: "AuthenticateOnUnsubscribe"))
    ConfirmSubscriptionInput.type = Types::ConfirmSubscriptionInput
    ConfirmSubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn"))
    ConfirmSubscriptionResponse.type = Types::ConfirmSubscriptionResponse
    CreateEndpointResponse.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn"))
    CreateEndpointResponse.type = Types::CreateEndpointResponse
    CreatePlatformApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePlatformApplicationInput.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Platform", traits: {"smithy.api#required" => {}}))
    CreatePlatformApplicationInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes", traits: {"smithy.api#required" => {}}))
    CreatePlatformApplicationInput.type = Types::CreatePlatformApplicationInput
    CreatePlatformApplicationResponse.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn"))
    CreatePlatformApplicationResponse.type = Types::CreatePlatformApplicationResponse
    CreatePlatformEndpointInput.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn", traits: {"smithy.api#required" => {}}))
    CreatePlatformEndpointInput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Token", traits: {"smithy.api#required" => {}}))
    CreatePlatformEndpointInput.add_member(:custom_user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomUserData"))
    CreatePlatformEndpointInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes"))
    CreatePlatformEndpointInput.type = Types::CreatePlatformEndpointInput
    CreateSMSSandboxPhoneNumberInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberString, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateSMSSandboxPhoneNumberInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCodeString, name: "LanguageCode"))
    CreateSMSSandboxPhoneNumberInput.type = Types::CreateSMSSandboxPhoneNumberInput
    CreateSMSSandboxPhoneNumberResult.type = Types::CreateSMSSandboxPhoneNumberResult
    CreateTopicInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateTopicInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicAttributesMap, name: "Attributes"))
    CreateTopicInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTopicInput.add_member(:data_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "DataProtectionPolicy"))
    CreateTopicInput.type = Types::CreateTopicInput
    CreateTopicResponse.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn"))
    CreateTopicResponse.type = Types::CreateTopicResponse
    DelegatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Delegate, name: "member"))
    DeleteEndpointInput.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteEndpointInput.type = Types::DeleteEndpointInput
    DeletePlatformApplicationInput.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn", traits: {"smithy.api#required" => {}}))
    DeletePlatformApplicationInput.type = Types::DeletePlatformApplicationInput
    DeleteSMSSandboxPhoneNumberInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberString, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    DeleteSMSSandboxPhoneNumberInput.type = Types::DeleteSMSSandboxPhoneNumberInput
    DeleteSMSSandboxPhoneNumberResult.type = Types::DeleteSMSSandboxPhoneNumberResult
    DeleteTopicInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    DeleteTopicInput.type = Types::DeleteTopicInput
    EmptyBatchRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    EmptyBatchRequestException.type = Types::EmptyBatchRequestException
    Endpoint.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn"))
    Endpoint.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes"))
    Endpoint.type = Types::Endpoint
    EndpointDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    EndpointDisabledException.type = Types::EndpointDisabledException
    FilterPolicyLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    FilterPolicyLimitExceededException.type = Types::FilterPolicyLimitExceededException
    GetDataProtectionPolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetDataProtectionPolicyInput.type = Types::GetDataProtectionPolicyInput
    GetDataProtectionPolicyResponse.add_member(:data_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "DataProtectionPolicy"))
    GetDataProtectionPolicyResponse.type = Types::GetDataProtectionPolicyResponse
    GetEndpointAttributesInput.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    GetEndpointAttributesInput.type = Types::GetEndpointAttributesInput
    GetEndpointAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes"))
    GetEndpointAttributesResponse.type = Types::GetEndpointAttributesResponse
    GetPlatformApplicationAttributesInput.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn", traits: {"smithy.api#required" => {}}))
    GetPlatformApplicationAttributesInput.type = Types::GetPlatformApplicationAttributesInput
    GetPlatformApplicationAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes"))
    GetPlatformApplicationAttributesResponse.type = Types::GetPlatformApplicationAttributesResponse
    GetSMSAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListString, name: "attributes"))
    GetSMSAttributesInput.type = Types::GetSMSAttributesInput
    GetSMSAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "attributes"))
    GetSMSAttributesResponse.type = Types::GetSMSAttributesResponse
    GetSMSSandboxAccountStatusInput.type = Types::GetSMSSandboxAccountStatusInput
    GetSMSSandboxAccountStatusResult.add_member(:is_in_sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsInSandbox", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetSMSSandboxAccountStatusResult.type = Types::GetSMSSandboxAccountStatusResult
    GetSubscriptionAttributesInput.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn", traits: {"smithy.api#required" => {}}))
    GetSubscriptionAttributesInput.type = Types::GetSubscriptionAttributesInput
    GetSubscriptionAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionAttributesMap, name: "Attributes"))
    GetSubscriptionAttributesResponse.type = Types::GetSubscriptionAttributesResponse
    GetTopicAttributesInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    GetTopicAttributesInput.type = Types::GetTopicAttributesInput
    GetTopicAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicAttributesMap, name: "Attributes"))
    GetTopicAttributesResponse.type = Types::GetTopicAttributesResponse
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalErrorException.type = Types::InternalErrorException
    InvalidBatchEntryIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidBatchEntryIdException.type = Types::InvalidBatchEntryIdException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidSecurityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidSecurityException.type = Types::InvalidSecurityException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidStateException.type = Types::InvalidStateException
    KMSAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSAccessDeniedException.type = Types::KMSAccessDeniedException
    KMSDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSDisabledException.type = Types::KMSDisabledException
    KMSInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSInvalidStateException.type = Types::KMSInvalidStateException
    KMSNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSNotFoundException.type = Types::KMSNotFoundException
    KMSOptInRequired.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSOptInRequired.type = Types::KMSOptInRequired
    KMSThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    KMSThrottlingException.type = Types::KMSThrottlingException
    LanguageCodeString.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_US", traits: {"smithy.api#enumValue" => "en-US"}))
    LanguageCodeString.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "en_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    LanguageCodeString.add_member(:es_419, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "es_419", traits: {"smithy.api#enumValue" => "es-419"}))
    LanguageCodeString.add_member(:es_es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "es_ES", traits: {"smithy.api#enumValue" => "es-ES"}))
    LanguageCodeString.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "de_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    LanguageCodeString.add_member(:fr_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fr_CA", traits: {"smithy.api#enumValue" => "fr-CA"}))
    LanguageCodeString.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fr_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    LanguageCodeString.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "it_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    LanguageCodeString.add_member(:jp_jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "jp_JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    LanguageCodeString.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pt_BR", traits: {"smithy.api#enumValue" => "pt-BR"}))
    LanguageCodeString.add_member(:kr_kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "kr_KR", traits: {"smithy.api#enumValue" => "kr-KR"}))
    LanguageCodeString.add_member(:zh_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "zh_CN", traits: {"smithy.api#enumValue" => "zh-CN"}))
    LanguageCodeString.add_member(:zh_tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "zh_TW", traits: {"smithy.api#enumValue" => "zh-TW"}))
    ListEndpointsByPlatformApplicationInput.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn", traits: {"smithy.api#required" => {}}))
    ListEndpointsByPlatformApplicationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEndpointsByPlatformApplicationInput.type = Types::ListEndpointsByPlatformApplicationInput
    ListEndpointsByPlatformApplicationResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEndpoints, name: "Endpoints"))
    ListEndpointsByPlatformApplicationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEndpointsByPlatformApplicationResponse.type = Types::ListEndpointsByPlatformApplicationResponse
    ListOfEndpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    ListOfPlatformApplications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformApplication, name: "member"))
    ListOriginationNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOriginationNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsListOriginationNumbers, name: "MaxResults"))
    ListOriginationNumbersRequest.type = Types::ListOriginationNumbersRequest
    ListOriginationNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOriginationNumbersResult.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberInformationList, name: "PhoneNumbers"))
    ListOriginationNumbersResult.type = Types::ListOriginationNumbersResult
    ListPhoneNumbersOptedOutInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListPhoneNumbersOptedOutInput.type = Types::ListPhoneNumbersOptedOutInput
    ListPhoneNumbersOptedOutResponse.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberList, name: "phoneNumbers"))
    ListPhoneNumbersOptedOutResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListPhoneNumbersOptedOutResponse.type = Types::ListPhoneNumbersOptedOutResponse
    ListPlatformApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPlatformApplicationsInput.type = Types::ListPlatformApplicationsInput
    ListPlatformApplicationsResponse.add_member(:platform_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPlatformApplications, name: "PlatformApplications"))
    ListPlatformApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPlatformApplicationsResponse.type = Types::ListPlatformApplicationsResponse
    ListSMSSandboxPhoneNumbersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSMSSandboxPhoneNumbersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxResults"))
    ListSMSSandboxPhoneNumbersInput.type = Types::ListSMSSandboxPhoneNumbersInput
    ListSMSSandboxPhoneNumbersResult.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSSandboxPhoneNumberList, name: "PhoneNumbers", traits: {"smithy.api#required" => {}}))
    ListSMSSandboxPhoneNumbersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSMSSandboxPhoneNumbersResult.type = Types::ListSMSSandboxPhoneNumbersResult
    ListString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ListSubscriptionsByTopicInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    ListSubscriptionsByTopicInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscriptionsByTopicInput.type = Types::ListSubscriptionsByTopicInput
    ListSubscriptionsByTopicResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionsList, name: "Subscriptions"))
    ListSubscriptionsByTopicResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscriptionsByTopicResponse.type = Types::ListSubscriptionsByTopicResponse
    ListSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscriptionsInput.type = Types::ListSubscriptionsInput
    ListSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionsList, name: "Subscriptions"))
    ListSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSubscriptionsResponse.type = Types::ListSubscriptionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTopicsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTopicsInput.type = Types::ListTopicsInput
    ListTopicsResponse.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicsList, name: "Topics"))
    ListTopicsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTopicsResponse.type = Types::ListTopicsResponse
    MapStringToString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapStringToString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    MessageAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key", traits: {"smithy.api#xmlName" => "Name"}))
    MessageAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeValue, name: "value", traits: {"smithy.api#xmlName" => "Value"}))
    MessageAttributeValue.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType", traits: {"smithy.api#required" => {}}))
    MessageAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StringValue"))
    MessageAttributeValue.add_member(:binary_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Binary, name: "BinaryValue"))
    MessageAttributeValue.type = Types::MessageAttributeValue
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.type = Types::NotFoundException
    NumberCapability.add_member(:sms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS", traits: {"smithy.api#enumValue" => "SMS"}))
    NumberCapability.add_member(:mms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MMS", traits: {"smithy.api#enumValue" => "MMS"}))
    NumberCapability.add_member(:voice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOICE", traits: {"smithy.api#enumValue" => "VOICE"}))
    NumberCapabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapability, name: "member"))
    OptInPhoneNumberInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    OptInPhoneNumberInput.type = Types::OptInPhoneNumberInput
    OptInPhoneNumberResponse.type = Types::OptInPhoneNumberResponse
    OptedOutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OptedOutException.type = Types::OptedOutException
    PhoneNumberInformation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    PhoneNumberInformation.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    PhoneNumberInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    PhoneNumberInformation.add_member(:iso2_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso2CountryCode, name: "Iso2CountryCode"))
    PhoneNumberInformation.add_member(:route_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteType, name: "RouteType"))
    PhoneNumberInformation.add_member(:number_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberCapabilityList, name: "NumberCapabilities"))
    PhoneNumberInformation.type = Types::PhoneNumberInformation
    PhoneNumberInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberInformation, name: "member"))
    PhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    PlatformApplication.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn"))
    PlatformApplication.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes"))
    PlatformApplication.type = Types::PlatformApplication
    PlatformApplicationDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PlatformApplicationDisabledException.type = Types::PlatformApplicationDisabledException
    PublishBatchInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    PublishBatchInput.add_member(:publish_batch_request_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishBatchRequestEntryList, name: "PublishBatchRequestEntries", traits: {"smithy.api#required" => {}}))
    PublishBatchInput.type = Types::PublishBatchInput
    PublishBatchRequestEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    PublishBatchRequestEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    PublishBatchRequestEntry.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "Subject"))
    PublishBatchRequestEntry.add_member(:message_structure, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageStructure, name: "MessageStructure"))
    PublishBatchRequestEntry.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, name: "MessageAttributes"))
    PublishBatchRequestEntry.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageDeduplicationId"))
    PublishBatchRequestEntry.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageGroupId"))
    PublishBatchRequestEntry.type = Types::PublishBatchRequestEntry
    PublishBatchRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishBatchRequestEntry, name: "member"))
    PublishBatchResponse.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishBatchResultEntryList, name: "Successful"))
    PublishBatchResponse.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchResultErrorEntryList, name: "Failed"))
    PublishBatchResponse.type = Types::PublishBatchResponse
    PublishBatchResultEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    PublishBatchResultEntry.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId"))
    PublishBatchResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SequenceNumber"))
    PublishBatchResultEntry.type = Types::PublishBatchResultEntry
    PublishBatchResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishBatchResultEntry, name: "member"))
    PublishInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn"))
    PublishInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetArn"))
    PublishInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    PublishInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    PublishInput.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "Subject"))
    PublishInput.add_member(:message_structure, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageStructure, name: "MessageStructure"))
    PublishInput.add_member(:message_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAttributeMap, name: "MessageAttributes"))
    PublishInput.add_member(:message_deduplication_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageDeduplicationId"))
    PublishInput.add_member(:message_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageGroupId"))
    PublishInput.type = Types::PublishInput
    PublishResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId"))
    PublishResponse.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SequenceNumber"))
    PublishResponse.type = Types::PublishResponse
    PutDataProtectionPolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutDataProtectionPolicyInput.add_member(:data_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "DataProtectionPolicy", traits: {"smithy.api#required" => {}}))
    PutDataProtectionPolicyInput.type = Types::PutDataProtectionPolicyInput
    RemovePermissionInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    RemovePermissionInput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, name: "Label", traits: {"smithy.api#required" => {}}))
    RemovePermissionInput.type = Types::RemovePermissionInput
    ReplayLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ReplayLimitExceededException.type = Types::ReplayLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RouteType.add_member(:transactional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Transactional", traits: {"smithy.api#enumValue" => "Transactional"}))
    RouteType.add_member(:promotional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Promotional", traits: {"smithy.api#enumValue" => "Promotional"}))
    RouteType.add_member(:premium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Premium", traits: {"smithy.api#enumValue" => "Premium"}))
    SMSSandboxPhoneNumber.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberString, name: "PhoneNumber"))
    SMSSandboxPhoneNumber.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSSandboxPhoneNumberVerificationStatus, name: "Status"))
    SMSSandboxPhoneNumber.type = Types::SMSSandboxPhoneNumber
    SMSSandboxPhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SMSSandboxPhoneNumber, name: "member"))
    SMSSandboxPhoneNumberVerificationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    SMSSandboxPhoneNumberVerificationStatus.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Verified", traits: {"smithy.api#enumValue" => "Verified"}))
    SetEndpointAttributesInput.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointArn", traits: {"smithy.api#required" => {}}))
    SetEndpointAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes", traits: {"smithy.api#required" => {}}))
    SetEndpointAttributesInput.type = Types::SetEndpointAttributesInput
    SetPlatformApplicationAttributesInput.add_member(:platform_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformApplicationArn", traits: {"smithy.api#required" => {}}))
    SetPlatformApplicationAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "Attributes", traits: {"smithy.api#required" => {}}))
    SetPlatformApplicationAttributesInput.type = Types::SetPlatformApplicationAttributesInput
    SetSMSAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MapStringToString, name: "attributes", traits: {"smithy.api#required" => {}}))
    SetSMSAttributesInput.type = Types::SetSMSAttributesInput
    SetSMSAttributesResponse.type = Types::SetSMSAttributesResponse
    SetSubscriptionAttributesInput.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn", traits: {"smithy.api#required" => {}}))
    SetSubscriptionAttributesInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    SetSubscriptionAttributesInput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue"))
    SetSubscriptionAttributesInput.type = Types::SetSubscriptionAttributesInput
    SetTopicAttributesInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SetTopicAttributesInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    SetTopicAttributesInput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue"))
    SetTopicAttributesInput.type = Types::SetTopicAttributesInput
    StaleTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    StaleTagException.type = Types::StaleTagException
    SubscribeInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SubscribeInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    SubscribeInput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint2, name: "Endpoint"))
    SubscribeInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionAttributesMap, name: "Attributes"))
    SubscribeInput.add_member(:return_subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReturnSubscriptionArn", traits: {"smithy.api#default" => false}))
    SubscribeInput.type = Types::SubscribeInput
    SubscribeResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn"))
    SubscribeResponse.type = Types::SubscribeResponse
    Subscription.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn"))
    Subscription.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Owner"))
    Subscription.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    Subscription.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint2, name: "Endpoint"))
    Subscription.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn"))
    Subscription.type = Types::Subscription
    SubscriptionAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    SubscriptionAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    SubscriptionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    SubscriptionLimitExceededException.type = Types::SubscriptionLimitExceededException
    SubscriptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ThrottledException.type = Types::ThrottledException
    TooManyEntriesInBatchRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyEntriesInBatchRequestException.type = Types::TooManyEntriesInBatchRequestException
    Topic.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicARN, name: "TopicArn"))
    Topic.type = Types::Topic
    TopicAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    TopicAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    TopicLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TopicLimitExceededException.type = Types::TopicLimitExceededException
    TopicsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "member"))
    UnsubscribeInput.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionARN, name: "SubscriptionArn", traits: {"smithy.api#required" => {}}))
    UnsubscribeInput.type = Types::UnsubscribeInput
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UserErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UserErrorException.type = Types::UserErrorException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VerificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    VerificationException.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    VerificationException.type = Types::VerificationException
    VerifySMSSandboxPhoneNumberInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberString, name: "PhoneNumber", traits: {"smithy.api#required" => {}}))
    VerifySMSSandboxPhoneNumberInput.add_member(:one_time_password, ::Smithy::Schema::Shapes::MemberShape.new(target: OTPCode, name: "OneTimePassword", traits: {"smithy.api#required" => {}}))
    VerifySMSSandboxPhoneNumberInput.type = Types::VerifySMSSandboxPhoneNumberInput
    VerifySMSSandboxPhoneNumberResult.type = Types::VerifySMSSandboxPhoneNumberResult

    AmazonSimpleNotificationService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sns#AmazonSimpleNotificationService"
      service.name = "AmazonSimpleNotificationService"
      service.version = "2010-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "SNS", "arnNamespace" => "sns", "cloudFormationName" => "SNS", "cloudTrailEventSource" => "sns.amazonaws.com", "endpointPrefix" => "sns"}, "aws.auth#sigv4" => {"name" => "sns"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Simple Notification Service", "smithy.api#xmlNamespace" => {"uri" => "http://sns.amazonaws.com/doc/2010-03-31/"}}
      service.add_operation(:add_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#AddPermission"
        operation.name = "AddPermission"
        operation.input = AddPermissionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:check_if_phone_number_is_opted_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#CheckIfPhoneNumberIsOptedOut"
        operation.name = "CheckIfPhoneNumberIsOptedOut"
        operation.input = CheckIfPhoneNumberIsOptedOutInput
        operation.output = CheckIfPhoneNumberIsOptedOutResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:confirm_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ConfirmSubscription"
        operation.name = "ConfirmSubscription"
        operation.input = ConfirmSubscriptionInput
        operation.output = ConfirmSubscriptionResponse
        operation.errors << AuthorizationErrorException
        operation.errors << FilterPolicyLimitExceededException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ReplayLimitExceededException
        operation.errors << SubscriptionLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_platform_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#CreatePlatformApplication"
        operation.name = "CreatePlatformApplication"
        operation.input = CreatePlatformApplicationInput
        operation.output = CreatePlatformApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:create_platform_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#CreatePlatformEndpoint"
        operation.name = "CreatePlatformEndpoint"
        operation.input = CreatePlatformEndpointInput
        operation.output = CreateEndpointResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_sms_sandbox_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#CreateSMSSandboxPhoneNumber"
        operation.name = "CreateSMSSandboxPhoneNumber"
        operation.input = CreateSMSSandboxPhoneNumberInput
        operation.output = CreateSMSSandboxPhoneNumberResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << OptedOutException
        operation.errors << ThrottledException
        operation.errors << UserErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#CreateTopic"
        operation.name = "CreateTopic"
        operation.input = CreateTopicInput
        operation.output = CreateTopicResponse
        operation.errors << AuthorizationErrorException
        operation.errors << ConcurrentAccessException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << StaleTagException
        operation.errors << TagLimitExceededException
        operation.errors << TagPolicyException
        operation.errors << TopicLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#DeleteEndpoint"
        operation.name = "DeleteEndpoint"
        operation.input = DeleteEndpointInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:delete_platform_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#DeletePlatformApplication"
        operation.name = "DeletePlatformApplication"
        operation.input = DeletePlatformApplicationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {}
      end)
      service.add_operation(:delete_sms_sandbox_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#DeleteSMSSandboxPhoneNumber"
        operation.name = "DeleteSMSSandboxPhoneNumber"
        operation.input = DeleteSMSSandboxPhoneNumberInput
        operation.output = DeleteSMSSandboxPhoneNumberResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.errors << UserErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#DeleteTopic"
        operation.name = "DeleteTopic"
        operation.input = DeleteTopicInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << ConcurrentAccessException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidStateException
        operation.errors << NotFoundException
        operation.errors << StaleTagException
        operation.errors << TagPolicyException
        operation.traits = {}
      end)
      service.add_operation(:get_data_protection_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetDataProtectionPolicy"
        operation.name = "GetDataProtectionPolicy"
        operation.input = GetDataProtectionPolicyInput
        operation.output = GetDataProtectionPolicyResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_endpoint_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetEndpointAttributes"
        operation.name = "GetEndpointAttributes"
        operation.input = GetEndpointAttributesInput
        operation.output = GetEndpointAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_platform_application_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetPlatformApplicationAttributes"
        operation.name = "GetPlatformApplicationAttributes"
        operation.input = GetPlatformApplicationAttributesInput
        operation.output = GetPlatformApplicationAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_sms_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetSMSAttributes"
        operation.name = "GetSMSAttributes"
        operation.input = GetSMSAttributesInput
        operation.output = GetSMSAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:get_sms_sandbox_account_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetSMSSandboxAccountStatus"
        operation.name = "GetSMSSandboxAccountStatus"
        operation.input = GetSMSSandboxAccountStatusInput
        operation.output = GetSMSSandboxAccountStatusResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:get_subscription_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetSubscriptionAttributes"
        operation.name = "GetSubscriptionAttributes"
        operation.input = GetSubscriptionAttributesInput
        operation.output = GetSubscriptionAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_topic_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#GetTopicAttributes"
        operation.name = "GetTopicAttributes"
        operation.input = GetTopicAttributesInput
        operation.output = GetTopicAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_endpoints_by_platform_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListEndpointsByPlatformApplication"
        operation.name = "ListEndpointsByPlatformApplication"
        operation.input = ListEndpointsByPlatformApplicationInput
        operation.output = ListEndpointsByPlatformApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEndpointsByPlatformApplication.new
      end)
      service.add_operation(:list_origination_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListOriginationNumbers"
        operation.name = "ListOriginationNumbers"
        operation.input = ListOriginationNumbersRequest
        operation.output = ListOriginationNumbersResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOriginationNumbers.new
      end)
      service.add_operation(:list_phone_numbers_opted_out, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListPhoneNumbersOptedOut"
        operation.name = "ListPhoneNumbersOptedOut"
        operation.input = ListPhoneNumbersOptedOutInput
        operation.output = ListPhoneNumbersOptedOutResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPhoneNumbersOptedOut.new
      end)
      service.add_operation(:list_platform_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListPlatformApplications"
        operation.name = "ListPlatformApplications"
        operation.input = ListPlatformApplicationsInput
        operation.output = ListPlatformApplicationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPlatformApplications.new
      end)
      service.add_operation(:list_sms_sandbox_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListSMSSandboxPhoneNumbers"
        operation.name = "ListSMSSandboxPhoneNumbers"
        operation.input = ListSMSSandboxPhoneNumbersInput
        operation.output = ListSMSSandboxPhoneNumbersResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSMSSandboxPhoneNumbers.new
      end)
      service.add_operation(:list_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = ListSubscriptionsInput
        operation.output = ListSubscriptionsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:list_subscriptions_by_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListSubscriptionsByTopic"
        operation.name = "ListSubscriptionsByTopic"
        operation.input = ListSubscriptionsByTopicInput
        operation.output = ListSubscriptionsByTopicResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSubscriptionsByTopic.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AuthorizationErrorException
        operation.errors << ConcurrentAccessException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyException
        operation.traits = {}
      end)
      service.add_operation(:list_topics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#ListTopics"
        operation.name = "ListTopics"
        operation.input = ListTopicsInput
        operation.output = ListTopicsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListTopicsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListTopics.new
      end)
      service.add_operation(:opt_in_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#OptInPhoneNumber"
        operation.name = "OptInPhoneNumber"
        operation.input = OptInPhoneNumberInput
        operation.output = OptInPhoneNumberResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:publish, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#Publish"
        operation.name = "Publish"
        operation.input = PublishInput
        operation.output = PublishResponse
        operation.errors << AuthorizationErrorException
        operation.errors << EndpointDisabledException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSecurityException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << NotFoundException
        operation.errors << PlatformApplicationDisabledException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:publish_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#PublishBatch"
        operation.name = "PublishBatch"
        operation.input = PublishBatchInput
        operation.output = PublishBatchResponse
        operation.errors << AuthorizationErrorException
        operation.errors << BatchEntryIdsNotDistinctException
        operation.errors << BatchRequestTooLongException
        operation.errors << EmptyBatchRequestException
        operation.errors << EndpointDisabledException
        operation.errors << InternalErrorException
        operation.errors << InvalidBatchEntryIdException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSecurityException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << NotFoundException
        operation.errors << PlatformApplicationDisabledException
        operation.errors << TooManyEntriesInBatchRequestException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_data_protection_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#PutDataProtectionPolicy"
        operation.name = "PutDataProtectionPolicy"
        operation.input = PutDataProtectionPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_endpoint_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#SetEndpointAttributes"
        operation.name = "SetEndpointAttributes"
        operation.input = SetEndpointAttributesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_platform_application_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#SetPlatformApplicationAttributes"
        operation.name = "SetPlatformApplicationAttributes"
        operation.input = SetPlatformApplicationAttributesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:set_sms_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#SetSMSAttributes"
        operation.name = "SetSMSAttributes"
        operation.input = SetSMSAttributesInput
        operation.output = SetSMSAttributesResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:set_subscription_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#SetSubscriptionAttributes"
        operation.name = "SetSubscriptionAttributes"
        operation.input = SetSubscriptionAttributesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << FilterPolicyLimitExceededException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ReplayLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:set_topic_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#SetTopicAttributes"
        operation.name = "SetTopicAttributes"
        operation.input = SetTopicAttributesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:subscribe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#Subscribe"
        operation.name = "Subscribe"
        operation.input = SubscribeInput
        operation.output = SubscribeResponse
        operation.errors << AuthorizationErrorException
        operation.errors << FilterPolicyLimitExceededException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.errors << ReplayLimitExceededException
        operation.errors << SubscriptionLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AuthorizationErrorException
        operation.errors << ConcurrentAccessException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << StaleTagException
        operation.errors << TagLimitExceededException
        operation.errors << TagPolicyException
        operation.traits = {}
      end)
      service.add_operation(:unsubscribe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#Unsubscribe"
        operation.name = "Unsubscribe"
        operation.input = UnsubscribeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSecurityException
        operation.errors << NotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AuthorizationErrorException
        operation.errors << ConcurrentAccessException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << StaleTagException
        operation.errors << TagLimitExceededException
        operation.errors << TagPolicyException
        operation.traits = {}
      end)
      service.add_operation(:verify_sms_sandbox_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sns#VerifySMSSandboxPhoneNumber"
        operation.name = "VerifySMSSandboxPhoneNumber"
        operation.input = VerifySMSSandboxPhoneNumberInput
        operation.output = VerifySMSSandboxPhoneNumberResult
        operation.errors << AuthorizationErrorException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledException
        operation.errors << VerificationException
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
