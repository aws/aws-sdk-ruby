# frozen_string_literal: true

# This is generated code!

module Aws::TaxSettings
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AccountDetails", name: "AccountDetails", traits: {"smithy.api#sensitive" => {}})
    AccountDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#AccountDetailsList", name: "AccountDetailsList")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#AccountIds", name: "AccountIds")
    AccountMetaData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AccountMetaData", name: "AccountMetaData", traits: {"smithy.api#sensitive" => {}})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#AccountName", name: "AccountName", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    AdditionalInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AdditionalInfoRequest", name: "AdditionalInfoRequest")
    AdditionalInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AdditionalInfoResponse", name: "AdditionalInfoResponse")
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#Address", name: "Address")
    AddressLine1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#AddressLine1", name: "AddressLine1", traits: {"smithy.api#length" => {"min" => 1, "max" => 180}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#AddressLine2", name: "AddressLine2", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressLine3 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#AddressLine3", name: "AddressLine3", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    AddressRoleMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.taxsettings#AddressRoleMap", name: "AddressRoleMap")
    AddressRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#AddressRoleType", name: "AddressRoleType")
    AttachmentUploadException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#AttachmentUploadException", name: "AttachmentUploadException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Authorities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#Authorities", name: "Authorities")
    Authority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#Authority", name: "Authority")
    BatchDeleteTaxRegistrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchDeleteTaxRegistrationError", name: "BatchDeleteTaxRegistrationError")
    BatchDeleteTaxRegistrationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#BatchDeleteTaxRegistrationErrors", name: "BatchDeleteTaxRegistrationErrors")
    BatchDeleteTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchDeleteTaxRegistrationRequest", name: "BatchDeleteTaxRegistrationRequest")
    BatchDeleteTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchDeleteTaxRegistrationResponse", name: "BatchDeleteTaxRegistrationResponse")
    BatchGetTaxExemptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchGetTaxExemptionsRequest", name: "BatchGetTaxExemptionsRequest")
    BatchGetTaxExemptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchGetTaxExemptionsResponse", name: "BatchGetTaxExemptionsResponse")
    BatchPutTaxRegistrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchPutTaxRegistrationError", name: "BatchPutTaxRegistrationError")
    BatchPutTaxRegistrationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#BatchPutTaxRegistrationErrors", name: "BatchPutTaxRegistrationErrors")
    BatchPutTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchPutTaxRegistrationRequest", name: "BatchPutTaxRegistrationRequest")
    BatchPutTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BatchPutTaxRegistrationResponse", name: "BatchPutTaxRegistrationResponse")
    BelgiumAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BelgiumAdditionalInfo", name: "BelgiumAdditionalInfo")
    BrazilAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#BrazilAdditionalInfo", name: "BrazilAdditionalInfo")
    BusinessNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#BusinessNumber", name: "BusinessNumber", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{1,12}$"})
    BusinessRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#BusinessRegistrationNumber", name: "BusinessRegistrationNumber", traits: {"smithy.api#pattern" => "^([0-9]{12}|LL[0-9]{5})$"})
    BusinessRepresentativeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#BusinessRepresentativeName", name: "BusinessRepresentativeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    CanadaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#CanadaAdditionalInfo", name: "CanadaAdditionalInfo")
    CanadaProvincialSalesTaxIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CanadaProvincialSalesTaxIdString", name: "CanadaProvincialSalesTaxIdString", traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^([0-9A-Z/-]+)$"})
    CanadaQuebecSalesTaxNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CanadaQuebecSalesTaxNumberString", name: "CanadaQuebecSalesTaxNumberString", traits: {"smithy.api#pattern" => "^([0-9]{10})(TQ[0-9]{4})?$"})
    CanadaRetailSalesTaxNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CanadaRetailSalesTaxNumberString", name: "CanadaRetailSalesTaxNumberString", traits: {"smithy.api#pattern" => "^([0-9]{6}-[0-9]{1})$"})
    CaseCreationLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#CaseCreationLimitExceededException", name: "CaseCreationLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CcmCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CcmCode", name: "CcmCode", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    CertifiedEmailId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CertifiedEmailId", name: "CertifiedEmailId", traits: {"smithy.api#pattern" => "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}$"})
    ChileAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ChileAdditionalInfo", name: "ChileAdditionalInfo")
    ChileDocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#ChileDocumentType", name: "ChileDocumentType")
    CigNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CigNumber", name: "CigNumber", traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    City = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#City", name: "City", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContractingAuthorityCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ContractingAuthorityCode", name: "ContractingAuthorityCode", traits: {"smithy.api#pattern" => "^\\d{4}\\.[A-Z]\\d{5}\\.\\d{4}$"})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    CupNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#CupNumber", name: "CupNumber", traits: {"smithy.api#pattern" => "^([0-9A-Z]{1,15})$"})
    CustomerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#CustomerType", name: "CustomerType")
    DateOfBirth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#DateOfBirth", name: "DateOfBirth", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#DateString", name: "DateString", traits: {"smithy.api#pattern" => "^(\\d{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$"})
    DecisionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#DecisionNumber", name: "DecisionNumber", traits: {"smithy.api#pattern" => "^([a-zA-Z0-9/.\\-]{0,200})$"})
    DeleteSupplementalTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationRequest", name: "DeleteSupplementalTaxRegistrationRequest")
    DeleteSupplementalTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#DeleteSupplementalTaxRegistrationResponse", name: "DeleteSupplementalTaxRegistrationResponse")
    DeleteTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#DeleteTaxRegistrationRequest", name: "DeleteTaxRegistrationRequest")
    DeleteTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#DeleteTaxRegistrationResponse", name: "DeleteTaxRegistrationResponse")
    DestinationFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#DestinationFilePath", name: "DestinationFilePath", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    DestinationS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#DestinationS3Location", name: "DestinationS3Location")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    District = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#District", name: "District", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    EgyptAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#EgyptAdditionalInfo", name: "EgyptAdditionalInfo")
    ElectronicTransactionCodeNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ElectronicTransactionCodeNumber", name: "ElectronicTransactionCodeNumber", traits: {"smithy.api#pattern" => "^\\d{17}$"})
    EnterpriseIdentificationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#EnterpriseIdentificationNumber", name: "EnterpriseIdentificationNumber", traits: {"smithy.api#pattern" => "^(\\d{10}|(\\d{10}-\\d{3}))$"})
    EntityExemptionAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#EntityExemptionAccountStatus", name: "EntityExemptionAccountStatus")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    EstoniaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#EstoniaAdditionalInfo", name: "EstoniaAdditionalInfo")
    ExemptionCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ExemptionCertificate", name: "ExemptionCertificate")
    ExemptionDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ExemptionDocumentName", name: "ExemptionDocumentName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^([A-Za-z0-9_.-]+)\\.([pP][dD][fF]|[jJ][pP][gG]|[pP][nN][gG])$"})
    ExemptionFileBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.taxsettings#ExemptionFileBlob", name: "ExemptionFileBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#FieldName", name: "FieldName", traits: {"smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    FileBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.taxsettings#FileBlob", name: "FileBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}})
    FranceAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#FranceAdditionalInfo", name: "FranceAdditionalInfo")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    GeorgiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GeorgiaAdditionalInfo", name: "GeorgiaAdditionalInfo")
    GetTaxExemptionTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxExemptionTypesRequest", name: "GetTaxExemptionTypesRequest")
    GetTaxExemptionTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxExemptionTypesResponse", name: "GetTaxExemptionTypesResponse")
    GetTaxInheritanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxInheritanceRequest", name: "GetTaxInheritanceRequest")
    GetTaxInheritanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxInheritanceResponse", name: "GetTaxInheritanceResponse")
    GetTaxRegistrationDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxRegistrationDocumentRequest", name: "GetTaxRegistrationDocumentRequest")
    GetTaxRegistrationDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxRegistrationDocumentResponse", name: "GetTaxRegistrationDocumentResponse")
    GetTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxRegistrationRequest", name: "GetTaxRegistrationRequest")
    GetTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GetTaxRegistrationResponse", name: "GetTaxRegistrationResponse")
    GreeceAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#GreeceAdditionalInfo", name: "GreeceAdditionalInfo")
    HeritageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#HeritageStatus", name: "HeritageStatus")
    IndiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#IndiaAdditionalInfo", name: "IndiaAdditionalInfo")
    IndividualRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#IndividualRegistrationNumber", name: "IndividualRegistrationNumber", traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    IndonesiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#IndonesiaAdditionalInfo", name: "IndonesiaAdditionalInfo")
    IndonesiaTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#IndonesiaTaxRegistrationNumberType", name: "IndonesiaTaxRegistrationNumberType")
    Industries = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#Industries", name: "Industries")
    InheritanceObtainedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#InheritanceObtainedReason", name: "InheritanceObtainedReason", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsraelAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#IsraelAdditionalInfo", name: "IsraelAdditionalInfo")
    IsraelCustomerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#IsraelCustomerType", name: "IsraelCustomerType")
    IsraelDealerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#IsraelDealerType", name: "IsraelDealerType")
    ItalyAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ItalyAdditionalInfo", name: "ItalyAdditionalInfo")
    ItemOfBusiness = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#ItemOfBusiness", name: "ItemOfBusiness", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    Jurisdiction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#Jurisdiction", name: "Jurisdiction")
    KenyaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#KenyaAdditionalInfo", name: "KenyaAdditionalInfo")
    KepEmailId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#KepEmailId", name: "KepEmailId", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    LegalName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#LegalName", name: "LegalName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    LegalNatureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#LegalNatureCode", name: "LegalNatureCode", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^\\d+$"})
    LineOfBusiness = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#LineOfBusiness", name: "LineOfBusiness", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9\\u3130-\\u318F\\uAC00-\\uD7AF,.( )-\\\\s]*$"})
    ListSupplementalTaxRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsRequest", name: "ListSupplementalTaxRegistrationsRequest")
    ListSupplementalTaxRegistrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListSupplementalTaxRegistrationsResponse", name: "ListSupplementalTaxRegistrationsResponse")
    ListTaxExemptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListTaxExemptionsRequest", name: "ListTaxExemptionsRequest")
    ListTaxExemptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListTaxExemptionsResponse", name: "ListTaxExemptionsResponse")
    ListTaxRegistrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListTaxRegistrationsRequest", name: "ListTaxRegistrationsRequest")
    ListTaxRegistrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ListTaxRegistrationsResponse", name: "ListTaxRegistrationsResponse")
    MalaysiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#MalaysiaAdditionalInfo", name: "MalaysiaAdditionalInfo")
    MalaysiaServiceTaxCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#MalaysiaServiceTaxCode", name: "MalaysiaServiceTaxCode")
    MalaysiaServiceTaxCodesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#MalaysiaServiceTaxCodesList", name: "MalaysiaServiceTaxCodesList", traits: {"smithy.api#length" => {"max" => 4}, "smithy.api#uniqueItems" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.taxsettings#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MonacoAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#MonacoAdditionalInfo", name: "MonacoAdditionalInfo")
    PaginationTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#PaginationTokenString", name: "PaginationTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[-A-Za-z0-9_+\\=\\/]+$"})
    Pan = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#Pan", name: "Pan", traits: {"smithy.api#pattern" => "^[A-Z]{5}[0-9]{4}[A-Z]{1}$"})
    PaymentVoucherNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#PaymentVoucherNumber", name: "PaymentVoucherNumber", traits: {"smithy.api#pattern" => "^(\\d{17}|[A-Za-z]{3}\\d{13}|(?=[^A-Za-z]*[A-Za-z][^A-Za-z]*$)[0-9A-Za-z]{17})$"})
    PeppolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#PeppolId", name: "PeppolId", traits: {"smithy.api#pattern" => "^[0-9]{10}$"})
    PersonType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#PersonType", name: "PersonType")
    PhilippinesAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PhilippinesAdditionalInfo", name: "PhilippinesAdditionalInfo")
    PolandAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PolandAdditionalInfo", name: "PolandAdditionalInfo")
    PolandTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#PolandTaxRegistrationNumberType", name: "PolandTaxRegistrationNumberType")
    PostalCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#PostalCode", name: "PostalCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    PpnExceptionDesignationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#PpnExceptionDesignationCode", name: "PpnExceptionDesignationCode", traits: {"smithy.api#pattern" => "^(01|02|03|07|08)$"})
    PutSupplementalTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutSupplementalTaxRegistrationRequest", name: "PutSupplementalTaxRegistrationRequest")
    PutSupplementalTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutSupplementalTaxRegistrationResponse", name: "PutSupplementalTaxRegistrationResponse")
    PutTaxExemptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxExemptionRequest", name: "PutTaxExemptionRequest")
    PutTaxExemptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxExemptionResponse", name: "PutTaxExemptionResponse")
    PutTaxInheritanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxInheritanceRequest", name: "PutTaxInheritanceRequest")
    PutTaxInheritanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxInheritanceResponse", name: "PutTaxInheritanceResponse")
    PutTaxRegistrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxRegistrationRequest", name: "PutTaxRegistrationRequest")
    PutTaxRegistrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#PutTaxRegistrationResponse", name: "PutTaxRegistrationResponse")
    RegistrationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#RegistrationId", name: "RegistrationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    RegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#RegistrationType", name: "RegistrationType")
    RegistryCommercialCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#RegistryCommercialCode", name: "RegistryCommercialCode", traits: {"smithy.api#length" => {"min" => 8, "max" => 8}, "smithy.api#pattern" => "^\\d+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RomaniaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#RomaniaAdditionalInfo", name: "RomaniaAdditionalInfo")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*\\S.*$"})
    SaudiArabiaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SaudiArabiaAdditionalInfo", name: "SaudiArabiaAdditionalInfo")
    SaudiArabiaTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#SaudiArabiaTaxRegistrationNumberType", name: "SaudiArabiaTaxRegistrationNumberType")
    SdiAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#SdiAccountId", name: "SdiAccountId", traits: {"smithy.api#pattern" => "^[0-9A-Z]{6,7}$"})
    SecondaryTaxId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#SecondaryTaxId", name: "SecondaryTaxId", traits: {"smithy.api#pattern" => "^([0-9]{10})$"})
    Sector = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#Sector", name: "Sector")
    Seller = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#Seller", name: "Seller", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    SirenNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#SirenNumber", name: "SirenNumber", traits: {"smithy.api#pattern" => "^[0-9]{9}$"})
    SourceS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SourceS3Location", name: "SourceS3Location")
    SouthKoreaAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SouthKoreaAdditionalInfo", name: "SouthKoreaAdditionalInfo")
    SpainAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SpainAdditionalInfo", name: "SpainAdditionalInfo")
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#State", name: "State", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?!\\s*$)[\\s\\S]+$"})
    SupplementalTaxRegistration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SupplementalTaxRegistration", name: "SupplementalTaxRegistration", traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#SupplementalTaxRegistrationEntry", name: "SupplementalTaxRegistrationEntry", traits: {"smithy.api#sensitive" => {}})
    SupplementalTaxRegistrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#SupplementalTaxRegistrationList", name: "SupplementalTaxRegistrationList")
    SupplementalTaxRegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#SupplementalTaxRegistrationType", name: "SupplementalTaxRegistrationType")
    TaxCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#TaxCode", name: "TaxCode", traits: {"smithy.api#pattern" => "^([0-9]{11}|[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])$"})
    TaxDocumentAccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#TaxDocumentAccessToken", name: "TaxDocumentAccessToken", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxDocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxDocumentMetadata", name: "TaxDocumentMetadata")
    TaxDocumentMetadatas = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#TaxDocumentMetadatas", name: "TaxDocumentMetadatas", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TaxDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#TaxDocumentName", name: "TaxDocumentName", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxExemption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxExemption", name: "TaxExemption")
    TaxExemptionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxExemptionDetails", name: "TaxExemptionDetails")
    TaxExemptionDetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.taxsettings#TaxExemptionDetailsMap", name: "TaxExemptionDetailsMap")
    TaxExemptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxExemptionType", name: "TaxExemptionType")
    TaxExemptionTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#TaxExemptionTypes", name: "TaxExemptionTypes")
    TaxExemptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#TaxExemptions", name: "TaxExemptions")
    TaxInformationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#TaxInformationNumber", name: "TaxInformationNumber", traits: {"smithy.api#pattern" => "^(IG|C|CS|P|D|F|FA|PT|TA|TC|TN|TR|TP|J|LE)[0-9]{10,13}$"})
    TaxInheritanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxInheritanceDetails", name: "TaxInheritanceDetails")
    TaxOffice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#TaxOffice", name: "TaxOffice", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    TaxRegistration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxRegistration", name: "TaxRegistration", traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationDocFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationDocFile", name: "TaxRegistrationDocFile")
    TaxRegistrationDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationDocument", name: "TaxRegistrationDocument")
    TaxRegistrationDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationDocuments", name: "TaxRegistrationDocuments", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    TaxRegistrationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationEntry", name: "TaxRegistrationEntry", traits: {"smithy.api#sensitive" => {}})
    TaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationNumberType", name: "TaxRegistrationNumberType")
    TaxRegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationStatus", name: "TaxRegistrationStatus")
    TaxRegistrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationType", name: "TaxRegistrationType")
    TaxRegistrationWithJurisdiction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TaxRegistrationWithJurisdiction", name: "TaxRegistrationWithJurisdiction", traits: {"smithy.api#sensitive" => {}})
    TurkeyAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#TurkeyAdditionalInfo", name: "TurkeyAdditionalInfo")
    UkraineAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#UkraineAdditionalInfo", name: "UkraineAdditionalInfo")
    UkraineTrnType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#UkraineTrnType", name: "UkraineTrnType")
    UniqueIdentificationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#UniqueIdentificationNumber", name: "UniqueIdentificationNumber", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{39}$"})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^https.*\\S.*$"})
    UzbekistanAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#UzbekistanAdditionalInfo", name: "UzbekistanAdditionalInfo")
    UzbekistanTaxRegistrationNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#UzbekistanTaxRegistrationNumberType", name: "UzbekistanTaxRegistrationNumberType")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.taxsettings#ValidationExceptionErrorCode", name: "ValidationExceptionErrorCode")
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.taxsettings#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    VatRegistrationNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.taxsettings#VatRegistrationNumber", name: "VatRegistrationNumber", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    VerificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#VerificationDetails", name: "VerificationDetails")
    VietnamAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.taxsettings#VietnamAdditionalInfo", name: "VietnamAdditionalInfo")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountDetails.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AccountDetails.add_member(:tax_registration, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationWithJurisdiction, name: "taxRegistration"))
    AccountDetails.add_member(:tax_inheritance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDetails, name: "taxInheritanceDetails"))
    AccountDetails.add_member(:account_meta_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountMetaData, name: "accountMetaData"))
    AccountDetails.type = Types::AccountDetails
    AccountDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetails, name: "member"))
    AccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountMetaData.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "accountName"))
    AccountMetaData.add_member(:seller, ::Smithy::Schema::Shapes::MemberShape.new(target: Seller, name: "seller"))
    AccountMetaData.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "address"))
    AccountMetaData.add_member(:address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressRoleType, name: "addressType"))
    AccountMetaData.add_member(:address_role_map, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressRoleMap, name: "addressRoleMap"))
    AccountMetaData.type = Types::AccountMetaData
    AdditionalInfoRequest.add_member(:malaysia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MalaysiaAdditionalInfo, name: "malaysiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:israel_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IsraelAdditionalInfo, name: "israelAdditionalInfo"))
    AdditionalInfoRequest.add_member(:estonia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EstoniaAdditionalInfo, name: "estoniaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:canada_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CanadaAdditionalInfo, name: "canadaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:spain_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SpainAdditionalInfo, name: "spainAdditionalInfo"))
    AdditionalInfoRequest.add_member(:kenya_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: KenyaAdditionalInfo, name: "kenyaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:south_korea_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SouthKoreaAdditionalInfo, name: "southKoreaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:turkey_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: TurkeyAdditionalInfo, name: "turkeyAdditionalInfo"))
    AdditionalInfoRequest.add_member(:georgia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GeorgiaAdditionalInfo, name: "georgiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:italy_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ItalyAdditionalInfo, name: "italyAdditionalInfo"))
    AdditionalInfoRequest.add_member(:romania_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RomaniaAdditionalInfo, name: "romaniaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:ukraine_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: UkraineAdditionalInfo, name: "ukraineAdditionalInfo"))
    AdditionalInfoRequest.add_member(:poland_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PolandAdditionalInfo, name: "polandAdditionalInfo"))
    AdditionalInfoRequest.add_member(:saudi_arabia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SaudiArabiaAdditionalInfo, name: "saudiArabiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:indonesia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IndonesiaAdditionalInfo, name: "indonesiaAdditionalInfo"))
    AdditionalInfoRequest.add_member(:vietnam_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VietnamAdditionalInfo, name: "vietnamAdditionalInfo"))
    AdditionalInfoRequest.add_member(:egypt_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EgyptAdditionalInfo, name: "egyptAdditionalInfo"))
    AdditionalInfoRequest.add_member(:greece_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GreeceAdditionalInfo, name: "greeceAdditionalInfo"))
    AdditionalInfoRequest.add_member(:uzbekistan_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: UzbekistanAdditionalInfo, name: "uzbekistanAdditionalInfo"))
    AdditionalInfoRequest.add_member(:philippines_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PhilippinesAdditionalInfo, name: "philippinesAdditionalInfo"))
    AdditionalInfoRequest.add_member(:belgium_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BelgiumAdditionalInfo, name: "belgiumAdditionalInfo"))
    AdditionalInfoRequest.add_member(:chile_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChileAdditionalInfo, name: "chileAdditionalInfo"))
    AdditionalInfoRequest.add_member(:france_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FranceAdditionalInfo, name: "franceAdditionalInfo"))
    AdditionalInfoRequest.add_member(:monaco_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MonacoAdditionalInfo, name: "monacoAdditionalInfo"))
    AdditionalInfoRequest.type = Types::AdditionalInfoRequest
    AdditionalInfoResponse.add_member(:malaysia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MalaysiaAdditionalInfo, name: "malaysiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:israel_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IsraelAdditionalInfo, name: "israelAdditionalInfo"))
    AdditionalInfoResponse.add_member(:estonia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EstoniaAdditionalInfo, name: "estoniaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:canada_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CanadaAdditionalInfo, name: "canadaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:brazil_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrazilAdditionalInfo, name: "brazilAdditionalInfo"))
    AdditionalInfoResponse.add_member(:spain_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SpainAdditionalInfo, name: "spainAdditionalInfo"))
    AdditionalInfoResponse.add_member(:kenya_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: KenyaAdditionalInfo, name: "kenyaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:south_korea_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SouthKoreaAdditionalInfo, name: "southKoreaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:turkey_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: TurkeyAdditionalInfo, name: "turkeyAdditionalInfo"))
    AdditionalInfoResponse.add_member(:georgia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GeorgiaAdditionalInfo, name: "georgiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:italy_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ItalyAdditionalInfo, name: "italyAdditionalInfo"))
    AdditionalInfoResponse.add_member(:romania_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RomaniaAdditionalInfo, name: "romaniaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:ukraine_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: UkraineAdditionalInfo, name: "ukraineAdditionalInfo"))
    AdditionalInfoResponse.add_member(:poland_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PolandAdditionalInfo, name: "polandAdditionalInfo"))
    AdditionalInfoResponse.add_member(:saudi_arabia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SaudiArabiaAdditionalInfo, name: "saudiArabiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:india_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IndiaAdditionalInfo, name: "indiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:indonesia_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: IndonesiaAdditionalInfo, name: "indonesiaAdditionalInfo"))
    AdditionalInfoResponse.add_member(:vietnam_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VietnamAdditionalInfo, name: "vietnamAdditionalInfo"))
    AdditionalInfoResponse.add_member(:egypt_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EgyptAdditionalInfo, name: "egyptAdditionalInfo"))
    AdditionalInfoResponse.add_member(:greece_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GreeceAdditionalInfo, name: "greeceAdditionalInfo"))
    AdditionalInfoResponse.add_member(:uzbekistan_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: UzbekistanAdditionalInfo, name: "uzbekistanAdditionalInfo"))
    AdditionalInfoResponse.add_member(:philippines_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PhilippinesAdditionalInfo, name: "philippinesAdditionalInfo"))
    AdditionalInfoResponse.add_member(:belgium_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BelgiumAdditionalInfo, name: "belgiumAdditionalInfo"))
    AdditionalInfoResponse.add_member(:chile_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChileAdditionalInfo, name: "chileAdditionalInfo"))
    AdditionalInfoResponse.add_member(:france_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FranceAdditionalInfo, name: "franceAdditionalInfo"))
    AdditionalInfoResponse.add_member(:monaco_additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MonacoAdditionalInfo, name: "monacoAdditionalInfo"))
    AdditionalInfoResponse.type = Types::AdditionalInfoResponse
    Address.add_member(:address_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine1, name: "addressLine1", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "Unknown"}))
    Address.add_member(:address_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine2, name: "addressLine2"))
    Address.add_member(:address_line3, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressLine3, name: "addressLine3"))
    Address.add_member(:district_or_county, ::Smithy::Schema::Shapes::MemberShape.new(target: District, name: "districtOrCounty"))
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: City, name: "city", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "Unknown"}))
    Address.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "stateOrRegion"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PostalCode, name: "postalCode", traits: {"smithy.api#required" => {}}))
    Address.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "countryCode", traits: {"smithy.api#required" => {}}))
    Address.type = Types::Address
    AddressRoleMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressRoleType, name: "key"))
    AddressRoleMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Jurisdiction, name: "value"))
    AddressRoleType.add_member(:tax_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_ADDRESS", traits: {"smithy.api#enumValue" => "TaxAddress"}))
    AddressRoleType.add_member(:billing_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_ADDRESS", traits: {"smithy.api#enumValue" => "BillingAddress"}))
    AddressRoleType.add_member(:contact_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT_ADDRESS", traits: {"smithy.api#enumValue" => "ContactAddress"}))
    AttachmentUploadException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AttachmentUploadException.type = Types::AttachmentUploadException
    Authorities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Authority, name: "member"))
    Authority.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "country", traits: {"smithy.api#required" => {}}))
    Authority.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state"))
    Authority.type = Types::Authority
    BatchDeleteTaxRegistrationError.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    BatchDeleteTaxRegistrationError.type = Types::BatchDeleteTaxRegistrationError
    BatchDeleteTaxRegistrationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteTaxRegistrationError, name: "member"))
    BatchDeleteTaxRegistrationRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationRequest.type = Types::BatchDeleteTaxRegistrationRequest
    BatchDeleteTaxRegistrationResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteTaxRegistrationErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteTaxRegistrationResponse.type = Types::BatchDeleteTaxRegistrationResponse
    BatchGetTaxExemptionsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    BatchGetTaxExemptionsRequest.type = Types::BatchGetTaxExemptionsRequest
    BatchGetTaxExemptionsResponse.add_member(:tax_exemption_details_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionDetailsMap, name: "taxExemptionDetailsMap"))
    BatchGetTaxExemptionsResponse.add_member(:failed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "failedAccounts"))
    BatchGetTaxExemptionsResponse.type = Types::BatchGetTaxExemptionsResponse
    BatchPutTaxRegistrationError.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    BatchPutTaxRegistrationError.type = Types::BatchPutTaxRegistrationError
    BatchPutTaxRegistrationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutTaxRegistrationError, name: "member"))
    BatchPutTaxRegistrationRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationEntry, name: "taxRegistrationEntry", traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationRequest.type = Types::BatchPutTaxRegistrationRequest
    BatchPutTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status"))
    BatchPutTaxRegistrationResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutTaxRegistrationErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchPutTaxRegistrationResponse.type = Types::BatchPutTaxRegistrationResponse
    BelgiumAdditionalInfo.add_member(:peppol_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PeppolId, name: "peppolId"))
    BelgiumAdditionalInfo.add_member(:is_mercurius_box_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isMercuriusBoxEnabled"))
    BelgiumAdditionalInfo.type = Types::BelgiumAdditionalInfo
    BrazilAdditionalInfo.add_member(:ccm_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CcmCode, name: "ccmCode"))
    BrazilAdditionalInfo.add_member(:legal_nature_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalNatureCode, name: "legalNatureCode"))
    BrazilAdditionalInfo.type = Types::BrazilAdditionalInfo
    CanadaAdditionalInfo.add_member(:provincial_sales_tax_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CanadaProvincialSalesTaxIdString, name: "provincialSalesTaxId"))
    CanadaAdditionalInfo.add_member(:canada_quebec_sales_tax_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CanadaQuebecSalesTaxNumberString, name: "canadaQuebecSalesTaxNumber"))
    CanadaAdditionalInfo.add_member(:canada_retail_sales_tax_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CanadaRetailSalesTaxNumberString, name: "canadaRetailSalesTaxNumber"))
    CanadaAdditionalInfo.add_member(:is_reseller_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResellerAccount"))
    CanadaAdditionalInfo.type = Types::CanadaAdditionalInfo
    CaseCreationLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    CaseCreationLimitExceededException.type = Types::CaseCreationLimitExceededException
    ChileAdditionalInfo.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChileDocumentType, name: "documentType"))
    ChileAdditionalInfo.add_member(:business_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "businessActivity"))
    ChileAdditionalInfo.type = Types::ChileAdditionalInfo
    ChileDocumentType.add_member(:invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE", traits: {"smithy.api#enumValue" => "Invoice"}))
    ChileDocumentType.add_member(:receipt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIPT", traits: {"smithy.api#enumValue" => "Receipt"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CustomerType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    CustomerType.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "Individual"}))
    DeleteSupplementalTaxRegistrationRequest.add_member(:authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "authorityId", traits: {"smithy.api#required" => {}}))
    DeleteSupplementalTaxRegistrationRequest.type = Types::DeleteSupplementalTaxRegistrationRequest
    DeleteSupplementalTaxRegistrationResponse.type = Types::DeleteSupplementalTaxRegistrationResponse
    DeleteTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    DeleteTaxRegistrationRequest.type = Types::DeleteTaxRegistrationRequest
    DeleteTaxRegistrationResponse.type = Types::DeleteTaxRegistrationResponse
    DestinationS3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    DestinationS3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "prefix"))
    DestinationS3Location.type = Types::DestinationS3Location
    EgyptAdditionalInfo.add_member(:unique_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueIdentificationNumber, name: "uniqueIdentificationNumber"))
    EgyptAdditionalInfo.add_member(:unique_identification_number_expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateString, name: "uniqueIdentificationNumberExpirationDate"))
    EgyptAdditionalInfo.type = Types::EgyptAdditionalInfo
    EntityExemptionAccountStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    EntityExemptionAccountStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Valid", traits: {"smithy.api#enumValue" => "Valid"}))
    EntityExemptionAccountStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "Expired"}))
    EntityExemptionAccountStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    EstoniaAdditionalInfo.add_member(:registry_commercial_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryCommercialCode, name: "registryCommercialCode", traits: {"smithy.api#required" => {}}))
    EstoniaAdditionalInfo.type = Types::EstoniaAdditionalInfo
    ExemptionCertificate.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExemptionDocumentName, name: "documentName", traits: {"smithy.api#required" => {}}))
    ExemptionCertificate.add_member(:document_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ExemptionFileBlob, name: "documentFile", traits: {"smithy.api#required" => {}}))
    ExemptionCertificate.type = Types::ExemptionCertificate
    FranceAdditionalInfo.add_member(:siren_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SirenNumber, name: "sirenNumber", traits: {"smithy.api#required" => {}}))
    FranceAdditionalInfo.add_member(:e_invoice_routing_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eInvoiceRoutingCode"))
    FranceAdditionalInfo.type = Types::FranceAdditionalInfo
    GeorgiaAdditionalInfo.add_member(:person_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonType, name: "personType", traits: {"smithy.api#required" => {}}))
    GeorgiaAdditionalInfo.type = Types::GeorgiaAdditionalInfo
    GetTaxExemptionTypesRequest.type = Types::GetTaxExemptionTypesRequest
    GetTaxExemptionTypesResponse.add_member(:tax_exemption_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionTypes, name: "taxExemptionTypes"))
    GetTaxExemptionTypesResponse.type = Types::GetTaxExemptionTypesResponse
    GetTaxInheritanceRequest.type = Types::GetTaxInheritanceRequest
    GetTaxInheritanceResponse.add_member(:heritage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HeritageStatus, name: "heritageStatus"))
    GetTaxInheritanceResponse.type = Types::GetTaxInheritanceResponse
    GetTaxRegistrationDocumentRequest.add_member(:destination_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationS3Location, name: "destinationS3Location"))
    GetTaxRegistrationDocumentRequest.add_member(:tax_document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentMetadata, name: "taxDocumentMetadata", traits: {"smithy.api#required" => {}}))
    GetTaxRegistrationDocumentRequest.type = Types::GetTaxRegistrationDocumentRequest
    GetTaxRegistrationDocumentResponse.add_member(:destination_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationFilePath, name: "destinationFilePath"))
    GetTaxRegistrationDocumentResponse.add_member(:presigned_s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "presignedS3Url"))
    GetTaxRegistrationDocumentResponse.type = Types::GetTaxRegistrationDocumentResponse
    GetTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    GetTaxRegistrationRequest.type = Types::GetTaxRegistrationRequest
    GetTaxRegistrationResponse.add_member(:tax_registration, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistration, name: "taxRegistration"))
    GetTaxRegistrationResponse.type = Types::GetTaxRegistrationResponse
    GreeceAdditionalInfo.add_member(:contracting_authority_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ContractingAuthorityCode, name: "contractingAuthorityCode"))
    GreeceAdditionalInfo.type = Types::GreeceAdditionalInfo
    HeritageStatus.add_member(:opt_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OptIn", traits: {"smithy.api#enumValue" => "OptIn"}))
    HeritageStatus.add_member(:opt_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OptOut", traits: {"smithy.api#enumValue" => "OptOut"}))
    IndiaAdditionalInfo.add_member(:pan, ::Smithy::Schema::Shapes::MemberShape.new(target: Pan, name: "pan"))
    IndiaAdditionalInfo.type = Types::IndiaAdditionalInfo
    IndonesiaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndonesiaTaxRegistrationNumberType, name: "taxRegistrationNumberType"))
    IndonesiaAdditionalInfo.add_member(:ppn_exception_designation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PpnExceptionDesignationCode, name: "ppnExceptionDesignationCode"))
    IndonesiaAdditionalInfo.add_member(:decision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DecisionNumber, name: "decisionNumber"))
    IndonesiaAdditionalInfo.type = Types::IndonesiaAdditionalInfo
    IndonesiaTaxRegistrationNumberType.add_member(:nik, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIK", traits: {"smithy.api#enumValue" => "NIK"}))
    IndonesiaTaxRegistrationNumberType.add_member(:passport_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "PassportNumber"}))
    IndonesiaTaxRegistrationNumberType.add_member(:npwp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NPWP", traits: {"smithy.api#enumValue" => "NPWP"}))
    IndonesiaTaxRegistrationNumberType.add_member(:nitku, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NITKU", traits: {"smithy.api#enumValue" => "NITKU"}))
    Industries.add_member(:circulating_org, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CIRCULATING_ORG", traits: {"smithy.api#enumValue" => "CirculatingOrg"}))
    Industries.add_member(:professional_org, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_ORG", traits: {"smithy.api#enumValue" => "ProfessionalOrg"}))
    Industries.add_member(:banks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BANKS", traits: {"smithy.api#enumValue" => "Banks"}))
    Industries.add_member(:insurance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSURANCE", traits: {"smithy.api#enumValue" => "Insurance"}))
    Industries.add_member(:pension_and_benefit_funds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENSION_AND_BENEFIT_FUNDS", traits: {"smithy.api#enumValue" => "PensionAndBenefitFunds"}))
    Industries.add_member(:development_agencies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT_AGENCIES", traits: {"smithy.api#enumValue" => "DevelopmentAgencies"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IsraelAdditionalInfo.add_member(:dealer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IsraelDealerType, name: "dealerType", traits: {"smithy.api#required" => {}}))
    IsraelAdditionalInfo.add_member(:customer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IsraelCustomerType, name: "customerType", traits: {"smithy.api#required" => {}}))
    IsraelAdditionalInfo.type = Types::IsraelAdditionalInfo
    IsraelCustomerType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    IsraelCustomerType.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "Individual"}))
    IsraelDealerType.add_member(:authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "Authorized"}))
    IsraelDealerType.add_member(:non_authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_AUTHORIZED", traits: {"smithy.api#enumValue" => "Non-authorized"}))
    ItalyAdditionalInfo.add_member(:sdi_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SdiAccountId, name: "sdiAccountId"))
    ItalyAdditionalInfo.add_member(:cig_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CigNumber, name: "cigNumber"))
    ItalyAdditionalInfo.add_member(:cup_number, ::Smithy::Schema::Shapes::MemberShape.new(target: CupNumber, name: "cupNumber"))
    ItalyAdditionalInfo.add_member(:tax_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxCode, name: "taxCode"))
    ItalyAdditionalInfo.add_member(:customer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerType, name: "customerType"))
    ItalyAdditionalInfo.type = Types::ItalyAdditionalInfo
    Jurisdiction.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "stateOrRegion"))
    Jurisdiction.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "countryCode", traits: {"smithy.api#required" => {}}))
    Jurisdiction.type = Types::Jurisdiction
    KenyaAdditionalInfo.add_member(:person_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonType, name: "personType", traits: {"smithy.api#required" => {}}))
    KenyaAdditionalInfo.type = Types::KenyaAdditionalInfo
    ListSupplementalTaxRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSupplementalTaxRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListSupplementalTaxRegistrationsRequest.type = Types::ListSupplementalTaxRegistrationsRequest
    ListSupplementalTaxRegistrationsResponse.add_member(:tax_registrations, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalTaxRegistrationList, name: "taxRegistrations", traits: {"smithy.api#required" => {}}))
    ListSupplementalTaxRegistrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListSupplementalTaxRegistrationsResponse.type = Types::ListSupplementalTaxRegistrationsResponse
    ListTaxExemptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTaxExemptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListTaxExemptionsRequest.type = Types::ListTaxExemptionsRequest
    ListTaxExemptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListTaxExemptionsResponse.add_member(:tax_exemption_details_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionDetailsMap, name: "taxExemptionDetailsMap"))
    ListTaxExemptionsResponse.type = Types::ListTaxExemptionsResponse
    ListTaxRegistrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTaxRegistrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListTaxRegistrationsRequest.type = Types::ListTaxRegistrationsRequest
    ListTaxRegistrationsResponse.add_member(:account_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetailsList, name: "accountDetails", traits: {"smithy.api#required" => {}}))
    ListTaxRegistrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationTokenString, name: "nextToken"))
    ListTaxRegistrationsResponse.type = Types::ListTaxRegistrationsResponse
    MalaysiaAdditionalInfo.add_member(:service_tax_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: MalaysiaServiceTaxCodesList, name: "serviceTaxCodes", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => []}))
    MalaysiaAdditionalInfo.add_member(:tax_information_number, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInformationNumber, name: "taxInformationNumber"))
    MalaysiaAdditionalInfo.add_member(:business_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessRegistrationNumber, name: "businessRegistrationNumber"))
    MalaysiaAdditionalInfo.type = Types::MalaysiaAdditionalInfo
    MalaysiaServiceTaxCode.add_member(:consultancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSULTANCY", traits: {"smithy.api#enumValue" => "Consultancy"}))
    MalaysiaServiceTaxCode.add_member(:digital_svc_electronic_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIGITAL_SVC_ELECTRONIC_MEDIUM", traits: {"smithy.api#enumValue" => "Digital Service And Electronic Medium"}))
    MalaysiaServiceTaxCode.add_member(:it_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT_SERVICES", traits: {"smithy.api#enumValue" => "IT Services"}))
    MalaysiaServiceTaxCode.add_member(:training_or_coaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_OR_COACHING", traits: {"smithy.api#enumValue" => "Training Or Coaching"}))
    MalaysiaServiceTaxCodesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MalaysiaServiceTaxCode, name: "member"))
    MonacoAdditionalInfo.add_member(:business_number, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessNumber, name: "businessNumber", traits: {"smithy.api#required" => {}}))
    MonacoAdditionalInfo.type = Types::MonacoAdditionalInfo
    PersonType.add_member(:legal_person, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_PERSON", traits: {"smithy.api#enumValue" => "Legal Person"}))
    PersonType.add_member(:physical_person, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHYSICAL_PERSON", traits: {"smithy.api#enumValue" => "Physical Person"}))
    PersonType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    PhilippinesAdditionalInfo.add_member(:is_vat_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isVatRegistered"))
    PhilippinesAdditionalInfo.type = Types::PhilippinesAdditionalInfo
    PolandAdditionalInfo.add_member(:individual_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: IndividualRegistrationNumber, name: "individualRegistrationNumber"))
    PolandAdditionalInfo.add_member(:is_group_vat_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isGroupVatEnabled"))
    PolandAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolandTaxRegistrationNumberType, name: "taxRegistrationNumberType"))
    PolandAdditionalInfo.type = Types::PolandAdditionalInfo
    PolandTaxRegistrationNumberType.add_member(:eu_tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_TAX_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "EUTaxRegistrationNumber"}))
    PolandTaxRegistrationNumberType.add_member(:local_tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_TAX_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "LocalTaxRegistrationNumber"}))
    PolandTaxRegistrationNumberType.add_member(:local_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "LocalRegistrationNumber"}))
    PutSupplementalTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalTaxRegistrationEntry, name: "taxRegistrationEntry", traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationRequest.type = Types::PutSupplementalTaxRegistrationRequest
    PutSupplementalTaxRegistrationResponse.add_member(:authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "authorityId", traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PutSupplementalTaxRegistrationResponse.type = Types::PutSupplementalTaxRegistrationResponse
    PutTaxExemptionRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 550}, "smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:authority, ::Smithy::Schema::Shapes::MemberShape.new(target: Authority, name: "authority", traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "exemptionType", traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.add_member(:exemption_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ExemptionCertificate, name: "exemptionCertificate", traits: {"smithy.api#required" => {}}))
    PutTaxExemptionRequest.type = Types::PutTaxExemptionRequest
    PutTaxExemptionResponse.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "caseId"))
    PutTaxExemptionResponse.type = Types::PutTaxExemptionResponse
    PutTaxInheritanceRequest.add_member(:heritage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HeritageStatus, name: "heritageStatus"))
    PutTaxInheritanceRequest.type = Types::PutTaxInheritanceRequest
    PutTaxInheritanceResponse.type = Types::PutTaxInheritanceResponse
    PutTaxRegistrationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    PutTaxRegistrationRequest.add_member(:tax_registration_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationEntry, name: "taxRegistrationEntry", traits: {"smithy.api#required" => {}}))
    PutTaxRegistrationRequest.type = Types::PutTaxRegistrationRequest
    PutTaxRegistrationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status"))
    PutTaxRegistrationResponse.type = Types::PutTaxRegistrationResponse
    RegistrationType.add_member(:intra_eu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTRA_EU", traits: {"smithy.api#enumValue" => "Intra-EU"}))
    RegistrationType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL", traits: {"smithy.api#enumValue" => "Local"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RomaniaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationNumberType, name: "taxRegistrationNumberType", traits: {"smithy.api#required" => {}}))
    RomaniaAdditionalInfo.type = Types::RomaniaAdditionalInfo
    SaudiArabiaAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SaudiArabiaTaxRegistrationNumberType, name: "taxRegistrationNumberType"))
    SaudiArabiaAdditionalInfo.type = Types::SaudiArabiaAdditionalInfo
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:tax_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "TaxIdentificationNumber"}))
    SaudiArabiaTaxRegistrationNumberType.add_member(:commercial_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMERCIAL_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "CommercialRegistrationNumber"}))
    Sector.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    Sector.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "Individual"}))
    Sector.add_member(:public_institutions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_INSTITUTIONS", traits: {"smithy.api#enumValue" => "Government"}))
    SourceS3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucket", traits: {"smithy.api#required" => {}}))
    SourceS3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "key", traits: {"smithy.api#required" => {}}))
    SourceS3Location.type = Types::SourceS3Location
    SouthKoreaAdditionalInfo.add_member(:business_representative_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessRepresentativeName, name: "businessRepresentativeName", traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:line_of_business, ::Smithy::Schema::Shapes::MemberShape.new(target: LineOfBusiness, name: "lineOfBusiness", traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.add_member(:item_of_business, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemOfBusiness, name: "itemOfBusiness", traits: {"smithy.api#required" => {}}))
    SouthKoreaAdditionalInfo.type = Types::SouthKoreaAdditionalInfo
    SpainAdditionalInfo.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    SpainAdditionalInfo.type = Types::SpainAdditionalInfo
    SupplementalTaxRegistration.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalTaxRegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "legalName", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "address", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:authority_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "authorityId", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistration.type = Types::SupplementalTaxRegistration
    SupplementalTaxRegistrationEntry.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalTaxRegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "legalName", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "address", traits: {"smithy.api#required" => {}}))
    SupplementalTaxRegistrationEntry.type = Types::SupplementalTaxRegistrationEntry
    SupplementalTaxRegistrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalTaxRegistration, name: "member"))
    SupplementalTaxRegistrationType.add_member(:vat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VAT", traits: {"smithy.api#enumValue" => "VAT"}))
    TaxDocumentMetadata.add_member(:tax_document_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentAccessToken, name: "taxDocumentAccessToken", traits: {"smithy.api#required" => {}}))
    TaxDocumentMetadata.add_member(:tax_document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentName, name: "taxDocumentName", traits: {"smithy.api#required" => {}}))
    TaxDocumentMetadata.type = Types::TaxDocumentMetadata
    TaxDocumentMetadatas.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentMetadata, name: "member"))
    TaxExemption.add_member(:authority, ::Smithy::Schema::Shapes::MemberShape.new(target: Authority, name: "authority", traits: {"smithy.api#required" => {}}))
    TaxExemption.add_member(:tax_exemption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionType, name: "taxExemptionType", traits: {"smithy.api#required" => {}}))
    TaxExemption.add_member(:effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "effectiveDate"))
    TaxExemption.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationDate"))
    TaxExemption.add_member(:system_effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "systemEffectiveDate"))
    TaxExemption.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityExemptionAccountStatus, name: "status"))
    TaxExemption.type = Types::TaxExemption
    TaxExemptionDetails.add_member(:tax_exemptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptions, name: "taxExemptions"))
    TaxExemptionDetails.add_member(:heritage_obtained_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "heritageObtainedDetails"))
    TaxExemptionDetails.add_member(:heritage_obtained_parent_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "heritageObtainedParentEntity"))
    TaxExemptionDetails.add_member(:heritage_obtained_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "heritageObtainedReason"))
    TaxExemptionDetails.type = Types::TaxExemptionDetails
    TaxExemptionDetailsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "key"))
    TaxExemptionDetailsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionDetails, name: "value"))
    TaxExemptionType.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    TaxExemptionType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "description"))
    TaxExemptionType.add_member(:applicable_jurisdictions, ::Smithy::Schema::Shapes::MemberShape.new(target: Authorities, name: "applicableJurisdictions"))
    TaxExemptionType.type = Types::TaxExemptionType
    TaxExemptionTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemptionType, name: "member"))
    TaxExemptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxExemption, name: "member"))
    TaxInheritanceDetails.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "parentEntityId"))
    TaxInheritanceDetails.add_member(:inheritance_obtained_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InheritanceObtainedReason, name: "inheritanceObtainedReason"))
    TaxInheritanceDetails.type = Types::TaxInheritanceDetails
    TaxRegistration.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "legalName", traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TaxRegistration.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector"))
    TaxRegistration.add_member(:tax_document_metadatas, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentMetadatas, name: "taxDocumentMetadatas"))
    TaxRegistration.add_member(:certified_email_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertifiedEmailId, name: "certifiedEmailId"))
    TaxRegistration.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoResponse, name: "additionalTaxInformation"))
    TaxRegistration.add_member(:legal_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "legalAddress", traits: {"smithy.api#required" => {}}))
    TaxRegistration.type = Types::TaxRegistration
    TaxRegistrationDocFile.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentName, name: "fileName", traits: {"smithy.api#required" => {}}))
    TaxRegistrationDocFile.add_member(:file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: FileBlob, name: "fileContent", traits: {"smithy.api#required" => {}}))
    TaxRegistrationDocFile.type = Types::TaxRegistrationDocFile
    TaxRegistrationDocument.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceS3Location, name: "s3Location"))
    TaxRegistrationDocument.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationDocFile, name: "file"))
    TaxRegistrationDocument.type = Types::TaxRegistrationDocument
    TaxRegistrationDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationDocument, name: "member"))
    TaxRegistrationEntry.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    TaxRegistrationEntry.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "legalName"))
    TaxRegistrationEntry.add_member(:legal_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "legalAddress"))
    TaxRegistrationEntry.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector"))
    TaxRegistrationEntry.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoRequest, name: "additionalTaxInformation"))
    TaxRegistrationEntry.add_member(:verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationDetails, name: "verificationDetails"))
    TaxRegistrationEntry.add_member(:certified_email_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertifiedEmailId, name: "certifiedEmailId"))
    TaxRegistrationEntry.type = Types::TaxRegistrationEntry
    TaxRegistrationNumberType.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "TaxRegistrationNumber"}))
    TaxRegistrationNumberType.add_member(:local_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_REGISTRATION_NUMBER", traits: {"smithy.api#enumValue" => "LocalRegistrationNumber"}))
    TaxRegistrationStatus.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED", traits: {"smithy.api#enumValue" => "Verified"}))
    TaxRegistrationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    TaxRegistrationStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    TaxRegistrationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    TaxRegistrationType.add_member(:vat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VAT", traits: {"smithy.api#enumValue" => "VAT"}))
    TaxRegistrationType.add_member(:gst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GST", traits: {"smithy.api#enumValue" => "GST"}))
    TaxRegistrationType.add_member(:cpf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPF", traits: {"smithy.api#enumValue" => "CPF"}))
    TaxRegistrationType.add_member(:cnpj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNPJ", traits: {"smithy.api#enumValue" => "CNPJ"}))
    TaxRegistrationType.add_member(:sst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SST", traits: {"smithy.api#enumValue" => "SST"}))
    TaxRegistrationType.add_member(:tin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIN", traits: {"smithy.api#enumValue" => "TIN"}))
    TaxRegistrationType.add_member(:nric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NRIC", traits: {"smithy.api#enumValue" => "NRIC"}))
    TaxRegistrationType.add_member(:pan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAN", traits: {"smithy.api#enumValue" => "PAN"}))
    TaxRegistrationType.add_member(:nip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIP", traits: {"smithy.api#enumValue" => "NIP"}))
    TaxRegistrationWithJurisdiction.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "legalName", traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector"))
    TaxRegistrationWithJurisdiction.add_member(:tax_document_metadatas, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxDocumentMetadatas, name: "taxDocumentMetadatas"))
    TaxRegistrationWithJurisdiction.add_member(:certified_email_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertifiedEmailId, name: "certifiedEmailId"))
    TaxRegistrationWithJurisdiction.add_member(:additional_tax_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoResponse, name: "additionalTaxInformation"))
    TaxRegistrationWithJurisdiction.add_member(:jurisdiction, ::Smithy::Schema::Shapes::MemberShape.new(target: Jurisdiction, name: "jurisdiction", traits: {"smithy.api#required" => {}}))
    TaxRegistrationWithJurisdiction.type = Types::TaxRegistrationWithJurisdiction
    TurkeyAdditionalInfo.add_member(:tax_office, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxOffice, name: "taxOffice"))
    TurkeyAdditionalInfo.add_member(:kep_email_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KepEmailId, name: "kepEmailId"))
    TurkeyAdditionalInfo.add_member(:secondary_tax_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryTaxId, name: "secondaryTaxId"))
    TurkeyAdditionalInfo.add_member(:industries, ::Smithy::Schema::Shapes::MemberShape.new(target: Industries, name: "industries"))
    TurkeyAdditionalInfo.type = Types::TurkeyAdditionalInfo
    UkraineAdditionalInfo.add_member(:ukraine_trn_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UkraineTrnType, name: "ukraineTrnType", traits: {"smithy.api#required" => {}}))
    UkraineAdditionalInfo.type = Types::UkraineAdditionalInfo
    UkraineTrnType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    UkraineTrnType.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "Individual"}))
    UzbekistanAdditionalInfo.add_member(:tax_registration_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UzbekistanTaxRegistrationNumberType, name: "taxRegistrationNumberType"))
    UzbekistanAdditionalInfo.add_member(:vat_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: VatRegistrationNumber, name: "vatRegistrationNumber"))
    UzbekistanAdditionalInfo.type = Types::UzbekistanAdditionalInfo
    UzbekistanTaxRegistrationNumberType.add_member(:business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS", traits: {"smithy.api#enumValue" => "Business"}))
    UzbekistanTaxRegistrationNumberType.add_member(:individual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDIVIDUAL", traits: {"smithy.api#enumValue" => "Individual"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorCode.add_member(:malformed_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALFORMED_TOKEN", traits: {"smithy.api#enumValue" => "MalformedToken"}))
    ValidationExceptionErrorCode.add_member(:expired_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED_TOKEN", traits: {"smithy.api#enumValue" => "ExpiredToken"}))
    ValidationExceptionErrorCode.add_member(:invalid_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_TOKEN", traits: {"smithy.api#enumValue" => "InvalidToken"}))
    ValidationExceptionErrorCode.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionErrorCode.add_member(:missing_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_INPUT", traits: {"smithy.api#enumValue" => "MissingInput"}))
    ValidationExceptionErrorCode.add_member(:non_india_customer_can_not_set_pan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_INDIA_CUSTOMER_CAN_NOT_SET_PAN", traits: {"smithy.api#enumValue" => "NonIndiaCustomerCanNotSetPAN"}))
    ValidationExceptionErrorCode.add_member(:gst_existence_block_set_pan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GST_EXISTENCE_BLOCK_SET_PAN", traits: {"smithy.api#enumValue" => "GSTExistenceBlockSetPAN"}))
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VerificationDetails.add_member(:date_of_birth, ::Smithy::Schema::Shapes::MemberShape.new(target: DateOfBirth, name: "dateOfBirth"))
    VerificationDetails.add_member(:tax_registration_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxRegistrationDocuments, name: "taxRegistrationDocuments"))
    VerificationDetails.type = Types::VerificationDetails
    VietnamAdditionalInfo.add_member(:enterprise_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseIdentificationNumber, name: "enterpriseIdentificationNumber"))
    VietnamAdditionalInfo.add_member(:electronic_transaction_code_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ElectronicTransactionCodeNumber, name: "electronicTransactionCodeNumber"))
    VietnamAdditionalInfo.add_member(:payment_voucher_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentVoucherNumber, name: "paymentVoucherNumber"))
    VietnamAdditionalInfo.add_member(:payment_voucher_number_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateString, name: "paymentVoucherNumberDate"))
    VietnamAdditionalInfo.type = Types::VietnamAdditionalInfo

    TaxSettings = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.taxsettings#TaxSettings"
      service.name = "TaxSettings"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "TaxSettings", "arnNamespace" => "tax", "cloudTrailEventSource" => "tax.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "tax"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type,X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "Access-Control-Allow-Origin", "X-Amz-Content-Sha256", "Amz-Sdk-Invocation-Id", "Amz-Sdk-Request", "X-Amz-User-Agent"]}, "smithy.api#title" => "Tax Settings", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://tax-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tax-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tax.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tax.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_delete_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchDeleteTaxRegistration"
        operation.name = "BatchDeleteTaxRegistration"
        operation.input = BatchDeleteTaxRegistrationRequest
        operation.output = BatchDeleteTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchDeleteTaxRegistration"}}
      end)
      service.add_operation(:batch_get_tax_exemptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchGetTaxExemptions"
        operation.name = "BatchGetTaxExemptions"
        operation.input = BatchGetTaxExemptionsRequest
        operation.output = BatchGetTaxExemptionsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants batch get active tax exemptions for a given list of accounts permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchGetTaxExemptions"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_put_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#BatchPutTaxRegistration"
        operation.name = "BatchPutTaxRegistration"
        operation.input = BatchPutTaxRegistrationRequest
        operation.output = BatchPutTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchPutTaxRegistration"}}
      end)
      service.add_operation(:delete_supplemental_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteSupplementalTaxRegistration"
        operation.name = "DeleteSupplementalTaxRegistration"
        operation.input = DeleteSupplementalTaxRegistrationRequest
        operation.output = DeleteSupplementalTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteSupplementalTaxRegistration"}}
      end)
      service.add_operation(:delete_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#DeleteTaxRegistration"
        operation.name = "DeleteTaxRegistration"
        operation.input = DeleteTaxRegistrationRequest
        operation.output = DeleteTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants delete permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteTaxRegistration"}}
      end)
      service.add_operation(:get_tax_exemption_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxExemptionTypes"
        operation.name = "GetTaxExemptionTypes"
        operation.input = GetTaxExemptionTypesRequest
        operation.output = GetTaxExemptionTypesResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants get supported tax exemption types permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxExemptionTypes"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_inheritance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxInheritance"
        operation.name = "GetTaxInheritance"
        operation.input = GetTaxInheritanceRequest
        operation.output = GetTaxInheritanceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants get tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxInheritance"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistration"
        operation.name = "GetTaxRegistration"
        operation.input = GetTaxRegistrationRequest
        operation.output = GetTaxRegistrationResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tax_registration_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#GetTaxRegistrationDocument"
        operation.name = "GetTaxRegistrationDocument"
        operation.input = GetTaxRegistrationDocumentRequest
        operation.output = GetTaxRegistrationDocumentResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetTaxRegistrationDocument"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_supplemental_tax_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListSupplementalTaxRegistrations"
        operation.name = "ListSupplementalTaxRegistrations"
        operation.input = ListSupplementalTaxRegistrationsRequest
        operation.output = ListSupplementalTaxRegistrationsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListSupplementalTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupplementalTaxRegistrations.new
      end)
      service.add_operation(:list_tax_exemptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxExemptions"
        operation.name = "ListTaxExemptions"
        operation.input = ListTaxExemptionsRequest
        operation.output = ListTaxExemptionsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:GetExemptions"], "documentation" => "Grants list the active tax exemptions for a CB family permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxExemptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxExemptions.new
      end)
      service.add_operation(:list_tax_registrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#ListTaxRegistrations"
        operation.name = "ListTaxRegistrations"
        operation.input = ListTaxRegistrationsRequest
        operation.output = ListTaxRegistrationsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants retrieve permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListTaxRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaxRegistrations.new
      end)
      service.add_operation(:put_supplemental_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutSupplementalTaxRegistration"
        operation.name = "PutSupplementalTaxRegistration"
        operation.input = PutSupplementalTaxRegistrationRequest
        operation.output = PutSupplementalTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants store permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutSupplementalTaxRegistration"}}
      end)
      service.add_operation(:put_tax_exemption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxExemption"
        operation.name = "PutTaxExemption"
        operation.input = PutTaxExemptionRequest
        operation.output = PutTaxExemptionResponse
        operation.errors << AccessDeniedException
        operation.errors << AttachmentUploadException
        operation.errors << CaseCreationLimitExceededException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["tax:UpdateExemptions", "support:CreateCase", "support:AddAttachmentsToSet"], "documentation" => "Grants create customer tax exemption case permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxExemption"}}
      end)
      service.add_operation(:put_tax_inheritance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxInheritance"
        operation.name = "PutTaxInheritance"
        operation.input = PutTaxInheritanceRequest
        operation.output = PutTaxInheritanceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants put tax inheritance permission"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/PutTaxInheritance"}}
      end)
      service.add_operation(:put_tax_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.taxsettings#PutTaxRegistration"
        operation.name = "PutTaxRegistration"
        operation.input = PutTaxRegistrationRequest
        operation.output = PutTaxRegistrationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
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
