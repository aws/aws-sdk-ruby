# frozen_string_literal: true

# This is generated code!

module Aws::TaxSettings
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AccountDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccountDetails', name: 'AccountDetails', traits: {"smithy.api#sensitive" => {}})
    AccountDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#AccountDetailsList', name: 'AccountDetailsList')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#AccountIds', name: 'AccountIds')
    AccountMetaData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccountMetaData', name: 'AccountMetaData', traits: {"smithy.api#sensitive" => {}})
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AccountName', name: 'AccountName', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    AdditionalInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AdditionalInfoRequest', name: 'AdditionalInfoRequest')
    AdditionalInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AdditionalInfoResponse', name: 'AdditionalInfoResponse')
    Address = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Address', name: 'Address')
    AddressLine1 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine1', name: 'AddressLine1', traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine2', name: 'AddressLine2', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine3 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine3', name: 'AddressLine3', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressRoleMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.taxsettings#AddressRoleMap', name: 'AddressRoleMap')
    AddressRoleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#AddressRoleType', name: 'AddressRoleType')
    AttachmentUploadException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AttachmentUploadException', name: 'AttachmentUploadException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Authorities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#Authorities', name: 'Authorities')
    Authority = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Authority', name: 'Authority')
    BatchDeleteTaxRegistrationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationError', name: 'BatchDeleteTaxRegistrationError')
    BatchDeleteTaxRegistrationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationErrors', name: 'BatchDeleteTaxRegistrationErrors')
    BatchDeleteTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationRequest', name: 'BatchDeleteTaxRegistrationRequest')
    BatchDeleteTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationResponse', name: 'BatchDeleteTaxRegistrationResponse')
    BatchGetTaxExemptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchGetTaxExemptionsRequest', name: 'BatchGetTaxExemptionsRequest')
    BatchGetTaxExemptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchGetTaxExemptionsResponse', name: 'BatchGetTaxExemptionsResponse')
    BatchPutTaxRegistrationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationError', name: 'BatchPutTaxRegistrationError')
    BatchPutTaxRegistrationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationErrors', name: 'BatchPutTaxRegistrationErrors')
    BatchPutTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationRequest', name: 'BatchPutTaxRegistrationRequest')
    BatchPutTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationResponse', name: 'BatchPutTaxRegistrationResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.taxsettings#Boolean', name: 'Boolean')
    BrazilAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BrazilAdditionalInfo', name: 'BrazilAdditionalInfo')
    BusinessRegistrationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#BusinessRegistrationNumber', name: 'BusinessRegistrationNumber', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BusinessRepresentativeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#BusinessRepresentativeName', name: 'BusinessRepresentativeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    CanadaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#CanadaAdditionalInfo', name: 'CanadaAdditionalInfo')
    CanadaProvincialSalesTaxIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaProvincialSalesTaxIdString', name: 'CanadaProvincialSalesTaxIdString', traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^([0-9A-Z/-]+)$"})
    CanadaQuebecSalesTaxNumberString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaQuebecSalesTaxNumberString', name: 'CanadaQuebecSalesTaxNumberString', traits: {"smithy.api#pattern" => "^([0-9]{10})(TQ[0-9]{4})?$"})
    CanadaRetailSalesTaxNumberString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaRetailSalesTaxNumberString', name: 'CanadaRetailSalesTaxNumberString', traits: {"smithy.api#pattern" => "^([0-9]{6}-[0-9]{1})$"})
    CaseCreationLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#CaseCreationLimitExceededException', name: 'CaseCreationLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CcmCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CcmCode', name: 'CcmCode', traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    CertifiedEmailId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CertifiedEmailId', name: 'CertifiedEmailId', traits: {"smithy.api#pattern" => "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}$"})
    CigNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CigNumber', name: 'CigNumber', traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    City = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#City', name: 'City', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContractingAuthorityCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ContractingAuthorityCode', name: 'ContractingAuthorityCode', traits: {"smithy.api#pattern" => "^\\d{4}\\.[A-Z]\\d{5}\\.\\d{4}$"})
    CountryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CountryCode', name: 'CountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    CupNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CupNumber', name: 'CupNumber', traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    DateOfBirth = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DateOfBirth', name: 'DateOfBirth', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DateString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DateString', name: 'DateString', traits: {"smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DecisionNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DecisionNumber', name: 'DecisionNumber', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9/.\\-]{0,200})$"})
    DeleteSupplementalTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationRequest', name: 'DeleteSupplementalTaxRegistrationRequest')
    DeleteSupplementalTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationResponse', name: 'DeleteSupplementalTaxRegistrationResponse')
    DeleteTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteTaxRegistrationRequest', name: 'DeleteTaxRegistrationRequest')
    DeleteTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteTaxRegistrationResponse', name: 'DeleteTaxRegistrationResponse')
    DestinationFilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DestinationFilePath', name: 'DestinationFilePath', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    DestinationS3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DestinationS3Location', name: 'DestinationS3Location')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    District = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#District', name: 'District', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    EgyptAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#EgyptAdditionalInfo', name: 'EgyptAdditionalInfo')
    ElectronicTransactionCodeNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ElectronicTransactionCodeNumber', name: 'ElectronicTransactionCodeNumber', traits: {"smithy.api#pattern" => "^\\d{17}$"})
    EnterpriseIdentificationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#EnterpriseIdentificationNumber', name: 'EnterpriseIdentificationNumber', traits: {"smithy.api#pattern" => "^(\\d{10}|(\\d{10}-\\d{3}))$"})
    EntityExemptionAccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#EntityExemptionAccountStatus', name: 'EntityExemptionAccountStatus')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    EstoniaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#EstoniaAdditionalInfo', name: 'EstoniaAdditionalInfo')
    ExemptionCertificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ExemptionCertificate', name: 'ExemptionCertificate')
    ExemptionDocumentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ExemptionDocumentName', name: 'ExemptionDocumentName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([A-Za-z0-9-_.]+).(pdf|jpg|png)$"})
    ExemptionFileBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.taxsettings#ExemptionFileBlob', name: 'ExemptionFileBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#FieldName', name: 'FieldName', traits: {"smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    FileBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.taxsettings#FileBlob', name: 'FileBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    GenericString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GeorgiaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GeorgiaAdditionalInfo', name: 'GeorgiaAdditionalInfo')
    GetTaxExemptionTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxExemptionTypesRequest', name: 'GetTaxExemptionTypesRequest')
    GetTaxExemptionTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxExemptionTypesResponse', name: 'GetTaxExemptionTypesResponse')
    GetTaxInheritanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxInheritanceRequest', name: 'GetTaxInheritanceRequest')
    GetTaxInheritanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxInheritanceResponse', name: 'GetTaxInheritanceResponse')
    GetTaxRegistrationDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationDocumentRequest', name: 'GetTaxRegistrationDocumentRequest')
    GetTaxRegistrationDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationDocumentResponse', name: 'GetTaxRegistrationDocumentResponse')
    GetTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationRequest', name: 'GetTaxRegistrationRequest')
    GetTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationResponse', name: 'GetTaxRegistrationResponse')
    GreeceAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GreeceAdditionalInfo', name: 'GreeceAdditionalInfo')
    HeritageStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#HeritageStatus', name: 'HeritageStatus')
    IndiaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IndiaAdditionalInfo', name: 'IndiaAdditionalInfo')
    IndividualRegistrationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#IndividualRegistrationNumber', name: 'IndividualRegistrationNumber', traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    IndonesiaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IndonesiaAdditionalInfo', name: 'IndonesiaAdditionalInfo')
    IndonesiaTaxRegistrationNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IndonesiaTaxRegistrationNumberType', name: 'IndonesiaTaxRegistrationNumberType')
    Industries = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#Industries', name: 'Industries')
    InheritanceObtainedReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#InheritanceObtainedReason', name: 'InheritanceObtainedReason', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsraelAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IsraelAdditionalInfo', name: 'IsraelAdditionalInfo')
    IsraelCustomerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IsraelCustomerType', name: 'IsraelCustomerType')
    IsraelDealerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IsraelDealerType', name: 'IsraelDealerType')
    ItalyAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ItalyAdditionalInfo', name: 'ItalyAdditionalInfo')
    ItemOfBusiness = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ItemOfBusiness', name: 'ItemOfBusiness', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    Jurisdiction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Jurisdiction', name: 'Jurisdiction')
    KenyaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#KenyaAdditionalInfo', name: 'KenyaAdditionalInfo')
    KepEmailId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#KepEmailId', name: 'KepEmailId', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    LegalName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LegalName', name: 'LegalName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    LegalNatureCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LegalNatureCode', name: 'LegalNatureCode', traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    LineOfBusiness = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LineOfBusiness', name: 'LineOfBusiness', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    ListSupplementalTaxRegistrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsRequest', name: 'ListSupplementalTaxRegistrationsRequest')
    ListSupplementalTaxRegistrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsResponse', name: 'ListSupplementalTaxRegistrationsResponse')
    ListTaxExemptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxExemptionsRequest', name: 'ListTaxExemptionsRequest')
    ListTaxExemptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxExemptionsResponse', name: 'ListTaxExemptionsResponse')
    ListTaxRegistrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxRegistrationsRequest', name: 'ListTaxRegistrationsRequest')
    ListTaxRegistrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxRegistrationsResponse', name: 'ListTaxRegistrationsResponse')
    MalaysiaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#MalaysiaAdditionalInfo', name: 'MalaysiaAdditionalInfo')
    MalaysiaServiceTaxCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#MalaysiaServiceTaxCode', name: 'MalaysiaServiceTaxCode')
    MalaysiaServiceTaxCodesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#MalaysiaServiceTaxCodesList', name: 'MalaysiaServiceTaxCodesList', traits: {"smithy.api#length" => {"max" => 4}, "smithy.api#uniqueItems" => {}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.taxsettings#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    PaginationTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PaginationTokenString', name: 'PaginationTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[-A-Za-z0-9_+\\=\\/]+$"})
    Pan = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Pan', name: 'Pan', traits: {"smithy.api#pattern" => "^[A-Z]{5}[0-9]{4}[A-Z]{1}$"})
    PaymentVoucherNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PaymentVoucherNumber', name: 'PaymentVoucherNumber', traits: {"smithy.api#pattern" => "^(\\d{17}|[A-Za-z]{3}\\d{13})$"})
    PersonType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#PersonType', name: 'PersonType')
    PolandAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PolandAdditionalInfo', name: 'PolandAdditionalInfo')
    PostalCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PostalCode', name: 'PostalCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    PpnExceptionDesignationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PpnExceptionDesignationCode', name: 'PpnExceptionDesignationCode', traits: {"smithy.api#pattern" => "^(01|02|03|07|08)$"})
    PutSupplementalTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutSupplementalTaxRegistrationRequest', name: 'PutSupplementalTaxRegistrationRequest')
    PutSupplementalTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutSupplementalTaxRegistrationResponse', name: 'PutSupplementalTaxRegistrationResponse')
    PutTaxExemptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxExemptionRequest', name: 'PutTaxExemptionRequest')
    PutTaxExemptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxExemptionResponse', name: 'PutTaxExemptionResponse')
    PutTaxInheritanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxInheritanceRequest', name: 'PutTaxInheritanceRequest')
    PutTaxInheritanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxInheritanceResponse', name: 'PutTaxInheritanceResponse')
    PutTaxRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxRegistrationRequest', name: 'PutTaxRegistrationRequest')
    PutTaxRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxRegistrationResponse', name: 'PutTaxRegistrationResponse')
    RegistrationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#RegistrationId', name: 'RegistrationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    RegistrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#RegistrationType', name: 'RegistrationType')
    RegistryCommercialCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#RegistryCommercialCode', name: 'RegistryCommercialCode', traits: {"smithy.api#length" => {"min" => 8, "max" => 8}, "smithy.api#pattern" => "^\\d+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RomaniaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#RomaniaAdditionalInfo', name: 'RomaniaAdditionalInfo')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*\\S.*$"})
    SaudiArabiaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SaudiArabiaAdditionalInfo', name: 'SaudiArabiaAdditionalInfo')
    SaudiArabiaTaxRegistrationNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#SaudiArabiaTaxRegistrationNumberType', name: 'SaudiArabiaTaxRegistrationNumberType')
    SdiAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#SdiAccountId', name: 'SdiAccountId', traits: {"smithy.api#pattern" => "^[0-9A-Z]{6,7}$"})
    SecondaryTaxId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#SecondaryTaxId', name: 'SecondaryTaxId', traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    Sector = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#Sector', name: 'Sector')
    Seller = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Seller', name: 'Seller', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    SourceS3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SourceS3Location', name: 'SourceS3Location')
    SouthKoreaAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SouthKoreaAdditionalInfo', name: 'SouthKoreaAdditionalInfo')
    SpainAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SpainAdditionalInfo', name: 'SpainAdditionalInfo')
    State = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#State', name: 'State', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    SupplementalTaxRegistration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistration', name: 'SupplementalTaxRegistration', traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationEntry', name: 'SupplementalTaxRegistrationEntry', traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationList', name: 'SupplementalTaxRegistrationList')
    SupplementalTaxRegistrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationType', name: 'SupplementalTaxRegistrationType')
    TaxCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxCode', name: 'TaxCode', traits: {"smithy.api#pattern" => "^([0-9]{11}|[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])$"})
    TaxDocumentAccessToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentAccessToken', name: 'TaxDocumentAccessToken', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxDocumentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentMetadata', name: 'TaxDocumentMetadata')
    TaxDocumentMetadatas = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentMetadatas', name: 'TaxDocumentMetadatas', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TaxDocumentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentName', name: 'TaxDocumentName', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxExemption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemption', name: 'TaxExemption')
    TaxExemptionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionDetails', name: 'TaxExemptionDetails')
    TaxExemptionDetailsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionDetailsMap', name: 'TaxExemptionDetailsMap')
    TaxExemptionType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionType', name: 'TaxExemptionType')
    TaxExemptionTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionTypes', name: 'TaxExemptionTypes')
    TaxExemptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxExemptions', name: 'TaxExemptions')
    TaxInformationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxInformationNumber', name: 'TaxInformationNumber', traits: {"smithy.api#pattern" => "^[A-Z]{1,2}[0-9]{1,11}$"})
    TaxInheritanceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxInheritanceDetails', name: 'TaxInheritanceDetails')
    TaxOffice = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxOffice', name: 'TaxOffice', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxRegistration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistration', name: 'TaxRegistration', traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationDocFile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocFile', name: 'TaxRegistrationDocFile')
    TaxRegistrationDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocument', name: 'TaxRegistrationDocument')
    TaxRegistrationDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocuments', name: 'TaxRegistrationDocuments', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    TaxRegistrationEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationEntry', name: 'TaxRegistrationEntry', traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationNumberType', name: 'TaxRegistrationNumberType')
    TaxRegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationStatus', name: 'TaxRegistrationStatus')
    TaxRegistrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationType', name: 'TaxRegistrationType')
    TaxRegistrationWithJurisdiction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationWithJurisdiction', name: 'TaxRegistrationWithJurisdiction', traits: {"smithy.api#sensitive" => {}})
    TurkeyAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TurkeyAdditionalInfo', name: 'TurkeyAdditionalInfo')
    UkraineAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#UkraineAdditionalInfo', name: 'UkraineAdditionalInfo')
    UkraineTrnType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#UkraineTrnType', name: 'UkraineTrnType')
    UniqueIdentificationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#UniqueIdentificationNumber', name: 'UniqueIdentificationNumber', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{39}$"})
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^https.*\\S.*$"})
    UzbekistanAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#UzbekistanAdditionalInfo', name: 'UzbekistanAdditionalInfo')
    UzbekistanTaxRegistrationNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#UzbekistanTaxRegistrationNumberType', name: 'UzbekistanTaxRegistrationNumberType')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionErrorCode', name: 'ValidationExceptionErrorCode')
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    VatRegistrationNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#VatRegistrationNumber', name: 'VatRegistrationNumber', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    VerificationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#VerificationDetails', name: 'VerificationDetails')
    VietnamAdditionalInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#VietnamAdditionalInfo', name: 'VietnamAdditionalInfo')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountDetails.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>List of unique account identifiers. </p>"}))
    AccountDetails.add_member(:tax_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationWithJurisdiction, location_name: 'taxRegistration', traits: {"smithy.api#documentation" => "<p>Your TRN information. Instead of having full legal address, here TRN information will have\n      jurisdiction details (for example, country code and state/region/province if applicable). </p>"}))
    AccountDetails.add_member(:tax_inheritance_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDetails, location_name: 'taxInheritanceDetails', traits: {"smithy.api#documentation" => "<p>\n      Tax inheritance information associated with the account.\n    </p>"}))
    AccountDetails.add_member(:account_meta_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountMetaData, location_name: 'accountMetaData', traits: {"smithy.api#documentation" => "<p>\n      The meta data information associated with the account.\n    </p>"}))
    AccountDetails.type = Types::AccountDetails
    AccountDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetails)
    AccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountMetaData.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'accountName', traits: {"smithy.api#documentation" => "<p>\n      The Amazon Web Services accounts name.\n    </p>"}))
    AccountMetaData.add_member(:seller, Smithy::Schema::Shapes::ShapeRef.new(shape: Seller, location_name: 'seller', traits: {"smithy.api#documentation" => "<p>\n      Seller information associated with the account.\n    </p>"}))
    AccountMetaData.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address'))
    AccountMetaData.add_member(:address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleType, location_name: 'addressType', traits: {"smithy.api#documentation" => "<p>\n      The type of address associated with the legal profile.\n    </p>"}))
    AccountMetaData.add_member(:address_role_map, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleMap, location_name: 'addressRoleMap', traits: {"smithy.api#documentation" => "<p>\n      Address roles associated with the account containing country code information.\n    </p>"}))
    AccountMetaData.type = Types::AccountMetaData
    AdditionalInfoRequest.add_member(:malaysia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: 'malaysiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information to specify for a TRN in Malaysia.</p>"}))
    AdditionalInfoRequest.add_member(:israel_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: 'israelAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information to specify for a TRN in Israel.</p>"}))
    AdditionalInfoRequest.add_member(:estonia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: 'estoniaAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information to specify for a TRN in Estonia.</p>"}))
    AdditionalInfoRequest.add_member(:canada_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: 'canadaAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your TRN in Canada.</p>"}))
    AdditionalInfoRequest.add_member(:spain_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: 'spainAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Spain.</p>"}))
    AdditionalInfoRequest.add_member(:kenya_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: 'kenyaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Kenya.</p>"}))
    AdditionalInfoRequest.add_member(:south_korea_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: 'southKoreaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in South Korea.</p>"}))
    AdditionalInfoRequest.add_member(:turkey_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: 'turkeyAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Turkey.</p>"}))
    AdditionalInfoRequest.add_member(:georgia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: 'georgiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information to specify for a TRN in Georgia.\n    </p>"}))
    AdditionalInfoRequest.add_member(:italy_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: 'italyAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information to specify for a TRN in Italy.\n    </p>"}))
    AdditionalInfoRequest.add_member(:romania_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: 'romaniaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Romania.</p>"}))
    AdditionalInfoRequest.add_member(:ukraine_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: 'ukraineAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Ukraine.\n    </p>"}))
    AdditionalInfoRequest.add_member(:poland_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: 'polandAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Poland.\n    </p>"}))
    AdditionalInfoRequest.add_member(:saudi_arabia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: 'saudiArabiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Saudi Arabia.\n    </p>"}))
    AdditionalInfoRequest.add_member(:indonesia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaAdditionalInfo, location_name: 'indonesiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n    </p>"}))
    AdditionalInfoRequest.add_member(:vietnam_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: 'vietnamAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Vietnam.\n    </p>"}))
    AdditionalInfoRequest.add_member(:egypt_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: 'egyptAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Egypt.\n    </p>"}))
    AdditionalInfoRequest.add_member(:greece_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: 'greeceAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Greece.</p>"}))
    AdditionalInfoRequest.add_member(:uzbekistan_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanAdditionalInfo, location_name: 'uzbekistanAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information to specify for a TRN in Uzbekistan.\n    </p>"}))
    AdditionalInfoRequest.type = Types::AdditionalInfoRequest
    AdditionalInfoResponse.add_member(:malaysia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: 'malaysiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your  TRN in Malaysia. </p>"}))
    AdditionalInfoResponse.add_member(:israel_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: 'israelAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your TRN in Israel.</p>"}))
    AdditionalInfoResponse.add_member(:estonia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: 'estoniaAdditionalInfo', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your  TRN in Estonia. </p>"}))
    AdditionalInfoResponse.add_member(:canada_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: 'canadaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Canada. </p>"}))
    AdditionalInfoResponse.add_member(:brazil_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrazilAdditionalInfo, location_name: 'brazilAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Brazil. The Tax Settings API\n      returns this information in your response when any additional information is present with your\n      TRN in Brazil.</p>"}))
    AdditionalInfoResponse.add_member(:spain_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: 'spainAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Spain.</p>"}))
    AdditionalInfoResponse.add_member(:kenya_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: 'kenyaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Kenya.</p>"}))
    AdditionalInfoResponse.add_member(:south_korea_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: 'southKoreaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in South Korea.</p>"}))
    AdditionalInfoResponse.add_member(:turkey_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: 'turkeyAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Turkey.</p>"}))
    AdditionalInfoResponse.add_member(:georgia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: 'georgiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Georgia.\n    </p>"}))
    AdditionalInfoResponse.add_member(:italy_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: 'italyAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Italy.\n    </p>"}))
    AdditionalInfoResponse.add_member(:romania_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: 'romaniaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Romania.</p>"}))
    AdditionalInfoResponse.add_member(:ukraine_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: 'ukraineAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Ukraine.\n    </p>"}))
    AdditionalInfoResponse.add_member(:poland_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: 'polandAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Poland. \n    </p>"}))
    AdditionalInfoResponse.add_member(:saudi_arabia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: 'saudiArabiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Saudi Arabia.\n    </p>"}))
    AdditionalInfoResponse.add_member(:india_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IndiaAdditionalInfo, location_name: 'indiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information in India. \n    </p>"}))
    AdditionalInfoResponse.add_member(:indonesia_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaAdditionalInfo, location_name: 'indonesiaAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN in Indonesia.</p>"}))
    AdditionalInfoResponse.add_member(:vietnam_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: 'vietnamAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Vietnam.\n    </p>"}))
    AdditionalInfoResponse.add_member(:egypt_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: 'egyptAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Egypt.\n    </p>"}))
    AdditionalInfoResponse.add_member(:greece_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: 'greeceAdditionalInfo', traits: {"smithy.api#documentation" => "<p>Additional tax information to specify for a TRN in Greece.\n    </p>"}))
    AdditionalInfoResponse.add_member(:uzbekistan_additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanAdditionalInfo, location_name: 'uzbekistanAdditionalInfo', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information associated with your TRN in Uzbekistan.\n    </p>"}))
    AdditionalInfoResponse.type = Types::AdditionalInfoResponse
    Address.add_member(:address_line1, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine1, location_name: 'addressLine1', traits: {"smithy.api#documentation" => "<p>The first line of the address. </p>", "smithy.api#required" => {}}))
    Address.add_member(:address_line2, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine2, location_name: 'addressLine2', traits: {"smithy.api#documentation" => "<p>The second line of the address, if applicable. </p>"}))
    Address.add_member(:address_line3, Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine3, location_name: 'addressLine3', traits: {"smithy.api#documentation" => "<p> The third line of the address, if applicable. Currently, the Tax Settings API accepts the\n        <code>addressLine3</code> parameter only for Saudi Arabia. When you specify a TRN in Saudi\n      Arabia, you must enter the <code>addressLine3</code> and specify the building number for the\n      address. For example, you might enter <code>1234</code>.</p>"}))
    Address.add_member(:district_or_county, Smithy::Schema::Shapes::ShapeRef.new(shape: District, location_name: 'districtOrCounty', traits: {"smithy.api#documentation" => "<p>The district or county the address is located. </p>\n         <note>\n            <p>For addresses in Brazil, this parameter uses the name of the neighborhood. When you set\n        a TRN in Brazil, use <code>districtOrCounty</code> for the neighborhood name.</p>\n         </note>"}))
    Address.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: City, location_name: 'city', traits: {"smithy.api#documentation" => "<p>The city that the address is in. </p>", "smithy.api#required" => {}}))
    Address.add_member(:state_or_region, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'stateOrRegion', traits: {"smithy.api#documentation" => "<p>The state, region, or province that the address is located. This field is only required for Canada, India, United Arab Emirates, Romania, and Brazil (CPF). It is optional for all other countries.</p>\n         <p>If this is required for tax settings, use the same name as shown on the <b>Tax Settings</b> page.</p>"}))
    Address.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PostalCode, location_name: 'postalCode', traits: {"smithy.api#documentation" => "<p> The postal code associated with the address. </p>", "smithy.api#required" => {}}))
    Address.add_member(:country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'countryCode', traits: {"smithy.api#documentation" => "<p>The country code for the country that the address is in. </p>", "smithy.api#required" => {}}))
    Address.type = Types::Address
    AddressRoleMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleType)
    AddressRoleMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Jurisdiction)
    AddressRoleType.add_member(:tax_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_ADDRESS', traits: {"smithy.api#enumValue" => "TaxAddress"}))
    AddressRoleType.add_member(:billing_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_ADDRESS', traits: {"smithy.api#enumValue" => "BillingAddress"}))
    AddressRoleType.add_member(:contact_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT_ADDRESS', traits: {"smithy.api#enumValue" => "ContactAddress"}))
    AttachmentUploadException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AttachmentUploadException.type = Types::AttachmentUploadException
    Authorities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Authority)
    Authority.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'country', traits: {"smithy.api#documentation" => "<p>\n      The country code for the country that the address is in.\n    </p>", "smithy.api#required" => {}}))
    Authority.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state', traits: {"smithy.api#documentation" => "<p>\n      The state that the address is located. \n    </p>"}))
    Authority.type = Types::Authority
    BatchDeleteTaxRegistrationError.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p> The unique account identifier for the account whose tax registration couldn't be deleted\n      during the <code>BatchDeleteTaxRegistration</code> operation. </p>", "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The error message for an individual failure in the\n        <code>BatchDeleteTaxRegistration</code> operation. </p>", "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p> The error code for an individual failure in BatchDeleteTaxRegistration operation. </p>"}))
    BatchDeleteTaxRegistrationError.type = Types::BatchDeleteTaxRegistrationError
    BatchDeleteTaxRegistrationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationError)
    BatchDeleteTaxRegistrationRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>List of unique account identifiers. </p>", "smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationRequest.type = Types::BatchDeleteTaxRegistrationRequest
    BatchDeleteTaxRegistrationResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The list of errors for the accounts the TRN information could not be deleted for. </p>", "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationResponse.type = Types::BatchDeleteTaxRegistrationResponse
    BatchGetTaxExemptionsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>\n      List of unique account identifiers.\n    </p>", "smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchGetTaxExemptionsRequest.type = Types::BatchGetTaxExemptionsRequest
    BatchGetTaxExemptionsResponse.add_member(:tax_exemption_details_map, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: 'taxExemptionDetailsMap', traits: {"smithy.api#documentation" => "<p>The tax exemption details map of accountId and tax exemption details.\n    </p>"}))
    BatchGetTaxExemptionsResponse.add_member(:failed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'failedAccounts', traits: {"smithy.api#documentation" => "<p>The list of accounts that failed to get tax exemptions.\n    </p>"}))
    BatchGetTaxExemptionsResponse.type = Types::BatchGetTaxExemptionsResponse
    BatchPutTaxRegistrationError.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p> The unique account identifier for the account that the tax registration couldn't be\n      added, or updated during the <code>BatchPutTaxRegistration</code> operation. </p>", "smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The error message for an individual failure in the <code>BatchPutTaxRegistration</code>\n      operation. </p>", "smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p> The error code for an individual failure in the <code>BatchPutTaxRegistration</code>\n      operation. </p>"}))
    BatchPutTaxRegistrationError.type = Types::BatchPutTaxRegistrationError
    BatchPutTaxRegistrationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationError)
    BatchPutTaxRegistrationRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p> List of unique account identifiers.</p>", "smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.add_member(:tax_registration_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#documentation" => "<p>Your TRN information that will be stored to the accounts mentioned in\n        <code>putEntries</code>. </p>", "smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.type = Types::BatchPutTaxRegistrationRequest
    BatchPutTaxRegistrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your TRN stored in the system after processing. Based on the validation\n      occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code> or\n        <code>Rejected</code>. </p>"}))
    BatchPutTaxRegistrationResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>List of errors for the accounts the TRN information could not be added or updated to.\n    </p>", "smithy.api#required" => {}}))
    BatchPutTaxRegistrationResponse.type = Types::BatchPutTaxRegistrationResponse
    BrazilAdditionalInfo.add_member(:ccm_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CcmCode, location_name: 'ccmCode', traits: {"smithy.api#documentation" => "<p>The Cadastro de Contribuintes Mobiliários (CCM) code for your TRN in Brazil. This only applies for a CNPJ tax type for the São Paulo municipality.</p>"}))
    BrazilAdditionalInfo.add_member(:legal_nature_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalNatureCode, location_name: 'legalNatureCode', traits: {"smithy.api#documentation" => "<p>Legal nature of business, based on your TRN in Brazil. This only applies for a CNPJ tax\n      type.</p>"}))
    BrazilAdditionalInfo.type = Types::BrazilAdditionalInfo
    CanadaAdditionalInfo.add_member(:provincial_sales_tax_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaProvincialSalesTaxIdString, location_name: 'provincialSalesTaxId', traits: {"smithy.api#documentation" => "<p> The provincial sales tax ID for your TRN in Canada. This parameter can represent the\n      following: </p>\n         <ul>\n            <li>\n               <p>Provincial sales tax ID number for British Columbia and Saskatchewan provinces</p>\n            </li>\n            <li>\n               <p>Manitoba retail sales tax ID number for Manitoba province</p>\n            </li>\n            <li>\n               <p>Quebec sales tax ID number for Quebec province</p>\n            </li>\n         </ul>\n         <p>The Tax Setting API only accepts this parameter if the TRN is specified  for the previous\n      provinces. For other provinces, the Tax Settings API doesn't accept this parameter. </p>"}))
    CanadaAdditionalInfo.add_member(:canada_quebec_sales_tax_number, Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaQuebecSalesTaxNumberString, location_name: 'canadaQuebecSalesTaxNumber', traits: {"smithy.api#documentation" => "<p>\n      The Quebec Sales Tax ID number. Leave blank if you do not have a Quebec Sales Tax ID number.\n    </p>"}))
    CanadaAdditionalInfo.add_member(:canada_retail_sales_tax_number, Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaRetailSalesTaxNumberString, location_name: 'canadaRetailSalesTaxNumber', traits: {"smithy.api#documentation" => "<p>\n      Manitoba Retail Sales Tax ID number. Customers purchasing Amazon Web Services services for resale in Manitoba must provide a valid Retail Sales Tax ID number for Manitoba. Leave this blank if you do not have a Retail Sales Tax ID number in Manitoba or are not purchasing Amazon Web Services services for resale.\n    </p>"}))
    CanadaAdditionalInfo.add_member(:is_reseller_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isResellerAccount', traits: {"smithy.api#documentation" => "<p> The value for this parameter must be <code>true</code> if the\n        <code>provincialSalesTaxId</code> value is provided for a TRN in British Columbia,\n      Saskatchewan, or Manitoba provinces. </p>\n         <p>To claim a provincial sales tax (PST) and retail sales tax (RST) reseller exemption, you\n      must confirm that purchases  from this account were made for resale. Otherwise, remove the PST\n      or RST number from the <code>provincialSalesTaxId</code> parameter from your request.</p>"}))
    CanadaAdditionalInfo.type = Types::CanadaAdditionalInfo
    CaseCreationLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    CaseCreationLimitExceededException.type = Types::CaseCreationLimitExceededException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>409</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DeleteSupplementalTaxRegistrationRequest.add_member(:authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#documentation" => "<p>\n      The unique authority Id for the supplemental TRN information that needs to be deleted.\n    </p>", "smithy.api#required" => {}}))
    DeleteSupplementalTaxRegistrationRequest.type = Types::DeleteSupplementalTaxRegistrationRequest
    DeleteSupplementalTaxRegistrationResponse.type = Types::DeleteSupplementalTaxRegistrationResponse
    DeleteTaxRegistrationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>Unique account identifier for the TRN information that needs to be deleted. If this isn't\n      passed, the account ID corresponding to the credentials of the API caller will be used for\n      this parameter.</p>"}))
    DeleteTaxRegistrationRequest.type = Types::DeleteTaxRegistrationRequest
    DeleteTaxRegistrationResponse.type = Types::DeleteTaxRegistrationResponse
    DestinationS3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of your Amazon S3 bucket that you specify to download your tax documents to.</p>", "smithy.api#required" => {}}))
    DestinationS3Location.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object prefix that you specify for your tax document file.</p>"}))
    DestinationS3Location.type = Types::DestinationS3Location
    EgyptAdditionalInfo.add_member(:unique_identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdentificationNumber, location_name: 'uniqueIdentificationNumber', traits: {"smithy.api#documentation" => "<p>The unique identification number provided by the Egypt Tax Authority.</p>"}))
    EgyptAdditionalInfo.add_member(:unique_identification_number_expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateString, location_name: 'uniqueIdentificationNumberExpirationDate', traits: {"smithy.api#documentation" => "<p>The expiration date of the unique identification number provided by the Egypt Tax Authority.</p>"}))
    EgyptAdditionalInfo.type = Types::EgyptAdditionalInfo
    EntityExemptionAccountStatus.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "None"}))
    EntityExemptionAccountStatus.add_member(:valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Valid', traits: {"smithy.api#enumValue" => "Valid"}))
    EntityExemptionAccountStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "Expired"}))
    EntityExemptionAccountStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    EstoniaAdditionalInfo.add_member(:registry_commercial_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCommercialCode, location_name: 'registryCommercialCode', traits: {"smithy.api#documentation" => "<p> Registry commercial code (RCC) for your TRN in Estonia. This value is an eight-numeric\n      string, such as <code>12345678</code>.</p>", "smithy.api#required" => {}}))
    EstoniaAdditionalInfo.type = Types::EstoniaAdditionalInfo
    ExemptionCertificate.add_member(:document_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionDocumentName, location_name: 'documentName', traits: {"smithy.api#documentation" => "<p>The exemption certificate file name.\n    </p>", "smithy.api#required" => {}}))
    ExemptionCertificate.add_member(:document_file, Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionFileBlob, location_name: 'documentFile', traits: {"smithy.api#documentation" => "<p>The exemption certificate file content.\n    </p>", "smithy.api#required" => {}}))
    ExemptionCertificate.type = Types::ExemptionCertificate
    GeorgiaAdditionalInfo.add_member(:person_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonType, location_name: 'personType', traits: {"smithy.api#documentation" => "<p>\n      The legal person or physical person assigned to this TRN in Georgia.\n    </p>", "smithy.api#required" => {}}))
    GeorgiaAdditionalInfo.type = Types::GeorgiaAdditionalInfo
    GetTaxExemptionTypesRequest.type = Types::GetTaxExemptionTypesRequest
    GetTaxExemptionTypesResponse.add_member(:tax_exemption_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionTypes, location_name: 'taxExemptionTypes', traits: {"smithy.api#documentation" => "<p>The supported types of tax exemptions.\n    </p>"}))
    GetTaxExemptionTypesResponse.type = Types::GetTaxExemptionTypesResponse
    GetTaxInheritanceRequest.type = Types::GetTaxInheritanceRequest
    GetTaxInheritanceResponse.add_member(:heritage_status, Smithy::Schema::Shapes::ShapeRef.new(shape: HeritageStatus, location_name: 'heritageStatus', traits: {"smithy.api#documentation" => "<p>The tax inheritance status.\n    </p>"}))
    GetTaxInheritanceResponse.type = Types::GetTaxInheritanceResponse
    GetTaxRegistrationDocumentRequest.add_member(:destination_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationS3Location, location_name: 'destinationS3Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that you specify to download your tax documents to.</p>"}))
    GetTaxRegistrationDocumentRequest.add_member(:tax_document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadata, location_name: 'taxDocumentMetadata', traits: {"smithy.api#documentation" => "<p>The metadata for your tax document.</p>", "smithy.api#required" => {}}))
    GetTaxRegistrationDocumentRequest.type = Types::GetTaxRegistrationDocumentRequest
    GetTaxRegistrationDocumentResponse.add_member(:destination_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationFilePath, location_name: 'destinationFilePath', traits: {"smithy.api#documentation" => "<p>The file path of the Amazon S3 bucket where you want to download your tax document to.</p>"}))
    GetTaxRegistrationDocumentResponse.add_member(:presigned_s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'presignedS3Url', traits: {"smithy.api#documentation" => "<p>The Amazon S3 presigned URL of the tax registration document.\n    </p>"}))
    GetTaxRegistrationDocumentResponse.type = Types::GetTaxRegistrationDocumentResponse
    GetTaxRegistrationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>Your unique account identifier.</p>"}))
    GetTaxRegistrationRequest.type = Types::GetTaxRegistrationRequest
    GetTaxRegistrationResponse.add_member(:tax_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistration, location_name: 'taxRegistration', traits: {"smithy.api#documentation" => "<p>TRN information of the account mentioned in the request. </p>"}))
    GetTaxRegistrationResponse.type = Types::GetTaxRegistrationResponse
    GreeceAdditionalInfo.add_member(:contracting_authority_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ContractingAuthorityCode, location_name: 'contractingAuthorityCode', traits: {"smithy.api#documentation" => "<p>The code of contracting authority for e-invoicing.</p>"}))
    GreeceAdditionalInfo.type = Types::GreeceAdditionalInfo
    HeritageStatus.add_member(:opt_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OptIn', traits: {"smithy.api#enumValue" => "OptIn"}))
    HeritageStatus.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OptOut', traits: {"smithy.api#enumValue" => "OptOut"}))
    IndiaAdditionalInfo.add_member(:pan, Smithy::Schema::Shapes::ShapeRef.new(shape: Pan, location_name: 'pan', traits: {"smithy.api#documentation" => "<p>\n      India pan information associated with the account.\n    </p>"}))
    IndiaAdditionalInfo.type = Types::IndiaAdditionalInfo
    IndonesiaAdditionalInfo.add_member(:tax_registration_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType', traits: {"smithy.api#documentation" => "<p>The tax registration number type.</p>"}))
    IndonesiaAdditionalInfo.add_member(:ppn_exception_designation_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PpnExceptionDesignationCode, location_name: 'ppnExceptionDesignationCode', traits: {"smithy.api#documentation" => "<p>Exception code if you are designated by Directorate General of Taxation (DGT) as a VAT collector, non-collected VAT, or VAT-exempt customer.</p>"}))
    IndonesiaAdditionalInfo.add_member(:decision_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DecisionNumber, location_name: 'decisionNumber', traits: {"smithy.api#documentation" => "<p>VAT-exempt customers have a Directorate General of Taxation (DGT) exemption letter or certificate (Surat Keterangan Bebas) decision number. Non-collected VAT have a DGT letter or certificate (Surat Keterangan Tidak Dipungut).</p>"}))
    IndonesiaAdditionalInfo.type = Types::IndonesiaAdditionalInfo
    IndonesiaTaxRegistrationNumberType.add_member(:nik, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NIK', traits: {"smithy.api#enumValue" => "NIK"}))
    IndonesiaTaxRegistrationNumberType.add_member(:passport_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSPORT_NUMBER', traits: {"smithy.api#enumValue" => "PassportNumber"}))
    IndonesiaTaxRegistrationNumberType.add_member(:npwp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NPWP', traits: {"smithy.api#enumValue" => "NPWP"}))
    IndonesiaTaxRegistrationNumberType.add_member(:nitku, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NITKU', traits: {"smithy.api#enumValue" => "NITKU"}))
    Industries.add_member(:circulating_org, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CIRCULATING_ORG', traits: {"smithy.api#enumValue" => "CirculatingOrg"}))
    Industries.add_member(:professional_org, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFESSIONAL_ORG', traits: {"smithy.api#enumValue" => "ProfessionalOrg"}))
    Industries.add_member(:banks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANKS', traits: {"smithy.api#enumValue" => "Banks"}))
    Industries.add_member(:insurance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSURANCE', traits: {"smithy.api#enumValue" => "Insurance"}))
    Industries.add_member(:pension_and_benefit_funds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENSION_AND_BENEFIT_FUNDS', traits: {"smithy.api#enumValue" => "PensionAndBenefitFunds"}))
    Industries.add_member(:development_agencies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVELOPMENT_AGENCIES', traits: {"smithy.api#enumValue" => "DevelopmentAgencies"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>500</p>", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IsraelAdditionalInfo.add_member(:dealer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelDealerType, location_name: 'dealerType', traits: {"smithy.api#documentation" => "<p> Dealer type for your TRN in Israel. If you're not a local authorized dealer with an\n      Israeli VAT ID, specify your tax identification number so that Amazon Web Services can send you\n      a compliant tax invoice.</p>", "smithy.api#required" => {}}))
    IsraelAdditionalInfo.add_member(:customer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelCustomerType, location_name: 'customerType', traits: {"smithy.api#documentation" => "<p> Customer type for your TRN in Israel. The value can be <code>Business</code> or\n        <code>Individual</code>. Use <code>Business</code>for entities such as not-for-profit and\n      financial institutions.</p>", "smithy.api#required" => {}}))
    IsraelAdditionalInfo.type = Types::IsraelAdditionalInfo
    IsraelCustomerType.add_member(:business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    IsraelCustomerType.add_member(:individual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    IsraelDealerType.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "Authorized"}))
    IsraelDealerType.add_member(:non_authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_AUTHORIZED', traits: {"smithy.api#enumValue" => "Non-authorized"}))
    ItalyAdditionalInfo.add_member(:sdi_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SdiAccountId, location_name: 'sdiAccountId', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information to specify for a TRN in Italy. Use CodiceDestinatario to receive your invoices via web service (API) or FTP.\n    </p>"}))
    ItalyAdditionalInfo.add_member(:cig_number, Smithy::Schema::Shapes::ShapeRef.new(shape: CigNumber, location_name: 'cigNumber', traits: {"smithy.api#documentation" => "<p>\n      The tender procedure identification code.\n    </p>"}))
    ItalyAdditionalInfo.add_member(:cup_number, Smithy::Schema::Shapes::ShapeRef.new(shape: CupNumber, location_name: 'cupNumber', traits: {"smithy.api#documentation" => "<p>\n      Additional tax information to specify for a TRN in Italy. This is managed by the Interministerial Committee for Economic Planning (CIPE) which characterizes every public investment project (Individual Project Code).\n    </p>"}))
    ItalyAdditionalInfo.add_member(:tax_code, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxCode, location_name: 'taxCode', traits: {"smithy.api#documentation" => "<p>List of service tax codes for your TRN in Italy. You can use your customer tax code as part of a VAT Group.\n    </p>"}))
    ItalyAdditionalInfo.type = Types::ItalyAdditionalInfo
    Jurisdiction.add_member(:state_or_region, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'stateOrRegion', traits: {"smithy.api#documentation" => "<p> The state, region, or province associated with the country of the jurisdiction, if\n      applicable. </p>"}))
    Jurisdiction.add_member(:country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'countryCode', traits: {"smithy.api#documentation" => "<p> The country code of the jurisdiction. </p>", "smithy.api#required" => {}}))
    Jurisdiction.type = Types::Jurisdiction
    KenyaAdditionalInfo.add_member(:person_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonType, location_name: 'personType', traits: {"smithy.api#documentation" => "<p>The legal person or physical person assigned to this TRN in Kenya.</p>", "smithy.api#required" => {}}))
    KenyaAdditionalInfo.type = Types::KenyaAdditionalInfo
    ListSupplementalTaxRegistrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n      The number of <code>taxRegistrations</code> results you want in one response.\n    </p>"}))
    ListSupplementalTaxRegistrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n      The token to retrieve the next set of results. \n    </p>"}))
    ListSupplementalTaxRegistrationsRequest.type = Types::ListSupplementalTaxRegistrationsRequest
    ListSupplementalTaxRegistrationsResponse.add_member(:tax_registrations, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationList, location_name: 'taxRegistrations', traits: {"smithy.api#documentation" => "<p>\n      The list of supplemental tax registrations. \n    </p>", "smithy.api#required" => {}}))
    ListSupplementalTaxRegistrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n      The token to retrieve the next set of results. \n    </p>"}))
    ListSupplementalTaxRegistrationsResponse.type = Types::ListSupplementalTaxRegistrationsResponse
    ListTaxExemptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The number of results you want in one response.\n    </p>"}))
    ListTaxExemptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results. </p>"}))
    ListTaxExemptionsRequest.type = Types::ListTaxExemptionsRequest
    ListTaxExemptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results. </p>"}))
    ListTaxExemptionsResponse.add_member(:tax_exemption_details_map, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: 'taxExemptionDetailsMap', traits: {"smithy.api#documentation" => "<p>The tax exemption details map of <code>accountId</code> and tax exemption details.\n    </p>"}))
    ListTaxExemptionsResponse.type = Types::ListTaxExemptionsResponse
    ListTaxRegistrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Number of <code>accountDetails</code> results you want in one response. </p>"}))
    ListTaxRegistrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results. </p>"}))
    ListTaxRegistrationsRequest.type = Types::ListTaxRegistrationsRequest
    ListTaxRegistrationsResponse.add_member(:account_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetailsList, location_name: 'accountDetails', traits: {"smithy.api#documentation" => "<p>The list of account details. This contains account Ids and TRN Information for each of the\n      linked accounts. </p>", "smithy.api#required" => {}}))
    ListTaxRegistrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results. </p>"}))
    ListTaxRegistrationsResponse.type = Types::ListTaxRegistrationsResponse
    MalaysiaAdditionalInfo.add_member(:service_tax_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCodesList, location_name: 'serviceTaxCodes', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#documentation" => "<p>List of service tax codes for your TRN in Malaysia.</p>"}))
    MalaysiaAdditionalInfo.add_member(:tax_information_number, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInformationNumber, location_name: 'taxInformationNumber', traits: {"smithy.api#documentation" => "<p>The tax information number in Malaysia. \n    </p>\n         <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid MyKad or NRIC number. For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.\n    </p>\n         <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>"}))
    MalaysiaAdditionalInfo.add_member(:business_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessRegistrationNumber, location_name: 'businessRegistrationNumber', traits: {"smithy.api#documentation" => "<p>The tax registration number (TRN) in Malaysia. </p>\n         <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid MyKad or NRIC number. For business, you must specify a <code>businessRegistrationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a TIN type and tax identification number. For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.\n    </p>\n         <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>"}))
    MalaysiaAdditionalInfo.type = Types::MalaysiaAdditionalInfo
    MalaysiaServiceTaxCode.add_member(:consultancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSULTANCY', traits: {"smithy.api#enumValue" => "Consultancy"}))
    MalaysiaServiceTaxCode.add_member(:digital_svc_electronic_medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIGITAL_SVC_ELECTRONIC_MEDIUM', traits: {"smithy.api#enumValue" => "Digital Service And Electronic Medium"}))
    MalaysiaServiceTaxCode.add_member(:it_services, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_SERVICES', traits: {"smithy.api#enumValue" => "IT Services"}))
    MalaysiaServiceTaxCode.add_member(:training_or_coaching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_OR_COACHING', traits: {"smithy.api#enumValue" => "Training Or Coaching"}))
    MalaysiaServiceTaxCodesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCode)
    PersonType.add_member(:legal_person, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGAL_PERSON', traits: {"smithy.api#enumValue" => "Legal Person"}))
    PersonType.add_member(:physical_person, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHYSICAL_PERSON', traits: {"smithy.api#enumValue" => "Physical Person"}))
    PersonType.add_member(:business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    PolandAdditionalInfo.add_member(:individual_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: IndividualRegistrationNumber, location_name: 'individualRegistrationNumber', traits: {"smithy.api#documentation" => "<p>\n      The individual tax registration number (NIP). Individual NIP is valid for other taxes excluding VAT purposes.\n    </p>"}))
    PolandAdditionalInfo.add_member(:is_group_vat_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isGroupVatEnabled', traits: {"smithy.api#documentation" => "<p>\n      True if your business is a member of a VAT group with a NIP active for VAT purposes. Otherwise, this is false.\n    </p>"}))
    PolandAdditionalInfo.type = Types::PolandAdditionalInfo
    PutSupplementalTaxRegistrationRequest.add_member(:tax_registration_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#documentation" => "<p>\n      The supplemental TRN information that will be stored for the caller account ID.\n    </p>", "smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationRequest.type = Types::PutSupplementalTaxRegistrationRequest
    PutSupplementalTaxRegistrationResponse.add_member(:authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#documentation" => "<p>\n      Unique authority ID for the supplemental TRN information that was stored.\n    </p>", "smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      The status of the supplemental TRN stored in the system after processing. Based on the validation occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code>, <code>Rejected</code>, or <code>Deleted</code>.\n    </p>", "smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.type = Types::PutSupplementalTaxRegistrationResponse
    PutTaxExemptionRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>\n      The list of unique account identifiers.\n    </p>", "smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:authority, Smithy::Schema::Shapes::ShapeRef.new(shape: Authority, location_name: 'authority', traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'exemptionType', traits: {"smithy.api#documentation" => "<p>The exemption type. Use the supported tax exemption type description.\n    </p>", "smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionCertificate, location_name: 'exemptionCertificate', traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.type = Types::PutTaxExemptionRequest
    PutTaxExemptionResponse.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The customer support case ID.\n    </p>"}))
    PutTaxExemptionResponse.type = Types::PutTaxExemptionResponse
    PutTaxInheritanceRequest.add_member(:heritage_status, Smithy::Schema::Shapes::ShapeRef.new(shape: HeritageStatus, location_name: 'heritageStatus', traits: {"smithy.api#documentation" => "<p>The tax inheritance status.\n    </p>"}))
    PutTaxInheritanceRequest.type = Types::PutTaxInheritanceRequest
    PutTaxInheritanceResponse.type = Types::PutTaxInheritanceResponse
    PutTaxRegistrationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>Your unique account identifier. </p>"}))
    PutTaxRegistrationRequest.add_member(:tax_registration_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#documentation" => "<p> Your TRN information that will be stored to the account mentioned in\n        <code>accountId</code>. </p>", "smithy.api#required" => {}}))
    PutTaxRegistrationRequest.type = Types::PutTaxRegistrationRequest
    PutTaxRegistrationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your TRN stored in the system after processing. Based on the validation\n      occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code> or\n        <code>Rejected</code>. </p>"}))
    PutTaxRegistrationResponse.type = Types::PutTaxRegistrationResponse
    RegistrationType.add_member(:intra_eu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTRA_EU', traits: {"smithy.api#enumValue" => "Intra-EU"}))
    RegistrationType.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "Local"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>404</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RomaniaAdditionalInfo.add_member(:tax_registration_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationNumberType, location_name: 'taxRegistrationNumberType', traits: {"smithy.api#documentation" => "<p>\n      The tax registration number type. The value can be <code>TaxRegistrationNumber</code> or <code>LocalRegistrationNumber</code>.\n    </p>", "smithy.api#required" => {}}))
    RomaniaAdditionalInfo.type = Types::RomaniaAdditionalInfo
    SaudiArabiaAdditionalInfo.add_member(:tax_registration_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType', traits: {"smithy.api#documentation" => "<p>\n      The tax registration number type.\n    </p>"}))
    SaudiArabiaAdditionalInfo.type = Types::SaudiArabiaAdditionalInfo
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_IDENTIFICATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxIdentificationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:commercial_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMERCIAL_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "CommercialRegistrationNumber"}))
    Sector.add_member(:business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    Sector.add_member(:individual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    Sector.add_member(:public_institutions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_INSTITUTIONS', traits: {"smithy.api#enumValue" => "Government"}))
    SourceS3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of your Amazon S3 bucket that your tax document is located.</p>", "smithy.api#required" => {}}))
    SourceS3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The object key of your tax document object in Amazon S3.</p>", "smithy.api#required" => {}}))
    SourceS3Location.type = Types::SourceS3Location
    SouthKoreaAdditionalInfo.add_member(:business_representative_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessRepresentativeName, location_name: 'businessRepresentativeName', traits: {"smithy.api#documentation" => "<p>The business legal name based on the most recently uploaded tax registration certificate.</p>", "smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:line_of_business, Smithy::Schema::Shapes::ShapeRef.new(shape: LineOfBusiness, location_name: 'lineOfBusiness', traits: {"smithy.api#documentation" => "<p>Line of business based on the most recently uploaded tax registration certificate.</p>", "smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:item_of_business, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemOfBusiness, location_name: 'itemOfBusiness', traits: {"smithy.api#documentation" => "<p>Item of business based on the most recently uploaded tax registration certificate.</p>", "smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.type = Types::SouthKoreaAdditionalInfo
    SpainAdditionalInfo.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p>The registration type in Spain.</p>", "smithy.api#required" => {}}))
    SpainAdditionalInfo.type = Types::SpainAdditionalInfo
    SupplementalTaxRegistration.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#documentation" => "<p>\n      The supplemental TRN unique identifier.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p>\n      Type of supplemental TRN. Currently, this can only be VAT.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:legal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#documentation" => "<p>\n      The legal name associated with your TRN registration.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:authority_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#documentation" => "<p>\n      Unique authority ID for the supplemental TRN.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      The status of your TRN.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistration.type = Types::SupplementalTaxRegistration
    SupplementalTaxRegistrationEntry.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#documentation" => "<p>\n      The supplemental TRN unique identifier.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p>\n      Type of supplemental TRN. Currently, this can only be VAT.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:legal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#documentation" => "<p>\n      The legal name associated with your TRN registration.\n    </p>", "smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.type = Types::SupplementalTaxRegistrationEntry
    SupplementalTaxRegistrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistration)
    SupplementalTaxRegistrationType.add_member(:vat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAT', traits: {"smithy.api#enumValue" => "VAT"}))
    TaxDocumentMetadata.add_member(:tax_document_access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentAccessToken, location_name: 'taxDocumentAccessToken', traits: {"smithy.api#documentation" => "<p>The tax document access token, which contains information that the Tax Settings API uses to locate the tax document.</p>\n         <note>\n            <p>If you update your tax registration, the existing <code>taxDocumentAccessToken</code> won't be valid. To get the latest token, call the <code>GetTaxRegistration</code> or <code>ListTaxRegistrations</code> API operation. This token is valid for 24 hours.</p>\n         </note>", "smithy.api#required" => {}}))
    TaxDocumentMetadata.add_member(:tax_document_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentName, location_name: 'taxDocumentName', traits: {"smithy.api#documentation" => "<p>The name of your tax document.</p>", "smithy.api#required" => {}}))
    TaxDocumentMetadata.type = Types::TaxDocumentMetadata
    TaxDocumentMetadatas.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadata)
    TaxExemption.add_member(:authority, Smithy::Schema::Shapes::ShapeRef.new(shape: Authority, location_name: 'authority', traits: {"smithy.api#documentation" => "<p>The address domain associate with tax exemption.\n    </p>", "smithy.api#required" => {}}))
    TaxExemption.add_member(:tax_exemption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionType, location_name: 'taxExemptionType', traits: {"smithy.api#documentation" => "<p>The tax exemption type.\n    </p>", "smithy.api#required" => {}}))
    TaxExemption.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'effectiveDate', traits: {"smithy.api#documentation" => "<p>The tax exemption effective date.\n    </p>"}))
    TaxExemption.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expirationDate', traits: {"smithy.api#documentation" => "<p>The tax exemption expiration date.\n    </p>"}))
    TaxExemption.add_member(:system_effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'systemEffectiveDate', traits: {"smithy.api#documentation" => "<p>The tax exemption recording time in the <code>TaxSettings</code> system.\n    </p>"}))
    TaxExemption.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityExemptionAccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The tax exemption status.\n    </p>"}))
    TaxExemption.type = Types::TaxExemption
    TaxExemptionDetails.add_member(:tax_exemptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptions, location_name: 'taxExemptions', traits: {"smithy.api#documentation" => "<p>Tax exemptions.\n    </p>"}))
    TaxExemptionDetails.add_member(:heritage_obtained_details, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'heritageObtainedDetails', traits: {"smithy.api#documentation" => "<p>The indicator if the tax exemption is inherited from the consolidated billing family management account.\n    </p>"}))
    TaxExemptionDetails.add_member(:heritage_obtained_parent_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'heritageObtainedParentEntity', traits: {"smithy.api#documentation" => "<p>The consolidated billing family management account the tax exemption inherited from.\n    </p>"}))
    TaxExemptionDetails.add_member(:heritage_obtained_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'heritageObtainedReason', traits: {"smithy.api#documentation" => "<p>The reason of the heritage inheritance.\n    </p>"}))
    TaxExemptionDetails.type = Types::TaxExemptionDetails
    TaxExemptionDetailsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    TaxExemptionDetailsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetails)
    TaxExemptionType.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The tax exemption's type display name.\n    </p>"}))
    TaxExemptionType.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The tax exemption's type description.\n    </p>"}))
    TaxExemptionType.add_member(:applicable_jurisdictions, Smithy::Schema::Shapes::ShapeRef.new(shape: Authorities, location_name: 'applicableJurisdictions', traits: {"smithy.api#documentation" => "<p>The tax exemption's applicable jurisdictions.\n    </p>"}))
    TaxExemptionType.type = Types::TaxExemptionType
    TaxExemptionTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionType)
    TaxExemptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemption)
    TaxInheritanceDetails.add_member(:parent_entity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'parentEntityId', traits: {"smithy.api#documentation" => "<p>\n      Tax inheritance parent account information associated with the account.\n    </p>"}))
    TaxInheritanceDetails.add_member(:inheritance_obtained_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: InheritanceObtainedReason, location_name: 'inheritanceObtainedReason', traits: {"smithy.api#documentation" => "<p>\n      Tax inheritance reason information associated with the account.\n    </p>"}))
    TaxInheritanceDetails.type = Types::TaxInheritanceDetails
    TaxRegistration.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#documentation" => "<p> Your tax registration unique identifier. </p>", "smithy.api#required" => {}}))
    TaxRegistration.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p>Type of your tax registration.\n    </p>", "smithy.api#required" => {}}))
    TaxRegistration.add_member(:legal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#documentation" => "<p> The legal name associated with your TRN registration. </p>", "smithy.api#required" => {}}))
    TaxRegistration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of your TRN. This can be either <code>Verified</code>, <code>Pending</code>,\n        <code>Deleted</code>, or <code>Rejected</code>. </p>", "smithy.api#required" => {}}))
    TaxRegistration.add_member(:sector, Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector', traits: {"smithy.api#documentation" => "<p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government. Note that certain values may not applicable for the request country. Please refer to country specific information in API document.\n    </p>"}))
    TaxRegistration.add_member(:tax_document_metadatas, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: 'taxDocumentMetadatas', traits: {"smithy.api#documentation" => "<p>The metadata for your tax document.</p>"}))
    TaxRegistration.add_member(:certified_email_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId', traits: {"smithy.api#documentation" => "<p>The email address to receive VAT invoices.</p>"}))
    TaxRegistration.add_member(:additional_tax_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: 'additionalTaxInformation', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your TRN. </p>"}))
    TaxRegistration.add_member(:legal_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'legalAddress', traits: {"smithy.api#documentation" => "<p> The legal address associated with your TRN registration. </p>", "smithy.api#required" => {}}))
    TaxRegistration.type = Types::TaxRegistration
    TaxRegistrationDocFile.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentName, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The tax registration document name.\n    </p>", "smithy.api#required" => {}}))
    TaxRegistrationDocFile.add_member(:file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: FileBlob, location_name: 'fileContent', traits: {"smithy.api#documentation" => "<p>The tax registration document content.\n    </p>", "smithy.api#required" => {}}))
    TaxRegistrationDocFile.type = Types::TaxRegistrationDocFile
    TaxRegistrationDocument.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceS3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location where your tax registration document is stored.</p>"}))
    TaxRegistrationDocument.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocFile, location_name: 'file', traits: {"smithy.api#documentation" => "<p>The tax registration document.\n    </p>"}))
    TaxRegistrationDocument.type = Types::TaxRegistrationDocument
    TaxRegistrationDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocument)
    TaxRegistrationEntry.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#documentation" => "<p>Your tax registration unique identifier. </p>", "smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p> Your tax registration type. This can be either <code>VAT</code> or <code>GST</code>.\n    </p>", "smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:legal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#documentation" => "<p>The legal name associated with your TRN. </p>\n         <note>\n            <p>If you're setting a TRN in Brazil, you don't need to specify the legal name. For TRNs in\n        other countries, you must specify the legal name.</p>\n         </note>"}))
    TaxRegistrationEntry.add_member(:legal_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'legalAddress', traits: {"smithy.api#documentation" => "<p>The legal address associated with your TRN.</p>\n         <note>\n            <p>If you're setting a TRN in Brazil for the CNPJ tax type, you don't need to specify the\n        legal address. </p>\n            <p>For TRNs in other countries and for CPF tax types Brazil, you must specify the legal\n        address.</p>\n         </note>"}))
    TaxRegistrationEntry.add_member(:sector, Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector', traits: {"smithy.api#documentation" => "<p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government.Note that certain values may not applicable for the request country. Please refer to country specific information in API document.\n    </p>"}))
    TaxRegistrationEntry.add_member(:additional_tax_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoRequest, location_name: 'additionalTaxInformation', traits: {"smithy.api#documentation" => "<p> Additional tax information associated with your TRN. You only need to specify this\n      parameter if Amazon Web Services collects any additional information for your country within\n        <a>AdditionalInfoRequest</a>.</p>"}))
    TaxRegistrationEntry.add_member(:verification_details, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationDetails, location_name: 'verificationDetails', traits: {"smithy.api#documentation" => "<p>Additional details needed to verify your TRN information in Brazil. You only need to specify this\n      parameter when you set a TRN in Brazil that is the CPF tax type.</p>\n         <note>\n            <p>Don't specify this parameter to set a TRN in Brazil of the CNPJ tax type or to set a TRN\n        for another country. </p>\n         </note>"}))
    TaxRegistrationEntry.add_member(:certified_email_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId', traits: {"smithy.api#documentation" => "<p>The email address to receive VAT invoices.</p>"}))
    TaxRegistrationEntry.type = Types::TaxRegistrationEntry
    TaxRegistrationNumberType.add_member(:tax_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    TaxRegistrationNumberType.add_member(:local_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "LocalRegistrationNumber"}))
    TaxRegistrationStatus.add_member(:verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED', traits: {"smithy.api#enumValue" => "Verified"}))
    TaxRegistrationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    TaxRegistrationStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    TaxRegistrationStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "Rejected"}))
    TaxRegistrationType.add_member(:vat, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAT', traits: {"smithy.api#enumValue" => "VAT"}))
    TaxRegistrationType.add_member(:gst, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GST', traits: {"smithy.api#enumValue" => "GST"}))
    TaxRegistrationType.add_member(:cpf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPF', traits: {"smithy.api#enumValue" => "CPF"}))
    TaxRegistrationType.add_member(:cnpj, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CNPJ', traits: {"smithy.api#enumValue" => "CNPJ"}))
    TaxRegistrationType.add_member(:sst, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SST', traits: {"smithy.api#enumValue" => "SST"}))
    TaxRegistrationType.add_member(:tin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIN', traits: {"smithy.api#enumValue" => "TIN"}))
    TaxRegistrationType.add_member(:nric, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NRIC', traits: {"smithy.api#enumValue" => "NRIC"}))
    TaxRegistrationWithJurisdiction.add_member(:registration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#documentation" => "<p>Your tax registration unique identifier. </p>", "smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:registration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#documentation" => "<p> The type of your tax registration. This can be either <code>VAT</code> or\n        <code>GST</code>. </p>", "smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:legal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#documentation" => "<p>The legal name associated with your TRN information. </p>", "smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your TRN. This can be either <code>Verified</code>, <code>Pending</code>,\n        <code>Deleted</code>, or <code>Rejected</code>. </p>", "smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:sector, Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector', traits: {"smithy.api#documentation" => "<p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government.Note that certain values may not applicable for the request country. Please refer to country specific information in API document.\n    </p>"}))
    TaxRegistrationWithJurisdiction.add_member(:tax_document_metadatas, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: 'taxDocumentMetadatas', traits: {"smithy.api#documentation" => "<p>The metadata for your tax document.</p>"}))
    TaxRegistrationWithJurisdiction.add_member(:certified_email_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId', traits: {"smithy.api#documentation" => "<p>The email address to receive VAT invoices.</p>"}))
    TaxRegistrationWithJurisdiction.add_member(:additional_tax_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: 'additionalTaxInformation', traits: {"smithy.api#documentation" => "<p>Additional tax information associated with your TRN. </p>"}))
    TaxRegistrationWithJurisdiction.add_member(:jurisdiction, Smithy::Schema::Shapes::ShapeRef.new(shape: Jurisdiction, location_name: 'jurisdiction', traits: {"smithy.api#documentation" => "<p> The jurisdiction associated with your TRN information. </p>", "smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.type = Types::TaxRegistrationWithJurisdiction
    TurkeyAdditionalInfo.add_member(:tax_office, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxOffice, location_name: 'taxOffice', traits: {"smithy.api#documentation" => "<p>The tax office where you're registered. You can enter this information as a string. The Tax Settings API will add this information to your invoice. This parameter is required for business-to-business (B2B) and business-to-government customers. It's not required for business-to-consumer (B2C) customers.</p>"}))
    TurkeyAdditionalInfo.add_member(:kep_email_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KepEmailId, location_name: 'kepEmailId', traits: {"smithy.api#documentation" => "<p>The Registered Electronic Mail (REM) that is used to send notarized communication. This parameter is optional for business-to-business (B2B) and business-to-government (B2G) customers. It's not required for business-to-consumer (B2C) customers.</p>"}))
    TurkeyAdditionalInfo.add_member(:secondary_tax_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryTaxId, location_name: 'secondaryTaxId', traits: {"smithy.api#documentation" => "<p>\n      Secondary tax ID (“harcama birimi VKN”si”). If one isn't provided, we will use your VKN as the secondary ID.\n    </p>"}))
    TurkeyAdditionalInfo.add_member(:industries, Smithy::Schema::Shapes::ShapeRef.new(shape: Industries, location_name: 'industries', traits: {"smithy.api#documentation" => "<p>The industry information that tells the Tax Settings API if you're subject to additional\n      withholding taxes. This information required for business-to-business (B2B) customers. This\n      information is conditionally mandatory for B2B customers who are subject to KDV tax.</p>"}))
    TurkeyAdditionalInfo.type = Types::TurkeyAdditionalInfo
    UkraineAdditionalInfo.add_member(:ukraine_trn_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineTrnType, location_name: 'ukraineTrnType', traits: {"smithy.api#documentation" => "<p>\n      The tax registration type.\n    </p>", "smithy.api#required" => {}}))
    UkraineAdditionalInfo.type = Types::UkraineAdditionalInfo
    UkraineTrnType.add_member(:business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    UkraineTrnType.add_member(:individual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    UzbekistanAdditionalInfo.add_member(:tax_registration_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType', traits: {"smithy.api#documentation" => "<p>\n      The tax registration number type. The tax registration number type valid values are <code>Business</code> and <code>Individual</code>.\n    </p>"}))
    UzbekistanAdditionalInfo.add_member(:vat_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: VatRegistrationNumber, location_name: 'vatRegistrationNumber', traits: {"smithy.api#documentation" => "<p>\n      The unique 12-digit number issued to identify VAT-registered identities in Uzbekistan.\n    </p>"}))
    UzbekistanAdditionalInfo.type = Types::UzbekistanAdditionalInfo
    UzbekistanTaxRegistrationNumberType.add_member(:business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    UzbekistanTaxRegistrationNumberType.add_member(:individual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>400</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>400</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorCode.add_member(:malformed_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_TOKEN', traits: {"smithy.api#enumValue" => "MalformedToken"}))
    ValidationExceptionErrorCode.add_member(:expired_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED_TOKEN', traits: {"smithy.api#enumValue" => "ExpiredToken"}))
    ValidationExceptionErrorCode.add_member(:invalid_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TOKEN', traits: {"smithy.api#enumValue" => "InvalidToken"}))
    ValidationExceptionErrorCode.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionErrorCode.add_member(:missing_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_INPUT', traits: {"smithy.api#enumValue" => "MissingInput"}))
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter that caused a <code>ValidationException</code> error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VerificationDetails.add_member(:date_of_birth, Smithy::Schema::Shapes::ShapeRef.new(shape: DateOfBirth, location_name: 'dateOfBirth', traits: {"smithy.api#documentation" => "<p>Date of birth to verify your submitted TRN. Use the <code>YYYY-MM-DD</code> format.</p>"}))
    VerificationDetails.add_member(:tax_registration_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocuments, location_name: 'taxRegistrationDocuments', traits: {"smithy.api#documentation" => "<p>The tax registration document, which is required for specific countries such as Bangladesh, Kenya, South Korea and Spain.</p>"}))
    VerificationDetails.type = Types::VerificationDetails
    VietnamAdditionalInfo.add_member(:enterprise_identification_number, Smithy::Schema::Shapes::ShapeRef.new(shape: EnterpriseIdentificationNumber, location_name: 'enterpriseIdentificationNumber', traits: {"smithy.api#documentation" => "<p>The enterprise identification number for tax registration. This field must be provided for successful API operation.</p>"}))
    VietnamAdditionalInfo.add_member(:electronic_transaction_code_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ElectronicTransactionCodeNumber, location_name: 'electronicTransactionCodeNumber', traits: {"smithy.api#documentation" => "<p>The electronic transaction code number on the tax return document. This field must be provided for successful API operation.</p>"}))
    VietnamAdditionalInfo.add_member(:payment_voucher_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentVoucherNumber, location_name: 'paymentVoucherNumber', traits: {"smithy.api#documentation" => "<p>The payment voucher number on the tax return payment document. This field must be provided for successful API operation.</p>"}))
    VietnamAdditionalInfo.add_member(:payment_voucher_number_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateString, location_name: 'paymentVoucherNumberDate', traits: {"smithy.api#documentation" => "<p>The date on the tax return payment document. This field must be provided for successful API operation.</p>"}))
    VietnamAdditionalInfo.type = Types::VietnamAdditionalInfo

    TaxSettings = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.taxsettings#TaxSettings"
      service.name = "TaxSettings"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "TaxSettings", "arnNamespace" => "tax", "cloudTrailEventSource" => "tax.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "tax"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type,X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "Access-Control-Allow-Origin", "X-Amz-Content-Sha256", "Amz-Sdk-Invocation-Id", "Amz-Sdk-Request", "X-Amz-User-Agent"]}, "smithy.api#title" => "Tax Settings"}
      service.add_operation(:batch_delete_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchDeleteTaxRegistration"
        operation.name = "BatchDeleteTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchDeleteTaxRegistration"}}
      end)
      service.add_operation(:batch_get_tax_exemptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchGetTaxExemptions"
        operation.name = "BatchGetTaxExemptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants batch get active tax exemptions for a given list of accounts permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchGetTaxExemptions"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_put_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchPutTaxRegistration"
        operation.name = "BatchPutTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchPutTaxRegistration"}}
      end)
      service.add_operation(:delete_supplemental_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteSupplementalTaxRegistration"
        operation.name = "DeleteSupplementalTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteSupplementalTaxRegistration"}}
      end)
      service.add_operation(:delete_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteTaxRegistration"
        operation.name = "DeleteTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteTaxRegistration"}}
      end)
      service.add_operation(:get_tax_exemption_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxExemptionTypes"
        operation.name = "GetTaxExemptionTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxExemptionTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxExemptionTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants get supported tax exemption types permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxExemptionTypes"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_inheritance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxInheritance"
        operation.name = "GetTaxInheritance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxInheritanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxInheritanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants get tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxInheritance"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistration"
        operation.name = "GetTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistrationDocument"
        operation.name = "GetTaxRegistrationDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistrationDocument"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_supplemental_tax_registrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListSupplementalTaxRegistrations"
        operation.name = "ListSupplementalTaxRegistrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListSupplementalTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupplementalTaxRegistrations.new
      end)
      service.add_operation(:list_tax_exemptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxExemptions"
        operation.name = "ListTaxExemptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxExemptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxExemptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants list the active tax exemptions for a CB family permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxExemptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxExemptions.new
      end)
      service.add_operation(:list_tax_registrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxRegistrations"
        operation.name = "ListTaxRegistrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxRegistrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxRegistrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxRegistrations.new
      end)
      service.add_operation(:put_supplemental_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutSupplementalTaxRegistration"
        operation.name = "PutSupplementalTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutSupplementalTaxRegistration"}}
      end)
      service.add_operation(:put_tax_exemption, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxExemption"
        operation.name = "PutTaxExemption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxExemptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxExemptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentUploadException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseCreationLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:UpdateExemptions", "support:CreateCase", "support:AddAttachmentsToSet"], "documentation" => "Grants create customer tax exemption case permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxExemption"}}
      end)
      service.add_operation(:put_tax_inheritance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxInheritance"
        operation.name = "PutTaxInheritance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxInheritanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxInheritanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants put tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxInheritance"}}
      end)
      service.add_operation(:put_tax_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxRegistration"
        operation.name = "PutTaxRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxRegistration"}}
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
