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
    ContactInformation = Shapes::StructureShape.new(name: 'ContactInformation')
    ContactInformationPhoneNumber = Shapes::StringShape.new(name: 'ContactInformationPhoneNumber')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    DeleteAlternateContactRequest = Shapes::StructureShape.new(name: 'DeleteAlternateContactRequest')
    DistrictOrCounty = Shapes::StringShape.new(name: 'DistrictOrCounty')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    FullName = Shapes::StringShape.new(name: 'FullName')
    GetAlternateContactRequest = Shapes::StructureShape.new(name: 'GetAlternateContactRequest')
    GetAlternateContactResponse = Shapes::StructureShape.new(name: 'GetAlternateContactResponse')
    GetContactInformationRequest = Shapes::StructureShape.new(name: 'GetContactInformationRequest')
    GetContactInformationResponse = Shapes::StructureShape.new(name: 'GetContactInformationResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Name = Shapes::StringShape.new(name: 'Name')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PostalCode = Shapes::StringShape.new(name: 'PostalCode')
    PutAlternateContactRequest = Shapes::StructureShape.new(name: 'PutAlternateContactRequest')
    PutContactInformationRequest = Shapes::StructureShape.new(name: 'PutContactInformationRequest')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StateOrRegion = Shapes::StringShape.new(name: 'StateOrRegion')
    String = Shapes::StringShape.new(name: 'String')
    Title = Shapes::StringShape.new(name: 'Title')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WebsiteUrl = Shapes::StringShape.new(name: 'WebsiteUrl')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlternateContact.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, location_name: "AlternateContactType"))
    AlternateContact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    AlternateContact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AlternateContact.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    AlternateContact.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    AlternateContact.struct_class = Types::AlternateContact

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

    GetAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    GetAlternateContactRequest.struct_class = Types::GetAlternateContactRequest

    GetAlternateContactResponse.add_member(:alternate_contact, Shapes::ShapeRef.new(shape: AlternateContact, location_name: "AlternateContact"))
    GetAlternateContactResponse.struct_class = Types::GetAlternateContactResponse

    GetContactInformationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetContactInformationRequest.struct_class = Types::GetContactInformationRequest

    GetContactInformationResponse.add_member(:contact_information, Shapes::ShapeRef.new(shape: ContactInformation, location_name: "ContactInformation"))
    GetContactInformationResponse.struct_class = Types::GetContactInformationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

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

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


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
