# frozen_string_literal: true

# This is generated code!

module Aws::Route53Domains
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptDomainTransferFromAnotherAwsAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#AcceptDomainTransferFromAnotherAwsAccountRequest", name: "AcceptDomainTransferFromAnotherAwsAccountRequest")
    AcceptDomainTransferFromAnotherAwsAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#AcceptDomainTransferFromAnotherAwsAccountResponse", name: "AcceptDomainTransferFromAnotherAwsAccountResponse")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^(\\d{12})$"})
    AddressLine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#AddressLine", name: "AddressLine", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    AssociateDelegationSignerToDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#AssociateDelegationSignerToDomainRequest", name: "AssociateDelegationSignerToDomainRequest")
    AssociateDelegationSignerToDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#AssociateDelegationSignerToDomainResponse", name: "AssociateDelegationSignerToDomainResponse")
    BillingRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#BillingRecord", name: "BillingRecord")
    BillingRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#BillingRecords", name: "BillingRecords")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53domains#Boolean", name: "Boolean")
    CancelDomainTransferToAnotherAwsAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CancelDomainTransferToAnotherAwsAccountRequest", name: "CancelDomainTransferToAnotherAwsAccountRequest")
    CancelDomainTransferToAnotherAwsAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CancelDomainTransferToAnotherAwsAccountResponse", name: "CancelDomainTransferToAnotherAwsAccountResponse")
    CheckDomainAvailabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CheckDomainAvailabilityRequest", name: "CheckDomainAvailabilityRequest")
    CheckDomainAvailabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CheckDomainAvailabilityResponse", name: "CheckDomainAvailabilityResponse")
    CheckDomainTransferabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CheckDomainTransferabilityRequest", name: "CheckDomainTransferabilityRequest")
    CheckDomainTransferabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#CheckDomainTransferabilityResponse", name: "CheckDomainTransferabilityResponse")
    City = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#City", name: "City", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    Consent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#Consent", name: "Consent")
    ContactDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ContactDetail", name: "ContactDetail", traits: {"smithy.api#sensitive" => {}})
    ContactName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#ContactName", name: "ContactName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    ContactNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#ContactNumber", name: "ContactNumber", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}, "smithy.api#sensitive" => {}})
    ContactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#ContactType", name: "ContactType")
    CountryCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#CountryCode", name: "CountryCode", traits: {"smithy.api#sensitive" => {}})
    Currency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Currency", name: "Currency", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    CurrentExpiryYear = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#CurrentExpiryYear", name: "CurrentExpiryYear", traits: {"smithy.api#default" => 0})
    DNSSec = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DNSSec", name: "DNSSec")
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DeleteDomainRequest", name: "DeleteDomainRequest")
    DeleteDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DeleteDomainResponse", name: "DeleteDomainResponse")
    DeleteTagsForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DeleteTagsForDomainRequest", name: "DeleteTagsForDomainRequest")
    DeleteTagsForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DeleteTagsForDomainResponse", name: "DeleteTagsForDomainResponse")
    DisableDomainAutoRenewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisableDomainAutoRenewRequest", name: "DisableDomainAutoRenewRequest")
    DisableDomainAutoRenewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisableDomainAutoRenewResponse", name: "DisableDomainAutoRenewResponse")
    DisableDomainTransferLockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisableDomainTransferLockRequest", name: "DisableDomainTransferLockRequest")
    DisableDomainTransferLockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisableDomainTransferLockResponse", name: "DisableDomainTransferLockResponse")
    DisassociateDelegationSignerFromDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisassociateDelegationSignerFromDomainRequest", name: "DisassociateDelegationSignerFromDomainRequest")
    DisassociateDelegationSignerFromDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DisassociateDelegationSignerFromDomainResponse", name: "DisassociateDelegationSignerFromDomainResponse")
    DnssecKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DnssecKey", name: "DnssecKey")
    DnssecKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#DnssecKeyList", name: "DnssecKeyList")
    DnssecLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DnssecLimitExceeded", name: "DnssecLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DnssecPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DnssecPublicKey", name: "DnssecPublicKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    DnssecSigningAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DnssecSigningAttributes", name: "DnssecSigningAttributes")
    DomainAuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DomainAuthCode", name: "DomainAuthCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    DomainAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#DomainAvailability", name: "DomainAvailability")
    DomainLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DomainLimitExceeded", name: "DomainLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DomainPrice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DomainPrice", name: "DomainPrice")
    DomainPriceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#DomainPriceList", name: "DomainPriceList")
    DomainPriceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DomainPriceName", name: "DomainPriceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DomainStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#DomainStatus", name: "DomainStatus")
    DomainStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#DomainStatusList", name: "DomainStatusList")
    DomainSuggestion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DomainSuggestion", name: "DomainSuggestion")
    DomainSuggestionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#DomainSuggestionsList", name: "DomainSuggestionsList")
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DomainSummary", name: "DomainSummary")
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#DomainSummaryList", name: "DomainSummaryList")
    DomainTransferability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DomainTransferability", name: "DomainTransferability")
    DuplicateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#DuplicateRequest", name: "DuplicateRequest", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DurationInYears = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#DurationInYears", name: "DurationInYears", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 0, "max" => 254}, "smithy.api#sensitive" => {}})
    EnableDomainAutoRenewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#EnableDomainAutoRenewRequest", name: "EnableDomainAutoRenewRequest")
    EnableDomainAutoRenewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#EnableDomainAutoRenewResponse", name: "EnableDomainAutoRenewResponse")
    EnableDomainTransferLockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#EnableDomainTransferLockRequest", name: "EnableDomainTransferLockRequest")
    EnableDomainTransferLockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#EnableDomainTransferLockResponse", name: "EnableDomainTransferLockResponse")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#ErrorMessage", name: "ErrorMessage")
    ExtraParam = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ExtraParam", name: "ExtraParam")
    ExtraParamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#ExtraParamList", name: "ExtraParamList")
    ExtraParamName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#ExtraParamName", name: "ExtraParamName")
    ExtraParamValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#ExtraParamValue", name: "ExtraParamValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    FIAuthKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#FIAuthKey", name: "FIAuthKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    FilterCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#FilterCondition", name: "FilterCondition")
    FilterConditions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#FilterConditions", name: "FilterConditions")
    GetContactReachabilityStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetContactReachabilityStatusRequest", name: "GetContactReachabilityStatusRequest")
    GetContactReachabilityStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetContactReachabilityStatusResponse", name: "GetContactReachabilityStatusResponse")
    GetDomainDetailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetDomainDetailRequest", name: "GetDomainDetailRequest")
    GetDomainDetailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetDomainDetailResponse", name: "GetDomainDetailResponse")
    GetDomainSuggestionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetDomainSuggestionsRequest", name: "GetDomainSuggestionsRequest")
    GetDomainSuggestionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetDomainSuggestionsResponse", name: "GetDomainSuggestionsResponse")
    GetOperationDetailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetOperationDetailRequest", name: "GetOperationDetailRequest")
    GetOperationDetailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#GetOperationDetailResponse", name: "GetOperationDetailResponse")
    GlueIp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#GlueIp", name: "GlueIp", traits: {"smithy.api#length" => {"min" => 0, "max" => 45}})
    GlueIpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#GlueIpList", name: "GlueIpList")
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#HostName", name: "HostName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#InvalidInput", name: "InvalidInput", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#InvoiceId", name: "InvoiceId")
    Label = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Label", name: "Label", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    LangCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#LangCode", name: "LangCode", traits: {"smithy.api#pattern" => "^|[A-Za-z]{2,3}$"})
    ListDomainsAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#ListDomainsAttributeName", name: "ListDomainsAttributeName")
    ListDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListDomainsRequest", name: "ListDomainsRequest")
    ListDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListDomainsResponse", name: "ListDomainsResponse")
    ListOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListOperationsRequest", name: "ListOperationsRequest")
    ListOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListOperationsResponse", name: "ListOperationsResponse")
    ListOperationsSortAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#ListOperationsSortAttributeName", name: "ListOperationsSortAttributeName")
    ListPricesPageMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#ListPricesPageMaxItems", name: "ListPricesPageMaxItems", traits: {"smithy.api#range" => {"max" => 1000}})
    ListPricesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListPricesRequest", name: "ListPricesRequest")
    ListPricesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListPricesResponse", name: "ListPricesResponse")
    ListTagsForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListTagsForDomainRequest", name: "ListTagsForDomainRequest")
    ListTagsForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ListTagsForDomainResponse", name: "ListTagsForDomainResponse")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Message", name: "Message")
    Nameserver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#Nameserver", name: "Nameserver")
    NameserverList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#NameserverList", name: "NameserverList")
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#NullableInteger", name: "NullableInteger")
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#OperationId", name: "OperationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    OperationLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#OperationLimitExceeded", name: "OperationLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#OperationStatus", name: "OperationStatus")
    OperationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#OperationStatusList", name: "OperationStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    OperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#OperationSummary", name: "OperationSummary")
    OperationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#OperationSummaryList", name: "OperationSummaryList")
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#OperationType", name: "OperationType")
    OperationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#OperationTypeList", name: "OperationTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 21}})
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#Operator", name: "Operator")
    PageMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#PageMarker", name: "PageMarker", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    PageMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53domains#PageMaxItems", name: "PageMaxItems", traits: {"smithy.api#range" => {"max" => 100}})
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Password", name: "Password", traits: {"smithy.api#sensitive" => {}})
    Price = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.route53domains#Price", name: "Price", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})
    PriceWithCurrency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#PriceWithCurrency", name: "PriceWithCurrency")
    PushDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#PushDomainRequest", name: "PushDomainRequest")
    ReachabilityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#ReachabilityStatus", name: "ReachabilityStatus")
    RegisterDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RegisterDomainRequest", name: "RegisterDomainRequest")
    RegisterDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RegisterDomainResponse", name: "RegisterDomainResponse")
    RegistrarName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#RegistrarName", name: "RegistrarName")
    RegistrarUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#RegistrarUrl", name: "RegistrarUrl")
    RegistrarWhoIsServer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#RegistrarWhoIsServer", name: "RegistrarWhoIsServer")
    RegistryDomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#RegistryDomainId", name: "RegistryDomainId")
    RejectDomainTransferFromAnotherAwsAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RejectDomainTransferFromAnotherAwsAccountRequest", name: "RejectDomainTransferFromAnotherAwsAccountRequest")
    RejectDomainTransferFromAnotherAwsAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RejectDomainTransferFromAnotherAwsAccountResponse", name: "RejectDomainTransferFromAnotherAwsAccountResponse")
    RenewDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RenewDomainRequest", name: "RenewDomainRequest")
    RenewDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RenewDomainResponse", name: "RenewDomainResponse")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#RequestId", name: "RequestId")
    Reseller = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Reseller", name: "Reseller")
    ResendContactReachabilityEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ResendContactReachabilityEmailRequest", name: "ResendContactReachabilityEmailRequest")
    ResendContactReachabilityEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ResendContactReachabilityEmailResponse", name: "ResendContactReachabilityEmailResponse")
    ResendOperationAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ResendOperationAuthorizationRequest", name: "ResendOperationAuthorizationRequest")
    RetrieveDomainAuthCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RetrieveDomainAuthCodeRequest", name: "RetrieveDomainAuthCodeRequest")
    RetrieveDomainAuthCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#RetrieveDomainAuthCodeResponse", name: "RetrieveDomainAuthCodeResponse")
    SortCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#SortCondition", name: "SortCondition")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#SortOrder", name: "SortOrder")
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#State", name: "State", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})
    StatusFlag = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#StatusFlag", name: "StatusFlag")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#String", name: "String")
    TLDRulesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#TLDRulesViolation", name: "TLDRulesViolation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#TagList", name: "TagList")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.route53domains#Timestamp", name: "Timestamp")
    TldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#TldName", name: "TldName", traits: {"smithy.api#length" => {"min" => 2, "max" => 255}})
    TransferDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#TransferDomainRequest", name: "TransferDomainRequest")
    TransferDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#TransferDomainResponse", name: "TransferDomainResponse")
    TransferDomainToAnotherAwsAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#TransferDomainToAnotherAwsAccountRequest", name: "TransferDomainToAnotherAwsAccountRequest")
    TransferDomainToAnotherAwsAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#TransferDomainToAnotherAwsAccountResponse", name: "TransferDomainToAnotherAwsAccountResponse")
    Transferable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53domains#Transferable", name: "Transferable")
    UnsupportedTLD = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UnsupportedTLD", name: "UnsupportedTLD", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateDomainContactPrivacyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainContactPrivacyRequest", name: "UpdateDomainContactPrivacyRequest")
    UpdateDomainContactPrivacyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainContactPrivacyResponse", name: "UpdateDomainContactPrivacyResponse")
    UpdateDomainContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainContactRequest", name: "UpdateDomainContactRequest")
    UpdateDomainContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainContactResponse", name: "UpdateDomainContactResponse")
    UpdateDomainNameserversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainNameserversRequest", name: "UpdateDomainNameserversRequest")
    UpdateDomainNameserversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateDomainNameserversResponse", name: "UpdateDomainNameserversResponse")
    UpdateTagsForDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateTagsForDomainRequest", name: "UpdateTagsForDomainRequest")
    UpdateTagsForDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#UpdateTagsForDomainResponse", name: "UpdateTagsForDomainResponse")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53domains#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ViewBillingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ViewBillingRequest", name: "ViewBillingRequest")
    ViewBillingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53domains#ViewBillingResponse", name: "ViewBillingResponse")
    ZipCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53domains#ZipCode", name: "ZipCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#sensitive" => {}})

    AcceptDomainTransferFromAnotherAwsAccountRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    AcceptDomainTransferFromAnotherAwsAccountRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "Password", traits: {"smithy.api#required" => {}}))
    AcceptDomainTransferFromAnotherAwsAccountRequest.type = Types::AcceptDomainTransferFromAnotherAwsAccountRequest
    AcceptDomainTransferFromAnotherAwsAccountResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    AcceptDomainTransferFromAnotherAwsAccountResponse.type = Types::AcceptDomainTransferFromAnotherAwsAccountResponse
    AssociateDelegationSignerToDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    AssociateDelegationSignerToDomainRequest.add_member(:signing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DnssecSigningAttributes, location_name: "SigningAttributes", traits: {"smithy.api#required" => {}}))
    AssociateDelegationSignerToDomainRequest.type = Types::AssociateDelegationSignerToDomainRequest
    AssociateDelegationSignerToDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    AssociateDelegationSignerToDomainResponse.type = Types::AssociateDelegationSignerToDomainResponse
    BillingRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    BillingRecord.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, location_name: "Operation"))
    BillingRecord.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceId, location_name: "InvoiceId"))
    BillingRecord.add_member(:bill_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "BillDate"))
    BillingRecord.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Price, location_name: "Price", traits: {"smithy.api#default" => 0}))
    BillingRecord.type = Types::BillingRecord
    BillingRecords.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BillingRecord)
    CancelDomainTransferToAnotherAwsAccountRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CancelDomainTransferToAnotherAwsAccountRequest.type = Types::CancelDomainTransferToAnotherAwsAccountRequest
    CancelDomainTransferToAnotherAwsAccountResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    CancelDomainTransferToAnotherAwsAccountResponse.type = Types::CancelDomainTransferToAnotherAwsAccountResponse
    CheckDomainAvailabilityRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CheckDomainAvailabilityRequest.add_member(:idn_lang_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LangCode, location_name: "IdnLangCode"))
    CheckDomainAvailabilityRequest.type = Types::CheckDomainAvailabilityRequest
    CheckDomainAvailabilityResponse.add_member(:availability, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAvailability, location_name: "Availability"))
    CheckDomainAvailabilityResponse.type = Types::CheckDomainAvailabilityResponse
    CheckDomainTransferabilityRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CheckDomainTransferabilityRequest.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAuthCode, location_name: "AuthCode"))
    CheckDomainTransferabilityRequest.type = Types::CheckDomainTransferabilityRequest
    CheckDomainTransferabilityResponse.add_member(:transferability, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainTransferability, location_name: "Transferability"))
    CheckDomainTransferabilityResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    CheckDomainTransferabilityResponse.type = Types::CheckDomainTransferabilityResponse
    Consent.add_member(:max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Price, location_name: "MaxPrice", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Consent.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, location_name: "Currency", traits: {"smithy.api#required" => {}}))
    Consent.type = Types::Consent
    ContactDetail.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactName, location_name: "FirstName"))
    ContactDetail.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactName, location_name: "LastName"))
    ContactDetail.add_member(:contact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactType, location_name: "ContactType"))
    ContactDetail.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactName, location_name: "OrganizationName"))
    ContactDetail.add_member(:address_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine, location_name: "AddressLine1"))
    ContactDetail.add_member(:address_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine, location_name: "AddressLine2"))
    ContactDetail.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: City, location_name: "City"))
    ContactDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State"))
    ContactDetail.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, location_name: "CountryCode"))
    ContactDetail.add_member(:zip_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipCode, location_name: "ZipCode"))
    ContactDetail.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactNumber, location_name: "PhoneNumber"))
    ContactDetail.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "Email"))
    ContactDetail.add_member(:fax, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactNumber, location_name: "Fax"))
    ContactDetail.add_member(:extra_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraParamList, location_name: "ExtraParams"))
    ContactDetail.type = Types::ContactDetail
    ContactType.add_member(:person, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERSON", traits: {"smithy.api#enumValue" => "PERSON"}))
    ContactType.add_member(:company, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPANY", traits: {"smithy.api#enumValue" => "COMPANY"}))
    ContactType.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION", traits: {"smithy.api#enumValue" => "ASSOCIATION"}))
    ContactType.add_member(:public_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_BODY", traits: {"smithy.api#enumValue" => "PUBLIC_BODY"}))
    ContactType.add_member(:reseller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESELLER", traits: {"smithy.api#enumValue" => "RESELLER"}))
    CountryCode.add_member(:ac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AC", traits: {"smithy.api#enumValue" => "AC"}))
    CountryCode.add_member(:ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AD", traits: {"smithy.api#enumValue" => "AD"}))
    CountryCode.add_member(:ae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AE", traits: {"smithy.api#enumValue" => "AE"}))
    CountryCode.add_member(:af, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AF", traits: {"smithy.api#enumValue" => "AF"}))
    CountryCode.add_member(:ag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AG", traits: {"smithy.api#enumValue" => "AG"}))
    CountryCode.add_member(:ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    CountryCode.add_member(:al, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AL", traits: {"smithy.api#enumValue" => "AL"}))
    CountryCode.add_member(:am, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AM", traits: {"smithy.api#enumValue" => "AM"}))
    CountryCode.add_member(:an, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AN", traits: {"smithy.api#enumValue" => "AN"}))
    CountryCode.add_member(:ao, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AO", traits: {"smithy.api#enumValue" => "AO"}))
    CountryCode.add_member(:aq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AQ", traits: {"smithy.api#enumValue" => "AQ"}))
    CountryCode.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    CountryCode.add_member(:as, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AS", traits: {"smithy.api#enumValue" => "AS"}))
    CountryCode.add_member(:at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AT", traits: {"smithy.api#enumValue" => "AT"}))
    CountryCode.add_member(:au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU", traits: {"smithy.api#enumValue" => "AU"}))
    CountryCode.add_member(:aw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AW", traits: {"smithy.api#enumValue" => "AW"}))
    CountryCode.add_member(:ax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AX", traits: {"smithy.api#enumValue" => "AX"}))
    CountryCode.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    CountryCode.add_member(:ba, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BA", traits: {"smithy.api#enumValue" => "BA"}))
    CountryCode.add_member(:bb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BB", traits: {"smithy.api#enumValue" => "BB"}))
    CountryCode.add_member(:bd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BD", traits: {"smithy.api#enumValue" => "BD"}))
    CountryCode.add_member(:be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BE", traits: {"smithy.api#enumValue" => "BE"}))
    CountryCode.add_member(:bf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BF", traits: {"smithy.api#enumValue" => "BF"}))
    CountryCode.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    CountryCode.add_member(:bh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BH", traits: {"smithy.api#enumValue" => "BH"}))
    CountryCode.add_member(:bi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BI", traits: {"smithy.api#enumValue" => "BI"}))
    CountryCode.add_member(:bj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BJ", traits: {"smithy.api#enumValue" => "BJ"}))
    CountryCode.add_member(:bl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BL", traits: {"smithy.api#enumValue" => "BL"}))
    CountryCode.add_member(:bm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BM", traits: {"smithy.api#enumValue" => "BM"}))
    CountryCode.add_member(:bn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    CountryCode.add_member(:bo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BO", traits: {"smithy.api#enumValue" => "BO"}))
    CountryCode.add_member(:bq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BQ", traits: {"smithy.api#enumValue" => "BQ"}))
    CountryCode.add_member(:br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BR", traits: {"smithy.api#enumValue" => "BR"}))
    CountryCode.add_member(:bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BS", traits: {"smithy.api#enumValue" => "BS"}))
    CountryCode.add_member(:bt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT", traits: {"smithy.api#enumValue" => "BT"}))
    CountryCode.add_member(:bv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BV", traits: {"smithy.api#enumValue" => "BV"}))
    CountryCode.add_member(:bw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BW", traits: {"smithy.api#enumValue" => "BW"}))
    CountryCode.add_member(:by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BY", traits: {"smithy.api#enumValue" => "BY"}))
    CountryCode.add_member(:bz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BZ", traits: {"smithy.api#enumValue" => "BZ"}))
    CountryCode.add_member(:ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA", traits: {"smithy.api#enumValue" => "CA"}))
    CountryCode.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    CountryCode.add_member(:cd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CD", traits: {"smithy.api#enumValue" => "CD"}))
    CountryCode.add_member(:cf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CF", traits: {"smithy.api#enumValue" => "CF"}))
    CountryCode.add_member(:cg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CG", traits: {"smithy.api#enumValue" => "CG"}))
    CountryCode.add_member(:ch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CH", traits: {"smithy.api#enumValue" => "CH"}))
    CountryCode.add_member(:ci, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CI", traits: {"smithy.api#enumValue" => "CI"}))
    CountryCode.add_member(:ck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CK", traits: {"smithy.api#enumValue" => "CK"}))
    CountryCode.add_member(:cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CL", traits: {"smithy.api#enumValue" => "CL"}))
    CountryCode.add_member(:cm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CM", traits: {"smithy.api#enumValue" => "CM"}))
    CountryCode.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    CountryCode.add_member(:co, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CO", traits: {"smithy.api#enumValue" => "CO"}))
    CountryCode.add_member(:cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    CountryCode.add_member(:cu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CU", traits: {"smithy.api#enumValue" => "CU"}))
    CountryCode.add_member(:cv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CV", traits: {"smithy.api#enumValue" => "CV"}))
    CountryCode.add_member(:cw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CW", traits: {"smithy.api#enumValue" => "CW"}))
    CountryCode.add_member(:cx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CX", traits: {"smithy.api#enumValue" => "CX"}))
    CountryCode.add_member(:cy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CY", traits: {"smithy.api#enumValue" => "CY"}))
    CountryCode.add_member(:cz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CZ", traits: {"smithy.api#enumValue" => "CZ"}))
    CountryCode.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    CountryCode.add_member(:dj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DJ", traits: {"smithy.api#enumValue" => "DJ"}))
    CountryCode.add_member(:dk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DK", traits: {"smithy.api#enumValue" => "DK"}))
    CountryCode.add_member(:dm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DM", traits: {"smithy.api#enumValue" => "DM"}))
    CountryCode.add_member(:do, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO", traits: {"smithy.api#enumValue" => "DO"}))
    CountryCode.add_member(:dz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DZ", traits: {"smithy.api#enumValue" => "DZ"}))
    CountryCode.add_member(:ec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC", traits: {"smithy.api#enumValue" => "EC"}))
    CountryCode.add_member(:ee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EE", traits: {"smithy.api#enumValue" => "EE"}))
    CountryCode.add_member(:eg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EG", traits: {"smithy.api#enumValue" => "EG"}))
    CountryCode.add_member(:eh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EH", traits: {"smithy.api#enumValue" => "EH"}))
    CountryCode.add_member(:er, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ER", traits: {"smithy.api#enumValue" => "ER"}))
    CountryCode.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    CountryCode.add_member(:et, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ET", traits: {"smithy.api#enumValue" => "ET"}))
    CountryCode.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    CountryCode.add_member(:fj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FJ", traits: {"smithy.api#enumValue" => "FJ"}))
    CountryCode.add_member(:fk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FK", traits: {"smithy.api#enumValue" => "FK"}))
    CountryCode.add_member(:fm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FM", traits: {"smithy.api#enumValue" => "FM"}))
    CountryCode.add_member(:fo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FO", traits: {"smithy.api#enumValue" => "FO"}))
    CountryCode.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    CountryCode.add_member(:ga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GA", traits: {"smithy.api#enumValue" => "GA"}))
    CountryCode.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    CountryCode.add_member(:gd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GD", traits: {"smithy.api#enumValue" => "GD"}))
    CountryCode.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    CountryCode.add_member(:gf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GF", traits: {"smithy.api#enumValue" => "GF"}))
    CountryCode.add_member(:gg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GG", traits: {"smithy.api#enumValue" => "GG"}))
    CountryCode.add_member(:gh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GH", traits: {"smithy.api#enumValue" => "GH"}))
    CountryCode.add_member(:gi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GI", traits: {"smithy.api#enumValue" => "GI"}))
    CountryCode.add_member(:gl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GL", traits: {"smithy.api#enumValue" => "GL"}))
    CountryCode.add_member(:gm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GM", traits: {"smithy.api#enumValue" => "GM"}))
    CountryCode.add_member(:gn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GN", traits: {"smithy.api#enumValue" => "GN"}))
    CountryCode.add_member(:gp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP", traits: {"smithy.api#enumValue" => "GP"}))
    CountryCode.add_member(:gq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GQ", traits: {"smithy.api#enumValue" => "GQ"}))
    CountryCode.add_member(:gr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GR", traits: {"smithy.api#enumValue" => "GR"}))
    CountryCode.add_member(:gs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GS", traits: {"smithy.api#enumValue" => "GS"}))
    CountryCode.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    CountryCode.add_member(:gu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GU", traits: {"smithy.api#enumValue" => "GU"}))
    CountryCode.add_member(:gw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GW", traits: {"smithy.api#enumValue" => "GW"}))
    CountryCode.add_member(:gy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GY", traits: {"smithy.api#enumValue" => "GY"}))
    CountryCode.add_member(:hk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    CountryCode.add_member(:hm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HM", traits: {"smithy.api#enumValue" => "HM"}))
    CountryCode.add_member(:hn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HN", traits: {"smithy.api#enumValue" => "HN"}))
    CountryCode.add_member(:hr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HR", traits: {"smithy.api#enumValue" => "HR"}))
    CountryCode.add_member(:ht, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HT", traits: {"smithy.api#enumValue" => "HT"}))
    CountryCode.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    CountryCode.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    CountryCode.add_member(:ie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IE", traits: {"smithy.api#enumValue" => "IE"}))
    CountryCode.add_member(:il, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IL", traits: {"smithy.api#enumValue" => "IL"}))
    CountryCode.add_member(:im, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IM", traits: {"smithy.api#enumValue" => "IM"}))
    CountryCode.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    CountryCode.add_member(:io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO", traits: {"smithy.api#enumValue" => "IO"}))
    CountryCode.add_member(:iq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IQ", traits: {"smithy.api#enumValue" => "IQ"}))
    CountryCode.add_member(:ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IR", traits: {"smithy.api#enumValue" => "IR"}))
    CountryCode.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    CountryCode.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    CountryCode.add_member(:je, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JE", traits: {"smithy.api#enumValue" => "JE"}))
    CountryCode.add_member(:jm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JM", traits: {"smithy.api#enumValue" => "JM"}))
    CountryCode.add_member(:jo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JO", traits: {"smithy.api#enumValue" => "JO"}))
    CountryCode.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    CountryCode.add_member(:ke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KE", traits: {"smithy.api#enumValue" => "KE"}))
    CountryCode.add_member(:kg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KG", traits: {"smithy.api#enumValue" => "KG"}))
    CountryCode.add_member(:kh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KH", traits: {"smithy.api#enumValue" => "KH"}))
    CountryCode.add_member(:ki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KI", traits: {"smithy.api#enumValue" => "KI"}))
    CountryCode.add_member(:km, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KM", traits: {"smithy.api#enumValue" => "KM"}))
    CountryCode.add_member(:kn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KN", traits: {"smithy.api#enumValue" => "KN"}))
    CountryCode.add_member(:kp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KP", traits: {"smithy.api#enumValue" => "KP"}))
    CountryCode.add_member(:kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KR", traits: {"smithy.api#enumValue" => "KR"}))
    CountryCode.add_member(:kw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KW", traits: {"smithy.api#enumValue" => "KW"}))
    CountryCode.add_member(:ky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KY", traits: {"smithy.api#enumValue" => "KY"}))
    CountryCode.add_member(:kz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KZ", traits: {"smithy.api#enumValue" => "KZ"}))
    CountryCode.add_member(:la, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LA", traits: {"smithy.api#enumValue" => "LA"}))
    CountryCode.add_member(:lb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LB", traits: {"smithy.api#enumValue" => "LB"}))
    CountryCode.add_member(:lc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LC", traits: {"smithy.api#enumValue" => "LC"}))
    CountryCode.add_member(:li, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LI", traits: {"smithy.api#enumValue" => "LI"}))
    CountryCode.add_member(:lk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LK", traits: {"smithy.api#enumValue" => "LK"}))
    CountryCode.add_member(:lr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LR", traits: {"smithy.api#enumValue" => "LR"}))
    CountryCode.add_member(:ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    CountryCode.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    CountryCode.add_member(:lu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LU", traits: {"smithy.api#enumValue" => "LU"}))
    CountryCode.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    CountryCode.add_member(:ly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LY", traits: {"smithy.api#enumValue" => "LY"}))
    CountryCode.add_member(:ma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MA", traits: {"smithy.api#enumValue" => "MA"}))
    CountryCode.add_member(:mc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MC", traits: {"smithy.api#enumValue" => "MC"}))
    CountryCode.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    CountryCode.add_member(:me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ME", traits: {"smithy.api#enumValue" => "ME"}))
    CountryCode.add_member(:mf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MF", traits: {"smithy.api#enumValue" => "MF"}))
    CountryCode.add_member(:mg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MG", traits: {"smithy.api#enumValue" => "MG"}))
    CountryCode.add_member(:mh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MH", traits: {"smithy.api#enumValue" => "MH"}))
    CountryCode.add_member(:mk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MK", traits: {"smithy.api#enumValue" => "MK"}))
    CountryCode.add_member(:ml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ML", traits: {"smithy.api#enumValue" => "ML"}))
    CountryCode.add_member(:mm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MM", traits: {"smithy.api#enumValue" => "MM"}))
    CountryCode.add_member(:mn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MN", traits: {"smithy.api#enumValue" => "MN"}))
    CountryCode.add_member(:mo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MO", traits: {"smithy.api#enumValue" => "MO"}))
    CountryCode.add_member(:mp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MP", traits: {"smithy.api#enumValue" => "MP"}))
    CountryCode.add_member(:mq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MQ", traits: {"smithy.api#enumValue" => "MQ"}))
    CountryCode.add_member(:mr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MR", traits: {"smithy.api#enumValue" => "MR"}))
    CountryCode.add_member(:ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MS", traits: {"smithy.api#enumValue" => "MS"}))
    CountryCode.add_member(:mt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MT", traits: {"smithy.api#enumValue" => "MT"}))
    CountryCode.add_member(:mu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MU", traits: {"smithy.api#enumValue" => "MU"}))
    CountryCode.add_member(:mv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MV", traits: {"smithy.api#enumValue" => "MV"}))
    CountryCode.add_member(:mw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MW", traits: {"smithy.api#enumValue" => "MW"}))
    CountryCode.add_member(:mx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MX", traits: {"smithy.api#enumValue" => "MX"}))
    CountryCode.add_member(:my, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MY", traits: {"smithy.api#enumValue" => "MY"}))
    CountryCode.add_member(:mz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MZ", traits: {"smithy.api#enumValue" => "MZ"}))
    CountryCode.add_member(:na, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NA", traits: {"smithy.api#enumValue" => "NA"}))
    CountryCode.add_member(:nc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NC", traits: {"smithy.api#enumValue" => "NC"}))
    CountryCode.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    CountryCode.add_member(:nf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NF", traits: {"smithy.api#enumValue" => "NF"}))
    CountryCode.add_member(:ng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NG", traits: {"smithy.api#enumValue" => "NG"}))
    CountryCode.add_member(:ni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NI", traits: {"smithy.api#enumValue" => "NI"}))
    CountryCode.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    CountryCode.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    CountryCode.add_member(:np, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NP", traits: {"smithy.api#enumValue" => "NP"}))
    CountryCode.add_member(:nr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NR", traits: {"smithy.api#enumValue" => "NR"}))
    CountryCode.add_member(:nu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NU", traits: {"smithy.api#enumValue" => "NU"}))
    CountryCode.add_member(:nz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NZ", traits: {"smithy.api#enumValue" => "NZ"}))
    CountryCode.add_member(:om, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OM", traits: {"smithy.api#enumValue" => "OM"}))
    CountryCode.add_member(:pa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PA", traits: {"smithy.api#enumValue" => "PA"}))
    CountryCode.add_member(:pe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PE", traits: {"smithy.api#enumValue" => "PE"}))
    CountryCode.add_member(:pf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PF", traits: {"smithy.api#enumValue" => "PF"}))
    CountryCode.add_member(:pg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PG", traits: {"smithy.api#enumValue" => "PG"}))
    CountryCode.add_member(:ph, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PH", traits: {"smithy.api#enumValue" => "PH"}))
    CountryCode.add_member(:pk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PK", traits: {"smithy.api#enumValue" => "PK"}))
    CountryCode.add_member(:pl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PL", traits: {"smithy.api#enumValue" => "PL"}))
    CountryCode.add_member(:pm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PM", traits: {"smithy.api#enumValue" => "PM"}))
    CountryCode.add_member(:pn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PN", traits: {"smithy.api#enumValue" => "PN"}))
    CountryCode.add_member(:pr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PR", traits: {"smithy.api#enumValue" => "PR"}))
    CountryCode.add_member(:ps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    CountryCode.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    CountryCode.add_member(:pw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PW", traits: {"smithy.api#enumValue" => "PW"}))
    CountryCode.add_member(:py, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PY", traits: {"smithy.api#enumValue" => "PY"}))
    CountryCode.add_member(:qa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QA", traits: {"smithy.api#enumValue" => "QA"}))
    CountryCode.add_member(:re, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RE", traits: {"smithy.api#enumValue" => "RE"}))
    CountryCode.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    CountryCode.add_member(:rs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RS", traits: {"smithy.api#enumValue" => "RS"}))
    CountryCode.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    CountryCode.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    CountryCode.add_member(:sa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SA", traits: {"smithy.api#enumValue" => "SA"}))
    CountryCode.add_member(:sb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SB", traits: {"smithy.api#enumValue" => "SB"}))
    CountryCode.add_member(:sc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SC", traits: {"smithy.api#enumValue" => "SC"}))
    CountryCode.add_member(:sd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    CountryCode.add_member(:se, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SE", traits: {"smithy.api#enumValue" => "SE"}))
    CountryCode.add_member(:sg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SG", traits: {"smithy.api#enumValue" => "SG"}))
    CountryCode.add_member(:sh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SH", traits: {"smithy.api#enumValue" => "SH"}))
    CountryCode.add_member(:si, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SI", traits: {"smithy.api#enumValue" => "SI"}))
    CountryCode.add_member(:sj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SJ", traits: {"smithy.api#enumValue" => "SJ"}))
    CountryCode.add_member(:sk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SK", traits: {"smithy.api#enumValue" => "SK"}))
    CountryCode.add_member(:sl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SL", traits: {"smithy.api#enumValue" => "SL"}))
    CountryCode.add_member(:sm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SM", traits: {"smithy.api#enumValue" => "SM"}))
    CountryCode.add_member(:sn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SN", traits: {"smithy.api#enumValue" => "SN"}))
    CountryCode.add_member(:so, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SO", traits: {"smithy.api#enumValue" => "SO"}))
    CountryCode.add_member(:sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SR", traits: {"smithy.api#enumValue" => "SR"}))
    CountryCode.add_member(:ss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SS", traits: {"smithy.api#enumValue" => "SS"}))
    CountryCode.add_member(:st, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST", traits: {"smithy.api#enumValue" => "ST"}))
    CountryCode.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    CountryCode.add_member(:sx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SX", traits: {"smithy.api#enumValue" => "SX"}))
    CountryCode.add_member(:sy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SY", traits: {"smithy.api#enumValue" => "SY"}))
    CountryCode.add_member(:sz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SZ", traits: {"smithy.api#enumValue" => "SZ"}))
    CountryCode.add_member(:tc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TC", traits: {"smithy.api#enumValue" => "TC"}))
    CountryCode.add_member(:td, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TD", traits: {"smithy.api#enumValue" => "TD"}))
    CountryCode.add_member(:tf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TF", traits: {"smithy.api#enumValue" => "TF"}))
    CountryCode.add_member(:tg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TG", traits: {"smithy.api#enumValue" => "TG"}))
    CountryCode.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    CountryCode.add_member(:tj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TJ", traits: {"smithy.api#enumValue" => "TJ"}))
    CountryCode.add_member(:tk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TK", traits: {"smithy.api#enumValue" => "TK"}))
    CountryCode.add_member(:tl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TL", traits: {"smithy.api#enumValue" => "TL"}))
    CountryCode.add_member(:tm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TM", traits: {"smithy.api#enumValue" => "TM"}))
    CountryCode.add_member(:tn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TN", traits: {"smithy.api#enumValue" => "TN"}))
    CountryCode.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    CountryCode.add_member(:tp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TP", traits: {"smithy.api#enumValue" => "TP"}))
    CountryCode.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    CountryCode.add_member(:tt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TT", traits: {"smithy.api#enumValue" => "TT"}))
    CountryCode.add_member(:tv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    CountryCode.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    CountryCode.add_member(:tz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TZ", traits: {"smithy.api#enumValue" => "TZ"}))
    CountryCode.add_member(:ua, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UA", traits: {"smithy.api#enumValue" => "UA"}))
    CountryCode.add_member(:ug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UG", traits: {"smithy.api#enumValue" => "UG"}))
    CountryCode.add_member(:us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US", traits: {"smithy.api#enumValue" => "US"}))
    CountryCode.add_member(:uy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UY", traits: {"smithy.api#enumValue" => "UY"}))
    CountryCode.add_member(:uz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UZ", traits: {"smithy.api#enumValue" => "UZ"}))
    CountryCode.add_member(:va, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VA", traits: {"smithy.api#enumValue" => "VA"}))
    CountryCode.add_member(:vc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VC", traits: {"smithy.api#enumValue" => "VC"}))
    CountryCode.add_member(:ve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VE", traits: {"smithy.api#enumValue" => "VE"}))
    CountryCode.add_member(:vg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VG", traits: {"smithy.api#enumValue" => "VG"}))
    CountryCode.add_member(:vi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VI", traits: {"smithy.api#enumValue" => "VI"}))
    CountryCode.add_member(:vn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VN", traits: {"smithy.api#enumValue" => "VN"}))
    CountryCode.add_member(:vu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VU", traits: {"smithy.api#enumValue" => "VU"}))
    CountryCode.add_member(:wf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WF", traits: {"smithy.api#enumValue" => "WF"}))
    CountryCode.add_member(:ws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WS", traits: {"smithy.api#enumValue" => "WS"}))
    CountryCode.add_member(:ye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YE", traits: {"smithy.api#enumValue" => "YE"}))
    CountryCode.add_member(:yt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YT", traits: {"smithy.api#enumValue" => "YT"}))
    CountryCode.add_member(:za, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZA", traits: {"smithy.api#enumValue" => "ZA"}))
    CountryCode.add_member(:zm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZM", traits: {"smithy.api#enumValue" => "ZM"}))
    CountryCode.add_member(:zw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZW", traits: {"smithy.api#enumValue" => "ZW"}))
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteTagsForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteTagsForDomainRequest.add_member(:tags_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagsToDelete", traits: {"smithy.api#required" => {}}))
    DeleteTagsForDomainRequest.type = Types::DeleteTagsForDomainRequest
    DeleteTagsForDomainResponse.type = Types::DeleteTagsForDomainResponse
    DisableDomainAutoRenewRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DisableDomainAutoRenewRequest.type = Types::DisableDomainAutoRenewRequest
    DisableDomainAutoRenewResponse.type = Types::DisableDomainAutoRenewResponse
    DisableDomainTransferLockRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DisableDomainTransferLockRequest.type = Types::DisableDomainTransferLockRequest
    DisableDomainTransferLockResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    DisableDomainTransferLockResponse.type = Types::DisableDomainTransferLockResponse
    DisassociateDelegationSignerFromDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DisassociateDelegationSignerFromDomainRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Id", traits: {"smithy.api#required" => {}}))
    DisassociateDelegationSignerFromDomainRequest.type = Types::DisassociateDelegationSignerFromDomainRequest
    DisassociateDelegationSignerFromDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    DisassociateDelegationSignerFromDomainResponse.type = Types::DisassociateDelegationSignerFromDomainResponse
    DnssecKey.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "Algorithm"))
    DnssecKey.add_member(:flags, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "Flags"))
    DnssecKey.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DnssecPublicKey, location_name: "PublicKey"))
    DnssecKey.add_member(:digest_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "DigestType"))
    DnssecKey.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Digest"))
    DnssecKey.add_member(:key_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "KeyTag"))
    DnssecKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Id"))
    DnssecKey.type = Types::DnssecKey
    DnssecKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DnssecKey)
    DnssecLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    DnssecLimitExceeded.type = Types::DnssecLimitExceeded
    DnssecSigningAttributes.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "Algorithm"))
    DnssecSigningAttributes.add_member(:flags, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInteger, location_name: "Flags"))
    DnssecSigningAttributes.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DnssecPublicKey, location_name: "PublicKey"))
    DnssecSigningAttributes.type = Types::DnssecSigningAttributes
    DomainAvailability.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainAvailability.add_member(:available_reserved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE_RESERVED", traits: {"smithy.api#enumValue" => "AVAILABLE_RESERVED"}))
    DomainAvailability.add_member(:available_preorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE_PREORDER", traits: {"smithy.api#enumValue" => "AVAILABLE_PREORDER"}))
    DomainAvailability.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    DomainAvailability.add_member(:unavailable_premium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE_PREMIUM", traits: {"smithy.api#enumValue" => "UNAVAILABLE_PREMIUM"}))
    DomainAvailability.add_member(:unavailable_restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE_RESTRICTED", traits: {"smithy.api#enumValue" => "UNAVAILABLE_RESTRICTED"}))
    DomainAvailability.add_member(:reserved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESERVED", traits: {"smithy.api#enumValue" => "RESERVED"}))
    DomainAvailability.add_member(:dont_know, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DONT_KNOW", traits: {"smithy.api#enumValue" => "DONT_KNOW"}))
    DomainAvailability.add_member(:invalid_name_for_tld, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_NAME_FOR_TLD", traits: {"smithy.api#enumValue" => "INVALID_NAME_FOR_TLD"}))
    DomainAvailability.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DomainLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    DomainLimitExceeded.type = Types::DomainLimitExceeded
    DomainPrice.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPriceName, location_name: "Name"))
    DomainPrice.add_member(:registration_price, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceWithCurrency, location_name: "RegistrationPrice"))
    DomainPrice.add_member(:transfer_price, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceWithCurrency, location_name: "TransferPrice"))
    DomainPrice.add_member(:renewal_price, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceWithCurrency, location_name: "RenewalPrice"))
    DomainPrice.add_member(:change_ownership_price, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceWithCurrency, location_name: "ChangeOwnershipPrice"))
    DomainPrice.add_member(:restoration_price, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceWithCurrency, location_name: "RestorationPrice"))
    DomainPrice.type = Types::DomainPrice
    DomainPriceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPrice)
    DomainStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus)
    DomainSuggestion.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    DomainSuggestion.add_member(:availability, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Availability"))
    DomainSuggestion.type = Types::DomainSuggestion
    DomainSuggestionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSuggestion)
    DomainSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    DomainSummary.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoRenew"))
    DomainSummary.add_member(:transfer_lock, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "TransferLock"))
    DomainSummary.add_member(:expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Expiry"))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummary)
    DomainTransferability.add_member(:transferable, ::Smithy::Schema::Shapes::MemberShape.new(target: Transferable, location_name: "Transferable"))
    DomainTransferability.type = Types::DomainTransferability
    DuplicateRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, location_name: "requestId"))
    DuplicateRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    DuplicateRequest.type = Types::DuplicateRequest
    EnableDomainAutoRenewRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    EnableDomainAutoRenewRequest.type = Types::EnableDomainAutoRenewRequest
    EnableDomainAutoRenewResponse.type = Types::EnableDomainAutoRenewResponse
    EnableDomainTransferLockRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    EnableDomainTransferLockRequest.type = Types::EnableDomainTransferLockRequest
    EnableDomainTransferLockResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    EnableDomainTransferLockResponse.type = Types::EnableDomainTransferLockResponse
    ExtraParam.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraParamName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ExtraParam.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraParamValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    ExtraParam.type = Types::ExtraParam
    ExtraParamList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExtraParam)
    ExtraParamName.add_member(:duns_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUNS_NUMBER", traits: {"smithy.api#enumValue" => "DUNS_NUMBER"}))
    ExtraParamName.add_member(:brand_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRAND_NUMBER", traits: {"smithy.api#enumValue" => "BRAND_NUMBER"}))
    ExtraParamName.add_member(:birth_department, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIRTH_DEPARTMENT", traits: {"smithy.api#enumValue" => "BIRTH_DEPARTMENT"}))
    ExtraParamName.add_member(:birth_date_in_yyyy_mm_dd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIRTH_DATE_IN_YYYY_MM_DD", traits: {"smithy.api#enumValue" => "BIRTH_DATE_IN_YYYY_MM_DD"}))
    ExtraParamName.add_member(:birth_country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIRTH_COUNTRY", traits: {"smithy.api#enumValue" => "BIRTH_COUNTRY"}))
    ExtraParamName.add_member(:birth_city, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIRTH_CITY", traits: {"smithy.api#enumValue" => "BIRTH_CITY"}))
    ExtraParamName.add_member(:document_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCUMENT_NUMBER", traits: {"smithy.api#enumValue" => "DOCUMENT_NUMBER"}))
    ExtraParamName.add_member(:au_id_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_ID_NUMBER", traits: {"smithy.api#enumValue" => "AU_ID_NUMBER"}))
    ExtraParamName.add_member(:au_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_ID_TYPE", traits: {"smithy.api#enumValue" => "AU_ID_TYPE"}))
    ExtraParamName.add_member(:ca_legal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_LEGAL_TYPE", traits: {"smithy.api#enumValue" => "CA_LEGAL_TYPE"}))
    ExtraParamName.add_member(:ca_business_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_BUSINESS_ENTITY_TYPE", traits: {"smithy.api#enumValue" => "CA_BUSINESS_ENTITY_TYPE"}))
    ExtraParamName.add_member(:ca_legal_representative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_LEGAL_REPRESENTATIVE", traits: {"smithy.api#enumValue" => "CA_LEGAL_REPRESENTATIVE"}))
    ExtraParamName.add_member(:ca_legal_representative_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_LEGAL_REPRESENTATIVE_CAPACITY", traits: {"smithy.api#enumValue" => "CA_LEGAL_REPRESENTATIVE_CAPACITY"}))
    ExtraParamName.add_member(:es_identification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_IDENTIFICATION", traits: {"smithy.api#enumValue" => "ES_IDENTIFICATION"}))
    ExtraParamName.add_member(:es_identification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_IDENTIFICATION_TYPE", traits: {"smithy.api#enumValue" => "ES_IDENTIFICATION_TYPE"}))
    ExtraParamName.add_member(:es_legal_form, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ES_LEGAL_FORM", traits: {"smithy.api#enumValue" => "ES_LEGAL_FORM"}))
    ExtraParamName.add_member(:fi_business_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FI_BUSINESS_NUMBER", traits: {"smithy.api#enumValue" => "FI_BUSINESS_NUMBER"}))
    ExtraParamName.add_member(:onwer_fi_id_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONWER_FI_ID_NUMBER", traits: {"smithy.api#enumValue" => "FI_ID_NUMBER"}))
    ExtraParamName.add_member(:fi_nationality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FI_NATIONALITY", traits: {"smithy.api#enumValue" => "FI_NATIONALITY"}))
    ExtraParamName.add_member(:fi_organization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FI_ORGANIZATION_TYPE", traits: {"smithy.api#enumValue" => "FI_ORGANIZATION_TYPE"}))
    ExtraParamName.add_member(:it_nationality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT_NATIONALITY", traits: {"smithy.api#enumValue" => "IT_NATIONALITY"}))
    ExtraParamName.add_member(:it_pin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT_PIN", traits: {"smithy.api#enumValue" => "IT_PIN"}))
    ExtraParamName.add_member(:it_registrant_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IT_REGISTRANT_ENTITY_TYPE", traits: {"smithy.api#enumValue" => "IT_REGISTRANT_ENTITY_TYPE"}))
    ExtraParamName.add_member(:ru_passport_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RU_PASSPORT_DATA", traits: {"smithy.api#enumValue" => "RU_PASSPORT_DATA"}))
    ExtraParamName.add_member(:se_id_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SE_ID_NUMBER", traits: {"smithy.api#enumValue" => "SE_ID_NUMBER"}))
    ExtraParamName.add_member(:sg_id_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SG_ID_NUMBER", traits: {"smithy.api#enumValue" => "SG_ID_NUMBER"}))
    ExtraParamName.add_member(:vat_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VAT_NUMBER", traits: {"smithy.api#enumValue" => "VAT_NUMBER"}))
    ExtraParamName.add_member(:uk_contact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UK_CONTACT_TYPE", traits: {"smithy.api#enumValue" => "UK_CONTACT_TYPE"}))
    ExtraParamName.add_member(:uk_company_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UK_COMPANY_NUMBER", traits: {"smithy.api#enumValue" => "UK_COMPANY_NUMBER"}))
    ExtraParamName.add_member(:eu_country_of_citizenship, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_COUNTRY_OF_CITIZENSHIP", traits: {"smithy.api#enumValue" => "EU_COUNTRY_OF_CITIZENSHIP"}))
    ExtraParamName.add_member(:au_priority_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_PRIORITY_TOKEN", traits: {"smithy.api#enumValue" => "AU_PRIORITY_TOKEN"}))
    ExtraParamName.add_member(:au_eligibility_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_ELIGIBILITY_TYPE", traits: {"smithy.api#enumValue" => "AU_ELIGIBILITY_TYPE"}))
    ExtraParamName.add_member(:au_policy_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_POLICY_REASON", traits: {"smithy.api#enumValue" => "AU_POLICY_REASON"}))
    ExtraParamName.add_member(:au_registrant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AU_REGISTRANT_NAME", traits: {"smithy.api#enumValue" => "AU_REGISTRANT_NAME"}))
    FilterCondition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDomainsAttributeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    FilterCondition.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "Operator", traits: {"smithy.api#required" => {}}))
    FilterCondition.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, location_name: "Values", traits: {"smithy.api#required" => {}}))
    FilterCondition.type = Types::FilterCondition
    FilterConditions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition)
    GetContactReachabilityStatusRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusRequest.type = Types::GetContactReachabilityStatusRequest
    GetContactReachabilityStatusResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReachabilityStatus, location_name: "status"))
    GetContactReachabilityStatusResponse.type = Types::GetContactReachabilityStatusResponse
    GetDomainDetailRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetDomainDetailRequest.type = Types::GetDomainDetailRequest
    GetDomainDetailResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    GetDomainDetailResponse.add_member(:nameservers, ::Smithy::Schema::Shapes::MemberShape.new(target: NameserverList, location_name: "Nameservers"))
    GetDomainDetailResponse.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoRenew"))
    GetDomainDetailResponse.add_member(:admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "AdminContact"))
    GetDomainDetailResponse.add_member(:registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "RegistrantContact"))
    GetDomainDetailResponse.add_member(:tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "TechContact"))
    GetDomainDetailResponse.add_member(:admin_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AdminPrivacy"))
    GetDomainDetailResponse.add_member(:registrant_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "RegistrantPrivacy"))
    GetDomainDetailResponse.add_member(:tech_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "TechPrivacy"))
    GetDomainDetailResponse.add_member(:registrar_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrarName, location_name: "RegistrarName"))
    GetDomainDetailResponse.add_member(:who_is_server, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrarWhoIsServer, location_name: "WhoIsServer"))
    GetDomainDetailResponse.add_member(:registrar_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrarUrl, location_name: "RegistrarUrl"))
    GetDomainDetailResponse.add_member(:abuse_contact_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "AbuseContactEmail"))
    GetDomainDetailResponse.add_member(:abuse_contact_phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactNumber, location_name: "AbuseContactPhone"))
    GetDomainDetailResponse.add_member(:registry_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryDomainId, location_name: "RegistryDomainId"))
    GetDomainDetailResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationDate"))
    GetDomainDetailResponse.add_member(:updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedDate"))
    GetDomainDetailResponse.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ExpirationDate"))
    GetDomainDetailResponse.add_member(:reseller, ::Smithy::Schema::Shapes::MemberShape.new(target: Reseller, location_name: "Reseller"))
    GetDomainDetailResponse.add_member(:dns_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSSec, location_name: "DnsSec"))
    GetDomainDetailResponse.add_member(:status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatusList, location_name: "StatusList"))
    GetDomainDetailResponse.add_member(:dnssec_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DnssecKeyList, location_name: "DnssecKeys"))
    GetDomainDetailResponse.add_member(:billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "BillingContact"))
    GetDomainDetailResponse.add_member(:billing_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "BillingPrivacy"))
    GetDomainDetailResponse.type = Types::GetDomainDetailResponse
    GetDomainSuggestionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    GetDomainSuggestionsRequest.add_member(:suggestion_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "SuggestionCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetDomainSuggestionsRequest.add_member(:only_available, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OnlyAvailable", traits: {"smithy.api#required" => {}}))
    GetDomainSuggestionsRequest.type = Types::GetDomainSuggestionsRequest
    GetDomainSuggestionsResponse.add_member(:suggestions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSuggestionsList, location_name: "SuggestionsList"))
    GetDomainSuggestionsResponse.type = Types::GetDomainSuggestionsResponse
    GetOperationDetailRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    GetOperationDetailRequest.type = Types::GetOperationDetailRequest
    GetOperationDetailResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    GetOperationDetailResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, location_name: "Status"))
    GetOperationDetailResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    GetOperationDetailResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    GetOperationDetailResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, location_name: "Type"))
    GetOperationDetailResponse.add_member(:submitted_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmittedDate"))
    GetOperationDetailResponse.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedDate"))
    GetOperationDetailResponse.add_member(:status_flag, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusFlag, location_name: "StatusFlag"))
    GetOperationDetailResponse.type = Types::GetOperationDetailResponse
    GlueIpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GlueIp)
    InvalidInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidInput.type = Types::InvalidInput
    ListDomainsAttributeName.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DomainName", traits: {"smithy.api#enumValue" => "DomainName"}))
    ListDomainsAttributeName.add_member(:expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Expiry", traits: {"smithy.api#enumValue" => "Expiry"}))
    ListDomainsRequest.add_member(:filter_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConditions, location_name: "FilterConditions"))
    ListDomainsRequest.add_member(:sort_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCondition, location_name: "SortCondition"))
    ListDomainsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "Marker"))
    ListDomainsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMaxItems, location_name: "MaxItems"))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResponse.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummaryList, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_page_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "NextPageMarker"))
    ListDomainsResponse.type = Types::ListDomainsResponse
    ListOperationsRequest.add_member(:submitted_since, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmittedSince"))
    ListOperationsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "Marker"))
    ListOperationsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMaxItems, location_name: "MaxItems"))
    ListOperationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatusList, location_name: "Status"))
    ListOperationsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationTypeList, location_name: "Type"))
    ListOperationsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOperationsSortAttributeName, location_name: "SortBy"))
    ListOperationsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "SortOrder"))
    ListOperationsRequest.type = Types::ListOperationsRequest
    ListOperationsResponse.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummaryList, location_name: "Operations"))
    ListOperationsResponse.add_member(:next_page_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "NextPageMarker"))
    ListOperationsResponse.type = Types::ListOperationsResponse
    ListOperationsSortAttributeName.add_member(:submitted_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SubmittedDate", traits: {"smithy.api#enumValue" => "SubmittedDate"}))
    ListPricesRequest.add_member(:tld, ::Smithy::Schema::Shapes::MemberShape.new(target: TldName, location_name: "Tld"))
    ListPricesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "Marker"))
    ListPricesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPricesPageMaxItems, location_name: "MaxItems"))
    ListPricesRequest.type = Types::ListPricesRequest
    ListPricesResponse.add_member(:prices, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPriceList, location_name: "Prices"))
    ListPricesResponse.add_member(:next_page_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "NextPageMarker"))
    ListPricesResponse.type = Types::ListPricesResponse
    ListTagsForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    ListTagsForDomainRequest.type = Types::ListTagsForDomainRequest
    ListTagsForDomainResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagList"))
    ListTagsForDomainResponse.type = Types::ListTagsForDomainResponse
    Nameserver.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Nameserver.add_member(:glue_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueIpList, location_name: "GlueIps"))
    Nameserver.type = Types::Nameserver
    NameserverList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Nameserver)
    OperationLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    OperationLimitExceeded.type = Types::OperationLimitExceeded
    OperationStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    OperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    OperationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    OperationStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OperationStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus)
    OperationSummary.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    OperationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, location_name: "Status"))
    OperationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, location_name: "Type"))
    OperationSummary.add_member(:submitted_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubmittedDate"))
    OperationSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName"))
    OperationSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    OperationSummary.add_member(:status_flag, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusFlag, location_name: "StatusFlag"))
    OperationSummary.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedDate"))
    OperationSummary.type = Types::OperationSummary
    OperationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummary)
    OperationType.add_member(:register_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTER_DOMAIN", traits: {"smithy.api#enumValue" => "REGISTER_DOMAIN"}))
    OperationType.add_member(:delete_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_DOMAIN", traits: {"smithy.api#enumValue" => "DELETE_DOMAIN"}))
    OperationType.add_member(:transfer_in_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER_IN_DOMAIN", traits: {"smithy.api#enumValue" => "TRANSFER_IN_DOMAIN"}))
    OperationType.add_member(:update_domain_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_DOMAIN_CONTACT", traits: {"smithy.api#enumValue" => "UPDATE_DOMAIN_CONTACT"}))
    OperationType.add_member(:update_nameserver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_NAMESERVER", traits: {"smithy.api#enumValue" => "UPDATE_NAMESERVER"}))
    OperationType.add_member(:change_privacy_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHANGE_PRIVACY_PROTECTION", traits: {"smithy.api#enumValue" => "CHANGE_PRIVACY_PROTECTION"}))
    OperationType.add_member(:domain_lock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_LOCK", traits: {"smithy.api#enumValue" => "DOMAIN_LOCK"}))
    OperationType.add_member(:enable_autorenew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_AUTORENEW", traits: {"smithy.api#enumValue" => "ENABLE_AUTORENEW"}))
    OperationType.add_member(:disable_autorenew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE_AUTORENEW", traits: {"smithy.api#enumValue" => "DISABLE_AUTORENEW"}))
    OperationType.add_member(:add_dnssec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADD_DNSSEC", traits: {"smithy.api#enumValue" => "ADD_DNSSEC"}))
    OperationType.add_member(:remove_dnssec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVE_DNSSEC", traits: {"smithy.api#enumValue" => "REMOVE_DNSSEC"}))
    OperationType.add_member(:expire_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRE_DOMAIN", traits: {"smithy.api#enumValue" => "EXPIRE_DOMAIN"}))
    OperationType.add_member(:transfer_out_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER_OUT_DOMAIN", traits: {"smithy.api#enumValue" => "TRANSFER_OUT_DOMAIN"}))
    OperationType.add_member(:change_domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHANGE_DOMAIN_OWNER", traits: {"smithy.api#enumValue" => "CHANGE_DOMAIN_OWNER"}))
    OperationType.add_member(:renew_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RENEW_DOMAIN", traits: {"smithy.api#enumValue" => "RENEW_DOMAIN"}))
    OperationType.add_member(:push_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUSH_DOMAIN", traits: {"smithy.api#enumValue" => "PUSH_DOMAIN"}))
    OperationType.add_member(:internal_transfer_out_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_TRANSFER_OUT_DOMAIN", traits: {"smithy.api#enumValue" => "INTERNAL_TRANSFER_OUT_DOMAIN"}))
    OperationType.add_member(:internal_transfer_in_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_TRANSFER_IN_DOMAIN", traits: {"smithy.api#enumValue" => "INTERNAL_TRANSFER_IN_DOMAIN"}))
    OperationType.add_member(:release_to_gandi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELEASE_TO_GANDI", traits: {"smithy.api#enumValue" => "RELEASE_TO_GANDI"}))
    OperationType.add_member(:transfer_on_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER_ON_RENEW", traits: {"smithy.api#enumValue" => "TRANSFER_ON_RENEW"}))
    OperationType.add_member(:restore_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESTORE_DOMAIN", traits: {"smithy.api#enumValue" => "RESTORE_DOMAIN"}))
    OperationTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType)
    Operator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    Operator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    Operator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    PriceWithCurrency.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: Price, location_name: "Price", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PriceWithCurrency.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, location_name: "Currency", traits: {"smithy.api#required" => {}}))
    PriceWithCurrency.type = Types::PriceWithCurrency
    PushDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    PushDomainRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Label, location_name: "Target", traits: {"smithy.api#required" => {}}))
    PushDomainRequest.type = Types::PushDomainRequest
    ReachabilityStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReachabilityStatus.add_member(:done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DONE", traits: {"smithy.api#enumValue" => "DONE"}))
    ReachabilityStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    RegisterDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    RegisterDomainRequest.add_member(:idn_lang_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LangCode, location_name: "IdnLangCode"))
    RegisterDomainRequest.add_member(:duration_in_years, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInYears, location_name: "DurationInYears", traits: {"smithy.api#required" => {}}))
    RegisterDomainRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoRenew"))
    RegisterDomainRequest.add_member(:admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "AdminContact", traits: {"smithy.api#required" => {}}))
    RegisterDomainRequest.add_member(:registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "RegistrantContact", traits: {"smithy.api#required" => {}}))
    RegisterDomainRequest.add_member(:tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "TechContact", traits: {"smithy.api#required" => {}}))
    RegisterDomainRequest.add_member(:privacy_protect_admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectAdminContact"))
    RegisterDomainRequest.add_member(:privacy_protect_registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectRegistrantContact"))
    RegisterDomainRequest.add_member(:privacy_protect_tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectTechContact"))
    RegisterDomainRequest.add_member(:billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "BillingContact"))
    RegisterDomainRequest.add_member(:privacy_protect_billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectBillingContact"))
    RegisterDomainRequest.type = Types::RegisterDomainRequest
    RegisterDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    RegisterDomainResponse.type = Types::RegisterDomainResponse
    RejectDomainTransferFromAnotherAwsAccountRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    RejectDomainTransferFromAnotherAwsAccountRequest.type = Types::RejectDomainTransferFromAnotherAwsAccountRequest
    RejectDomainTransferFromAnotherAwsAccountResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    RejectDomainTransferFromAnotherAwsAccountResponse.type = Types::RejectDomainTransferFromAnotherAwsAccountResponse
    RenewDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    RenewDomainRequest.add_member(:duration_in_years, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInYears, location_name: "DurationInYears"))
    RenewDomainRequest.add_member(:current_expiry_year, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentExpiryYear, location_name: "CurrentExpiryYear", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RenewDomainRequest.type = Types::RenewDomainRequest
    RenewDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    RenewDomainResponse.type = Types::RenewDomainResponse
    ResendContactReachabilityEmailRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailRequest.type = Types::ResendContactReachabilityEmailRequest
    ResendContactReachabilityEmailResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailResponse.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "emailAddress"))
    ResendContactReachabilityEmailResponse.add_member(:is_already_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isAlreadyVerified"))
    ResendContactReachabilityEmailResponse.type = Types::ResendContactReachabilityEmailResponse
    ResendOperationAuthorizationRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId", traits: {"smithy.api#required" => {}}))
    ResendOperationAuthorizationRequest.type = Types::ResendOperationAuthorizationRequest
    RetrieveDomainAuthCodeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    RetrieveDomainAuthCodeRequest.type = Types::RetrieveDomainAuthCodeRequest
    RetrieveDomainAuthCodeResponse.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAuthCode, location_name: "AuthCode"))
    RetrieveDomainAuthCodeResponse.type = Types::RetrieveDomainAuthCodeResponse
    SortCondition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDomainsAttributeName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    SortCondition.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "SortOrder", traits: {"smithy.api#required" => {}}))
    SortCondition.type = Types::SortCondition
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StatusFlag.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    StatusFlag.add_member(:pending_customer_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CUSTOMER_ACTION", traits: {"smithy.api#enumValue" => "PENDING_CUSTOMER_ACTION"}))
    StatusFlag.add_member(:pending_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_AUTHORIZATION", traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    StatusFlag.add_member(:pending_payment_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_PAYMENT_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_PAYMENT_VERIFICATION"}))
    StatusFlag.add_member(:pending_support_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_SUPPORT_CASE", traits: {"smithy.api#enumValue" => "PENDING_SUPPORT_CASE"}))
    TLDRulesViolation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TLDRulesViolation.type = Types::TLDRulesViolation
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TransferDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    TransferDomainRequest.add_member(:idn_lang_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LangCode, location_name: "IdnLangCode"))
    TransferDomainRequest.add_member(:duration_in_years, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInYears, location_name: "DurationInYears", traits: {"smithy.api#required" => {}}))
    TransferDomainRequest.add_member(:nameservers, ::Smithy::Schema::Shapes::MemberShape.new(target: NameserverList, location_name: "Nameservers"))
    TransferDomainRequest.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAuthCode, location_name: "AuthCode"))
    TransferDomainRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AutoRenew"))
    TransferDomainRequest.add_member(:admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "AdminContact", traits: {"smithy.api#required" => {}}))
    TransferDomainRequest.add_member(:registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "RegistrantContact", traits: {"smithy.api#required" => {}}))
    TransferDomainRequest.add_member(:tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "TechContact", traits: {"smithy.api#required" => {}}))
    TransferDomainRequest.add_member(:privacy_protect_admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectAdminContact"))
    TransferDomainRequest.add_member(:privacy_protect_registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectRegistrantContact"))
    TransferDomainRequest.add_member(:privacy_protect_tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectTechContact"))
    TransferDomainRequest.add_member(:billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "BillingContact"))
    TransferDomainRequest.add_member(:privacy_protect_billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PrivacyProtectBillingContact"))
    TransferDomainRequest.type = Types::TransferDomainRequest
    TransferDomainResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    TransferDomainResponse.type = Types::TransferDomainResponse
    TransferDomainToAnotherAwsAccountRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    TransferDomainToAnotherAwsAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "AccountId", traits: {"smithy.api#required" => {}}))
    TransferDomainToAnotherAwsAccountRequest.type = Types::TransferDomainToAnotherAwsAccountRequest
    TransferDomainToAnotherAwsAccountResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    TransferDomainToAnotherAwsAccountResponse.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "Password"))
    TransferDomainToAnotherAwsAccountResponse.type = Types::TransferDomainToAnotherAwsAccountResponse
    Transferable.add_member(:transferable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFERABLE", traits: {"smithy.api#enumValue" => "TRANSFERABLE"}))
    Transferable.add_member(:untransferable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNTRANSFERABLE", traits: {"smithy.api#enumValue" => "UNTRANSFERABLE"}))
    Transferable.add_member(:dont_know, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DONT_KNOW", traits: {"smithy.api#enumValue" => "DONT_KNOW"}))
    Transferable.add_member(:domain_in_own_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_IN_OWN_ACCOUNT", traits: {"smithy.api#enumValue" => "DOMAIN_IN_OWN_ACCOUNT"}))
    Transferable.add_member(:domain_in_another_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_IN_ANOTHER_ACCOUNT", traits: {"smithy.api#enumValue" => "DOMAIN_IN_ANOTHER_ACCOUNT"}))
    Transferable.add_member(:premium_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREMIUM_DOMAIN", traits: {"smithy.api#enumValue" => "PREMIUM_DOMAIN"}))
    UnsupportedTLD.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    UnsupportedTLD.type = Types::UnsupportedTLD
    UpdateDomainContactPrivacyRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainContactPrivacyRequest.add_member(:admin_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AdminPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:registrant_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "RegistrantPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:tech_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "TechPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:billing_privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "BillingPrivacy"))
    UpdateDomainContactPrivacyRequest.type = Types::UpdateDomainContactPrivacyRequest
    UpdateDomainContactPrivacyResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    UpdateDomainContactPrivacyResponse.type = Types::UpdateDomainContactPrivacyResponse
    UpdateDomainContactRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainContactRequest.add_member(:admin_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "AdminContact"))
    UpdateDomainContactRequest.add_member(:registrant_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "RegistrantContact"))
    UpdateDomainContactRequest.add_member(:tech_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "TechContact"))
    UpdateDomainContactRequest.add_member(:consent, ::Smithy::Schema::Shapes::MemberShape.new(target: Consent, location_name: "Consent"))
    UpdateDomainContactRequest.add_member(:billing_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactDetail, location_name: "BillingContact"))
    UpdateDomainContactRequest.type = Types::UpdateDomainContactRequest
    UpdateDomainContactResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    UpdateDomainContactResponse.type = Types::UpdateDomainContactResponse
    UpdateDomainNameserversRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainNameserversRequest.add_member(:fi_auth_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FIAuthKey, location_name: "FIAuthKey", traits: {"smithy.api#deprecated" => {}}))
    UpdateDomainNameserversRequest.add_member(:nameservers, ::Smithy::Schema::Shapes::MemberShape.new(target: NameserverList, location_name: "Nameservers", traits: {"smithy.api#required" => {}}))
    UpdateDomainNameserversRequest.type = Types::UpdateDomainNameserversRequest
    UpdateDomainNameserversResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, location_name: "OperationId"))
    UpdateDomainNameserversResponse.type = Types::UpdateDomainNameserversResponse
    UpdateTagsForDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateTagsForDomainRequest.add_member(:tags_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagsToUpdate"))
    UpdateTagsForDomainRequest.type = Types::UpdateTagsForDomainRequest
    UpdateTagsForDomainResponse.type = Types::UpdateTagsForDomainResponse
    Values.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Value)
    ViewBillingRequest.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Start"))
    ViewBillingRequest.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "End"))
    ViewBillingRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "Marker"))
    ViewBillingRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMaxItems, location_name: "MaxItems"))
    ViewBillingRequest.type = Types::ViewBillingRequest
    ViewBillingResponse.add_member(:next_page_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PageMarker, location_name: "NextPageMarker"))
    ViewBillingResponse.add_member(:billing_records, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingRecords, location_name: "BillingRecords"))
    ViewBillingResponse.type = Types::ViewBillingResponse

    Route53DomainsV20140515 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53domains#Route53Domains_v20140515"
      service.name = "Route53DomainsV20140515"
      service.version = "2014-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Route 53 Domains", "arnNamespace" => "route53domains", "cloudFormationName" => "Route53Domains", "cloudTrailEventSource" => "route53domains.amazonaws.com", "docId" => "route53domains-2014-05-15", "endpointPrefix" => "route53domains"}, "aws.auth#sigv4" => {"name" => "route53domains"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Route 53 Domains", "smithy.api#xmlNamespace" => {"uri" => "https://route53domains.amazonaws.com/doc/2014-05-15/"}}
      service.add_operation(:accept_domain_transfer_from_another_aws_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#AcceptDomainTransferFromAnotherAwsAccount"
        operation.name = "AcceptDomainTransferFromAnotherAwsAccount"
        operation.input = AcceptDomainTransferFromAnotherAwsAccountRequest
        operation.output = AcceptDomainTransferFromAnotherAwsAccountResponse
        operation.errors << DomainLimitExceeded
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:associate_delegation_signer_to_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#AssociateDelegationSignerToDomain"
        operation.name = "AssociateDelegationSignerToDomain"
        operation.input = AssociateDelegationSignerToDomainRequest
        operation.output = AssociateDelegationSignerToDomainResponse
        operation.errors << DnssecLimitExceeded
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:cancel_domain_transfer_to_another_aws_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#CancelDomainTransferToAnotherAwsAccount"
        operation.name = "CancelDomainTransferToAnotherAwsAccount"
        operation.input = CancelDomainTransferToAnotherAwsAccountRequest
        operation.output = CancelDomainTransferToAnotherAwsAccountResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:check_domain_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#CheckDomainAvailability"
        operation.name = "CheckDomainAvailability"
        operation.input = CheckDomainAvailabilityRequest
        operation.output = CheckDomainAvailabilityResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:check_domain_transferability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#CheckDomainTransferability"
        operation.name = "CheckDomainTransferability"
        operation.input = CheckDomainTransferabilityRequest
        operation.output = CheckDomainTransferabilityResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainRequest
        operation.output = DeleteDomainResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:delete_tags_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#DeleteTagsForDomain"
        operation.name = "DeleteTagsForDomain"
        operation.input = DeleteTagsForDomainRequest
        operation.output = DeleteTagsForDomainResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:disable_domain_auto_renew, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#DisableDomainAutoRenew"
        operation.name = "DisableDomainAutoRenew"
        operation.input = DisableDomainAutoRenewRequest
        operation.output = DisableDomainAutoRenewResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:disable_domain_transfer_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#DisableDomainTransferLock"
        operation.name = "DisableDomainTransferLock"
        operation.input = DisableDomainTransferLockRequest
        operation.output = DisableDomainTransferLockResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:disassociate_delegation_signer_from_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#DisassociateDelegationSignerFromDomain"
        operation.name = "DisassociateDelegationSignerFromDomain"
        operation.input = DisassociateDelegationSignerFromDomainRequest
        operation.output = DisassociateDelegationSignerFromDomainResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:enable_domain_auto_renew, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#EnableDomainAutoRenew"
        operation.name = "EnableDomainAutoRenew"
        operation.input = EnableDomainAutoRenewRequest
        operation.output = EnableDomainAutoRenewResponse
        operation.errors << InvalidInput
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:enable_domain_transfer_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#EnableDomainTransferLock"
        operation.name = "EnableDomainTransferLock"
        operation.input = EnableDomainTransferLockRequest
        operation.output = EnableDomainTransferLockResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:get_contact_reachability_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#GetContactReachabilityStatus"
        operation.name = "GetContactReachabilityStatus"
        operation.input = GetContactReachabilityStatusRequest
        operation.output = GetContactReachabilityStatusResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:get_domain_detail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#GetDomainDetail"
        operation.name = "GetDomainDetail"
        operation.input = GetDomainDetailRequest
        operation.output = GetDomainDetailResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetDomainDetailFailure", "params" => {"DomainName" => "fake-domain-name"}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_domain_suggestions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#GetDomainSuggestions"
        operation.name = "GetDomainSuggestions"
        operation.input = GetDomainSuggestionsRequest
        operation.output = GetDomainSuggestionsResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:get_operation_detail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#GetOperationDetail"
        operation.name = "GetOperationDetail"
        operation.input = GetOperationDetailRequest
        operation.output = GetOperationDetailResponse
        operation.errors << InvalidInput
        operation.traits = {}
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsRequest
        operation.output = ListDomainsResponse
        operation.errors << InvalidInput
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListDomainsSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ListOperations"
        operation.name = "ListOperations"
        operation.input = ListOperationsRequest
        operation.output = ListOperationsResponse
        operation.errors << InvalidInput
        operation.traits = {}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_prices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ListPrices"
        operation.name = "ListPrices"
        operation.input = ListPricesRequest
        operation.output = ListPricesResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
        operation[:paginator] = Paginators::ListPrices.new
      end)
      service.add_operation(:list_tags_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ListTagsForDomain"
        operation.name = "ListTagsForDomain"
        operation.input = ListTagsForDomainRequest
        operation.output = ListTagsForDomainResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:push_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#PushDomain"
        operation.name = "PushDomain"
        operation.input = PushDomainRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:register_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#RegisterDomain"
        operation.name = "RegisterDomain"
        operation.input = RegisterDomainRequest
        operation.output = RegisterDomainResponse
        operation.errors << DomainLimitExceeded
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:reject_domain_transfer_from_another_aws_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#RejectDomainTransferFromAnotherAwsAccount"
        operation.name = "RejectDomainTransferFromAnotherAwsAccount"
        operation.input = RejectDomainTransferFromAnotherAwsAccountRequest
        operation.output = RejectDomainTransferFromAnotherAwsAccountResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:renew_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#RenewDomain"
        operation.name = "RenewDomain"
        operation.input = RenewDomainRequest
        operation.output = RenewDomainResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:resend_contact_reachability_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ResendContactReachabilityEmail"
        operation.name = "ResendContactReachabilityEmail"
        operation.input = ResendContactReachabilityEmailRequest
        operation.output = ResendContactReachabilityEmailResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:resend_operation_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ResendOperationAuthorization"
        operation.name = "ResendOperationAuthorization"
        operation.input = ResendOperationAuthorizationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInput
        operation.traits = {}
      end)
      service.add_operation(:retrieve_domain_auth_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#RetrieveDomainAuthCode"
        operation.name = "RetrieveDomainAuthCode"
        operation.input = RetrieveDomainAuthCodeRequest
        operation.output = RetrieveDomainAuthCodeResponse
        operation.errors << InvalidInput
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:transfer_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#TransferDomain"
        operation.name = "TransferDomain"
        operation.input = TransferDomainRequest
        operation.output = TransferDomainResponse
        operation.errors << DomainLimitExceeded
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:transfer_domain_to_another_aws_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#TransferDomainToAnotherAwsAccount"
        operation.name = "TransferDomainToAnotherAwsAccount"
        operation.input = TransferDomainToAnotherAwsAccountRequest
        operation.output = TransferDomainToAnotherAwsAccountResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:update_domain_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#UpdateDomainContact"
        operation.name = "UpdateDomainContact"
        operation.input = UpdateDomainContactRequest
        operation.output = UpdateDomainContactResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:update_domain_contact_privacy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#UpdateDomainContactPrivacy"
        operation.name = "UpdateDomainContactPrivacy"
        operation.input = UpdateDomainContactPrivacyRequest
        operation.output = UpdateDomainContactPrivacyResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:update_domain_nameservers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#UpdateDomainNameservers"
        operation.name = "UpdateDomainNameservers"
        operation.input = UpdateDomainNameserversRequest
        operation.output = UpdateDomainNameserversResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << TLDRulesViolation
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:update_tags_for_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#UpdateTagsForDomain"
        operation.name = "UpdateTagsForDomain"
        operation.input = UpdateTagsForDomainRequest
        operation.output = UpdateTagsForDomainResponse
        operation.errors << InvalidInput
        operation.errors << OperationLimitExceeded
        operation.errors << UnsupportedTLD
        operation.traits = {}
      end)
      service.add_operation(:view_billing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53domains#ViewBilling"
        operation.name = "ViewBilling"
        operation.input = ViewBillingRequest
        operation.output = ViewBillingResponse
        operation.errors << InvalidInput
        operation.traits = {}
        operation[:paginator] = Paginators::ViewBilling.new
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
