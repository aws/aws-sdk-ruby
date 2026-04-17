# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Uxc
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountColor = Shapes::StringShape.new(name: 'AccountColor')
    GetAccountCustomizationsInput = Shapes::StructureShape.new(name: 'GetAccountCustomizationsInput')
    GetAccountCustomizationsOutput = Shapes::StructureShape.new(name: 'GetAccountCustomizationsOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListServicesInput = Shapes::StructureShape.new(name: 'ListServicesInput')
    ListServicesOutput = Shapes::StructureShape.new(name: 'ListServicesOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionsList = Shapes::ListShape.new(name: 'RegionsList')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateAccountCustomizationsInput = Shapes::StructureShape.new(name: 'UpdateAccountCustomizationsInput')
    UpdateAccountCustomizationsOutput = Shapes::StructureShape.new(name: 'UpdateAccountCustomizationsOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    GetAccountCustomizationsInput.struct_class = Types::GetAccountCustomizationsInput

    GetAccountCustomizationsOutput.add_member(:account_color, Shapes::ShapeRef.new(shape: AccountColor, location_name: "accountColor"))
    GetAccountCustomizationsOutput.add_member(:visible_services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "visibleServices"))
    GetAccountCustomizationsOutput.add_member(:visible_regions, Shapes::ShapeRef.new(shape: RegionsList, location_name: "visibleRegions"))
    GetAccountCustomizationsOutput.struct_class = Types::GetAccountCustomizationsOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServicesInput.struct_class = Types::ListServicesInput

    ListServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesOutput.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "services"))
    ListServicesOutput.struct_class = Types::ListServicesOutput

    RegionsList.member = Shapes::ShapeRef.new(shape: Region)

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateAccountCustomizationsInput.add_member(:account_color, Shapes::ShapeRef.new(shape: AccountColor, location_name: "accountColor"))
    UpdateAccountCustomizationsInput.add_member(:visible_services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "visibleServices"))
    UpdateAccountCustomizationsInput.add_member(:visible_regions, Shapes::ShapeRef.new(shape: RegionsList, location_name: "visibleRegions"))
    UpdateAccountCustomizationsInput.struct_class = Types::UpdateAccountCustomizationsInput

    UpdateAccountCustomizationsOutput.add_member(:account_color, Shapes::ShapeRef.new(shape: AccountColor, location_name: "accountColor"))
    UpdateAccountCustomizationsOutput.add_member(:visible_services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "visibleServices"))
    UpdateAccountCustomizationsOutput.add_member(:visible_regions, Shapes::ShapeRef.new(shape: RegionsList, location_name: "visibleRegions"))
    UpdateAccountCustomizationsOutput.struct_class = Types::UpdateAccountCustomizationsOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-07-01"

      api.metadata = {
        "apiVersion" => "2024-07-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "uxc",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS User Experience Customization",
        "serviceId" => "uxc",
        "signatureVersion" => "v4",
        "signingName" => "uxc",
        "uid" => "uxc-2024-07-01",
      }

      api.add_operation(:get_account_customizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountCustomizations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/account-customizations"
        o.input = Shapes::ShapeRef.new(shape: GetAccountCustomizationsInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccountCustomizationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "GET"
        o.http_request_uri = "/v1/services"
        o.input = Shapes::ShapeRef.new(shape: ListServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_account_customizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountCustomizations"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/account-customizations"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountCustomizationsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountCustomizationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
