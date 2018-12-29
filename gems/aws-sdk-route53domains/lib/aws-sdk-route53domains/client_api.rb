# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Domains
  # @api private
  module ClientApi

    include Seahorse::Model

    AddressLine = Shapes::StringShape.new(name: 'AddressLine')
    BillingRecord = Shapes::StructureShape.new(name: 'BillingRecord')
    BillingRecords = Shapes::ListShape.new(name: 'BillingRecords')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CheckDomainAvailabilityRequest = Shapes::StructureShape.new(name: 'CheckDomainAvailabilityRequest')
    CheckDomainAvailabilityResponse = Shapes::StructureShape.new(name: 'CheckDomainAvailabilityResponse')
    CheckDomainTransferabilityRequest = Shapes::StructureShape.new(name: 'CheckDomainTransferabilityRequest')
    CheckDomainTransferabilityResponse = Shapes::StructureShape.new(name: 'CheckDomainTransferabilityResponse')
    City = Shapes::StringShape.new(name: 'City')
    ContactDetail = Shapes::StructureShape.new(name: 'ContactDetail')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    ContactNumber = Shapes::StringShape.new(name: 'ContactNumber')
    ContactType = Shapes::StringShape.new(name: 'ContactType')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CurrentExpiryYear = Shapes::IntegerShape.new(name: 'CurrentExpiryYear')
    DNSSec = Shapes::StringShape.new(name: 'DNSSec')
    DeleteTagsForDomainRequest = Shapes::StructureShape.new(name: 'DeleteTagsForDomainRequest')
    DeleteTagsForDomainResponse = Shapes::StructureShape.new(name: 'DeleteTagsForDomainResponse')
    DisableDomainAutoRenewRequest = Shapes::StructureShape.new(name: 'DisableDomainAutoRenewRequest')
    DisableDomainAutoRenewResponse = Shapes::StructureShape.new(name: 'DisableDomainAutoRenewResponse')
    DisableDomainTransferLockRequest = Shapes::StructureShape.new(name: 'DisableDomainTransferLockRequest')
    DisableDomainTransferLockResponse = Shapes::StructureShape.new(name: 'DisableDomainTransferLockResponse')
    DomainAuthCode = Shapes::StringShape.new(name: 'DomainAuthCode')
    DomainAvailability = Shapes::StringShape.new(name: 'DomainAvailability')
    DomainLimitExceeded = Shapes::StructureShape.new(name: 'DomainLimitExceeded')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainStatusList = Shapes::ListShape.new(name: 'DomainStatusList')
    DomainSuggestion = Shapes::StructureShape.new(name: 'DomainSuggestion')
    DomainSuggestionsList = Shapes::ListShape.new(name: 'DomainSuggestionsList')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    DomainTransferability = Shapes::StructureShape.new(name: 'DomainTransferability')
    DuplicateRequest = Shapes::StructureShape.new(name: 'DuplicateRequest')
    DurationInYears = Shapes::IntegerShape.new(name: 'DurationInYears')
    Email = Shapes::StringShape.new(name: 'Email')
    EnableDomainAutoRenewRequest = Shapes::StructureShape.new(name: 'EnableDomainAutoRenewRequest')
    EnableDomainAutoRenewResponse = Shapes::StructureShape.new(name: 'EnableDomainAutoRenewResponse')
    EnableDomainTransferLockRequest = Shapes::StructureShape.new(name: 'EnableDomainTransferLockRequest')
    EnableDomainTransferLockResponse = Shapes::StructureShape.new(name: 'EnableDomainTransferLockResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExtraParam = Shapes::StructureShape.new(name: 'ExtraParam')
    ExtraParamList = Shapes::ListShape.new(name: 'ExtraParamList')
    ExtraParamName = Shapes::StringShape.new(name: 'ExtraParamName')
    ExtraParamValue = Shapes::StringShape.new(name: 'ExtraParamValue')
    FIAuthKey = Shapes::StringShape.new(name: 'FIAuthKey')
    GetContactReachabilityStatusRequest = Shapes::StructureShape.new(name: 'GetContactReachabilityStatusRequest')
    GetContactReachabilityStatusResponse = Shapes::StructureShape.new(name: 'GetContactReachabilityStatusResponse')
    GetDomainDetailRequest = Shapes::StructureShape.new(name: 'GetDomainDetailRequest')
    GetDomainDetailResponse = Shapes::StructureShape.new(name: 'GetDomainDetailResponse')
    GetDomainSuggestionsRequest = Shapes::StructureShape.new(name: 'GetDomainSuggestionsRequest')
    GetDomainSuggestionsResponse = Shapes::StructureShape.new(name: 'GetDomainSuggestionsResponse')
    GetOperationDetailRequest = Shapes::StructureShape.new(name: 'GetOperationDetailRequest')
    GetOperationDetailResponse = Shapes::StructureShape.new(name: 'GetOperationDetailResponse')
    GlueIp = Shapes::StringShape.new(name: 'GlueIp')
    GlueIpList = Shapes::ListShape.new(name: 'GlueIpList')
    HostName = Shapes::StringShape.new(name: 'HostName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidInput = Shapes::StructureShape.new(name: 'InvalidInput')
    InvoiceId = Shapes::StringShape.new(name: 'InvoiceId')
    LangCode = Shapes::StringShape.new(name: 'LangCode')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListOperationsRequest = Shapes::StructureShape.new(name: 'ListOperationsRequest')
    ListOperationsResponse = Shapes::StructureShape.new(name: 'ListOperationsResponse')
    ListTagsForDomainRequest = Shapes::StructureShape.new(name: 'ListTagsForDomainRequest')
    ListTagsForDomainResponse = Shapes::StructureShape.new(name: 'ListTagsForDomainResponse')
    Nameserver = Shapes::StructureShape.new(name: 'Nameserver')
    NameserverList = Shapes::ListShape.new(name: 'NameserverList')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationLimitExceeded = Shapes::StructureShape.new(name: 'OperationLimitExceeded')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationSummary = Shapes::StructureShape.new(name: 'OperationSummary')
    OperationSummaryList = Shapes::ListShape.new(name: 'OperationSummaryList')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PageMarker = Shapes::StringShape.new(name: 'PageMarker')
    PageMaxItems = Shapes::IntegerShape.new(name: 'PageMaxItems')
    Price = Shapes::FloatShape.new(name: 'Price')
    ReachabilityStatus = Shapes::StringShape.new(name: 'ReachabilityStatus')
    RegisterDomainRequest = Shapes::StructureShape.new(name: 'RegisterDomainRequest')
    RegisterDomainResponse = Shapes::StructureShape.new(name: 'RegisterDomainResponse')
    RegistrarName = Shapes::StringShape.new(name: 'RegistrarName')
    RegistrarUrl = Shapes::StringShape.new(name: 'RegistrarUrl')
    RegistrarWhoIsServer = Shapes::StringShape.new(name: 'RegistrarWhoIsServer')
    RegistryDomainId = Shapes::StringShape.new(name: 'RegistryDomainId')
    RenewDomainRequest = Shapes::StructureShape.new(name: 'RenewDomainRequest')
    RenewDomainResponse = Shapes::StructureShape.new(name: 'RenewDomainResponse')
    Reseller = Shapes::StringShape.new(name: 'Reseller')
    ResendContactReachabilityEmailRequest = Shapes::StructureShape.new(name: 'ResendContactReachabilityEmailRequest')
    ResendContactReachabilityEmailResponse = Shapes::StructureShape.new(name: 'ResendContactReachabilityEmailResponse')
    RetrieveDomainAuthCodeRequest = Shapes::StructureShape.new(name: 'RetrieveDomainAuthCodeRequest')
    RetrieveDomainAuthCodeResponse = Shapes::StructureShape.new(name: 'RetrieveDomainAuthCodeResponse')
    State = Shapes::StringShape.new(name: 'State')
    String = Shapes::StringShape.new(name: 'String')
    TLDRulesViolation = Shapes::StructureShape.new(name: 'TLDRulesViolation')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransferDomainRequest = Shapes::StructureShape.new(name: 'TransferDomainRequest')
    TransferDomainResponse = Shapes::StructureShape.new(name: 'TransferDomainResponse')
    Transferable = Shapes::StringShape.new(name: 'Transferable')
    UnsupportedTLD = Shapes::StructureShape.new(name: 'UnsupportedTLD')
    UpdateDomainContactPrivacyRequest = Shapes::StructureShape.new(name: 'UpdateDomainContactPrivacyRequest')
    UpdateDomainContactPrivacyResponse = Shapes::StructureShape.new(name: 'UpdateDomainContactPrivacyResponse')
    UpdateDomainContactRequest = Shapes::StructureShape.new(name: 'UpdateDomainContactRequest')
    UpdateDomainContactResponse = Shapes::StructureShape.new(name: 'UpdateDomainContactResponse')
    UpdateDomainNameserversRequest = Shapes::StructureShape.new(name: 'UpdateDomainNameserversRequest')
    UpdateDomainNameserversResponse = Shapes::StructureShape.new(name: 'UpdateDomainNameserversResponse')
    UpdateTagsForDomainRequest = Shapes::StructureShape.new(name: 'UpdateTagsForDomainRequest')
    UpdateTagsForDomainResponse = Shapes::StructureShape.new(name: 'UpdateTagsForDomainResponse')
    ViewBillingRequest = Shapes::StructureShape.new(name: 'ViewBillingRequest')
    ViewBillingResponse = Shapes::StructureShape.new(name: 'ViewBillingResponse')
    ZipCode = Shapes::StringShape.new(name: 'ZipCode')

    BillingRecord.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    BillingRecord.add_member(:operation, Shapes::ShapeRef.new(shape: OperationType, location_name: "Operation"))
    BillingRecord.add_member(:invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, location_name: "InvoiceId"))
    BillingRecord.add_member(:bill_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "BillDate"))
    BillingRecord.add_member(:price, Shapes::ShapeRef.new(shape: Price, location_name: "Price"))
    BillingRecord.struct_class = Types::BillingRecord

    BillingRecords.member = Shapes::ShapeRef.new(shape: BillingRecord)

    CheckDomainAvailabilityRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CheckDomainAvailabilityRequest.add_member(:idn_lang_code, Shapes::ShapeRef.new(shape: LangCode, location_name: "IdnLangCode"))
    CheckDomainAvailabilityRequest.struct_class = Types::CheckDomainAvailabilityRequest

    CheckDomainAvailabilityResponse.add_member(:availability, Shapes::ShapeRef.new(shape: DomainAvailability, required: true, location_name: "Availability"))
    CheckDomainAvailabilityResponse.struct_class = Types::CheckDomainAvailabilityResponse

    CheckDomainTransferabilityRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CheckDomainTransferabilityRequest.add_member(:auth_code, Shapes::ShapeRef.new(shape: DomainAuthCode, location_name: "AuthCode"))
    CheckDomainTransferabilityRequest.struct_class = Types::CheckDomainTransferabilityRequest

    CheckDomainTransferabilityResponse.add_member(:transferability, Shapes::ShapeRef.new(shape: DomainTransferability, required: true, location_name: "Transferability"))
    CheckDomainTransferabilityResponse.struct_class = Types::CheckDomainTransferabilityResponse

    ContactDetail.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "FirstName"))
    ContactDetail.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "LastName"))
    ContactDetail.add_member(:contact_type, Shapes::ShapeRef.new(shape: ContactType, location_name: "ContactType"))
    ContactDetail.add_member(:organization_name, Shapes::ShapeRef.new(shape: ContactName, location_name: "OrganizationName"))
    ContactDetail.add_member(:address_line_1, Shapes::ShapeRef.new(shape: AddressLine, location_name: "AddressLine1"))
    ContactDetail.add_member(:address_line_2, Shapes::ShapeRef.new(shape: AddressLine, location_name: "AddressLine2"))
    ContactDetail.add_member(:city, Shapes::ShapeRef.new(shape: City, location_name: "City"))
    ContactDetail.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    ContactDetail.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    ContactDetail.add_member(:zip_code, Shapes::ShapeRef.new(shape: ZipCode, location_name: "ZipCode"))
    ContactDetail.add_member(:phone_number, Shapes::ShapeRef.new(shape: ContactNumber, location_name: "PhoneNumber"))
    ContactDetail.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    ContactDetail.add_member(:fax, Shapes::ShapeRef.new(shape: ContactNumber, location_name: "Fax"))
    ContactDetail.add_member(:extra_params, Shapes::ShapeRef.new(shape: ExtraParamList, location_name: "ExtraParams"))
    ContactDetail.struct_class = Types::ContactDetail

    DeleteTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteTagsForDomainRequest.add_member(:tags_to_delete, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagsToDelete"))
    DeleteTagsForDomainRequest.struct_class = Types::DeleteTagsForDomainRequest

    DeleteTagsForDomainResponse.struct_class = Types::DeleteTagsForDomainResponse

    DisableDomainAutoRenewRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisableDomainAutoRenewRequest.struct_class = Types::DisableDomainAutoRenewRequest

    DisableDomainAutoRenewResponse.struct_class = Types::DisableDomainAutoRenewResponse

    DisableDomainTransferLockRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisableDomainTransferLockRequest.struct_class = Types::DisableDomainTransferLockRequest

    DisableDomainTransferLockResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    DisableDomainTransferLockResponse.struct_class = Types::DisableDomainTransferLockResponse

    DomainStatusList.member = Shapes::ShapeRef.new(shape: DomainStatus)

    DomainSuggestion.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainSuggestion.add_member(:availability, Shapes::ShapeRef.new(shape: String, location_name: "Availability"))
    DomainSuggestion.struct_class = Types::DomainSuggestion

    DomainSuggestionsList.member = Shapes::ShapeRef.new(shape: DomainSuggestion)

    DomainSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainSummary.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    DomainSummary.add_member(:transfer_lock, Shapes::ShapeRef.new(shape: Boolean, location_name: "TransferLock"))
    DomainSummary.add_member(:expiry, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expiry"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    DomainTransferability.add_member(:transferable, Shapes::ShapeRef.new(shape: Transferable, location_name: "Transferable"))
    DomainTransferability.struct_class = Types::DomainTransferability

    EnableDomainAutoRenewRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    EnableDomainAutoRenewRequest.struct_class = Types::EnableDomainAutoRenewRequest

    EnableDomainAutoRenewResponse.struct_class = Types::EnableDomainAutoRenewResponse

    EnableDomainTransferLockRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    EnableDomainTransferLockRequest.struct_class = Types::EnableDomainTransferLockRequest

    EnableDomainTransferLockResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    EnableDomainTransferLockResponse.struct_class = Types::EnableDomainTransferLockResponse

    ExtraParam.add_member(:name, Shapes::ShapeRef.new(shape: ExtraParamName, required: true, location_name: "Name"))
    ExtraParam.add_member(:value, Shapes::ShapeRef.new(shape: ExtraParamValue, required: true, location_name: "Value"))
    ExtraParam.struct_class = Types::ExtraParam

    ExtraParamList.member = Shapes::ShapeRef.new(shape: ExtraParam)

    GetContactReachabilityStatusRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusRequest.struct_class = Types::GetContactReachabilityStatusRequest

    GetContactReachabilityStatusResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReachabilityStatus, location_name: "status"))
    GetContactReachabilityStatusResponse.struct_class = Types::GetContactReachabilityStatusResponse

    GetDomainDetailRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    GetDomainDetailRequest.struct_class = Types::GetDomainDetailRequest

    GetDomainDetailResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    GetDomainDetailResponse.add_member(:nameservers, Shapes::ShapeRef.new(shape: NameserverList, required: true, location_name: "Nameservers"))
    GetDomainDetailResponse.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    GetDomainDetailResponse.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "AdminContact"))
    GetDomainDetailResponse.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "RegistrantContact"))
    GetDomainDetailResponse.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "TechContact"))
    GetDomainDetailResponse.add_member(:admin_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdminPrivacy"))
    GetDomainDetailResponse.add_member(:registrant_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "RegistrantPrivacy"))
    GetDomainDetailResponse.add_member(:tech_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "TechPrivacy"))
    GetDomainDetailResponse.add_member(:registrar_name, Shapes::ShapeRef.new(shape: RegistrarName, location_name: "RegistrarName"))
    GetDomainDetailResponse.add_member(:who_is_server, Shapes::ShapeRef.new(shape: RegistrarWhoIsServer, location_name: "WhoIsServer"))
    GetDomainDetailResponse.add_member(:registrar_url, Shapes::ShapeRef.new(shape: RegistrarUrl, location_name: "RegistrarUrl"))
    GetDomainDetailResponse.add_member(:abuse_contact_email, Shapes::ShapeRef.new(shape: Email, location_name: "AbuseContactEmail"))
    GetDomainDetailResponse.add_member(:abuse_contact_phone, Shapes::ShapeRef.new(shape: ContactNumber, location_name: "AbuseContactPhone"))
    GetDomainDetailResponse.add_member(:registry_domain_id, Shapes::ShapeRef.new(shape: RegistryDomainId, location_name: "RegistryDomainId"))
    GetDomainDetailResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    GetDomainDetailResponse.add_member(:updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedDate"))
    GetDomainDetailResponse.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    GetDomainDetailResponse.add_member(:reseller, Shapes::ShapeRef.new(shape: Reseller, location_name: "Reseller"))
    GetDomainDetailResponse.add_member(:dns_sec, Shapes::ShapeRef.new(shape: DNSSec, location_name: "DnsSec"))
    GetDomainDetailResponse.add_member(:status_list, Shapes::ShapeRef.new(shape: DomainStatusList, location_name: "StatusList"))
    GetDomainDetailResponse.struct_class = Types::GetDomainDetailResponse

    GetDomainSuggestionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    GetDomainSuggestionsRequest.add_member(:suggestion_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuggestionCount"))
    GetDomainSuggestionsRequest.add_member(:only_available, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "OnlyAvailable"))
    GetDomainSuggestionsRequest.struct_class = Types::GetDomainSuggestionsRequest

    GetDomainSuggestionsResponse.add_member(:suggestions_list, Shapes::ShapeRef.new(shape: DomainSuggestionsList, location_name: "SuggestionsList"))
    GetDomainSuggestionsResponse.struct_class = Types::GetDomainSuggestionsResponse

    GetOperationDetailRequest.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    GetOperationDetailRequest.struct_class = Types::GetOperationDetailRequest

    GetOperationDetailResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    GetOperationDetailResponse.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    GetOperationDetailResponse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    GetOperationDetailResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    GetOperationDetailResponse.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, location_name: "Type"))
    GetOperationDetailResponse.add_member(:submitted_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedDate"))
    GetOperationDetailResponse.struct_class = Types::GetOperationDetailResponse

    GlueIpList.member = Shapes::ShapeRef.new(shape: GlueIp)

    ListDomainsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ListDomainsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location_name: "MaxItems"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListOperationsRequest.add_member(:submitted_since, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedSince"))
    ListOperationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ListOperationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location_name: "MaxItems"))
    ListOperationsRequest.struct_class = Types::ListOperationsRequest

    ListOperationsResponse.add_member(:operations, Shapes::ShapeRef.new(shape: OperationSummaryList, required: true, location_name: "Operations"))
    ListOperationsResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ListOperationsResponse.struct_class = Types::ListOperationsResponse

    ListTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    ListTagsForDomainRequest.struct_class = Types::ListTagsForDomainRequest

    ListTagsForDomainResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    ListTagsForDomainResponse.struct_class = Types::ListTagsForDomainResponse

    Nameserver.add_member(:name, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "Name"))
    Nameserver.add_member(:glue_ips, Shapes::ShapeRef.new(shape: GlueIpList, location_name: "GlueIps"))
    Nameserver.struct_class = Types::Nameserver

    NameserverList.member = Shapes::ShapeRef.new(shape: Nameserver)

    OperationSummary.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    OperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, required: true, location_name: "Status"))
    OperationSummary.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, required: true, location_name: "Type"))
    OperationSummary.add_member(:submitted_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "SubmittedDate"))
    OperationSummary.struct_class = Types::OperationSummary

    OperationSummaryList.member = Shapes::ShapeRef.new(shape: OperationSummary)

    RegisterDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RegisterDomainRequest.add_member(:idn_lang_code, Shapes::ShapeRef.new(shape: LangCode, location_name: "IdnLangCode"))
    RegisterDomainRequest.add_member(:duration_in_years, Shapes::ShapeRef.new(shape: DurationInYears, required: true, location_name: "DurationInYears"))
    RegisterDomainRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    RegisterDomainRequest.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "AdminContact"))
    RegisterDomainRequest.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "RegistrantContact"))
    RegisterDomainRequest.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "TechContact"))
    RegisterDomainRequest.add_member(:privacy_protect_admin_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectAdminContact"))
    RegisterDomainRequest.add_member(:privacy_protect_registrant_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectRegistrantContact"))
    RegisterDomainRequest.add_member(:privacy_protect_tech_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectTechContact"))
    RegisterDomainRequest.struct_class = Types::RegisterDomainRequest

    RegisterDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    RegisterDomainResponse.struct_class = Types::RegisterDomainResponse

    RenewDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RenewDomainRequest.add_member(:duration_in_years, Shapes::ShapeRef.new(shape: DurationInYears, location_name: "DurationInYears"))
    RenewDomainRequest.add_member(:current_expiry_year, Shapes::ShapeRef.new(shape: CurrentExpiryYear, required: true, location_name: "CurrentExpiryYear"))
    RenewDomainRequest.struct_class = Types::RenewDomainRequest

    RenewDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    RenewDomainResponse.struct_class = Types::RenewDomainResponse

    ResendContactReachabilityEmailRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailRequest.struct_class = Types::ResendContactReachabilityEmailRequest

    ResendContactReachabilityEmailResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailResponse.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    ResendContactReachabilityEmailResponse.add_member(:is_already_verified, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAlreadyVerified"))
    ResendContactReachabilityEmailResponse.struct_class = Types::ResendContactReachabilityEmailResponse

    RetrieveDomainAuthCodeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RetrieveDomainAuthCodeRequest.struct_class = Types::RetrieveDomainAuthCodeRequest

    RetrieveDomainAuthCodeResponse.add_member(:auth_code, Shapes::ShapeRef.new(shape: DomainAuthCode, required: true, location_name: "AuthCode"))
    RetrieveDomainAuthCodeResponse.struct_class = Types::RetrieveDomainAuthCodeResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TransferDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    TransferDomainRequest.add_member(:idn_lang_code, Shapes::ShapeRef.new(shape: LangCode, location_name: "IdnLangCode"))
    TransferDomainRequest.add_member(:duration_in_years, Shapes::ShapeRef.new(shape: DurationInYears, required: true, location_name: "DurationInYears"))
    TransferDomainRequest.add_member(:nameservers, Shapes::ShapeRef.new(shape: NameserverList, location_name: "Nameservers"))
    TransferDomainRequest.add_member(:auth_code, Shapes::ShapeRef.new(shape: DomainAuthCode, location_name: "AuthCode"))
    TransferDomainRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    TransferDomainRequest.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "AdminContact"))
    TransferDomainRequest.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "RegistrantContact"))
    TransferDomainRequest.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, required: true, location_name: "TechContact"))
    TransferDomainRequest.add_member(:privacy_protect_admin_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectAdminContact"))
    TransferDomainRequest.add_member(:privacy_protect_registrant_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectRegistrantContact"))
    TransferDomainRequest.add_member(:privacy_protect_tech_contact, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrivacyProtectTechContact"))
    TransferDomainRequest.struct_class = Types::TransferDomainRequest

    TransferDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    TransferDomainResponse.struct_class = Types::TransferDomainResponse

    UpdateDomainContactPrivacyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainContactPrivacyRequest.add_member(:admin_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdminPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:registrant_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "RegistrantPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:tech_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "TechPrivacy"))
    UpdateDomainContactPrivacyRequest.struct_class = Types::UpdateDomainContactPrivacyRequest

    UpdateDomainContactPrivacyResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    UpdateDomainContactPrivacyResponse.struct_class = Types::UpdateDomainContactPrivacyResponse

    UpdateDomainContactRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainContactRequest.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "AdminContact"))
    UpdateDomainContactRequest.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "RegistrantContact"))
    UpdateDomainContactRequest.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "TechContact"))
    UpdateDomainContactRequest.struct_class = Types::UpdateDomainContactRequest

    UpdateDomainContactResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    UpdateDomainContactResponse.struct_class = Types::UpdateDomainContactResponse

    UpdateDomainNameserversRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainNameserversRequest.add_member(:fi_auth_key, Shapes::ShapeRef.new(shape: FIAuthKey, deprecated: true, location_name: "FIAuthKey"))
    UpdateDomainNameserversRequest.add_member(:nameservers, Shapes::ShapeRef.new(shape: NameserverList, required: true, location_name: "Nameservers"))
    UpdateDomainNameserversRequest.struct_class = Types::UpdateDomainNameserversRequest

    UpdateDomainNameserversResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    UpdateDomainNameserversResponse.struct_class = Types::UpdateDomainNameserversResponse

    UpdateTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateTagsForDomainRequest.add_member(:tags_to_update, Shapes::ShapeRef.new(shape: TagList, location_name: "TagsToUpdate"))
    UpdateTagsForDomainRequest.struct_class = Types::UpdateTagsForDomainRequest

    UpdateTagsForDomainResponse.struct_class = Types::UpdateTagsForDomainResponse

    ViewBillingRequest.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Start"))
    ViewBillingRequest.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "End"))
    ViewBillingRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ViewBillingRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location_name: "MaxItems"))
    ViewBillingRequest.struct_class = Types::ViewBillingRequest

    ViewBillingResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ViewBillingResponse.add_member(:billing_records, Shapes::ShapeRef.new(shape: BillingRecords, location_name: "BillingRecords"))
    ViewBillingResponse.struct_class = Types::ViewBillingResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-05-15"

      api.metadata = {
        "apiVersion" => "2014-05-15",
        "endpointPrefix" => "route53domains",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Route 53 Domains",
        "signatureVersion" => "v4",
        "targetPrefix" => "Route53Domains_v20140515",
        "uid" => "route53domains-2014-05-15",
      }

      api.add_operation(:check_domain_availability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckDomainAvailability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckDomainAvailabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckDomainAvailabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:check_domain_transferability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckDomainTransferability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckDomainTransferabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckDomainTransferabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:delete_tags_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTagsForDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:disable_domain_auto_renew, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableDomainAutoRenew"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableDomainAutoRenewRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableDomainAutoRenewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:disable_domain_transfer_lock, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableDomainTransferLock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableDomainTransferLockRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableDomainTransferLockResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:enable_domain_auto_renew, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableDomainAutoRenew"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableDomainAutoRenewRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableDomainAutoRenewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
      end)

      api.add_operation(:enable_domain_transfer_lock, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableDomainTransferLock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableDomainTransferLockRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableDomainTransferLockResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:get_contact_reachability_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactReachabilityStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContactReachabilityStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactReachabilityStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:get_domain_detail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainDetail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainDetailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:get_domain_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainSuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainSuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainSuggestionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:get_operation_detail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperationDetail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOperationDetailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOperationDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_page_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_page_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:register_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: DomainLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
      end)

      api.add_operation(:renew_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenewDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenewDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: RenewDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
      end)

      api.add_operation(:resend_contact_reachability_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResendContactReachabilityEmail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResendContactReachabilityEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: ResendContactReachabilityEmailResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:retrieve_domain_auth_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveDomainAuthCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetrieveDomainAuthCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveDomainAuthCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:transfer_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TransferDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: DomainLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
      end)

      api.add_operation(:update_domain_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:update_domain_contact_privacy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainContactPrivacy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainContactPrivacyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainContactPrivacyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:update_domain_nameservers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainNameservers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainNameserversRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainNameserversResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:update_tags_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTagsForDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTagsForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTagsForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:view_billing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ViewBilling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ViewBillingRequest)
        o.output = Shapes::ShapeRef.new(shape: ViewBillingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)
    end

  end
end
