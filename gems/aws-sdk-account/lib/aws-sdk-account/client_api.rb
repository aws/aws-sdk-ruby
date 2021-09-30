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
    AlternateContact = Shapes::StructureShape.new(name: 'AlternateContact')
    AlternateContactType = Shapes::StringShape.new(name: 'AlternateContactType')
    DeleteAlternateContactRequest = Shapes::StructureShape.new(name: 'DeleteAlternateContactRequest')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    GetAlternateContactRequest = Shapes::StructureShape.new(name: 'GetAlternateContactRequest')
    GetAlternateContactResponse = Shapes::StructureShape.new(name: 'GetAlternateContactResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Name = Shapes::StringShape.new(name: 'Name')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PutAlternateContactRequest = Shapes::StructureShape.new(name: 'PutAlternateContactRequest')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    Title = Shapes::StringShape.new(name: 'Title')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlternateContact.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, location_name: "AlternateContactType"))
    AlternateContact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    AlternateContact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AlternateContact.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    AlternateContact.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    AlternateContact.struct_class = Types::AlternateContact

    DeleteAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    DeleteAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    DeleteAlternateContactRequest.struct_class = Types::DeleteAlternateContactRequest

    GetAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    GetAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    GetAlternateContactRequest.struct_class = Types::GetAlternateContactRequest

    GetAlternateContactResponse.add_member(:alternate_contact, Shapes::ShapeRef.new(shape: AlternateContact, location_name: "AlternateContact"))
    GetAlternateContactResponse.struct_class = Types::GetAlternateContactResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    PutAlternateContactRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    PutAlternateContactRequest.add_member(:alternate_contact_type, Shapes::ShapeRef.new(shape: AlternateContactType, required: true, location_name: "AlternateContactType"))
    PutAlternateContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    PutAlternateContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    PutAlternateContactRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "PhoneNumber"))
    PutAlternateContactRequest.add_member(:title, Shapes::ShapeRef.new(shape: Title, required: true, location_name: "Title"))
    PutAlternateContactRequest.struct_class = Types::PutAlternateContactRequest

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
    end

  end
end
