# frozen_string_literal: true

# This is generated code!

module Aws::Account
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptPrimaryEmailUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#AcceptPrimaryEmailUpdateRequest', name: 'AcceptPrimaryEmailUpdateRequest')
    AcceptPrimaryEmailUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#AcceptPrimaryEmailUpdateResponse', name: 'AcceptPrimaryEmailUpdateResponse')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountCreatedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.account#AccountCreatedDate', name: 'AccountCreatedDate', traits: {"smithy.api#timestampFormat" => "date-time"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[ -;=?-~]+$", "smithy.api#sensitive" => {}})
    AddressLine = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#AddressLine', name: 'AddressLine', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#sensitive" => {}})
    AlternateContact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#AlternateContact', name: 'AlternateContact')
    AlternateContactType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#AlternateContactType', name: 'AlternateContactType', traits: {"smithy.api#enum" => [{"value" => "BILLING", "name" => "BILLING"}, {"value" => "OPERATIONS", "name" => "OPERATIONS"}, {"value" => "SECURITY", "name" => "SECURITY"}]})
    City = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#City', name: 'City', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    CompanyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#CompanyName', name: 'CompanyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ContactInformation', name: 'ContactInformation')
    ContactInformationPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#ContactInformationPhoneNumber', name: 'ContactInformationPhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[+][\\s0-9()-]+$", "smithy.api#sensitive" => {}})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#CountryCode', name: 'CountryCode', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#sensitive" => {}})
    DeleteAlternateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#DeleteAlternateContactRequest', name: 'DeleteAlternateContactRequest')
    DisableRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#DisableRegionRequest', name: 'DisableRegionRequest')
    DistrictOrCounty = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#DistrictOrCounty', name: 'DistrictOrCounty', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 254}, "smithy.api#pattern" => "^[\\s]*[\\w+=.#|!&-]+@[\\w.-]+\\.[\\w]+[\\s]*$", "smithy.api#sensitive" => {}})
    EnableRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#EnableRegionRequest', name: 'EnableRegionRequest')
    FullName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#FullName', name: 'FullName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    GetAccountInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetAccountInformationRequest', name: 'GetAccountInformationRequest')
    GetAccountInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetAccountInformationResponse', name: 'GetAccountInformationResponse')
    GetAlternateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetAlternateContactRequest', name: 'GetAlternateContactRequest')
    GetAlternateContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetAlternateContactResponse', name: 'GetAlternateContactResponse')
    GetContactInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetContactInformationRequest', name: 'GetContactInformationRequest')
    GetContactInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetContactInformationResponse', name: 'GetContactInformationResponse')
    GetPrimaryEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetPrimaryEmailRequest', name: 'GetPrimaryEmailRequest')
    GetPrimaryEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetPrimaryEmailResponse', name: 'GetPrimaryEmailResponse')
    GetRegionOptStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetRegionOptStatusRequest', name: 'GetRegionOptStatusRequest')
    GetRegionOptStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#GetRegionOptStatusResponse', name: 'GetRegionOptStatusResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ListRegionsRequest', name: 'ListRegionsRequest')
    ListRegionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ListRegionsResponse', name: 'ListRegionsResponse')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    Otp = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#Otp', name: 'Otp', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{6}$", "smithy.api#sensitive" => {}})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^[\\s0-9()+-]+$", "smithy.api#sensitive" => {}})
    PostalCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#PostalCode', name: 'PostalCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#sensitive" => {}})
    PrimaryEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#PrimaryEmailAddress', name: 'PrimaryEmailAddress', traits: {"smithy.api#length" => {"min" => 5, "max" => 64}, "smithy.api#sensitive" => {}})
    PrimaryEmailUpdateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#PrimaryEmailUpdateStatus', name: 'PrimaryEmailUpdateStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACCEPTED", "name" => "ACCEPTED"}]})
    PutAccountNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#PutAccountNameRequest', name: 'PutAccountNameRequest')
    PutAlternateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#PutAlternateContactRequest', name: 'PutAlternateContactRequest')
    PutContactInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#PutContactInformationRequest', name: 'PutContactInformationRequest')
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#Region', name: 'Region')
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#RegionName', name: 'RegionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RegionOptList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.account#RegionOptList', name: 'RegionOptList')
    RegionOptStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#RegionOptStatus', name: 'RegionOptStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "ENABLING", "name" => "ENABLING"}, {"value" => "DISABLING", "name" => "DISABLING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "ENABLED_BY_DEFAULT", "name" => "ENABLED_BY_DEFAULT"}]})
    RegionOptStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.account#RegionOptStatusList', name: 'RegionOptStatusList')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    StartPrimaryEmailUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#StartPrimaryEmailUpdateRequest', name: 'StartPrimaryEmailUpdateRequest')
    StartPrimaryEmailUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#StartPrimaryEmailUpdateResponse', name: 'StartPrimaryEmailUpdateResponse')
    StateOrRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#StateOrRegion', name: 'StateOrRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#Title', name: 'Title', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.account#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.account#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "invalidRegionOptTarget", "name" => "INVALID_REGION_OPT_TARGET"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}]})
    WebsiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.account#WebsiteUrl', name: 'WebsiteUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})

    AcceptPrimaryEmailUpdateRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    AcceptPrimaryEmailUpdateRequest.add_member(:primary_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryEmailAddress, location_name: 'PrimaryEmail', traits: {"smithy.api#required" => {}}))
    AcceptPrimaryEmailUpdateRequest.add_member(:otp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Otp, location_name: 'Otp', traits: {"smithy.api#required" => {}}))
    AcceptPrimaryEmailUpdateRequest.type = Types::AcceptPrimaryEmailUpdateRequest
    AcceptPrimaryEmailUpdateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryEmailUpdateStatus, location_name: 'Status'))
    AcceptPrimaryEmailUpdateResponse.type = Types::AcceptPrimaryEmailUpdateResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlternateContact.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    AlternateContact.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'Title'))
    AlternateContact.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress'))
    AlternateContact.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber'))
    AlternateContact.add_member(:alternate_contact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateContactType, location_name: 'AlternateContactType'))
    AlternateContact.type = Types::AlternateContact
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    ContactInformation.add_member(:full_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FullName, location_name: 'FullName', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:address_line1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine, location_name: 'AddressLine1', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:address_line2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine, location_name: 'AddressLine2'))
    ContactInformation.add_member(:address_line3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressLine, location_name: 'AddressLine3'))
    ContactInformation.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: City, location_name: 'City', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:state_or_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateOrRegion, location_name: 'StateOrRegion'))
    ContactInformation.add_member(:district_or_county, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistrictOrCounty, location_name: 'DistrictOrCounty'))
    ContactInformation.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostalCode, location_name: 'PostalCode', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCode, location_name: 'CountryCode', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactInformationPhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#required" => {}}))
    ContactInformation.add_member(:company_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompanyName, location_name: 'CompanyName'))
    ContactInformation.add_member(:website_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: 'WebsiteUrl'))
    ContactInformation.type = Types::ContactInformation
    DeleteAlternateContactRequest.add_member(:alternate_contact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateContactType, location_name: 'AlternateContactType', traits: {"smithy.api#required" => {}}))
    DeleteAlternateContactRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DeleteAlternateContactRequest.type = Types::DeleteAlternateContactRequest
    DisableRegionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    DisableRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#required" => {}}))
    DisableRegionRequest.type = Types::DisableRegionRequest
    EnableRegionRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    EnableRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#required" => {}}))
    EnableRegionRequest.type = Types::EnableRegionRequest
    GetAccountInformationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetAccountInformationRequest.type = Types::GetAccountInformationRequest
    GetAccountInformationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetAccountInformationResponse.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'AccountName'))
    GetAccountInformationResponse.add_member(:account_created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountCreatedDate, location_name: 'AccountCreatedDate'))
    GetAccountInformationResponse.type = Types::GetAccountInformationResponse
    GetAlternateContactRequest.add_member(:alternate_contact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateContactType, location_name: 'AlternateContactType', traits: {"smithy.api#required" => {}}))
    GetAlternateContactRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetAlternateContactRequest.type = Types::GetAlternateContactRequest
    GetAlternateContactResponse.add_member(:alternate_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateContact, location_name: 'AlternateContact'))
    GetAlternateContactResponse.type = Types::GetAlternateContactResponse
    GetContactInformationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetContactInformationRequest.type = Types::GetContactInformationRequest
    GetContactInformationResponse.add_member(:contact_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactInformation, location_name: 'ContactInformation'))
    GetContactInformationResponse.type = Types::GetContactInformationResponse
    GetPrimaryEmailRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    GetPrimaryEmailRequest.type = Types::GetPrimaryEmailRequest
    GetPrimaryEmailResponse.add_member(:primary_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryEmailAddress, location_name: 'PrimaryEmail'))
    GetPrimaryEmailResponse.type = Types::GetPrimaryEmailResponse
    GetRegionOptStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    GetRegionOptStatusRequest.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName', traits: {"smithy.api#required" => {}}))
    GetRegionOptStatusRequest.type = Types::GetRegionOptStatusRequest
    GetRegionOptStatusResponse.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName'))
    GetRegionOptStatusResponse.add_member(:region_opt_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOptStatus, location_name: 'RegionOptStatus'))
    GetRegionOptStatusResponse.type = Types::GetRegionOptStatusResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.type = Types::InternalServerException
    ListRegionsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    ListRegionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListRegionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"max" => 1000}}))
    ListRegionsRequest.add_member(:region_opt_status_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOptStatusList, location_name: 'RegionOptStatusContains'))
    ListRegionsRequest.type = Types::ListRegionsRequest
    ListRegionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRegionsResponse.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOptList, location_name: 'Regions'))
    ListRegionsResponse.type = Types::ListRegionsResponse
    PutAccountNameRequest.add_member(:account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'AccountName', traits: {"smithy.api#required" => {}}))
    PutAccountNameRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    PutAccountNameRequest.type = Types::PutAccountNameRequest
    PutAlternateContactRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    PutAlternateContactRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'Title', traits: {"smithy.api#required" => {}}))
    PutAlternateContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#required" => {}}))
    PutAlternateContactRequest.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#required" => {}}))
    PutAlternateContactRequest.add_member(:alternate_contact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateContactType, location_name: 'AlternateContactType', traits: {"smithy.api#required" => {}}))
    PutAlternateContactRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    PutAlternateContactRequest.type = Types::PutAlternateContactRequest
    PutContactInformationRequest.add_member(:contact_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactInformation, location_name: 'ContactInformation', traits: {"smithy.api#required" => {}}))
    PutContactInformationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    PutContactInformationRequest.type = Types::PutContactInformationRequest
    Region.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'RegionName'))
    Region.add_member(:region_opt_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOptStatus, location_name: 'RegionOptStatus'))
    Region.type = Types::Region
    RegionOptList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegionOptStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionOptStatus)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartPrimaryEmailUpdateRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    StartPrimaryEmailUpdateRequest.add_member(:primary_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryEmailAddress, location_name: 'PrimaryEmail', traits: {"smithy.api#required" => {}}))
    StartPrimaryEmailUpdateRequest.type = Types::StartPrimaryEmailUpdateRequest
    StartPrimaryEmailUpdateResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryEmailUpdateStatus, location_name: 'Status'))
    StartPrimaryEmailUpdateResponse.type = Types::StartPrimaryEmailUpdateResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Account = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.account#Account"
      service.name = "Account"
      service.version = "2021-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Account", "arnNamespace" => "account", "cloudTrailEventSource" => "CLOUDTRAIL_EVENT_SOURCE"}, "aws.auth#sigv4" => {"name" => "account"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#suppress" => ["EventSource"], "smithy.api#title" => "AWS Account"}
      service.add_operation(:accept_primary_email_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#AcceptPrimaryEmailUpdate"
        operation.name = "AcceptPrimaryEmailUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPrimaryEmailUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptPrimaryEmailUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/acceptPrimaryEmailUpdate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_alternate_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#DeleteAlternateContact"
        operation.name = "DeleteAlternateContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAlternateContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/deleteAlternateContact", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#DisableRegion"
        operation.name = "DisableRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/disableRegion", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:enable_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#EnableRegion"
        operation.name = "EnableRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/enableRegion", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_account_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#GetAccountInformation"
        operation.name = "GetAccountInformation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountInformationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountInformationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/getAccountInformation", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_alternate_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#GetAlternateContact"
        operation.name = "GetAlternateContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAlternateContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAlternateContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/getAlternateContact", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_contact_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#GetContactInformation"
        operation.name = "GetContactInformation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactInformationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactInformationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/getContactInformation", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_primary_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#GetPrimaryEmail"
        operation.name = "GetPrimaryEmail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrimaryEmailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrimaryEmailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/getPrimaryEmail", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_region_opt_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#GetRegionOptStatus"
        operation.name = "GetRegionOptStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegionOptStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegionOptStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/getRegionOptStatus", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:list_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#ListRegions"
        operation.name = "ListRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/listRegions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListRegions.new
      end)
      service.add_operation(:put_account_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#PutAccountName"
        operation.name = "PutAccountName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/putAccountName", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_alternate_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#PutAlternateContact"
        operation.name = "PutAlternateContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAlternateContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/putAlternateContact", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_contact_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#PutContactInformation"
        operation.name = "PutContactInformation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutContactInformationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/putContactInformation", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_primary_email_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.account#StartPrimaryEmailUpdate"
        operation.name = "StartPrimaryEmailUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPrimaryEmailUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPrimaryEmailUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/startPrimaryEmailUpdate", "method" => "POST", "code" => 200}}
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
