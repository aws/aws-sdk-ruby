# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TaxSettings
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountDetails = Shapes::StructureShape.new(name: 'AccountDetails')
    AccountDetailsList = Shapes::ListShape.new(name: 'AccountDetailsList')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    AccountMetaData = Shapes::StructureShape.new(name: 'AccountMetaData')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AdditionalInfoRequest = Shapes::StructureShape.new(name: 'AdditionalInfoRequest')
    AdditionalInfoResponse = Shapes::StructureShape.new(name: 'AdditionalInfoResponse')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressLine1 = Shapes::StringShape.new(name: 'AddressLine1')
    AddressLine2 = Shapes::StringShape.new(name: 'AddressLine2')
    AddressLine3 = Shapes::StringShape.new(name: 'AddressLine3')
    AddressRoleMap = Shapes::MapShape.new(name: 'AddressRoleMap')
    AddressRoleType = Shapes::StringShape.new(name: 'AddressRoleType')
    AttachmentUploadException = Shapes::StructureShape.new(name: 'AttachmentUploadException')
    Authorities = Shapes::ListShape.new(name: 'Authorities')
    Authority = Shapes::StructureShape.new(name: 'Authority')
    BatchDeleteTaxRegistrationError = Shapes::StructureShape.new(name: 'BatchDeleteTaxRegistrationError')
    BatchDeleteTaxRegistrationErrors = Shapes::ListShape.new(name: 'BatchDeleteTaxRegistrationErrors')
    BatchDeleteTaxRegistrationRequest = Shapes::StructureShape.new(name: 'BatchDeleteTaxRegistrationRequest')
    BatchDeleteTaxRegistrationRequestAccountIdsList = Shapes::ListShape.new(name: 'BatchDeleteTaxRegistrationRequestAccountIdsList')
    BatchDeleteTaxRegistrationResponse = Shapes::StructureShape.new(name: 'BatchDeleteTaxRegistrationResponse')
    BatchGetTaxExemptionsRequest = Shapes::StructureShape.new(name: 'BatchGetTaxExemptionsRequest')
    BatchGetTaxExemptionsRequestAccountIdsList = Shapes::ListShape.new(name: 'BatchGetTaxExemptionsRequestAccountIdsList')
    BatchGetTaxExemptionsResponse = Shapes::StructureShape.new(name: 'BatchGetTaxExemptionsResponse')
    BatchPutTaxRegistrationError = Shapes::StructureShape.new(name: 'BatchPutTaxRegistrationError')
    BatchPutTaxRegistrationErrors = Shapes::ListShape.new(name: 'BatchPutTaxRegistrationErrors')
    BatchPutTaxRegistrationRequest = Shapes::StructureShape.new(name: 'BatchPutTaxRegistrationRequest')
    BatchPutTaxRegistrationRequestAccountIdsList = Shapes::ListShape.new(name: 'BatchPutTaxRegistrationRequestAccountIdsList')
    BatchPutTaxRegistrationResponse = Shapes::StructureShape.new(name: 'BatchPutTaxRegistrationResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrazilAdditionalInfo = Shapes::StructureShape.new(name: 'BrazilAdditionalInfo')
    BusinessRegistrationNumber = Shapes::StringShape.new(name: 'BusinessRegistrationNumber')
    BusinessRepresentativeName = Shapes::StringShape.new(name: 'BusinessRepresentativeName')
    CanadaAdditionalInfo = Shapes::StructureShape.new(name: 'CanadaAdditionalInfo')
    CanadaProvincialSalesTaxIdString = Shapes::StringShape.new(name: 'CanadaProvincialSalesTaxIdString')
    CanadaQuebecSalesTaxNumberString = Shapes::StringShape.new(name: 'CanadaQuebecSalesTaxNumberString')
    CanadaRetailSalesTaxNumberString = Shapes::StringShape.new(name: 'CanadaRetailSalesTaxNumberString')
    CaseCreationLimitExceededException = Shapes::StructureShape.new(name: 'CaseCreationLimitExceededException')
    CcmCode = Shapes::StringShape.new(name: 'CcmCode')
    CertifiedEmailId = Shapes::StringShape.new(name: 'CertifiedEmailId')
    CigNumber = Shapes::StringShape.new(name: 'CigNumber')
    City = Shapes::StringShape.new(name: 'City')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContractingAuthorityCode = Shapes::StringShape.new(name: 'ContractingAuthorityCode')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CupNumber = Shapes::StringShape.new(name: 'CupNumber')
    DateOfBirth = Shapes::StringShape.new(name: 'DateOfBirth')
    DateString = Shapes::StringShape.new(name: 'DateString')
    DeleteSupplementalTaxRegistrationRequest = Shapes::StructureShape.new(name: 'DeleteSupplementalTaxRegistrationRequest')
    DeleteSupplementalTaxRegistrationResponse = Shapes::StructureShape.new(name: 'DeleteSupplementalTaxRegistrationResponse')
    DeleteTaxRegistrationRequest = Shapes::StructureShape.new(name: 'DeleteTaxRegistrationRequest')
    DeleteTaxRegistrationResponse = Shapes::StructureShape.new(name: 'DeleteTaxRegistrationResponse')
    DestinationFilePath = Shapes::StringShape.new(name: 'DestinationFilePath')
    DestinationS3Location = Shapes::StructureShape.new(name: 'DestinationS3Location')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    District = Shapes::StringShape.new(name: 'District')
    EgyptAdditionalInfo = Shapes::StructureShape.new(name: 'EgyptAdditionalInfo')
    ElectronicTransactionCodeNumber = Shapes::StringShape.new(name: 'ElectronicTransactionCodeNumber')
    EnterpriseIdentificationNumber = Shapes::StringShape.new(name: 'EnterpriseIdentificationNumber')
    EntityExemptionAccountStatus = Shapes::StringShape.new(name: 'EntityExemptionAccountStatus')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EstoniaAdditionalInfo = Shapes::StructureShape.new(name: 'EstoniaAdditionalInfo')
    ExemptionCertificate = Shapes::StructureShape.new(name: 'ExemptionCertificate')
    ExemptionDocumentName = Shapes::StringShape.new(name: 'ExemptionDocumentName')
    ExemptionFileBlob = Shapes::BlobShape.new(name: 'ExemptionFileBlob')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FileBlob = Shapes::BlobShape.new(name: 'FileBlob')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GeorgiaAdditionalInfo = Shapes::StructureShape.new(name: 'GeorgiaAdditionalInfo')
    GetTaxExemptionTypesRequest = Shapes::StructureShape.new(name: 'GetTaxExemptionTypesRequest')
    GetTaxExemptionTypesResponse = Shapes::StructureShape.new(name: 'GetTaxExemptionTypesResponse')
    GetTaxInheritanceRequest = Shapes::StructureShape.new(name: 'GetTaxInheritanceRequest')
    GetTaxInheritanceResponse = Shapes::StructureShape.new(name: 'GetTaxInheritanceResponse')
    GetTaxRegistrationDocumentRequest = Shapes::StructureShape.new(name: 'GetTaxRegistrationDocumentRequest')
    GetTaxRegistrationDocumentResponse = Shapes::StructureShape.new(name: 'GetTaxRegistrationDocumentResponse')
    GetTaxRegistrationRequest = Shapes::StructureShape.new(name: 'GetTaxRegistrationRequest')
    GetTaxRegistrationResponse = Shapes::StructureShape.new(name: 'GetTaxRegistrationResponse')
    GreeceAdditionalInfo = Shapes::StructureShape.new(name: 'GreeceAdditionalInfo')
    HeritageStatus = Shapes::StringShape.new(name: 'HeritageStatus')
    IndiaAdditionalInfo = Shapes::StructureShape.new(name: 'IndiaAdditionalInfo')
    IndividualRegistrationNumber = Shapes::StringShape.new(name: 'IndividualRegistrationNumber')
    Industries = Shapes::StringShape.new(name: 'Industries')
    InheritanceObtainedReason = Shapes::StringShape.new(name: 'InheritanceObtainedReason')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsraelAdditionalInfo = Shapes::StructureShape.new(name: 'IsraelAdditionalInfo')
    IsraelCustomerType = Shapes::StringShape.new(name: 'IsraelCustomerType')
    IsraelDealerType = Shapes::StringShape.new(name: 'IsraelDealerType')
    ItalyAdditionalInfo = Shapes::StructureShape.new(name: 'ItalyAdditionalInfo')
    ItemOfBusiness = Shapes::StringShape.new(name: 'ItemOfBusiness')
    Jurisdiction = Shapes::StructureShape.new(name: 'Jurisdiction')
    KenyaAdditionalInfo = Shapes::StructureShape.new(name: 'KenyaAdditionalInfo')
    KepEmailId = Shapes::StringShape.new(name: 'KepEmailId')
    LegalName = Shapes::StringShape.new(name: 'LegalName')
    LegalNatureCode = Shapes::StringShape.new(name: 'LegalNatureCode')
    LineOfBusiness = Shapes::StringShape.new(name: 'LineOfBusiness')
    ListSupplementalTaxRegistrationsRequest = Shapes::StructureShape.new(name: 'ListSupplementalTaxRegistrationsRequest')
    ListSupplementalTaxRegistrationsResponse = Shapes::StructureShape.new(name: 'ListSupplementalTaxRegistrationsResponse')
    ListTaxExemptionsRequest = Shapes::StructureShape.new(name: 'ListTaxExemptionsRequest')
    ListTaxExemptionsResponse = Shapes::StructureShape.new(name: 'ListTaxExemptionsResponse')
    ListTaxRegistrationsRequest = Shapes::StructureShape.new(name: 'ListTaxRegistrationsRequest')
    ListTaxRegistrationsResponse = Shapes::StructureShape.new(name: 'ListTaxRegistrationsResponse')
    MalaysiaAdditionalInfo = Shapes::StructureShape.new(name: 'MalaysiaAdditionalInfo')
    MalaysiaServiceTaxCode = Shapes::StringShape.new(name: 'MalaysiaServiceTaxCode')
    MalaysiaServiceTaxCodesList = Shapes::ListShape.new(name: 'MalaysiaServiceTaxCodesList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PaginationTokenString = Shapes::StringShape.new(name: 'PaginationTokenString')
    Pan = Shapes::StringShape.new(name: 'Pan')
    PaymentVoucherNumber = Shapes::StringShape.new(name: 'PaymentVoucherNumber')
    PersonType = Shapes::StringShape.new(name: 'PersonType')
    PolandAdditionalInfo = Shapes::StructureShape.new(name: 'PolandAdditionalInfo')
    PostalCode = Shapes::StringShape.new(name: 'PostalCode')
    PutSupplementalTaxRegistrationRequest = Shapes::StructureShape.new(name: 'PutSupplementalTaxRegistrationRequest')
    PutSupplementalTaxRegistrationResponse = Shapes::StructureShape.new(name: 'PutSupplementalTaxRegistrationResponse')
    PutTaxExemptionRequest = Shapes::StructureShape.new(name: 'PutTaxExemptionRequest')
    PutTaxExemptionRequestAccountIdsList = Shapes::ListShape.new(name: 'PutTaxExemptionRequestAccountIdsList')
    PutTaxExemptionResponse = Shapes::StructureShape.new(name: 'PutTaxExemptionResponse')
    PutTaxInheritanceRequest = Shapes::StructureShape.new(name: 'PutTaxInheritanceRequest')
    PutTaxInheritanceResponse = Shapes::StructureShape.new(name: 'PutTaxInheritanceResponse')
    PutTaxRegistrationRequest = Shapes::StructureShape.new(name: 'PutTaxRegistrationRequest')
    PutTaxRegistrationResponse = Shapes::StructureShape.new(name: 'PutTaxRegistrationResponse')
    RegistrationId = Shapes::StringShape.new(name: 'RegistrationId')
    RegistrationType = Shapes::StringShape.new(name: 'RegistrationType')
    RegistryCommercialCode = Shapes::StringShape.new(name: 'RegistryCommercialCode')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RomaniaAdditionalInfo = Shapes::StructureShape.new(name: 'RomaniaAdditionalInfo')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Prefix = Shapes::StringShape.new(name: 'S3Prefix')
    SaudiArabiaAdditionalInfo = Shapes::StructureShape.new(name: 'SaudiArabiaAdditionalInfo')
    SaudiArabiaTaxRegistrationNumberType = Shapes::StringShape.new(name: 'SaudiArabiaTaxRegistrationNumberType')
    SdiAccountId = Shapes::StringShape.new(name: 'SdiAccountId')
    SecondaryTaxId = Shapes::StringShape.new(name: 'SecondaryTaxId')
    Sector = Shapes::StringShape.new(name: 'Sector')
    Seller = Shapes::StringShape.new(name: 'Seller')
    SourceS3Location = Shapes::StructureShape.new(name: 'SourceS3Location')
    SouthKoreaAdditionalInfo = Shapes::StructureShape.new(name: 'SouthKoreaAdditionalInfo')
    SpainAdditionalInfo = Shapes::StructureShape.new(name: 'SpainAdditionalInfo')
    State = Shapes::StringShape.new(name: 'State')
    SupplementalTaxRegistration = Shapes::StructureShape.new(name: 'SupplementalTaxRegistration')
    SupplementalTaxRegistrationEntry = Shapes::StructureShape.new(name: 'SupplementalTaxRegistrationEntry')
    SupplementalTaxRegistrationList = Shapes::ListShape.new(name: 'SupplementalTaxRegistrationList')
    SupplementalTaxRegistrationType = Shapes::StringShape.new(name: 'SupplementalTaxRegistrationType')
    TaxCode = Shapes::StringShape.new(name: 'TaxCode')
    TaxDocumentAccessToken = Shapes::StringShape.new(name: 'TaxDocumentAccessToken')
    TaxDocumentMetadata = Shapes::StructureShape.new(name: 'TaxDocumentMetadata')
    TaxDocumentMetadatas = Shapes::ListShape.new(name: 'TaxDocumentMetadatas')
    TaxDocumentName = Shapes::StringShape.new(name: 'TaxDocumentName')
    TaxExemption = Shapes::StructureShape.new(name: 'TaxExemption')
    TaxExemptionDetails = Shapes::StructureShape.new(name: 'TaxExemptionDetails')
    TaxExemptionDetailsMap = Shapes::MapShape.new(name: 'TaxExemptionDetailsMap')
    TaxExemptionType = Shapes::StructureShape.new(name: 'TaxExemptionType')
    TaxExemptionTypes = Shapes::ListShape.new(name: 'TaxExemptionTypes')
    TaxExemptions = Shapes::ListShape.new(name: 'TaxExemptions')
    TaxInformationNumber = Shapes::StringShape.new(name: 'TaxInformationNumber')
    TaxInheritanceDetails = Shapes::StructureShape.new(name: 'TaxInheritanceDetails')
    TaxOffice = Shapes::StringShape.new(name: 'TaxOffice')
    TaxRegistration = Shapes::StructureShape.new(name: 'TaxRegistration')
    TaxRegistrationDocFile = Shapes::StructureShape.new(name: 'TaxRegistrationDocFile')
    TaxRegistrationDocument = Shapes::StructureShape.new(name: 'TaxRegistrationDocument')
    TaxRegistrationDocuments = Shapes::ListShape.new(name: 'TaxRegistrationDocuments')
    TaxRegistrationEntry = Shapes::StructureShape.new(name: 'TaxRegistrationEntry')
    TaxRegistrationNumberType = Shapes::StringShape.new(name: 'TaxRegistrationNumberType')
    TaxRegistrationStatus = Shapes::StringShape.new(name: 'TaxRegistrationStatus')
    TaxRegistrationType = Shapes::StringShape.new(name: 'TaxRegistrationType')
    TaxRegistrationWithJurisdiction = Shapes::StructureShape.new(name: 'TaxRegistrationWithJurisdiction')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TurkeyAdditionalInfo = Shapes::StructureShape.new(name: 'TurkeyAdditionalInfo')
    UkraineAdditionalInfo = Shapes::StructureShape.new(name: 'UkraineAdditionalInfo')
    UkraineTrnType = Shapes::StringShape.new(name: 'UkraineTrnType')
    UniqueIdentificationNumber = Shapes::StringShape.new(name: 'UniqueIdentificationNumber')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionErrorCode = Shapes::StringShape.new(name: 'ValidationExceptionErrorCode')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VerificationDetails = Shapes::StructureShape.new(name: 'VerificationDetails')
    VietnamAdditionalInfo = Shapes::StructureShape.new(name: 'VietnamAdditionalInfo')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AccountDetails.add_member(:account_meta_data, Shapes::ShapeRef.new(shape: AccountMetaData, location_name: "accountMetaData"))
    AccountDetails.add_member(:tax_inheritance_details, Shapes::ShapeRef.new(shape: TaxInheritanceDetails, location_name: "taxInheritanceDetails"))
    AccountDetails.add_member(:tax_registration, Shapes::ShapeRef.new(shape: TaxRegistrationWithJurisdiction, location_name: "taxRegistration"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountDetailsList.member = Shapes::ShapeRef.new(shape: AccountDetails)

    AccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountMetaData.add_member(:account_name, Shapes::ShapeRef.new(shape: AccountName, location_name: "accountName"))
    AccountMetaData.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "address"))
    AccountMetaData.add_member(:address_role_map, Shapes::ShapeRef.new(shape: AddressRoleMap, location_name: "addressRoleMap"))
    AccountMetaData.add_member(:address_type, Shapes::ShapeRef.new(shape: AddressRoleType, location_name: "addressType"))
    AccountMetaData.add_member(:seller, Shapes::ShapeRef.new(shape: Seller, location_name: "seller"))
    AccountMetaData.struct_class = Types::AccountMetaData

    AdditionalInfoRequest.add_member(:canada_additional_info, Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: "canadaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:egypt_additional_info, Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: "egyptAdditionalInfo"))
    AdditionalInfoRequest.add_member(:estonia_additional_info, Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: "estoniaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:georgia_additional_info, Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: "georgiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:greece_additional_info, Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: "greeceAdditionalInfo"))
    AdditionalInfoRequest.add_member(:israel_additional_info, Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: "israelAdditionalInfo"))
    AdditionalInfoRequest.add_member(:italy_additional_info, Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: "italyAdditionalInfo"))
    AdditionalInfoRequest.add_member(:kenya_additional_info, Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: "kenyaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:malaysia_additional_info, Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: "malaysiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:poland_additional_info, Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: "polandAdditionalInfo"))
    AdditionalInfoRequest.add_member(:romania_additional_info, Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: "romaniaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:saudi_arabia_additional_info, Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: "saudiArabiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:south_korea_additional_info, Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: "southKoreaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:spain_additional_info, Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: "spainAdditionalInfo"))
    AdditionalInfoRequest.add_member(:turkey_additional_info, Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: "turkeyAdditionalInfo"))
    AdditionalInfoRequest.add_member(:ukraine_additional_info, Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: "ukraineAdditionalInfo"))
    AdditionalInfoRequest.add_member(:vietnam_additional_info, Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: "vietnamAdditionalInfo"))
    AdditionalInfoRequest.struct_class = Types::AdditionalInfoRequest

    AdditionalInfoResponse.add_member(:brazil_additional_info, Shapes::ShapeRef.new(shape: BrazilAdditionalInfo, location_name: "brazilAdditionalInfo"))
    AdditionalInfoResponse.add_member(:canada_additional_info, Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: "canadaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:egypt_additional_info, Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: "egyptAdditionalInfo"))
    AdditionalInfoResponse.add_member(:estonia_additional_info, Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: "estoniaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:georgia_additional_info, Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: "georgiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:greece_additional_info, Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: "greeceAdditionalInfo"))
    AdditionalInfoResponse.add_member(:india_additional_info, Shapes::ShapeRef.new(shape: IndiaAdditionalInfo, location_name: "indiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:israel_additional_info, Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: "israelAdditionalInfo"))
    AdditionalInfoResponse.add_member(:italy_additional_info, Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: "italyAdditionalInfo"))
    AdditionalInfoResponse.add_member(:kenya_additional_info, Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: "kenyaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:malaysia_additional_info, Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: "malaysiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:poland_additional_info, Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: "polandAdditionalInfo"))
    AdditionalInfoResponse.add_member(:romania_additional_info, Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: "romaniaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:saudi_arabia_additional_info, Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: "saudiArabiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:south_korea_additional_info, Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: "southKoreaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:spain_additional_info, Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: "spainAdditionalInfo"))
    AdditionalInfoResponse.add_member(:turkey_additional_info, Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: "turkeyAdditionalInfo"))
    AdditionalInfoResponse.add_member(:ukraine_additional_info, Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: "ukraineAdditionalInfo"))
    AdditionalInfoResponse.add_member(:vietnam_additional_info, Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: "vietnamAdditionalInfo"))
    AdditionalInfoResponse.struct_class = Types::AdditionalInfoResponse

    Address.add_member(:address_line_1, Shapes::ShapeRef.new(shape: AddressLine1, required: true, location_name: "addressLine1"))
    Address.add_member(:address_line_2, Shapes::ShapeRef.new(shape: AddressLine2, location_name: "addressLine2"))
    Address.add_member(:address_line_3, Shapes::ShapeRef.new(shape: AddressLine3, location_name: "addressLine3"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: City, required: true, location_name: "city"))
    Address.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "countryCode"))
    Address.add_member(:district_or_county, Shapes::ShapeRef.new(shape: District, location_name: "districtOrCounty"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: PostalCode, required: true, location_name: "postalCode"))
    Address.add_member(:state_or_region, Shapes::ShapeRef.new(shape: State, location_name: "stateOrRegion"))
    Address.struct_class = Types::Address

    AddressRoleMap.key = Shapes::ShapeRef.new(shape: AddressRoleType)
    AddressRoleMap.value = Shapes::ShapeRef.new(shape: Jurisdiction)

    AttachmentUploadException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AttachmentUploadException.struct_class = Types::AttachmentUploadException

    Authorities.member = Shapes::ShapeRef.new(shape: Authority)

    Authority.add_member(:country, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "country"))
    Authority.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    Authority.struct_class = Types::Authority

    BatchDeleteTaxRegistrationError.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    BatchDeleteTaxRegistrationError.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    BatchDeleteTaxRegistrationError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    BatchDeleteTaxRegistrationError.struct_class = Types::BatchDeleteTaxRegistrationError

    BatchDeleteTaxRegistrationErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationError)

    BatchDeleteTaxRegistrationRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationRequestAccountIdsList, required: true, location_name: "accountIds"))
    BatchDeleteTaxRegistrationRequest.struct_class = Types::BatchDeleteTaxRegistrationRequest

    BatchDeleteTaxRegistrationRequestAccountIdsList.member = Shapes::ShapeRef.new(shape: AccountId)

    BatchDeleteTaxRegistrationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationErrors, required: true, location_name: "errors"))
    BatchDeleteTaxRegistrationResponse.struct_class = Types::BatchDeleteTaxRegistrationResponse

    BatchGetTaxExemptionsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsRequestAccountIdsList, required: true, location_name: "accountIds"))
    BatchGetTaxExemptionsRequest.struct_class = Types::BatchGetTaxExemptionsRequest

    BatchGetTaxExemptionsRequestAccountIdsList.member = Shapes::ShapeRef.new(shape: AccountId)

    BatchGetTaxExemptionsResponse.add_member(:failed_accounts, Shapes::ShapeRef.new(shape: AccountIds, location_name: "failedAccounts"))
    BatchGetTaxExemptionsResponse.add_member(:tax_exemption_details_map, Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: "taxExemptionDetailsMap"))
    BatchGetTaxExemptionsResponse.struct_class = Types::BatchGetTaxExemptionsResponse

    BatchPutTaxRegistrationError.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    BatchPutTaxRegistrationError.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    BatchPutTaxRegistrationError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    BatchPutTaxRegistrationError.struct_class = Types::BatchPutTaxRegistrationError

    BatchPutTaxRegistrationErrors.member = Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationError)

    BatchPutTaxRegistrationRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationRequestAccountIdsList, required: true, location_name: "accountIds"))
    BatchPutTaxRegistrationRequest.add_member(:tax_registration_entry, Shapes::ShapeRef.new(shape: TaxRegistrationEntry, required: true, location_name: "taxRegistrationEntry"))
    BatchPutTaxRegistrationRequest.struct_class = Types::BatchPutTaxRegistrationRequest

    BatchPutTaxRegistrationRequestAccountIdsList.member = Shapes::ShapeRef.new(shape: AccountId)

    BatchPutTaxRegistrationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationErrors, required: true, location_name: "errors"))
    BatchPutTaxRegistrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: "status"))
    BatchPutTaxRegistrationResponse.struct_class = Types::BatchPutTaxRegistrationResponse

    BrazilAdditionalInfo.add_member(:ccm_code, Shapes::ShapeRef.new(shape: CcmCode, location_name: "ccmCode"))
    BrazilAdditionalInfo.add_member(:legal_nature_code, Shapes::ShapeRef.new(shape: LegalNatureCode, location_name: "legalNatureCode"))
    BrazilAdditionalInfo.struct_class = Types::BrazilAdditionalInfo

    CanadaAdditionalInfo.add_member(:canada_quebec_sales_tax_number, Shapes::ShapeRef.new(shape: CanadaQuebecSalesTaxNumberString, location_name: "canadaQuebecSalesTaxNumber"))
    CanadaAdditionalInfo.add_member(:canada_retail_sales_tax_number, Shapes::ShapeRef.new(shape: CanadaRetailSalesTaxNumberString, location_name: "canadaRetailSalesTaxNumber"))
    CanadaAdditionalInfo.add_member(:is_reseller_account, Shapes::ShapeRef.new(shape: Boolean, location_name: "isResellerAccount"))
    CanadaAdditionalInfo.add_member(:provincial_sales_tax_id, Shapes::ShapeRef.new(shape: CanadaProvincialSalesTaxIdString, location_name: "provincialSalesTaxId"))
    CanadaAdditionalInfo.struct_class = Types::CanadaAdditionalInfo

    CaseCreationLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    CaseCreationLimitExceededException.struct_class = Types::CaseCreationLimitExceededException

    ConflictException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DeleteSupplementalTaxRegistrationRequest.add_member(:authority_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "authorityId"))
    DeleteSupplementalTaxRegistrationRequest.struct_class = Types::DeleteSupplementalTaxRegistrationRequest

    DeleteSupplementalTaxRegistrationResponse.struct_class = Types::DeleteSupplementalTaxRegistrationResponse

    DeleteTaxRegistrationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    DeleteTaxRegistrationRequest.struct_class = Types::DeleteTaxRegistrationRequest

    DeleteTaxRegistrationResponse.struct_class = Types::DeleteTaxRegistrationResponse

    DestinationS3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucket"))
    DestinationS3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3Prefix, location_name: "prefix"))
    DestinationS3Location.struct_class = Types::DestinationS3Location

    EgyptAdditionalInfo.add_member(:unique_identification_number, Shapes::ShapeRef.new(shape: UniqueIdentificationNumber, location_name: "uniqueIdentificationNumber"))
    EgyptAdditionalInfo.add_member(:unique_identification_number_expiration_date, Shapes::ShapeRef.new(shape: DateString, location_name: "uniqueIdentificationNumberExpirationDate"))
    EgyptAdditionalInfo.struct_class = Types::EgyptAdditionalInfo

    EstoniaAdditionalInfo.add_member(:registry_commercial_code, Shapes::ShapeRef.new(shape: RegistryCommercialCode, required: true, location_name: "registryCommercialCode"))
    EstoniaAdditionalInfo.struct_class = Types::EstoniaAdditionalInfo

    ExemptionCertificate.add_member(:document_file, Shapes::ShapeRef.new(shape: ExemptionFileBlob, required: true, location_name: "documentFile"))
    ExemptionCertificate.add_member(:document_name, Shapes::ShapeRef.new(shape: ExemptionDocumentName, required: true, location_name: "documentName"))
    ExemptionCertificate.struct_class = Types::ExemptionCertificate

    GeorgiaAdditionalInfo.add_member(:person_type, Shapes::ShapeRef.new(shape: PersonType, required: true, location_name: "personType"))
    GeorgiaAdditionalInfo.struct_class = Types::GeorgiaAdditionalInfo

    GetTaxExemptionTypesRequest.struct_class = Types::GetTaxExemptionTypesRequest

    GetTaxExemptionTypesResponse.add_member(:tax_exemption_types, Shapes::ShapeRef.new(shape: TaxExemptionTypes, location_name: "taxExemptionTypes"))
    GetTaxExemptionTypesResponse.struct_class = Types::GetTaxExemptionTypesResponse

    GetTaxInheritanceRequest.struct_class = Types::GetTaxInheritanceRequest

    GetTaxInheritanceResponse.add_member(:heritage_status, Shapes::ShapeRef.new(shape: HeritageStatus, location_name: "heritageStatus"))
    GetTaxInheritanceResponse.struct_class = Types::GetTaxInheritanceResponse

    GetTaxRegistrationDocumentRequest.add_member(:destination_s3_location, Shapes::ShapeRef.new(shape: DestinationS3Location, location_name: "destinationS3Location"))
    GetTaxRegistrationDocumentRequest.add_member(:tax_document_metadata, Shapes::ShapeRef.new(shape: TaxDocumentMetadata, required: true, location_name: "taxDocumentMetadata"))
    GetTaxRegistrationDocumentRequest.struct_class = Types::GetTaxRegistrationDocumentRequest

    GetTaxRegistrationDocumentResponse.add_member(:destination_file_path, Shapes::ShapeRef.new(shape: DestinationFilePath, location_name: "destinationFilePath"))
    GetTaxRegistrationDocumentResponse.add_member(:presigned_s3_url, Shapes::ShapeRef.new(shape: Url, location_name: "presignedS3Url"))
    GetTaxRegistrationDocumentResponse.struct_class = Types::GetTaxRegistrationDocumentResponse

    GetTaxRegistrationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    GetTaxRegistrationRequest.struct_class = Types::GetTaxRegistrationRequest

    GetTaxRegistrationResponse.add_member(:tax_registration, Shapes::ShapeRef.new(shape: TaxRegistration, location_name: "taxRegistration"))
    GetTaxRegistrationResponse.struct_class = Types::GetTaxRegistrationResponse

    GreeceAdditionalInfo.add_member(:contracting_authority_code, Shapes::ShapeRef.new(shape: ContractingAuthorityCode, location_name: "contractingAuthorityCode"))
    GreeceAdditionalInfo.struct_class = Types::GreeceAdditionalInfo

    IndiaAdditionalInfo.add_member(:pan, Shapes::ShapeRef.new(shape: Pan, location_name: "pan"))
    IndiaAdditionalInfo.struct_class = Types::IndiaAdditionalInfo

    InternalServerException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IsraelAdditionalInfo.add_member(:customer_type, Shapes::ShapeRef.new(shape: IsraelCustomerType, required: true, location_name: "customerType"))
    IsraelAdditionalInfo.add_member(:dealer_type, Shapes::ShapeRef.new(shape: IsraelDealerType, required: true, location_name: "dealerType"))
    IsraelAdditionalInfo.struct_class = Types::IsraelAdditionalInfo

    ItalyAdditionalInfo.add_member(:cig_number, Shapes::ShapeRef.new(shape: CigNumber, location_name: "cigNumber"))
    ItalyAdditionalInfo.add_member(:cup_number, Shapes::ShapeRef.new(shape: CupNumber, location_name: "cupNumber"))
    ItalyAdditionalInfo.add_member(:sdi_account_id, Shapes::ShapeRef.new(shape: SdiAccountId, location_name: "sdiAccountId"))
    ItalyAdditionalInfo.add_member(:tax_code, Shapes::ShapeRef.new(shape: TaxCode, location_name: "taxCode"))
    ItalyAdditionalInfo.struct_class = Types::ItalyAdditionalInfo

    Jurisdiction.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "countryCode"))
    Jurisdiction.add_member(:state_or_region, Shapes::ShapeRef.new(shape: State, location_name: "stateOrRegion"))
    Jurisdiction.struct_class = Types::Jurisdiction

    KenyaAdditionalInfo.add_member(:person_type, Shapes::ShapeRef.new(shape: PersonType, required: true, location_name: "personType"))
    KenyaAdditionalInfo.struct_class = Types::KenyaAdditionalInfo

    ListSupplementalTaxRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSupplementalTaxRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListSupplementalTaxRegistrationsRequest.struct_class = Types::ListSupplementalTaxRegistrationsRequest

    ListSupplementalTaxRegistrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListSupplementalTaxRegistrationsResponse.add_member(:tax_registrations, Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationList, required: true, location_name: "taxRegistrations"))
    ListSupplementalTaxRegistrationsResponse.struct_class = Types::ListSupplementalTaxRegistrationsResponse

    ListTaxExemptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTaxExemptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListTaxExemptionsRequest.struct_class = Types::ListTaxExemptionsRequest

    ListTaxExemptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListTaxExemptionsResponse.add_member(:tax_exemption_details_map, Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: "taxExemptionDetailsMap"))
    ListTaxExemptionsResponse.struct_class = Types::ListTaxExemptionsResponse

    ListTaxRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTaxRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListTaxRegistrationsRequest.struct_class = Types::ListTaxRegistrationsRequest

    ListTaxRegistrationsResponse.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetailsList, required: true, location_name: "accountDetails"))
    ListTaxRegistrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: "nextToken"))
    ListTaxRegistrationsResponse.struct_class = Types::ListTaxRegistrationsResponse

    MalaysiaAdditionalInfo.add_member(:business_registration_number, Shapes::ShapeRef.new(shape: BusinessRegistrationNumber, location_name: "businessRegistrationNumber"))
    MalaysiaAdditionalInfo.add_member(:service_tax_codes, Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCodesList, location_name: "serviceTaxCodes"))
    MalaysiaAdditionalInfo.add_member(:tax_information_number, Shapes::ShapeRef.new(shape: TaxInformationNumber, location_name: "taxInformationNumber"))
    MalaysiaAdditionalInfo.struct_class = Types::MalaysiaAdditionalInfo

    MalaysiaServiceTaxCodesList.member = Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCode)

    PolandAdditionalInfo.add_member(:individual_registration_number, Shapes::ShapeRef.new(shape: IndividualRegistrationNumber, location_name: "individualRegistrationNumber"))
    PolandAdditionalInfo.add_member(:is_group_vat_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isGroupVatEnabled"))
    PolandAdditionalInfo.struct_class = Types::PolandAdditionalInfo

    PutSupplementalTaxRegistrationRequest.add_member(:tax_registration_entry, Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationEntry, required: true, location_name: "taxRegistrationEntry"))
    PutSupplementalTaxRegistrationRequest.struct_class = Types::PutSupplementalTaxRegistrationRequest

    PutSupplementalTaxRegistrationResponse.add_member(:authority_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "authorityId"))
    PutSupplementalTaxRegistrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, required: true, location_name: "status"))
    PutSupplementalTaxRegistrationResponse.struct_class = Types::PutSupplementalTaxRegistrationResponse

    PutTaxExemptionRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: PutTaxExemptionRequestAccountIdsList, required: true, location_name: "accountIds"))
    PutTaxExemptionRequest.add_member(:authority, Shapes::ShapeRef.new(shape: Authority, required: true, location_name: "authority"))
    PutTaxExemptionRequest.add_member(:exemption_certificate, Shapes::ShapeRef.new(shape: ExemptionCertificate, required: true, location_name: "exemptionCertificate"))
    PutTaxExemptionRequest.add_member(:exemption_type, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "exemptionType"))
    PutTaxExemptionRequest.struct_class = Types::PutTaxExemptionRequest

    PutTaxExemptionRequestAccountIdsList.member = Shapes::ShapeRef.new(shape: AccountId)

    PutTaxExemptionResponse.add_member(:case_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "caseId"))
    PutTaxExemptionResponse.struct_class = Types::PutTaxExemptionResponse

    PutTaxInheritanceRequest.add_member(:heritage_status, Shapes::ShapeRef.new(shape: HeritageStatus, location_name: "heritageStatus"))
    PutTaxInheritanceRequest.struct_class = Types::PutTaxInheritanceRequest

    PutTaxInheritanceResponse.struct_class = Types::PutTaxInheritanceResponse

    PutTaxRegistrationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    PutTaxRegistrationRequest.add_member(:tax_registration_entry, Shapes::ShapeRef.new(shape: TaxRegistrationEntry, required: true, location_name: "taxRegistrationEntry"))
    PutTaxRegistrationRequest.struct_class = Types::PutTaxRegistrationRequest

    PutTaxRegistrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: "status"))
    PutTaxRegistrationResponse.struct_class = Types::PutTaxRegistrationResponse

    ResourceNotFoundException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RomaniaAdditionalInfo.add_member(:tax_registration_number_type, Shapes::ShapeRef.new(shape: TaxRegistrationNumberType, required: true, location_name: "taxRegistrationNumberType"))
    RomaniaAdditionalInfo.struct_class = Types::RomaniaAdditionalInfo

    SaudiArabiaAdditionalInfo.add_member(:tax_registration_number_type, Shapes::ShapeRef.new(shape: SaudiArabiaTaxRegistrationNumberType, location_name: "taxRegistrationNumberType"))
    SaudiArabiaAdditionalInfo.struct_class = Types::SaudiArabiaAdditionalInfo

    SourceS3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucket"))
    SourceS3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    SourceS3Location.struct_class = Types::SourceS3Location

    SouthKoreaAdditionalInfo.add_member(:business_representative_name, Shapes::ShapeRef.new(shape: BusinessRepresentativeName, required: true, location_name: "businessRepresentativeName"))
    SouthKoreaAdditionalInfo.add_member(:item_of_business, Shapes::ShapeRef.new(shape: ItemOfBusiness, required: true, location_name: "itemOfBusiness"))
    SouthKoreaAdditionalInfo.add_member(:line_of_business, Shapes::ShapeRef.new(shape: LineOfBusiness, required: true, location_name: "lineOfBusiness"))
    SouthKoreaAdditionalInfo.struct_class = Types::SouthKoreaAdditionalInfo

    SpainAdditionalInfo.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "registrationType"))
    SpainAdditionalInfo.struct_class = Types::SpainAdditionalInfo

    SupplementalTaxRegistration.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "address"))
    SupplementalTaxRegistration.add_member(:authority_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "authorityId"))
    SupplementalTaxRegistration.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, required: true, location_name: "legalName"))
    SupplementalTaxRegistration.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    SupplementalTaxRegistration.add_member(:registration_type, Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, required: true, location_name: "registrationType"))
    SupplementalTaxRegistration.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, required: true, location_name: "status"))
    SupplementalTaxRegistration.struct_class = Types::SupplementalTaxRegistration

    SupplementalTaxRegistrationEntry.add_member(:address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "address"))
    SupplementalTaxRegistrationEntry.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, required: true, location_name: "legalName"))
    SupplementalTaxRegistrationEntry.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    SupplementalTaxRegistrationEntry.add_member(:registration_type, Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, required: true, location_name: "registrationType"))
    SupplementalTaxRegistrationEntry.struct_class = Types::SupplementalTaxRegistrationEntry

    SupplementalTaxRegistrationList.member = Shapes::ShapeRef.new(shape: SupplementalTaxRegistration)

    TaxDocumentMetadata.add_member(:tax_document_access_token, Shapes::ShapeRef.new(shape: TaxDocumentAccessToken, required: true, location_name: "taxDocumentAccessToken"))
    TaxDocumentMetadata.add_member(:tax_document_name, Shapes::ShapeRef.new(shape: TaxDocumentName, required: true, location_name: "taxDocumentName"))
    TaxDocumentMetadata.struct_class = Types::TaxDocumentMetadata

    TaxDocumentMetadatas.member = Shapes::ShapeRef.new(shape: TaxDocumentMetadata)

    TaxExemption.add_member(:authority, Shapes::ShapeRef.new(shape: Authority, required: true, location_name: "authority"))
    TaxExemption.add_member(:effective_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "effectiveDate"))
    TaxExemption.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationDate"))
    TaxExemption.add_member(:status, Shapes::ShapeRef.new(shape: EntityExemptionAccountStatus, location_name: "status"))
    TaxExemption.add_member(:system_effective_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "systemEffectiveDate"))
    TaxExemption.add_member(:tax_exemption_type, Shapes::ShapeRef.new(shape: TaxExemptionType, required: true, location_name: "taxExemptionType"))
    TaxExemption.struct_class = Types::TaxExemption

    TaxExemptionDetails.add_member(:heritage_obtained_details, Shapes::ShapeRef.new(shape: Boolean, location_name: "heritageObtainedDetails"))
    TaxExemptionDetails.add_member(:heritage_obtained_parent_entity, Shapes::ShapeRef.new(shape: GenericString, location_name: "heritageObtainedParentEntity"))
    TaxExemptionDetails.add_member(:heritage_obtained_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "heritageObtainedReason"))
    TaxExemptionDetails.add_member(:tax_exemptions, Shapes::ShapeRef.new(shape: TaxExemptions, location_name: "taxExemptions"))
    TaxExemptionDetails.struct_class = Types::TaxExemptionDetails

    TaxExemptionDetailsMap.key = Shapes::ShapeRef.new(shape: AccountId)
    TaxExemptionDetailsMap.value = Shapes::ShapeRef.new(shape: TaxExemptionDetails)

    TaxExemptionType.add_member(:applicable_jurisdictions, Shapes::ShapeRef.new(shape: Authorities, location_name: "applicableJurisdictions"))
    TaxExemptionType.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "description"))
    TaxExemptionType.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    TaxExemptionType.struct_class = Types::TaxExemptionType

    TaxExemptionTypes.member = Shapes::ShapeRef.new(shape: TaxExemptionType)

    TaxExemptions.member = Shapes::ShapeRef.new(shape: TaxExemption)

    TaxInheritanceDetails.add_member(:inheritance_obtained_reason, Shapes::ShapeRef.new(shape: InheritanceObtainedReason, location_name: "inheritanceObtainedReason"))
    TaxInheritanceDetails.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "parentEntityId"))
    TaxInheritanceDetails.struct_class = Types::TaxInheritanceDetails

    TaxRegistration.add_member(:additional_tax_information, Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: "additionalTaxInformation"))
    TaxRegistration.add_member(:certified_email_id, Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: "certifiedEmailId"))
    TaxRegistration.add_member(:legal_address, Shapes::ShapeRef.new(shape: Address, required: true, location_name: "legalAddress"))
    TaxRegistration.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, required: true, location_name: "legalName"))
    TaxRegistration.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    TaxRegistration.add_member(:registration_type, Shapes::ShapeRef.new(shape: TaxRegistrationType, required: true, location_name: "registrationType"))
    TaxRegistration.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, location_name: "sector"))
    TaxRegistration.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, required: true, location_name: "status"))
    TaxRegistration.add_member(:tax_document_metadatas, Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: "taxDocumentMetadatas"))
    TaxRegistration.struct_class = Types::TaxRegistration

    TaxRegistrationDocFile.add_member(:file_content, Shapes::ShapeRef.new(shape: FileBlob, required: true, location_name: "fileContent"))
    TaxRegistrationDocFile.add_member(:file_name, Shapes::ShapeRef.new(shape: TaxDocumentName, required: true, location_name: "fileName"))
    TaxRegistrationDocFile.struct_class = Types::TaxRegistrationDocFile

    TaxRegistrationDocument.add_member(:file, Shapes::ShapeRef.new(shape: TaxRegistrationDocFile, location_name: "file"))
    TaxRegistrationDocument.add_member(:s3_location, Shapes::ShapeRef.new(shape: SourceS3Location, location_name: "s3Location"))
    TaxRegistrationDocument.struct_class = Types::TaxRegistrationDocument

    TaxRegistrationDocuments.member = Shapes::ShapeRef.new(shape: TaxRegistrationDocument)

    TaxRegistrationEntry.add_member(:additional_tax_information, Shapes::ShapeRef.new(shape: AdditionalInfoRequest, location_name: "additionalTaxInformation"))
    TaxRegistrationEntry.add_member(:certified_email_id, Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: "certifiedEmailId"))
    TaxRegistrationEntry.add_member(:legal_address, Shapes::ShapeRef.new(shape: Address, location_name: "legalAddress"))
    TaxRegistrationEntry.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, location_name: "legalName"))
    TaxRegistrationEntry.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    TaxRegistrationEntry.add_member(:registration_type, Shapes::ShapeRef.new(shape: TaxRegistrationType, required: true, location_name: "registrationType"))
    TaxRegistrationEntry.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, location_name: "sector"))
    TaxRegistrationEntry.add_member(:verification_details, Shapes::ShapeRef.new(shape: VerificationDetails, location_name: "verificationDetails"))
    TaxRegistrationEntry.struct_class = Types::TaxRegistrationEntry

    TaxRegistrationWithJurisdiction.add_member(:additional_tax_information, Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: "additionalTaxInformation"))
    TaxRegistrationWithJurisdiction.add_member(:certified_email_id, Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: "certifiedEmailId"))
    TaxRegistrationWithJurisdiction.add_member(:jurisdiction, Shapes::ShapeRef.new(shape: Jurisdiction, required: true, location_name: "jurisdiction"))
    TaxRegistrationWithJurisdiction.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, required: true, location_name: "legalName"))
    TaxRegistrationWithJurisdiction.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    TaxRegistrationWithJurisdiction.add_member(:registration_type, Shapes::ShapeRef.new(shape: TaxRegistrationType, required: true, location_name: "registrationType"))
    TaxRegistrationWithJurisdiction.add_member(:sector, Shapes::ShapeRef.new(shape: Sector, location_name: "sector"))
    TaxRegistrationWithJurisdiction.add_member(:status, Shapes::ShapeRef.new(shape: TaxRegistrationStatus, required: true, location_name: "status"))
    TaxRegistrationWithJurisdiction.add_member(:tax_document_metadatas, Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: "taxDocumentMetadatas"))
    TaxRegistrationWithJurisdiction.struct_class = Types::TaxRegistrationWithJurisdiction

    TurkeyAdditionalInfo.add_member(:industries, Shapes::ShapeRef.new(shape: Industries, location_name: "industries"))
    TurkeyAdditionalInfo.add_member(:kep_email_id, Shapes::ShapeRef.new(shape: KepEmailId, location_name: "kepEmailId"))
    TurkeyAdditionalInfo.add_member(:secondary_tax_id, Shapes::ShapeRef.new(shape: SecondaryTaxId, location_name: "secondaryTaxId"))
    TurkeyAdditionalInfo.add_member(:tax_office, Shapes::ShapeRef.new(shape: TaxOffice, location_name: "taxOffice"))
    TurkeyAdditionalInfo.struct_class = Types::TurkeyAdditionalInfo

    UkraineAdditionalInfo.add_member(:ukraine_trn_type, Shapes::ShapeRef.new(shape: UkraineTrnType, required: true, location_name: "ukraineTrnType"))
    UkraineAdditionalInfo.struct_class = Types::UkraineAdditionalInfo

    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, required: true, location_name: "errorCode"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VerificationDetails.add_member(:date_of_birth, Shapes::ShapeRef.new(shape: DateOfBirth, location_name: "dateOfBirth"))
    VerificationDetails.add_member(:tax_registration_documents, Shapes::ShapeRef.new(shape: TaxRegistrationDocuments, location_name: "taxRegistrationDocuments"))
    VerificationDetails.struct_class = Types::VerificationDetails

    VietnamAdditionalInfo.add_member(:electronic_transaction_code_number, Shapes::ShapeRef.new(shape: ElectronicTransactionCodeNumber, location_name: "electronicTransactionCodeNumber"))
    VietnamAdditionalInfo.add_member(:enterprise_identification_number, Shapes::ShapeRef.new(shape: EnterpriseIdentificationNumber, location_name: "enterpriseIdentificationNumber"))
    VietnamAdditionalInfo.add_member(:payment_voucher_number, Shapes::ShapeRef.new(shape: PaymentVoucherNumber, location_name: "paymentVoucherNumber"))
    VietnamAdditionalInfo.add_member(:payment_voucher_number_date, Shapes::ShapeRef.new(shape: DateString, location_name: "paymentVoucherNumberDate"))
    VietnamAdditionalInfo.struct_class = Types::VietnamAdditionalInfo


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "tax",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Tax Settings",
        "serviceId" => "TaxSettings",
        "signatureVersion" => "v4",
        "signingName" => "tax",
        "uid" => "taxsettings-2018-05-10",
      }

      api.add_operation(:batch_delete_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDeleteTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_tax_exemptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTaxExemptions"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetTaxExemptions"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_put_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/BatchPutTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_supplemental_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSupplementalTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSupplementalTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: DeleteTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_tax_exemption_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaxExemptionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/GetTaxExemptionTypes"
        o.input = Shapes::ShapeRef.new(shape: GetTaxExemptionTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaxExemptionTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_tax_inheritance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaxInheritance"
        o.http_method = "POST"
        o.http_request_uri = "/GetTaxInheritance"
        o.input = Shapes::ShapeRef.new(shape: GetTaxInheritanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaxInheritanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/GetTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: GetTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_tax_registration_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaxRegistrationDocument"
        o.http_method = "POST"
        o.http_request_uri = "/GetTaxRegistrationDocument"
        o.input = Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_supplemental_tax_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupplementalTaxRegistrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListSupplementalTaxRegistrations"
        o.input = Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tax_exemptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaxExemptions"
        o.http_method = "POST"
        o.http_request_uri = "/ListTaxExemptions"
        o.input = Shapes::ShapeRef.new(shape: ListTaxExemptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaxExemptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tax_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaxRegistrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListTaxRegistrations"
        o.input = Shapes::ShapeRef.new(shape: ListTaxRegistrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaxRegistrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_supplemental_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSupplementalTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/PutSupplementalTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_tax_exemption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTaxExemption"
        o.http_method = "POST"
        o.http_request_uri = "/PutTaxExemption"
        o.input = Shapes::ShapeRef.new(shape: PutTaxExemptionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTaxExemptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: CaseCreationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentUploadException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_tax_inheritance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTaxInheritance"
        o.http_method = "POST"
        o.http_request_uri = "/PutTaxInheritance"
        o.input = Shapes::ShapeRef.new(shape: PutTaxInheritanceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTaxInheritanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_tax_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTaxRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/PutTaxRegistration"
        o.input = Shapes::ShapeRef.new(shape: PutTaxRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTaxRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
