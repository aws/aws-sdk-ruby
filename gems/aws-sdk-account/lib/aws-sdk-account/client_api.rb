# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Account
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddressLine = Shapes::StringShape.new(name: 'AddressLine')
    AlternateContact = Shapes::StructureShape.new(name: 'AlternateContact')
    AlternateContactType = Shapes::StringShape.new(name: 'AlternateContactType')
    City = Shapes::StringShape.new(name: 'City')
    CompanyName = Shapes::StringShape.new(name: 'CompanyName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContactInformation = Shapes::StructureShape.new(name: 'ContactInformation')
    ContactInformationPhoneNumber = Shapes::StringShape.new(name: 'ContactInformationPhoneNumber')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    DeleteAlternateContactRequest = Shapes::StructureShape.new(name: 'DeleteAlternateContactRequest')
    DisableRegionRequest = Shapes::StructureShape.new(name: 'DisableRegionRequest')
    DistrictOrCounty = Shapes::StringShape.new(name: 'DistrictOrCounty')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EnableRegionRequest = Shapes::StructureShape.new(name: 'EnableRegionRequest')
    FullName = Shapes::StringShape.new(name: 'FullName')
    GetAlternateContactRequest = Shapes::StructureShape.new(name: 'GetAlternateContactRequest')
    GetAlternateContactResponse = Shapes::StructureShape.new(name: 'GetAlternateContactResponse')
    GetContactInformationRequest = Shapes::StructureShape.new(name: 'GetContactInformationRequest')
    GetContactInformationResponse = Shapes::StructureShape.new(name: 'GetContactInformationResponse')
    GetRegionOptStatusRequest = Shapes::StructureShape.new(name: 'GetRegionOptStatusRequest')
    GetRegionOptStatusResponse = Shapes::StructureShape.new(name: 'GetRegionOptStatusResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRegionsRequest = Shapes::StructureShape.new(name: 'ListRegionsRequest')
    ListRegionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRegionsRequestMaxResultsInteger')
    ListRegionsRequestNextTokenString = Shapes::StringShape.new(name: 'ListRegionsRequestNextTokenString')
    ListRegionsResponse = Shapes::StructureShape.new(name: 'ListRegionsResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PostalCode = Shapes::StringShape.new(name: 'PostalCode')
    PutAlternateContactRequest = Shapes::StructureShape.new(name: 'PutAlternateContactRequest')
    PutContactInformationRequest = Shapes::StructureShape.new(name: 'PutContactInformationRequest')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RegionOptList = Shapes::ListShape.new(name: 'RegionOptList')
    RegionOptStatus = Shapes::StringShape.new(name: 'RegionOptStatus')
    RegionOptStatusList = Shapes::ListShape.new(name: 'RegionOptStatusList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    StateOrRegion = Shapes::StringShape.new(name: 'StateOrRegion')
    String = Shapes::StringShape.new(name: 'String')
    Title = Shapes::StringShape.new(name: 'Title')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WebsiteUrl = Shapes::StringShape.new(name: 'WebsiteUrl')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlternateContact.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, location_name: "AlternateContactType"))
    AlternateContact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    AlternateContact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AlternateContact.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    AlternateContact.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    AlternateContact.struct_class = Types::AlternateContact

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContactInformation.add_member(:address_line_1, Shapes::ShapeRef.new(shape: AddressLine, required: true, location_name: "AddressLine1"))
    ContactInformation.add_member(:address_line_2, Shapes::ShapeRef.new(shape: AddressLine, location_name: "AddressLine2"))
    ContactInformation.add_member(:address_line_3, Shapes::ShapeRef.new(shape: AddressLine, location_name: "AddressLine3"))
    ContactInformation.add_member(:city, Shapes::ShapeRef.new(shape: City, required: true, location_name: "City"))
    ContactInformation.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, location_name: "CompanyName"))
    ContactInformation.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    ContactInformation.add_member(:district_or_county, Shapes::ShapeRef.new(shape: DistrictOrCounty, location_name: "DistrictOrCounty"))
    ContactInformation.add_member(:full_name, Shapes::ShapeRef.new(shape: FullName, required: true, location_name: "FullName"))
    ContactInformation.add_member(:phone_number, Shapes::ShapeRef.new(shape: ContactInformationPhoneNumber, required: true, location_name: "PhoneNumber"))
    ContactInformation.add_member(:postal_code, Shapes::ShapeRef.new(shape: PostalCode, required: true, location_name: "PostalCode"))
    ContactInformation.add_member(:state_or_region, Shapes::ShapeRef.new(shape: StateOrRegion, location_name: "StateOrRegion"))
    ContactInformation.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    ContactInformation.struct_class = Types::ContactInformation

    DeleteAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    DeleteAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    DeleteAlternateContactRequest.struct_class = Types::DeleteAlternateContactRequest

    DisableRegionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    DisableRegionRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    DisableRegionRequest.struct_class = Types::DisableRegionRequest

    EnableRegionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    EnableRegionRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    EnableRegionRequest.struct_class = Types::EnableRegionRequest

    GetAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    GetAlternateContactRequest.struct_class = Types::GetAlternateContactRequest

    GetAlternateContactResponse.add_member(:alternate_contact, Shapes::ShapeRef.new(shape: AlternateContact, location_name: "AlternateContact"))
    GetAlternateContactResponse.struct_class = Types::GetAlternateContactResponse

    GetContactInformationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetContactInformationRequest.struct_class = Types::GetContactInformationRequest

    GetContactInformationResponse.add_member(:contact_information, Shapes::ShapeRef.new(shape: ContactInformation, location_name: "ContactInformation"))
    GetContactInformationResponse.struct_class = Types::GetContactInformationResponse

    GetRegionOptStatusRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetRegionOptStatusRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    GetRegionOptStatusRequest.struct_class = Types::GetRegionOptStatusRequest

    GetRegionOptStatusResponse.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    GetRegionOptStatusResponse.add_member(:region_opt_status, Shapes::ShapeRef.new(shape: RegionOptStatus, location_name: "RegionOptStatus"))
    GetRegionOptStatusResponse.struct_class = Types::GetRegionOptStatusResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRegionsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ListRegionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRegionsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListRegionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRegionsRequestNextTokenString, location_name: "NextToken"))
    ListRegionsRequest.add_member(:region_opt_status_contains, Shapes::ShapeRef.new(shape: RegionOptStatusList, location_name: "RegionOptStatusContains"))
    ListRegionsRequest.struct_class = Types::ListRegionsRequest

    ListRegionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRegionsResponse.add_member(:regions, Shapes::ShapeRef.new(shape: RegionOptList, location_name: "Regions"))
    ListRegionsResponse.struct_class = Types::ListRegionsResponse

    PutAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    PutAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    PutAlternateContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    PutAlternateContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    PutAlternateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    PutAlternateContactRequest.add_member(:title, Shapes::ShapeRef.new(shape: Title, required: true, location_name: "Title"))
    PutAlternateContactRequest.struct_class = Types::PutAlternateContactRequest

    PutContactInformationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    PutContactInformationRequest.add_member(:contact_information, Shapes::ShapeRef.new(shape: ContactInformation, required: true, location_name: "ContactInformation"))
    PutContactInformationRequest.struct_class = Types::PutContactInformationRequest

    Region.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    Region.add_member(:region_opt_status, Shapes::ShapeRef.new(shape: RegionOptStatus, location_name: "RegionOptStatus"))
    Region.struct_class = Types::Region

    RegionOptList.member = Shapes::ShapeRef.new(shape: Region)

    RegionOptStatusList.member = Shapes::ShapeRef.new(shape: RegionOptStatus)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-02-01"

      api.metadata = {
        "apiVersion" => "2021-02-01",
        "endpointPrefix" => "account",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Account",
        "serviceId" => "Account",
        "signatureVersion" => "v4",
        "signingName" => "account",
        "uid" => "account-2021-02-01",
      }

      api.add_operation(:delete_alternate_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlternateContact"
        o.http_method = "POST"
        o.http_request_uri = "/deleteAlternateContact"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlternateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disable_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableRegion"
        o.http_method = "POST"
        o.http_request_uri = "/disableRegion"
        o.input = Shapes::ShapeRef.new(shape: DisableRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:enable_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableRegion"
        o.http_method = "POST"
        o.http_request_uri = "/enableRegion"
        o.input = Shapes::ShapeRef.new(shape: EnableRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_alternate_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlternateContact"
        o.http_method = "POST"
        o.http_request_uri = "/getAlternateContact"
        o.input = Shapes::ShapeRef.new(shape: GetAlternateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAlternateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_contact_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactInformation"
        o.http_method = "POST"
        o.http_request_uri = "/getContactInformation"
        o.input = Shapes::ShapeRef.new(shape: GetContactInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactInformationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_region_opt_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegionOptStatus"
        o.http_method = "POST"
        o.http_request_uri = "/getRegionOptStatus"
        o.input = Shapes::ShapeRef.new(shape: GetRegionOptStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegionOptStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_regions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegions"
        o.http_method = "POST"
        o.http_request_uri = "/listRegions"
        o.input = Shapes::ShapeRef.new(shape: ListRegionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_alternate_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAlternateContact"
        o.http_method = "POST"
        o.http_request_uri = "/putAlternateContact"
        o.input = Shapes::ShapeRef.new(shape: PutAlternateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_contact_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutContactInformation"
        o.http_method = "POST"
        o.http_request_uri = "/putContactInformation"
        o.input = Shapes::ShapeRef.new(shape: PutContactInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
