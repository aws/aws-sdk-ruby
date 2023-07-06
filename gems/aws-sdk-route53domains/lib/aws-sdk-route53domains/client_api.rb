# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Domains
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptDomainTransferFromAnotherAwsAccountRequest = Shapes::StructureShape.new(name: 'AcceptDomainTransferFromAnotherAwsAccountRequest')
    AcceptDomainTransferFromAnotherAwsAccountResponse = Shapes::StructureShape.new(name: 'AcceptDomainTransferFromAnotherAwsAccountResponse')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddressLine = Shapes::StringShape.new(name: 'AddressLine')
    AssociateDelegationSignerToDomainRequest = Shapes::StructureShape.new(name: 'AssociateDelegationSignerToDomainRequest')
    AssociateDelegationSignerToDomainResponse = Shapes::StructureShape.new(name: 'AssociateDelegationSignerToDomainResponse')
    BillingRecord = Shapes::StructureShape.new(name: 'BillingRecord')
    BillingRecords = Shapes::ListShape.new(name: 'BillingRecords')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelDomainTransferToAnotherAwsAccountRequest = Shapes::StructureShape.new(name: 'CancelDomainTransferToAnotherAwsAccountRequest')
    CancelDomainTransferToAnotherAwsAccountResponse = Shapes::StructureShape.new(name: 'CancelDomainTransferToAnotherAwsAccountResponse')
    CheckDomainAvailabilityRequest = Shapes::StructureShape.new(name: 'CheckDomainAvailabilityRequest')
    CheckDomainAvailabilityResponse = Shapes::StructureShape.new(name: 'CheckDomainAvailabilityResponse')
    CheckDomainTransferabilityRequest = Shapes::StructureShape.new(name: 'CheckDomainTransferabilityRequest')
    CheckDomainTransferabilityResponse = Shapes::StructureShape.new(name: 'CheckDomainTransferabilityResponse')
    City = Shapes::StringShape.new(name: 'City')
    Consent = Shapes::StructureShape.new(name: 'Consent')
    ContactDetail = Shapes::StructureShape.new(name: 'ContactDetail')
    ContactName = Shapes::StringShape.new(name: 'ContactName')
    ContactNumber = Shapes::StringShape.new(name: 'ContactNumber')
    ContactType = Shapes::StringShape.new(name: 'ContactType')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    Currency = Shapes::StringShape.new(name: 'Currency')
    CurrentExpiryYear = Shapes::IntegerShape.new(name: 'CurrentExpiryYear')
    DNSSec = Shapes::StringShape.new(name: 'DNSSec')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteTagsForDomainRequest = Shapes::StructureShape.new(name: 'DeleteTagsForDomainRequest')
    DeleteTagsForDomainResponse = Shapes::StructureShape.new(name: 'DeleteTagsForDomainResponse')
    DisableDomainAutoRenewRequest = Shapes::StructureShape.new(name: 'DisableDomainAutoRenewRequest')
    DisableDomainAutoRenewResponse = Shapes::StructureShape.new(name: 'DisableDomainAutoRenewResponse')
    DisableDomainTransferLockRequest = Shapes::StructureShape.new(name: 'DisableDomainTransferLockRequest')
    DisableDomainTransferLockResponse = Shapes::StructureShape.new(name: 'DisableDomainTransferLockResponse')
    DisassociateDelegationSignerFromDomainRequest = Shapes::StructureShape.new(name: 'DisassociateDelegationSignerFromDomainRequest')
    DisassociateDelegationSignerFromDomainResponse = Shapes::StructureShape.new(name: 'DisassociateDelegationSignerFromDomainResponse')
    DnssecKey = Shapes::StructureShape.new(name: 'DnssecKey')
    DnssecKeyList = Shapes::ListShape.new(name: 'DnssecKeyList')
    DnssecLimitExceeded = Shapes::StructureShape.new(name: 'DnssecLimitExceeded')
    DnssecPublicKey = Shapes::StringShape.new(name: 'DnssecPublicKey')
    DnssecSigningAttributes = Shapes::StructureShape.new(name: 'DnssecSigningAttributes')
    DomainAuthCode = Shapes::StringShape.new(name: 'DomainAuthCode')
    DomainAvailability = Shapes::StringShape.new(name: 'DomainAvailability')
    DomainLimitExceeded = Shapes::StructureShape.new(name: 'DomainLimitExceeded')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainPrice = Shapes::StructureShape.new(name: 'DomainPrice')
    DomainPriceList = Shapes::ListShape.new(name: 'DomainPriceList')
    DomainPriceName = Shapes::StringShape.new(name: 'DomainPriceName')
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
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterConditions = Shapes::ListShape.new(name: 'FilterConditions')
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
    Label = Shapes::StringShape.new(name: 'Label')
    LangCode = Shapes::StringShape.new(name: 'LangCode')
    ListDomainsAttributeName = Shapes::StringShape.new(name: 'ListDomainsAttributeName')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListOperationsRequest = Shapes::StructureShape.new(name: 'ListOperationsRequest')
    ListOperationsResponse = Shapes::StructureShape.new(name: 'ListOperationsResponse')
    ListOperationsSortAttributeName = Shapes::StringShape.new(name: 'ListOperationsSortAttributeName')
    ListPricesPageMaxItems = Shapes::IntegerShape.new(name: 'ListPricesPageMaxItems')
    ListPricesRequest = Shapes::StructureShape.new(name: 'ListPricesRequest')
    ListPricesResponse = Shapes::StructureShape.new(name: 'ListPricesResponse')
    ListTagsForDomainRequest = Shapes::StructureShape.new(name: 'ListTagsForDomainRequest')
    ListTagsForDomainResponse = Shapes::StructureShape.new(name: 'ListTagsForDomainResponse')
    Nameserver = Shapes::StructureShape.new(name: 'Nameserver')
    NameserverList = Shapes::ListShape.new(name: 'NameserverList')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationLimitExceeded = Shapes::StructureShape.new(name: 'OperationLimitExceeded')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationStatusList = Shapes::ListShape.new(name: 'OperationStatusList')
    OperationSummary = Shapes::StructureShape.new(name: 'OperationSummary')
    OperationSummaryList = Shapes::ListShape.new(name: 'OperationSummaryList')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    OperationTypeList = Shapes::ListShape.new(name: 'OperationTypeList')
    Operator = Shapes::StringShape.new(name: 'Operator')
    PageMarker = Shapes::StringShape.new(name: 'PageMarker')
    PageMaxItems = Shapes::IntegerShape.new(name: 'PageMaxItems')
    Price = Shapes::FloatShape.new(name: 'Price')
    PriceWithCurrency = Shapes::StructureShape.new(name: 'PriceWithCurrency')
    PushDomainRequest = Shapes::StructureShape.new(name: 'PushDomainRequest')
    ReachabilityStatus = Shapes::StringShape.new(name: 'ReachabilityStatus')
    RegisterDomainRequest = Shapes::StructureShape.new(name: 'RegisterDomainRequest')
    RegisterDomainResponse = Shapes::StructureShape.new(name: 'RegisterDomainResponse')
    RegistrarName = Shapes::StringShape.new(name: 'RegistrarName')
    RegistrarUrl = Shapes::StringShape.new(name: 'RegistrarUrl')
    RegistrarWhoIsServer = Shapes::StringShape.new(name: 'RegistrarWhoIsServer')
    RegistryDomainId = Shapes::StringShape.new(name: 'RegistryDomainId')
    RejectDomainTransferFromAnotherAwsAccountRequest = Shapes::StructureShape.new(name: 'RejectDomainTransferFromAnotherAwsAccountRequest')
    RejectDomainTransferFromAnotherAwsAccountResponse = Shapes::StructureShape.new(name: 'RejectDomainTransferFromAnotherAwsAccountResponse')
    RenewDomainRequest = Shapes::StructureShape.new(name: 'RenewDomainRequest')
    RenewDomainResponse = Shapes::StructureShape.new(name: 'RenewDomainResponse')
    Reseller = Shapes::StringShape.new(name: 'Reseller')
    ResendContactReachabilityEmailRequest = Shapes::StructureShape.new(name: 'ResendContactReachabilityEmailRequest')
    ResendContactReachabilityEmailResponse = Shapes::StructureShape.new(name: 'ResendContactReachabilityEmailResponse')
    ResendOperationAuthorizationRequest = Shapes::StructureShape.new(name: 'ResendOperationAuthorizationRequest')
    RetrieveDomainAuthCodeRequest = Shapes::StructureShape.new(name: 'RetrieveDomainAuthCodeRequest')
    RetrieveDomainAuthCodeResponse = Shapes::StructureShape.new(name: 'RetrieveDomainAuthCodeResponse')
    SortCondition = Shapes::StructureShape.new(name: 'SortCondition')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    State = Shapes::StringShape.new(name: 'State')
    StatusFlag = Shapes::StringShape.new(name: 'StatusFlag')
    String = Shapes::StringShape.new(name: 'String')
    TLDRulesViolation = Shapes::StructureShape.new(name: 'TLDRulesViolation')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TldName = Shapes::StringShape.new(name: 'TldName')
    TransferDomainRequest = Shapes::StructureShape.new(name: 'TransferDomainRequest')
    TransferDomainResponse = Shapes::StructureShape.new(name: 'TransferDomainResponse')
    TransferDomainToAnotherAwsAccountRequest = Shapes::StructureShape.new(name: 'TransferDomainToAnotherAwsAccountRequest')
    TransferDomainToAnotherAwsAccountResponse = Shapes::StructureShape.new(name: 'TransferDomainToAnotherAwsAccountResponse')
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
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    ViewBillingRequest = Shapes::StructureShape.new(name: 'ViewBillingRequest')
    ViewBillingResponse = Shapes::StructureShape.new(name: 'ViewBillingResponse')
    ZipCode = Shapes::StringShape.new(name: 'ZipCode')

    AcceptDomainTransferFromAnotherAwsAccountRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AcceptDomainTransferFromAnotherAwsAccountRequest.add_member(:password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Password"))
    AcceptDomainTransferFromAnotherAwsAccountRequest.struct_class = Types::AcceptDomainTransferFromAnotherAwsAccountRequest

    AcceptDomainTransferFromAnotherAwsAccountResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    AcceptDomainTransferFromAnotherAwsAccountResponse.struct_class = Types::AcceptDomainTransferFromAnotherAwsAccountResponse

    AssociateDelegationSignerToDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    AssociateDelegationSignerToDomainRequest.add_member(:signing_attributes, Shapes::ShapeRef.new(shape: DnssecSigningAttributes, required: true, location_name: "SigningAttributes"))
    AssociateDelegationSignerToDomainRequest.struct_class = Types::AssociateDelegationSignerToDomainRequest

    AssociateDelegationSignerToDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    AssociateDelegationSignerToDomainResponse.struct_class = Types::AssociateDelegationSignerToDomainResponse

    BillingRecord.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    BillingRecord.add_member(:operation, Shapes::ShapeRef.new(shape: OperationType, location_name: "Operation"))
    BillingRecord.add_member(:invoice_id, Shapes::ShapeRef.new(shape: InvoiceId, location_name: "InvoiceId"))
    BillingRecord.add_member(:bill_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "BillDate"))
    BillingRecord.add_member(:price, Shapes::ShapeRef.new(shape: Price, location_name: "Price"))
    BillingRecord.struct_class = Types::BillingRecord

    BillingRecords.member = Shapes::ShapeRef.new(shape: BillingRecord)

    CancelDomainTransferToAnotherAwsAccountRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CancelDomainTransferToAnotherAwsAccountRequest.struct_class = Types::CancelDomainTransferToAnotherAwsAccountRequest

    CancelDomainTransferToAnotherAwsAccountResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    CancelDomainTransferToAnotherAwsAccountResponse.struct_class = Types::CancelDomainTransferToAnotherAwsAccountResponse

    CheckDomainAvailabilityRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CheckDomainAvailabilityRequest.add_member(:idn_lang_code, Shapes::ShapeRef.new(shape: LangCode, location_name: "IdnLangCode"))
    CheckDomainAvailabilityRequest.struct_class = Types::CheckDomainAvailabilityRequest

    CheckDomainAvailabilityResponse.add_member(:availability, Shapes::ShapeRef.new(shape: DomainAvailability, location_name: "Availability"))
    CheckDomainAvailabilityResponse.struct_class = Types::CheckDomainAvailabilityResponse

    CheckDomainTransferabilityRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CheckDomainTransferabilityRequest.add_member(:auth_code, Shapes::ShapeRef.new(shape: DomainAuthCode, location_name: "AuthCode"))
    CheckDomainTransferabilityRequest.struct_class = Types::CheckDomainTransferabilityRequest

    CheckDomainTransferabilityResponse.add_member(:transferability, Shapes::ShapeRef.new(shape: DomainTransferability, location_name: "Transferability"))
    CheckDomainTransferabilityResponse.struct_class = Types::CheckDomainTransferabilityResponse

    Consent.add_member(:max_price, Shapes::ShapeRef.new(shape: Price, required: true, location_name: "MaxPrice"))
    Consent.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, required: true, location_name: "Currency"))
    Consent.struct_class = Types::Consent

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

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteTagsForDomainRequest.add_member(:tags_to_delete, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagsToDelete"))
    DeleteTagsForDomainRequest.struct_class = Types::DeleteTagsForDomainRequest

    DeleteTagsForDomainResponse.struct_class = Types::DeleteTagsForDomainResponse

    DisableDomainAutoRenewRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisableDomainAutoRenewRequest.struct_class = Types::DisableDomainAutoRenewRequest

    DisableDomainAutoRenewResponse.struct_class = Types::DisableDomainAutoRenewResponse

    DisableDomainTransferLockRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisableDomainTransferLockRequest.struct_class = Types::DisableDomainTransferLockRequest

    DisableDomainTransferLockResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    DisableDomainTransferLockResponse.struct_class = Types::DisableDomainTransferLockResponse

    DisassociateDelegationSignerFromDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisassociateDelegationSignerFromDomainRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    DisassociateDelegationSignerFromDomainRequest.struct_class = Types::DisassociateDelegationSignerFromDomainRequest

    DisassociateDelegationSignerFromDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    DisassociateDelegationSignerFromDomainResponse.struct_class = Types::DisassociateDelegationSignerFromDomainResponse

    DnssecKey.add_member(:algorithm, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Algorithm"))
    DnssecKey.add_member(:flags, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Flags"))
    DnssecKey.add_member(:public_key, Shapes::ShapeRef.new(shape: DnssecPublicKey, location_name: "PublicKey"))
    DnssecKey.add_member(:digest_type, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "DigestType"))
    DnssecKey.add_member(:digest, Shapes::ShapeRef.new(shape: String, location_name: "Digest"))
    DnssecKey.add_member(:key_tag, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "KeyTag"))
    DnssecKey.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    DnssecKey.struct_class = Types::DnssecKey

    DnssecKeyList.member = Shapes::ShapeRef.new(shape: DnssecKey)

    DnssecLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DnssecLimitExceeded.struct_class = Types::DnssecLimitExceeded

    DnssecSigningAttributes.add_member(:algorithm, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Algorithm"))
    DnssecSigningAttributes.add_member(:flags, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Flags"))
    DnssecSigningAttributes.add_member(:public_key, Shapes::ShapeRef.new(shape: DnssecPublicKey, location_name: "PublicKey"))
    DnssecSigningAttributes.struct_class = Types::DnssecSigningAttributes

    DomainLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DomainLimitExceeded.struct_class = Types::DomainLimitExceeded

    DomainPrice.add_member(:name, Shapes::ShapeRef.new(shape: DomainPriceName, location_name: "Name"))
    DomainPrice.add_member(:registration_price, Shapes::ShapeRef.new(shape: PriceWithCurrency, location_name: "RegistrationPrice"))
    DomainPrice.add_member(:transfer_price, Shapes::ShapeRef.new(shape: PriceWithCurrency, location_name: "TransferPrice"))
    DomainPrice.add_member(:renewal_price, Shapes::ShapeRef.new(shape: PriceWithCurrency, location_name: "RenewalPrice"))
    DomainPrice.add_member(:change_ownership_price, Shapes::ShapeRef.new(shape: PriceWithCurrency, location_name: "ChangeOwnershipPrice"))
    DomainPrice.add_member(:restoration_price, Shapes::ShapeRef.new(shape: PriceWithCurrency, location_name: "RestorationPrice"))
    DomainPrice.struct_class = Types::DomainPrice

    DomainPriceList.member = Shapes::ShapeRef.new(shape: DomainPrice)

    DomainStatusList.member = Shapes::ShapeRef.new(shape: DomainStatus)

    DomainSuggestion.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainSuggestion.add_member(:availability, Shapes::ShapeRef.new(shape: String, location_name: "Availability"))
    DomainSuggestion.struct_class = Types::DomainSuggestion

    DomainSuggestionsList.member = Shapes::ShapeRef.new(shape: DomainSuggestion)

    DomainSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainSummary.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    DomainSummary.add_member(:transfer_lock, Shapes::ShapeRef.new(shape: Boolean, location_name: "TransferLock"))
    DomainSummary.add_member(:expiry, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expiry"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    DomainTransferability.add_member(:transferable, Shapes::ShapeRef.new(shape: Transferable, location_name: "Transferable"))
    DomainTransferability.struct_class = Types::DomainTransferability

    DuplicateRequest.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DuplicateRequest.struct_class = Types::DuplicateRequest

    EnableDomainAutoRenewRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    EnableDomainAutoRenewRequest.struct_class = Types::EnableDomainAutoRenewRequest

    EnableDomainAutoRenewResponse.struct_class = Types::EnableDomainAutoRenewResponse

    EnableDomainTransferLockRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    EnableDomainTransferLockRequest.struct_class = Types::EnableDomainTransferLockRequest

    EnableDomainTransferLockResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    EnableDomainTransferLockResponse.struct_class = Types::EnableDomainTransferLockResponse

    ExtraParam.add_member(:name, Shapes::ShapeRef.new(shape: ExtraParamName, required: true, location_name: "Name"))
    ExtraParam.add_member(:value, Shapes::ShapeRef.new(shape: ExtraParamValue, required: true, location_name: "Value"))
    ExtraParam.struct_class = Types::ExtraParam

    ExtraParamList.member = Shapes::ShapeRef.new(shape: ExtraParam)

    FilterCondition.add_member(:name, Shapes::ShapeRef.new(shape: ListDomainsAttributeName, required: true, location_name: "Name"))
    FilterCondition.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "Operator"))
    FilterCondition.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    FilterCondition.struct_class = Types::FilterCondition

    FilterConditions.member = Shapes::ShapeRef.new(shape: FilterCondition)

    GetContactReachabilityStatusRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusRequest.struct_class = Types::GetContactReachabilityStatusRequest

    GetContactReachabilityStatusResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    GetContactReachabilityStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReachabilityStatus, location_name: "status"))
    GetContactReachabilityStatusResponse.struct_class = Types::GetContactReachabilityStatusResponse

    GetDomainDetailRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    GetDomainDetailRequest.struct_class = Types::GetDomainDetailRequest

    GetDomainDetailResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    GetDomainDetailResponse.add_member(:nameservers, Shapes::ShapeRef.new(shape: NameserverList, location_name: "Nameservers"))
    GetDomainDetailResponse.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoRenew"))
    GetDomainDetailResponse.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "AdminContact"))
    GetDomainDetailResponse.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "RegistrantContact"))
    GetDomainDetailResponse.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "TechContact"))
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
    GetDomainDetailResponse.add_member(:dnssec_keys, Shapes::ShapeRef.new(shape: DnssecKeyList, location_name: "DnssecKeys"))
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
    GetOperationDetailResponse.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedDate"))
    GetOperationDetailResponse.add_member(:status_flag, Shapes::ShapeRef.new(shape: StatusFlag, location_name: "StatusFlag"))
    GetOperationDetailResponse.struct_class = Types::GetOperationDetailResponse

    GlueIpList.member = Shapes::ShapeRef.new(shape: GlueIp)

    InvalidInput.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidInput.struct_class = Types::InvalidInput

    ListDomainsRequest.add_member(:filter_conditions, Shapes::ShapeRef.new(shape: FilterConditions, location_name: "FilterConditions"))
    ListDomainsRequest.add_member(:sort_condition, Shapes::ShapeRef.new(shape: SortCondition, location_name: "SortCondition"))
    ListDomainsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ListDomainsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location_name: "MaxItems"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListOperationsRequest.add_member(:submitted_since, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedSince"))
    ListOperationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ListOperationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: PageMaxItems, location_name: "MaxItems"))
    ListOperationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatusList, location_name: "Status"))
    ListOperationsRequest.add_member(:type, Shapes::ShapeRef.new(shape: OperationTypeList, location_name: "Type"))
    ListOperationsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListOperationsSortAttributeName, location_name: "SortBy"))
    ListOperationsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListOperationsRequest.struct_class = Types::ListOperationsRequest

    ListOperationsResponse.add_member(:operations, Shapes::ShapeRef.new(shape: OperationSummaryList, location_name: "Operations"))
    ListOperationsResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ListOperationsResponse.struct_class = Types::ListOperationsResponse

    ListPricesRequest.add_member(:tld, Shapes::ShapeRef.new(shape: TldName, location_name: "Tld"))
    ListPricesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "Marker"))
    ListPricesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: ListPricesPageMaxItems, location_name: "MaxItems"))
    ListPricesRequest.struct_class = Types::ListPricesRequest

    ListPricesResponse.add_member(:prices, Shapes::ShapeRef.new(shape: DomainPriceList, location_name: "Prices"))
    ListPricesResponse.add_member(:next_page_marker, Shapes::ShapeRef.new(shape: PageMarker, location_name: "NextPageMarker"))
    ListPricesResponse.struct_class = Types::ListPricesResponse

    ListTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    ListTagsForDomainRequest.struct_class = Types::ListTagsForDomainRequest

    ListTagsForDomainResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForDomainResponse.struct_class = Types::ListTagsForDomainResponse

    Nameserver.add_member(:name, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "Name"))
    Nameserver.add_member(:glue_ips, Shapes::ShapeRef.new(shape: GlueIpList, location_name: "GlueIps"))
    Nameserver.struct_class = Types::Nameserver

    NameserverList.member = Shapes::ShapeRef.new(shape: Nameserver)

    OperationLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    OperationLimitExceeded.struct_class = Types::OperationLimitExceeded

    OperationStatusList.member = Shapes::ShapeRef.new(shape: OperationStatus)

    OperationSummary.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    OperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    OperationSummary.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, location_name: "Type"))
    OperationSummary.add_member(:submitted_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmittedDate"))
    OperationSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    OperationSummary.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    OperationSummary.add_member(:status_flag, Shapes::ShapeRef.new(shape: StatusFlag, location_name: "StatusFlag"))
    OperationSummary.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedDate"))
    OperationSummary.struct_class = Types::OperationSummary

    OperationSummaryList.member = Shapes::ShapeRef.new(shape: OperationSummary)

    OperationTypeList.member = Shapes::ShapeRef.new(shape: OperationType)

    PriceWithCurrency.add_member(:price, Shapes::ShapeRef.new(shape: Price, required: true, location_name: "Price"))
    PriceWithCurrency.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, required: true, location_name: "Currency"))
    PriceWithCurrency.struct_class = Types::PriceWithCurrency

    PushDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    PushDomainRequest.add_member(:target, Shapes::ShapeRef.new(shape: Label, required: true, location_name: "Target"))
    PushDomainRequest.struct_class = Types::PushDomainRequest

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

    RegisterDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RegisterDomainResponse.struct_class = Types::RegisterDomainResponse

    RejectDomainTransferFromAnotherAwsAccountRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RejectDomainTransferFromAnotherAwsAccountRequest.struct_class = Types::RejectDomainTransferFromAnotherAwsAccountRequest

    RejectDomainTransferFromAnotherAwsAccountResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RejectDomainTransferFromAnotherAwsAccountResponse.struct_class = Types::RejectDomainTransferFromAnotherAwsAccountResponse

    RenewDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RenewDomainRequest.add_member(:duration_in_years, Shapes::ShapeRef.new(shape: DurationInYears, location_name: "DurationInYears"))
    RenewDomainRequest.add_member(:current_expiry_year, Shapes::ShapeRef.new(shape: CurrentExpiryYear, required: true, location_name: "CurrentExpiryYear"))
    RenewDomainRequest.struct_class = Types::RenewDomainRequest

    RenewDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RenewDomainResponse.struct_class = Types::RenewDomainResponse

    ResendContactReachabilityEmailRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailRequest.struct_class = Types::ResendContactReachabilityEmailRequest

    ResendContactReachabilityEmailResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    ResendContactReachabilityEmailResponse.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    ResendContactReachabilityEmailResponse.add_member(:is_already_verified, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAlreadyVerified"))
    ResendContactReachabilityEmailResponse.struct_class = Types::ResendContactReachabilityEmailResponse

    ResendOperationAuthorizationRequest.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "OperationId"))
    ResendOperationAuthorizationRequest.struct_class = Types::ResendOperationAuthorizationRequest

    RetrieveDomainAuthCodeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    RetrieveDomainAuthCodeRequest.struct_class = Types::RetrieveDomainAuthCodeRequest

    RetrieveDomainAuthCodeResponse.add_member(:auth_code, Shapes::ShapeRef.new(shape: DomainAuthCode, location_name: "AuthCode"))
    RetrieveDomainAuthCodeResponse.struct_class = Types::RetrieveDomainAuthCodeResponse

    SortCondition.add_member(:name, Shapes::ShapeRef.new(shape: ListDomainsAttributeName, required: true, location_name: "Name"))
    SortCondition.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SortCondition.struct_class = Types::SortCondition

    TLDRulesViolation.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TLDRulesViolation.struct_class = Types::TLDRulesViolation

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

    TransferDomainResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    TransferDomainResponse.struct_class = Types::TransferDomainResponse

    TransferDomainToAnotherAwsAccountRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    TransferDomainToAnotherAwsAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    TransferDomainToAnotherAwsAccountRequest.struct_class = Types::TransferDomainToAnotherAwsAccountRequest

    TransferDomainToAnotherAwsAccountResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    TransferDomainToAnotherAwsAccountResponse.add_member(:password, Shapes::ShapeRef.new(shape: String, location_name: "Password"))
    TransferDomainToAnotherAwsAccountResponse.struct_class = Types::TransferDomainToAnotherAwsAccountResponse

    UnsupportedTLD.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnsupportedTLD.struct_class = Types::UnsupportedTLD

    UpdateDomainContactPrivacyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainContactPrivacyRequest.add_member(:admin_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdminPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:registrant_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "RegistrantPrivacy"))
    UpdateDomainContactPrivacyRequest.add_member(:tech_privacy, Shapes::ShapeRef.new(shape: Boolean, location_name: "TechPrivacy"))
    UpdateDomainContactPrivacyRequest.struct_class = Types::UpdateDomainContactPrivacyRequest

    UpdateDomainContactPrivacyResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    UpdateDomainContactPrivacyResponse.struct_class = Types::UpdateDomainContactPrivacyResponse

    UpdateDomainContactRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainContactRequest.add_member(:admin_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "AdminContact"))
    UpdateDomainContactRequest.add_member(:registrant_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "RegistrantContact"))
    UpdateDomainContactRequest.add_member(:tech_contact, Shapes::ShapeRef.new(shape: ContactDetail, location_name: "TechContact"))
    UpdateDomainContactRequest.add_member(:consent, Shapes::ShapeRef.new(shape: Consent, location_name: "Consent"))
    UpdateDomainContactRequest.struct_class = Types::UpdateDomainContactRequest

    UpdateDomainContactResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    UpdateDomainContactResponse.struct_class = Types::UpdateDomainContactResponse

    UpdateDomainNameserversRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateDomainNameserversRequest.add_member(:fi_auth_key, Shapes::ShapeRef.new(shape: FIAuthKey, deprecated: true, location_name: "FIAuthKey"))
    UpdateDomainNameserversRequest.add_member(:nameservers, Shapes::ShapeRef.new(shape: NameserverList, required: true, location_name: "Nameservers"))
    UpdateDomainNameserversRequest.struct_class = Types::UpdateDomainNameserversRequest

    UpdateDomainNameserversResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    UpdateDomainNameserversResponse.struct_class = Types::UpdateDomainNameserversResponse

    UpdateTagsForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateTagsForDomainRequest.add_member(:tags_to_update, Shapes::ShapeRef.new(shape: TagList, location_name: "TagsToUpdate"))
    UpdateTagsForDomainRequest.struct_class = Types::UpdateTagsForDomainRequest

    UpdateTagsForDomainResponse.struct_class = Types::UpdateTagsForDomainResponse

    Values.member = Shapes::ShapeRef.new(shape: Value)

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
        "serviceId" => "Route 53 Domains",
        "signatureVersion" => "v4",
        "targetPrefix" => "Route53Domains_v20140515",
        "uid" => "route53domains-2014-05-15",
      }

      api.add_operation(:accept_domain_transfer_from_another_aws_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptDomainTransferFromAnotherAwsAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptDomainTransferFromAnotherAwsAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptDomainTransferFromAnotherAwsAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DomainLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

      api.add_operation(:associate_delegation_signer_to_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDelegationSignerToDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDelegationSignerToDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDelegationSignerToDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
        o.errors << Shapes::ShapeRef.new(shape: DnssecLimitExceeded)
      end)

      api.add_operation(:cancel_domain_transfer_to_another_aws_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDomainTransferToAnotherAwsAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelDomainTransferToAnotherAwsAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDomainTransferToAnotherAwsAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
      end)

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

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
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

      api.add_operation(:disassociate_delegation_signer_from_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDelegationSignerFromDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDelegationSignerFromDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDelegationSignerFromDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TLDRulesViolation)
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

      api.add_operation(:list_prices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPricesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPricesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
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

      api.add_operation(:push_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PushDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PushDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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

      api.add_operation(:reject_domain_transfer_from_another_aws_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectDomainTransferFromAnotherAwsAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectDomainTransferFromAnotherAwsAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectDomainTransferFromAnotherAwsAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
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

      api.add_operation(:resend_operation_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResendOperationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResendOperationAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
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

      api.add_operation(:transfer_domain_to_another_aws_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferDomainToAnotherAwsAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TransferDomainToAnotherAwsAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferDomainToAnotherAwsAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: OperationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTLD)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_page_marker" => "marker"
          }
        )
      end)
    end

  end
end
