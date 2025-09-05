# frozen_string_literal: true

# This is generated code!

module Aws::TaxSettings
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccountDetails', name: 'AccountDetails', traits: {"smithy.api#sensitive" => {}})
    AccountDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#AccountDetailsList', name: 'AccountDetailsList')
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#AccountIds', name: 'AccountIds')
    AccountMetaData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AccountMetaData', name: 'AccountMetaData', traits: {"smithy.api#sensitive" => {}})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AccountName', name: 'AccountName', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    AdditionalInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AdditionalInfoRequest', name: 'AdditionalInfoRequest')
    AdditionalInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AdditionalInfoResponse', name: 'AdditionalInfoResponse')
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Address', name: 'Address')
    AddressLine1 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine1', name: 'AddressLine1', traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine2', name: 'AddressLine2', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine3 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#AddressLine3', name: 'AddressLine3', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressRoleMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.taxsettings#AddressRoleMap', name: 'AddressRoleMap')
    AddressRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#AddressRoleType', name: 'AddressRoleType')
    AttachmentUploadException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#AttachmentUploadException', name: 'AttachmentUploadException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Authorities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#Authorities', name: 'Authorities')
    Authority = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Authority', name: 'Authority')
    BatchDeleteTaxRegistrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationError', name: 'BatchDeleteTaxRegistrationError')
    BatchDeleteTaxRegistrationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationErrors', name: 'BatchDeleteTaxRegistrationErrors')
    BatchDeleteTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationRequest', name: 'BatchDeleteTaxRegistrationRequest')
    BatchDeleteTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchDeleteTaxRegistrationResponse', name: 'BatchDeleteTaxRegistrationResponse')
    BatchGetTaxExemptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchGetTaxExemptionsRequest', name: 'BatchGetTaxExemptionsRequest')
    BatchGetTaxExemptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchGetTaxExemptionsResponse', name: 'BatchGetTaxExemptionsResponse')
    BatchPutTaxRegistrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationError', name: 'BatchPutTaxRegistrationError')
    BatchPutTaxRegistrationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationErrors', name: 'BatchPutTaxRegistrationErrors')
    BatchPutTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationRequest', name: 'BatchPutTaxRegistrationRequest')
    BatchPutTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BatchPutTaxRegistrationResponse', name: 'BatchPutTaxRegistrationResponse')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.taxsettings#Boolean', name: 'Boolean')
    BrazilAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#BrazilAdditionalInfo', name: 'BrazilAdditionalInfo')
    BusinessRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#BusinessRegistrationNumber', name: 'BusinessRegistrationNumber', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BusinessRepresentativeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#BusinessRepresentativeName', name: 'BusinessRepresentativeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    CanadaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#CanadaAdditionalInfo', name: 'CanadaAdditionalInfo')
    CanadaProvincialSalesTaxIdString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaProvincialSalesTaxIdString', name: 'CanadaProvincialSalesTaxIdString', traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^([0-9A-Z/-]+)$"})
    CanadaQuebecSalesTaxNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaQuebecSalesTaxNumberString', name: 'CanadaQuebecSalesTaxNumberString', traits: {"smithy.api#pattern" => "^([0-9]{10})(TQ[0-9]{4})?$"})
    CanadaRetailSalesTaxNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CanadaRetailSalesTaxNumberString', name: 'CanadaRetailSalesTaxNumberString', traits: {"smithy.api#pattern" => "^([0-9]{6}-[0-9]{1})$"})
    CaseCreationLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#CaseCreationLimitExceededException', name: 'CaseCreationLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CcmCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CcmCode', name: 'CcmCode', traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    CertifiedEmailId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CertifiedEmailId', name: 'CertifiedEmailId', traits: {"smithy.api#pattern" => "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}$"})
    CigNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CigNumber', name: 'CigNumber', traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    City = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#City', name: 'City', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContractingAuthorityCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ContractingAuthorityCode', name: 'ContractingAuthorityCode', traits: {"smithy.api#pattern" => "^\\d{4}\\.[A-Z]\\d{5}\\.\\d{4}$"})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CountryCode', name: 'CountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    CupNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#CupNumber', name: 'CupNumber', traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    DateOfBirth = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DateOfBirth', name: 'DateOfBirth', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DateString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DateString', name: 'DateString', traits: {"smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DecisionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DecisionNumber', name: 'DecisionNumber', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9/.\\-]{0,200})$"})
    DeleteSupplementalTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationRequest', name: 'DeleteSupplementalTaxRegistrationRequest')
    DeleteSupplementalTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationResponse', name: 'DeleteSupplementalTaxRegistrationResponse')
    DeleteTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteTaxRegistrationRequest', name: 'DeleteTaxRegistrationRequest')
    DeleteTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DeleteTaxRegistrationResponse', name: 'DeleteTaxRegistrationResponse')
    DestinationFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DestinationFilePath', name: 'DestinationFilePath', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    DestinationS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#DestinationS3Location', name: 'DestinationS3Location')
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    District = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#District', name: 'District', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    EgyptAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#EgyptAdditionalInfo', name: 'EgyptAdditionalInfo')
    ElectronicTransactionCodeNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ElectronicTransactionCodeNumber', name: 'ElectronicTransactionCodeNumber', traits: {"smithy.api#pattern" => "^\\d{17}$"})
    EnterpriseIdentificationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#EnterpriseIdentificationNumber', name: 'EnterpriseIdentificationNumber', traits: {"smithy.api#pattern" => "^(\\d{10}|(\\d{10}-\\d{3}))$"})
    EntityExemptionAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#EntityExemptionAccountStatus', name: 'EntityExemptionAccountStatus')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    EstoniaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#EstoniaAdditionalInfo', name: 'EstoniaAdditionalInfo')
    ExemptionCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ExemptionCertificate', name: 'ExemptionCertificate')
    ExemptionDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ExemptionDocumentName', name: 'ExemptionDocumentName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([A-Za-z0-9-_.]+).(pdf|jpg|png)$"})
    ExemptionFileBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.taxsettings#ExemptionFileBlob', name: 'ExemptionFileBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#FieldName', name: 'FieldName', traits: {"smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    FileBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.taxsettings#FileBlob', name: 'FileBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GeorgiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GeorgiaAdditionalInfo', name: 'GeorgiaAdditionalInfo')
    GetTaxExemptionTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxExemptionTypesRequest', name: 'GetTaxExemptionTypesRequest')
    GetTaxExemptionTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxExemptionTypesResponse', name: 'GetTaxExemptionTypesResponse')
    GetTaxInheritanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxInheritanceRequest', name: 'GetTaxInheritanceRequest')
    GetTaxInheritanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxInheritanceResponse', name: 'GetTaxInheritanceResponse')
    GetTaxRegistrationDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationDocumentRequest', name: 'GetTaxRegistrationDocumentRequest')
    GetTaxRegistrationDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationDocumentResponse', name: 'GetTaxRegistrationDocumentResponse')
    GetTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationRequest', name: 'GetTaxRegistrationRequest')
    GetTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GetTaxRegistrationResponse', name: 'GetTaxRegistrationResponse')
    GreeceAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#GreeceAdditionalInfo', name: 'GreeceAdditionalInfo')
    HeritageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#HeritageStatus', name: 'HeritageStatus')
    IndiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IndiaAdditionalInfo', name: 'IndiaAdditionalInfo')
    IndividualRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#IndividualRegistrationNumber', name: 'IndividualRegistrationNumber', traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    IndonesiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IndonesiaAdditionalInfo', name: 'IndonesiaAdditionalInfo')
    IndonesiaTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IndonesiaTaxRegistrationNumberType', name: 'IndonesiaTaxRegistrationNumberType')
    Industries = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#Industries', name: 'Industries')
    InheritanceObtainedReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#InheritanceObtainedReason', name: 'InheritanceObtainedReason', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsraelAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#IsraelAdditionalInfo', name: 'IsraelAdditionalInfo')
    IsraelCustomerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IsraelCustomerType', name: 'IsraelCustomerType')
    IsraelDealerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#IsraelDealerType', name: 'IsraelDealerType')
    ItalyAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ItalyAdditionalInfo', name: 'ItalyAdditionalInfo')
    ItemOfBusiness = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#ItemOfBusiness', name: 'ItemOfBusiness', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    Jurisdiction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#Jurisdiction', name: 'Jurisdiction')
    KenyaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#KenyaAdditionalInfo', name: 'KenyaAdditionalInfo')
    KepEmailId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#KepEmailId', name: 'KepEmailId', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    LegalName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LegalName', name: 'LegalName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    LegalNatureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LegalNatureCode', name: 'LegalNatureCode', traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    LineOfBusiness = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#LineOfBusiness', name: 'LineOfBusiness', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    ListSupplementalTaxRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsRequest', name: 'ListSupplementalTaxRegistrationsRequest')
    ListSupplementalTaxRegistrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsResponse', name: 'ListSupplementalTaxRegistrationsResponse')
    ListTaxExemptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxExemptionsRequest', name: 'ListTaxExemptionsRequest')
    ListTaxExemptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxExemptionsResponse', name: 'ListTaxExemptionsResponse')
    ListTaxRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxRegistrationsRequest', name: 'ListTaxRegistrationsRequest')
    ListTaxRegistrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ListTaxRegistrationsResponse', name: 'ListTaxRegistrationsResponse')
    MalaysiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#MalaysiaAdditionalInfo', name: 'MalaysiaAdditionalInfo')
    MalaysiaServiceTaxCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#MalaysiaServiceTaxCode', name: 'MalaysiaServiceTaxCode')
    MalaysiaServiceTaxCodesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#MalaysiaServiceTaxCodesList', name: 'MalaysiaServiceTaxCodesList', traits: {"smithy.api#length" => {"max" => 4}, "smithy.api#uniqueItems" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.taxsettings#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    PaginationTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PaginationTokenString', name: 'PaginationTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[-A-Za-z0-9_+\\=\\/]+$"})
    Pan = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Pan', name: 'Pan', traits: {"smithy.api#pattern" => "^[A-Z]{5}[0-9]{4}[A-Z]{1}$"})
    PaymentVoucherNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PaymentVoucherNumber', name: 'PaymentVoucherNumber', traits: {"smithy.api#pattern" => "^(\\d{17}|[A-Za-z]{3}\\d{13})$"})
    PersonType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#PersonType', name: 'PersonType')
    PolandAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PolandAdditionalInfo', name: 'PolandAdditionalInfo')
    PostalCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PostalCode', name: 'PostalCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    PpnExceptionDesignationCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#PpnExceptionDesignationCode', name: 'PpnExceptionDesignationCode', traits: {"smithy.api#pattern" => "^(01|02|03|07|08)$"})
    PutSupplementalTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutSupplementalTaxRegistrationRequest', name: 'PutSupplementalTaxRegistrationRequest')
    PutSupplementalTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutSupplementalTaxRegistrationResponse', name: 'PutSupplementalTaxRegistrationResponse')
    PutTaxExemptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxExemptionRequest', name: 'PutTaxExemptionRequest')
    PutTaxExemptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxExemptionResponse', name: 'PutTaxExemptionResponse')
    PutTaxInheritanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxInheritanceRequest', name: 'PutTaxInheritanceRequest')
    PutTaxInheritanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxInheritanceResponse', name: 'PutTaxInheritanceResponse')
    PutTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxRegistrationRequest', name: 'PutTaxRegistrationRequest')
    PutTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#PutTaxRegistrationResponse', name: 'PutTaxRegistrationResponse')
    RegistrationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#RegistrationId', name: 'RegistrationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    RegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#RegistrationType', name: 'RegistrationType')
    RegistryCommercialCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#RegistryCommercialCode', name: 'RegistryCommercialCode', traits: {"smithy.api#length" => {"min" => 8, "max" => 8}, "smithy.api#pattern" => "^\\d+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RomaniaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#RomaniaAdditionalInfo', name: 'RomaniaAdditionalInfo')
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*\\S.*$"})
    SaudiArabiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SaudiArabiaAdditionalInfo', name: 'SaudiArabiaAdditionalInfo')
    SaudiArabiaTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#SaudiArabiaTaxRegistrationNumberType', name: 'SaudiArabiaTaxRegistrationNumberType')
    SdiAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#SdiAccountId', name: 'SdiAccountId', traits: {"smithy.api#pattern" => "^[0-9A-Z]{6,7}$"})
    SecondaryTaxId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#SecondaryTaxId', name: 'SecondaryTaxId', traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    Sector = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#Sector', name: 'Sector')
    Seller = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Seller', name: 'Seller', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    SourceS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SourceS3Location', name: 'SourceS3Location')
    SouthKoreaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SouthKoreaAdditionalInfo', name: 'SouthKoreaAdditionalInfo')
    SpainAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SpainAdditionalInfo', name: 'SpainAdditionalInfo')
    State = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#State', name: 'State', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    SupplementalTaxRegistration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistration', name: 'SupplementalTaxRegistration', traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationEntry', name: 'SupplementalTaxRegistrationEntry', traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationList', name: 'SupplementalTaxRegistrationList')
    SupplementalTaxRegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#SupplementalTaxRegistrationType', name: 'SupplementalTaxRegistrationType')
    TaxCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxCode', name: 'TaxCode', traits: {"smithy.api#pattern" => "^([0-9]{11}|[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])$"})
    TaxDocumentAccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentAccessToken', name: 'TaxDocumentAccessToken', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxDocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentMetadata', name: 'TaxDocumentMetadata')
    TaxDocumentMetadatas = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentMetadatas', name: 'TaxDocumentMetadatas', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TaxDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxDocumentName', name: 'TaxDocumentName', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxExemption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemption', name: 'TaxExemption')
    TaxExemptionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionDetails', name: 'TaxExemptionDetails')
    TaxExemptionDetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionDetailsMap', name: 'TaxExemptionDetailsMap')
    TaxExemptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionType', name: 'TaxExemptionType')
    TaxExemptionTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxExemptionTypes', name: 'TaxExemptionTypes')
    TaxExemptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxExemptions', name: 'TaxExemptions')
    TaxInformationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxInformationNumber', name: 'TaxInformationNumber', traits: {"smithy.api#pattern" => "^[A-Z]{1,2}[0-9]{1,11}$"})
    TaxInheritanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxInheritanceDetails', name: 'TaxInheritanceDetails')
    TaxOffice = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#TaxOffice', name: 'TaxOffice', traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxRegistration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistration', name: 'TaxRegistration', traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationDocFile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocFile', name: 'TaxRegistrationDocFile')
    TaxRegistrationDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocument', name: 'TaxRegistrationDocument')
    TaxRegistrationDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationDocuments', name: 'TaxRegistrationDocuments', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    TaxRegistrationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationEntry', name: 'TaxRegistrationEntry', traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationNumberType', name: 'TaxRegistrationNumberType')
    TaxRegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationStatus', name: 'TaxRegistrationStatus')
    TaxRegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationType', name: 'TaxRegistrationType')
    TaxRegistrationWithJurisdiction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TaxRegistrationWithJurisdiction', name: 'TaxRegistrationWithJurisdiction', traits: {"smithy.api#sensitive" => {}})
    TurkeyAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#TurkeyAdditionalInfo', name: 'TurkeyAdditionalInfo')
    UkraineAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#UkraineAdditionalInfo', name: 'UkraineAdditionalInfo')
    UkraineTrnType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#UkraineTrnType', name: 'UkraineTrnType')
    UniqueIdentificationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#UniqueIdentificationNumber', name: 'UniqueIdentificationNumber', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{39}$"})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^https.*\\S.*$"})
    UzbekistanAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#UzbekistanAdditionalInfo', name: 'UzbekistanAdditionalInfo')
    UzbekistanTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#UzbekistanTaxRegistrationNumberType', name: 'UzbekistanTaxRegistrationNumberType')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionErrorCode', name: 'ValidationExceptionErrorCode')
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.taxsettings#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    VatRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.taxsettings#VatRegistrationNumber', name: 'VatRegistrationNumber', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    VerificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#VerificationDetails', name: 'VerificationDetails')
    VietnamAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.taxsettings#VietnamAdditionalInfo', name: 'VietnamAdditionalInfo')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountDetails.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId'))
    AccountDetails.add_member(:tax_registration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationWithJurisdiction, location_name: 'taxRegistration'))
    AccountDetails.add_member(:tax_inheritance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDetails, location_name: 'taxInheritanceDetails'))
    AccountDetails.add_member(:account_meta_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountMetaData, location_name: 'accountMetaData'))
    AccountDetails.type = Types::AccountDetails
    AccountDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetails)
    AccountIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountMetaData.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'accountName'))
    AccountMetaData.add_member(:seller, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Seller, location_name: 'seller'))
    AccountMetaData.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address'))
    AccountMetaData.add_member(:address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleType, location_name: 'addressType'))
    AccountMetaData.add_member(:address_role_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleMap, location_name: 'addressRoleMap'))
    AccountMetaData.type = Types::AccountMetaData
    AdditionalInfoRequest.add_member(:malaysia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: 'malaysiaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:israel_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: 'israelAdditionalInfo'))
    AdditionalInfoRequest.add_member(:estonia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: 'estoniaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:canada_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: 'canadaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:spain_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: 'spainAdditionalInfo'))
    AdditionalInfoRequest.add_member(:kenya_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: 'kenyaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:south_korea_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: 'southKoreaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:turkey_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: 'turkeyAdditionalInfo'))
    AdditionalInfoRequest.add_member(:georgia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: 'georgiaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:italy_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: 'italyAdditionalInfo'))
    AdditionalInfoRequest.add_member(:romania_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: 'romaniaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:ukraine_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: 'ukraineAdditionalInfo'))
    AdditionalInfoRequest.add_member(:poland_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: 'polandAdditionalInfo'))
    AdditionalInfoRequest.add_member(:saudi_arabia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: 'saudiArabiaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:indonesia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaAdditionalInfo, location_name: 'indonesiaAdditionalInfo'))
    AdditionalInfoRequest.add_member(:vietnam_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: 'vietnamAdditionalInfo'))
    AdditionalInfoRequest.add_member(:egypt_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: 'egyptAdditionalInfo'))
    AdditionalInfoRequest.add_member(:greece_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: 'greeceAdditionalInfo'))
    AdditionalInfoRequest.add_member(:uzbekistan_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanAdditionalInfo, location_name: 'uzbekistanAdditionalInfo'))
    AdditionalInfoRequest.type = Types::AdditionalInfoRequest
    AdditionalInfoResponse.add_member(:malaysia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaAdditionalInfo, location_name: 'malaysiaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:israel_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelAdditionalInfo, location_name: 'israelAdditionalInfo'))
    AdditionalInfoResponse.add_member(:estonia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EstoniaAdditionalInfo, location_name: 'estoniaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:canada_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaAdditionalInfo, location_name: 'canadaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:brazil_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrazilAdditionalInfo, location_name: 'brazilAdditionalInfo'))
    AdditionalInfoResponse.add_member(:spain_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpainAdditionalInfo, location_name: 'spainAdditionalInfo'))
    AdditionalInfoResponse.add_member(:kenya_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KenyaAdditionalInfo, location_name: 'kenyaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:south_korea_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SouthKoreaAdditionalInfo, location_name: 'southKoreaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:turkey_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TurkeyAdditionalInfo, location_name: 'turkeyAdditionalInfo'))
    AdditionalInfoResponse.add_member(:georgia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeorgiaAdditionalInfo, location_name: 'georgiaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:italy_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItalyAdditionalInfo, location_name: 'italyAdditionalInfo'))
    AdditionalInfoResponse.add_member(:romania_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RomaniaAdditionalInfo, location_name: 'romaniaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:ukraine_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineAdditionalInfo, location_name: 'ukraineAdditionalInfo'))
    AdditionalInfoResponse.add_member(:poland_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolandAdditionalInfo, location_name: 'polandAdditionalInfo'))
    AdditionalInfoResponse.add_member(:saudi_arabia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaAdditionalInfo, location_name: 'saudiArabiaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:india_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndiaAdditionalInfo, location_name: 'indiaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:indonesia_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaAdditionalInfo, location_name: 'indonesiaAdditionalInfo'))
    AdditionalInfoResponse.add_member(:vietnam_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VietnamAdditionalInfo, location_name: 'vietnamAdditionalInfo'))
    AdditionalInfoResponse.add_member(:egypt_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EgyptAdditionalInfo, location_name: 'egyptAdditionalInfo'))
    AdditionalInfoResponse.add_member(:greece_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GreeceAdditionalInfo, location_name: 'greeceAdditionalInfo'))
    AdditionalInfoResponse.add_member(:uzbekistan_additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanAdditionalInfo, location_name: 'uzbekistanAdditionalInfo'))
    AdditionalInfoResponse.type = Types::AdditionalInfoResponse
    Address.add_member(:address_line1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine1, location_name: 'addressLine1', traits: {"smithy.api#required" => {}}))
    Address.add_member(:address_line2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine2, location_name: 'addressLine2'))
    Address.add_member(:address_line3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine3, location_name: 'addressLine3'))
    Address.add_member(:district_or_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: District, location_name: 'districtOrCounty'))
    Address.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: City, location_name: 'city', traits: {"smithy.api#required" => {}}))
    Address.add_member(:state_or_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'stateOrRegion'))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostalCode, location_name: 'postalCode', traits: {"smithy.api#required" => {}}))
    Address.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'countryCode', traits: {"smithy.api#required" => {}}))
    Address.type = Types::Address
    AddressRoleMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressRoleType)
    AddressRoleMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jurisdiction)
    AddressRoleType.add_member(:tax_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_ADDRESS', traits: {"smithy.api#enumValue" => "TaxAddress"}))
    AddressRoleType.add_member(:billing_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_ADDRESS', traits: {"smithy.api#enumValue" => "BillingAddress"}))
    AddressRoleType.add_member(:contact_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT_ADDRESS', traits: {"smithy.api#enumValue" => "ContactAddress"}))
    AttachmentUploadException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AttachmentUploadException.type = Types::AttachmentUploadException
    Authorities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authority)
    Authority.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'country', traits: {"smithy.api#required" => {}}))
    Authority.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'state'))
    Authority.type = Types::Authority
    BatchDeleteTaxRegistrationError.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    BatchDeleteTaxRegistrationError.type = Types::BatchDeleteTaxRegistrationError
    BatchDeleteTaxRegistrationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationError)
    BatchDeleteTaxRegistrationRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationRequest.type = Types::BatchDeleteTaxRegistrationRequest
    BatchDeleteTaxRegistrationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationErrors, location_name: 'errors', traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationResponse.type = Types::BatchDeleteTaxRegistrationResponse
    BatchGetTaxExemptionsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchGetTaxExemptionsRequest.type = Types::BatchGetTaxExemptionsRequest
    BatchGetTaxExemptionsResponse.add_member(:tax_exemption_details_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: 'taxExemptionDetailsMap'))
    BatchGetTaxExemptionsResponse.add_member(:failed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'failedAccounts'))
    BatchGetTaxExemptionsResponse.type = Types::BatchGetTaxExemptionsResponse
    BatchPutTaxRegistrationError.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    BatchPutTaxRegistrationError.type = Types::BatchPutTaxRegistrationError
    BatchPutTaxRegistrationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationError)
    BatchPutTaxRegistrationRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.type = Types::BatchPutTaxRegistrationRequest
    BatchPutTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status'))
    BatchPutTaxRegistrationResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationErrors, location_name: 'errors', traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationResponse.type = Types::BatchPutTaxRegistrationResponse
    BrazilAdditionalInfo.add_member(:ccm_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CcmCode, location_name: 'ccmCode'))
    BrazilAdditionalInfo.add_member(:legal_nature_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalNatureCode, location_name: 'legalNatureCode'))
    BrazilAdditionalInfo.type = Types::BrazilAdditionalInfo
    CanadaAdditionalInfo.add_member(:provincial_sales_tax_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaProvincialSalesTaxIdString, location_name: 'provincialSalesTaxId'))
    CanadaAdditionalInfo.add_member(:canada_quebec_sales_tax_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaQuebecSalesTaxNumberString, location_name: 'canadaQuebecSalesTaxNumber'))
    CanadaAdditionalInfo.add_member(:canada_retail_sales_tax_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanadaRetailSalesTaxNumberString, location_name: 'canadaRetailSalesTaxNumber'))
    CanadaAdditionalInfo.add_member(:is_reseller_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isResellerAccount'))
    CanadaAdditionalInfo.type = Types::CanadaAdditionalInfo
    CaseCreationLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    CaseCreationLimitExceededException.type = Types::CaseCreationLimitExceededException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DeleteSupplementalTaxRegistrationRequest.add_member(:authority_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#required" => {}}))
    DeleteSupplementalTaxRegistrationRequest.type = Types::DeleteSupplementalTaxRegistrationRequest
    DeleteSupplementalTaxRegistrationResponse.type = Types::DeleteSupplementalTaxRegistrationResponse
    DeleteTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId'))
    DeleteTaxRegistrationRequest.type = Types::DeleteTaxRegistrationRequest
    DeleteTaxRegistrationResponse.type = Types::DeleteTaxRegistrationResponse
    DestinationS3Location.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#required" => {}}))
    DestinationS3Location.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'prefix'))
    DestinationS3Location.type = Types::DestinationS3Location
    EgyptAdditionalInfo.add_member(:unique_identification_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdentificationNumber, location_name: 'uniqueIdentificationNumber'))
    EgyptAdditionalInfo.add_member(:unique_identification_number_expiration_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateString, location_name: 'uniqueIdentificationNumberExpirationDate'))
    EgyptAdditionalInfo.type = Types::EgyptAdditionalInfo
    EntityExemptionAccountStatus.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "None"}))
    EntityExemptionAccountStatus.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Valid', traits: {"smithy.api#enumValue" => "Valid"}))
    EntityExemptionAccountStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "Expired"}))
    EntityExemptionAccountStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    EstoniaAdditionalInfo.add_member(:registry_commercial_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCommercialCode, location_name: 'registryCommercialCode', traits: {"smithy.api#required" => {}}))
    EstoniaAdditionalInfo.type = Types::EstoniaAdditionalInfo
    ExemptionCertificate.add_member(:document_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionDocumentName, location_name: 'documentName', traits: {"smithy.api#required" => {}}))
    ExemptionCertificate.add_member(:document_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionFileBlob, location_name: 'documentFile', traits: {"smithy.api#required" => {}}))
    ExemptionCertificate.type = Types::ExemptionCertificate
    GeorgiaAdditionalInfo.add_member(:person_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonType, location_name: 'personType', traits: {"smithy.api#required" => {}}))
    GeorgiaAdditionalInfo.type = Types::GeorgiaAdditionalInfo
    GetTaxExemptionTypesRequest.type = Types::GetTaxExemptionTypesRequest
    GetTaxExemptionTypesResponse.add_member(:tax_exemption_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionTypes, location_name: 'taxExemptionTypes'))
    GetTaxExemptionTypesResponse.type = Types::GetTaxExemptionTypesResponse
    GetTaxInheritanceRequest.type = Types::GetTaxInheritanceRequest
    GetTaxInheritanceResponse.add_member(:heritage_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeritageStatus, location_name: 'heritageStatus'))
    GetTaxInheritanceResponse.type = Types::GetTaxInheritanceResponse
    GetTaxRegistrationDocumentRequest.add_member(:destination_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationS3Location, location_name: 'destinationS3Location'))
    GetTaxRegistrationDocumentRequest.add_member(:tax_document_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadata, location_name: 'taxDocumentMetadata', traits: {"smithy.api#required" => {}}))
    GetTaxRegistrationDocumentRequest.type = Types::GetTaxRegistrationDocumentRequest
    GetTaxRegistrationDocumentResponse.add_member(:destination_file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationFilePath, location_name: 'destinationFilePath'))
    GetTaxRegistrationDocumentResponse.add_member(:presigned_s3_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'presignedS3Url'))
    GetTaxRegistrationDocumentResponse.type = Types::GetTaxRegistrationDocumentResponse
    GetTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId'))
    GetTaxRegistrationRequest.type = Types::GetTaxRegistrationRequest
    GetTaxRegistrationResponse.add_member(:tax_registration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistration, location_name: 'taxRegistration'))
    GetTaxRegistrationResponse.type = Types::GetTaxRegistrationResponse
    GreeceAdditionalInfo.add_member(:contracting_authority_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContractingAuthorityCode, location_name: 'contractingAuthorityCode'))
    GreeceAdditionalInfo.type = Types::GreeceAdditionalInfo
    HeritageStatus.add_member(:opt_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OptIn', traits: {"smithy.api#enumValue" => "OptIn"}))
    HeritageStatus.add_member(:opt_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OptOut', traits: {"smithy.api#enumValue" => "OptOut"}))
    IndiaAdditionalInfo.add_member(:pan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pan, location_name: 'pan'))
    IndiaAdditionalInfo.type = Types::IndiaAdditionalInfo
    IndonesiaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndonesiaTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType'))
    IndonesiaAdditionalInfo.add_member(:ppn_exception_designation_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PpnExceptionDesignationCode, location_name: 'ppnExceptionDesignationCode'))
    IndonesiaAdditionalInfo.add_member(:decision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecisionNumber, location_name: 'decisionNumber'))
    IndonesiaAdditionalInfo.type = Types::IndonesiaAdditionalInfo
    IndonesiaTaxRegistrationNumberType.add_member(:nik, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NIK', traits: {"smithy.api#enumValue" => "NIK"}))
    IndonesiaTaxRegistrationNumberType.add_member(:passport_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSPORT_NUMBER', traits: {"smithy.api#enumValue" => "PassportNumber"}))
    IndonesiaTaxRegistrationNumberType.add_member(:npwp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NPWP', traits: {"smithy.api#enumValue" => "NPWP"}))
    IndonesiaTaxRegistrationNumberType.add_member(:nitku, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NITKU', traits: {"smithy.api#enumValue" => "NITKU"}))
    Industries.add_member(:circulating_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CIRCULATING_ORG', traits: {"smithy.api#enumValue" => "CirculatingOrg"}))
    Industries.add_member(:professional_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFESSIONAL_ORG', traits: {"smithy.api#enumValue" => "ProfessionalOrg"}))
    Industries.add_member(:banks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BANKS', traits: {"smithy.api#enumValue" => "Banks"}))
    Industries.add_member(:insurance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSURANCE', traits: {"smithy.api#enumValue" => "Insurance"}))
    Industries.add_member(:pension_and_benefit_funds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENSION_AND_BENEFIT_FUNDS', traits: {"smithy.api#enumValue" => "PensionAndBenefitFunds"}))
    Industries.add_member(:development_agencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVELOPMENT_AGENCIES', traits: {"smithy.api#enumValue" => "DevelopmentAgencies"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IsraelAdditionalInfo.add_member(:dealer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelDealerType, location_name: 'dealerType', traits: {"smithy.api#required" => {}}))
    IsraelAdditionalInfo.add_member(:customer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsraelCustomerType, location_name: 'customerType', traits: {"smithy.api#required" => {}}))
    IsraelAdditionalInfo.type = Types::IsraelAdditionalInfo
    IsraelCustomerType.add_member(:business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    IsraelCustomerType.add_member(:individual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    IsraelDealerType.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "Authorized"}))
    IsraelDealerType.add_member(:non_authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_AUTHORIZED', traits: {"smithy.api#enumValue" => "Non-authorized"}))
    ItalyAdditionalInfo.add_member(:sdi_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SdiAccountId, location_name: 'sdiAccountId'))
    ItalyAdditionalInfo.add_member(:cig_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CigNumber, location_name: 'cigNumber'))
    ItalyAdditionalInfo.add_member(:cup_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CupNumber, location_name: 'cupNumber'))
    ItalyAdditionalInfo.add_member(:tax_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxCode, location_name: 'taxCode'))
    ItalyAdditionalInfo.type = Types::ItalyAdditionalInfo
    Jurisdiction.add_member(:state_or_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'stateOrRegion'))
    Jurisdiction.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'countryCode', traits: {"smithy.api#required" => {}}))
    Jurisdiction.type = Types::Jurisdiction
    KenyaAdditionalInfo.add_member(:person_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonType, location_name: 'personType', traits: {"smithy.api#required" => {}}))
    KenyaAdditionalInfo.type = Types::KenyaAdditionalInfo
    ListSupplementalTaxRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListSupplementalTaxRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListSupplementalTaxRegistrationsRequest.type = Types::ListSupplementalTaxRegistrationsRequest
    ListSupplementalTaxRegistrationsResponse.add_member(:tax_registrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationList, location_name: 'taxRegistrations', traits: {"smithy.api#required" => {}}))
    ListSupplementalTaxRegistrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListSupplementalTaxRegistrationsResponse.type = Types::ListSupplementalTaxRegistrationsResponse
    ListTaxExemptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListTaxExemptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListTaxExemptionsRequest.type = Types::ListTaxExemptionsRequest
    ListTaxExemptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListTaxExemptionsResponse.add_member(:tax_exemption_details_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetailsMap, location_name: 'taxExemptionDetailsMap'))
    ListTaxExemptionsResponse.type = Types::ListTaxExemptionsResponse
    ListTaxRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListTaxRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListTaxRegistrationsRequest.type = Types::ListTaxRegistrationsRequest
    ListTaxRegistrationsResponse.add_member(:account_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetailsList, location_name: 'accountDetails', traits: {"smithy.api#required" => {}}))
    ListTaxRegistrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenString, location_name: 'nextToken'))
    ListTaxRegistrationsResponse.type = Types::ListTaxRegistrationsResponse
    MalaysiaAdditionalInfo.add_member(:service_tax_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCodesList, location_name: 'serviceTaxCodes', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    MalaysiaAdditionalInfo.add_member(:tax_information_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInformationNumber, location_name: 'taxInformationNumber'))
    MalaysiaAdditionalInfo.add_member(:business_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessRegistrationNumber, location_name: 'businessRegistrationNumber'))
    MalaysiaAdditionalInfo.type = Types::MalaysiaAdditionalInfo
    MalaysiaServiceTaxCode.add_member(:consultancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSULTANCY', traits: {"smithy.api#enumValue" => "Consultancy"}))
    MalaysiaServiceTaxCode.add_member(:digital_svc_electronic_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIGITAL_SVC_ELECTRONIC_MEDIUM', traits: {"smithy.api#enumValue" => "Digital Service And Electronic Medium"}))
    MalaysiaServiceTaxCode.add_member(:it_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_SERVICES', traits: {"smithy.api#enumValue" => "IT Services"}))
    MalaysiaServiceTaxCode.add_member(:training_or_coaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRAINING_OR_COACHING', traits: {"smithy.api#enumValue" => "Training Or Coaching"}))
    MalaysiaServiceTaxCodesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalaysiaServiceTaxCode)
    PersonType.add_member(:legal_person, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGAL_PERSON', traits: {"smithy.api#enumValue" => "Legal Person"}))
    PersonType.add_member(:physical_person, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHYSICAL_PERSON', traits: {"smithy.api#enumValue" => "Physical Person"}))
    PersonType.add_member(:business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    PolandAdditionalInfo.add_member(:individual_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndividualRegistrationNumber, location_name: 'individualRegistrationNumber'))
    PolandAdditionalInfo.add_member(:is_group_vat_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isGroupVatEnabled'))
    PolandAdditionalInfo.type = Types::PolandAdditionalInfo
    PutSupplementalTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationRequest.type = Types::PutSupplementalTaxRegistrationRequest
    PutSupplementalTaxRegistrationResponse.add_member(:authority_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.type = Types::PutSupplementalTaxRegistrationResponse
    PutTaxExemptionRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIds, location_name: 'accountIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:authority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authority, location_name: 'authority', traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'exemptionType', traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExemptionCertificate, location_name: 'exemptionCertificate', traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.type = Types::PutTaxExemptionRequest
    PutTaxExemptionResponse.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'caseId'))
    PutTaxExemptionResponse.type = Types::PutTaxExemptionResponse
    PutTaxInheritanceRequest.add_member(:heritage_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HeritageStatus, location_name: 'heritageStatus'))
    PutTaxInheritanceRequest.type = Types::PutTaxInheritanceRequest
    PutTaxInheritanceResponse.type = Types::PutTaxInheritanceResponse
    PutTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId'))
    PutTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationEntry, location_name: 'taxRegistrationEntry', traits: {"smithy.api#required" => {}}))
    PutTaxRegistrationRequest.type = Types::PutTaxRegistrationRequest
    PutTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status'))
    PutTaxRegistrationResponse.type = Types::PutTaxRegistrationResponse
    RegistrationType.add_member(:intra_eu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTRA_EU', traits: {"smithy.api#enumValue" => "Intra-EU"}))
    RegistrationType.add_member(:local, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "Local"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RomaniaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationNumberType, location_name: 'taxRegistrationNumberType', traits: {"smithy.api#required" => {}}))
    RomaniaAdditionalInfo.type = Types::RomaniaAdditionalInfo
    SaudiArabiaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SaudiArabiaTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType'))
    SaudiArabiaAdditionalInfo.type = Types::SaudiArabiaAdditionalInfo
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_identification_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_IDENTIFICATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxIdentificationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:commercial_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMERCIAL_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "CommercialRegistrationNumber"}))
    Sector.add_member(:business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    Sector.add_member(:individual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    Sector.add_member(:public_institutions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_INSTITUTIONS', traits: {"smithy.api#enumValue" => "Government"}))
    SourceS3Location.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#required" => {}}))
    SourceS3Location.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#required" => {}}))
    SourceS3Location.type = Types::SourceS3Location
    SouthKoreaAdditionalInfo.add_member(:business_representative_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessRepresentativeName, location_name: 'businessRepresentativeName', traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:line_of_business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LineOfBusiness, location_name: 'lineOfBusiness', traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:item_of_business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemOfBusiness, location_name: 'itemOfBusiness', traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.type = Types::SouthKoreaAdditionalInfo
    SpainAdditionalInfo.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    SpainAdditionalInfo.type = Types::SpainAdditionalInfo
    SupplementalTaxRegistration.add_member(:registration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:authority_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'authorityId', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.type = Types::SupplementalTaxRegistration
    SupplementalTaxRegistrationEntry.add_member(:registration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'address', traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.type = Types::SupplementalTaxRegistrationEntry
    SupplementalTaxRegistrationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupplementalTaxRegistration)
    SupplementalTaxRegistrationType.add_member(:vat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAT', traits: {"smithy.api#enumValue" => "VAT"}))
    TaxDocumentMetadata.add_member(:tax_document_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentAccessToken, location_name: 'taxDocumentAccessToken', traits: {"smithy.api#required" => {}}))
    TaxDocumentMetadata.add_member(:tax_document_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentName, location_name: 'taxDocumentName', traits: {"smithy.api#required" => {}}))
    TaxDocumentMetadata.type = Types::TaxDocumentMetadata
    TaxDocumentMetadatas.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadata)
    TaxExemption.add_member(:authority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authority, location_name: 'authority', traits: {"smithy.api#required" => {}}))
    TaxExemption.add_member(:tax_exemption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionType, location_name: 'taxExemptionType', traits: {"smithy.api#required" => {}}))
    TaxExemption.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'effectiveDate'))
    TaxExemption.add_member(:expiration_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expirationDate'))
    TaxExemption.add_member(:system_effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'systemEffectiveDate'))
    TaxExemption.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityExemptionAccountStatus, location_name: 'status'))
    TaxExemption.type = Types::TaxExemption
    TaxExemptionDetails.add_member(:tax_exemptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptions, location_name: 'taxExemptions'))
    TaxExemptionDetails.add_member(:heritage_obtained_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'heritageObtainedDetails'))
    TaxExemptionDetails.add_member(:heritage_obtained_parent_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'heritageObtainedParentEntity'))
    TaxExemptionDetails.add_member(:heritage_obtained_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'heritageObtainedReason'))
    TaxExemptionDetails.type = Types::TaxExemptionDetails
    TaxExemptionDetailsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    TaxExemptionDetailsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionDetails)
    TaxExemptionType.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    TaxExemptionType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'description'))
    TaxExemptionType.add_member(:applicable_jurisdictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authorities, location_name: 'applicableJurisdictions'))
    TaxExemptionType.type = Types::TaxExemptionType
    TaxExemptionTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemptionType)
    TaxExemptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxExemption)
    TaxInheritanceDetails.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'parentEntityId'))
    TaxInheritanceDetails.add_member(:inheritance_obtained_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InheritanceObtainedReason, location_name: 'inheritanceObtainedReason'))
    TaxInheritanceDetails.type = Types::TaxInheritanceDetails
    TaxRegistration.add_member(:registration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:sector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector'))
    TaxRegistration.add_member(:tax_document_metadatas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: 'taxDocumentMetadatas'))
    TaxRegistration.add_member(:certified_email_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId'))
    TaxRegistration.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: 'additionalTaxInformation'))
    TaxRegistration.add_member(:legal_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'legalAddress', traits: {"smithy.api#required" => {}}))
    TaxRegistration.type = Types::TaxRegistration
    TaxRegistrationDocFile.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentName, location_name: 'fileName', traits: {"smithy.api#required" => {}}))
    TaxRegistrationDocFile.add_member(:file_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileBlob, location_name: 'fileContent', traits: {"smithy.api#required" => {}}))
    TaxRegistrationDocFile.type = Types::TaxRegistrationDocFile
    TaxRegistrationDocument.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceS3Location, location_name: 's3Location'))
    TaxRegistrationDocument.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocFile, location_name: 'file'))
    TaxRegistrationDocument.type = Types::TaxRegistrationDocument
    TaxRegistrationDocuments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocument)
    TaxRegistrationEntry.add_member(:registration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName'))
    TaxRegistrationEntry.add_member(:legal_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'legalAddress'))
    TaxRegistrationEntry.add_member(:sector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector'))
    TaxRegistrationEntry.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoRequest, location_name: 'additionalTaxInformation'))
    TaxRegistrationEntry.add_member(:verification_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationDetails, location_name: 'verificationDetails'))
    TaxRegistrationEntry.add_member(:certified_email_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId'))
    TaxRegistrationEntry.type = Types::TaxRegistrationEntry
    TaxRegistrationNumberType.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    TaxRegistrationNumberType.add_member(:local_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_REGISTRATION_NUMBER', traits: {"smithy.api#enumValue" => "LocalRegistrationNumber"}))
    TaxRegistrationStatus.add_member(:verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED', traits: {"smithy.api#enumValue" => "Verified"}))
    TaxRegistrationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    TaxRegistrationStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    TaxRegistrationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "Rejected"}))
    TaxRegistrationType.add_member(:vat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAT', traits: {"smithy.api#enumValue" => "VAT"}))
    TaxRegistrationType.add_member(:gst, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GST', traits: {"smithy.api#enumValue" => "GST"}))
    TaxRegistrationType.add_member(:cpf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPF', traits: {"smithy.api#enumValue" => "CPF"}))
    TaxRegistrationType.add_member(:cnpj, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CNPJ', traits: {"smithy.api#enumValue" => "CNPJ"}))
    TaxRegistrationType.add_member(:sst, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SST', traits: {"smithy.api#enumValue" => "SST"}))
    TaxRegistrationType.add_member(:tin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIN', traits: {"smithy.api#enumValue" => "TIN"}))
    TaxRegistrationType.add_member(:nric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NRIC', traits: {"smithy.api#enumValue" => "NRIC"}))
    TaxRegistrationWithJurisdiction.add_member(:registration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationId, location_name: 'registrationId', traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:registration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationType, location_name: 'registrationType', traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:legal_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalName, location_name: 'legalName', traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:sector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sector, location_name: 'sector'))
    TaxRegistrationWithJurisdiction.add_member(:tax_document_metadatas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxDocumentMetadatas, location_name: 'taxDocumentMetadatas'))
    TaxRegistrationWithJurisdiction.add_member(:certified_email_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertifiedEmailId, location_name: 'certifiedEmailId'))
    TaxRegistrationWithJurisdiction.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoResponse, location_name: 'additionalTaxInformation'))
    TaxRegistrationWithJurisdiction.add_member(:jurisdiction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jurisdiction, location_name: 'jurisdiction', traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.type = Types::TaxRegistrationWithJurisdiction
    TurkeyAdditionalInfo.add_member(:tax_office, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxOffice, location_name: 'taxOffice'))
    TurkeyAdditionalInfo.add_member(:kep_email_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KepEmailId, location_name: 'kepEmailId'))
    TurkeyAdditionalInfo.add_member(:secondary_tax_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryTaxId, location_name: 'secondaryTaxId'))
    TurkeyAdditionalInfo.add_member(:industries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Industries, location_name: 'industries'))
    TurkeyAdditionalInfo.type = Types::TurkeyAdditionalInfo
    UkraineAdditionalInfo.add_member(:ukraine_trn_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UkraineTrnType, location_name: 'ukraineTrnType', traits: {"smithy.api#required" => {}}))
    UkraineAdditionalInfo.type = Types::UkraineAdditionalInfo
    UkraineTrnType.add_member(:business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    UkraineTrnType.add_member(:individual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    UzbekistanAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UzbekistanTaxRegistrationNumberType, location_name: 'taxRegistrationNumberType'))
    UzbekistanAdditionalInfo.add_member(:vat_registration_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VatRegistrationNumber, location_name: 'vatRegistrationNumber'))
    UzbekistanAdditionalInfo.type = Types::UzbekistanAdditionalInfo
    UzbekistanTaxRegistrationNumberType.add_member(:business, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSINESS', traits: {"smithy.api#enumValue" => "Business"}))
    UzbekistanTaxRegistrationNumberType.add_member(:individual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDIVIDUAL', traits: {"smithy.api#enumValue" => "Individual"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorCode.add_member(:malformed_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_TOKEN', traits: {"smithy.api#enumValue" => "MalformedToken"}))
    ValidationExceptionErrorCode.add_member(:expired_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED_TOKEN', traits: {"smithy.api#enumValue" => "ExpiredToken"}))
    ValidationExceptionErrorCode.add_member(:invalid_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TOKEN', traits: {"smithy.api#enumValue" => "InvalidToken"}))
    ValidationExceptionErrorCode.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionErrorCode.add_member(:missing_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_INPUT', traits: {"smithy.api#enumValue" => "MissingInput"}))
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VerificationDetails.add_member(:date_of_birth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateOfBirth, location_name: 'dateOfBirth'))
    VerificationDetails.add_member(:tax_registration_documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaxRegistrationDocuments, location_name: 'taxRegistrationDocuments'))
    VerificationDetails.type = Types::VerificationDetails
    VietnamAdditionalInfo.add_member(:enterprise_identification_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnterpriseIdentificationNumber, location_name: 'enterpriseIdentificationNumber'))
    VietnamAdditionalInfo.add_member(:electronic_transaction_code_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElectronicTransactionCodeNumber, location_name: 'electronicTransactionCodeNumber'))
    VietnamAdditionalInfo.add_member(:payment_voucher_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentVoucherNumber, location_name: 'paymentVoucherNumber'))
    VietnamAdditionalInfo.add_member(:payment_voucher_number_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateString, location_name: 'paymentVoucherNumberDate'))
    VietnamAdditionalInfo.type = Types::VietnamAdditionalInfo

    TaxSettings = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.taxsettings#TaxSettings"
      service.name = "TaxSettings"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "TaxSettings", "arnNamespace" => "tax", "cloudTrailEventSource" => "tax.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "tax"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type,X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "Access-Control-Allow-Origin", "X-Amz-Content-Sha256", "Amz-Sdk-Invocation-Id", "Amz-Sdk-Request", "X-Amz-User-Agent"]}, "smithy.api#title" => "Tax Settings"}
      service.add_operation(:batch_delete_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchDeleteTaxRegistration"
        operation.name = "BatchDeleteTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchDeleteTaxRegistration"}}
      end)
      service.add_operation(:batch_get_tax_exemptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchGetTaxExemptions"
        operation.name = "BatchGetTaxExemptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetTaxExemptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants batch get active tax exemptions for a given list of accounts permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchGetTaxExemptions"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_put_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchPutTaxRegistration"
        operation.name = "BatchPutTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchPutTaxRegistration"}}
      end)
      service.add_operation(:delete_supplemental_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteSupplementalTaxRegistration"
        operation.name = "DeleteSupplementalTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSupplementalTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteSupplementalTaxRegistration"}}
      end)
      service.add_operation(:delete_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteTaxRegistration"
        operation.name = "DeleteTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteTaxRegistration"}}
      end)
      service.add_operation(:get_tax_exemption_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxExemptionTypes"
        operation.name = "GetTaxExemptionTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxExemptionTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxExemptionTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants get supported tax exemption types permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxExemptionTypes"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_inheritance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxInheritance"
        operation.name = "GetTaxInheritance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxInheritanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxInheritanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants get tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxInheritance"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistration"
        operation.name = "GetTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistrationDocument"
        operation.name = "GetTaxRegistrationDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTaxRegistrationDocumentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistrationDocument"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_supplemental_tax_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListSupplementalTaxRegistrations"
        operation.name = "ListSupplementalTaxRegistrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupplementalTaxRegistrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListSupplementalTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupplementalTaxRegistrations.new
      end)
      service.add_operation(:list_tax_exemptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxExemptions"
        operation.name = "ListTaxExemptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxExemptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxExemptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants list the active tax exemptions for a CB family permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxExemptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxExemptions.new
      end)
      service.add_operation(:list_tax_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxRegistrations"
        operation.name = "ListTaxRegistrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxRegistrationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaxRegistrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxRegistrations.new
      end)
      service.add_operation(:put_supplemental_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutSupplementalTaxRegistration"
        operation.name = "PutSupplementalTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSupplementalTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutSupplementalTaxRegistration"}}
      end)
      service.add_operation(:put_tax_exemption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxExemption"
        operation.name = "PutTaxExemption"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxExemptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxExemptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentUploadException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseCreationLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:UpdateExemptions", "support:CreateCase", "support:AddAttachmentsToSet"], "documentation" => "Grants create customer tax exemption case permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxExemption"}}
      end)
      service.add_operation(:put_tax_inheritance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxInheritance"
        operation.name = "PutTaxInheritance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxInheritanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxInheritanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants put tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxInheritance"}}
      end)
      service.add_operation(:put_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxRegistration"
        operation.name = "PutTaxRegistration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxRegistrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutTaxRegistrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxRegistration"}}
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
