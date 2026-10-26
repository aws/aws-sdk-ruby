# frozen_string_literal: true

# This is generated code!

module Aws::Uxc
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountColor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.uxc#AccountColor", name: "AccountColor")
    GetAccountCustomizationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#GetAccountCustomizationsInput", name: "GetAccountCustomizationsInput")
    GetAccountCustomizationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#GetAccountCustomizationsOutput", name: "GetAccountCustomizationsOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#ListServicesInput", name: "ListServicesInput")
    ListServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#ListServicesOutput", name: "ListServicesOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.uxc#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.uxc#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^[-A-Za-z0-9+/_]+=*$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.uxc#Region", name: "Region", traits: {"smithy.api#pattern" => "^[a-z]{2}(-[a-z]{1,10}){1,2}-[1-9]$"})
    RegionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.uxc#RegionsList", name: "RegionsList", traits: {"smithy.api#length" => {"max" => 100}})
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.uxc#Service", name: "Service", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.uxc#ServiceList", name: "ServiceList", traits: {"smithy.api#length" => {"max" => 500}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateAccountCustomizationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#UpdateAccountCustomizationsInput", name: "UpdateAccountCustomizationsInput")
    UpdateAccountCustomizationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#UpdateAccountCustomizationsOutput", name: "UpdateAccountCustomizationsOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.uxc#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.uxc#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountColor.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    AccountColor.add_member(:pink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PINK", traits: {"smithy.api#enumValue" => "pink"}))
    AccountColor.add_member(:purple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURPLE", traits: {"smithy.api#enumValue" => "purple"}))
    AccountColor.add_member(:darkblue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DARKBLUE", traits: {"smithy.api#enumValue" => "darkBlue"}))
    AccountColor.add_member(:lightblue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIGHTBLUE", traits: {"smithy.api#enumValue" => "lightBlue"}))
    AccountColor.add_member(:teal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEAL", traits: {"smithy.api#enumValue" => "teal"}))
    AccountColor.add_member(:green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREEN", traits: {"smithy.api#enumValue" => "green"}))
    AccountColor.add_member(:yellow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YELLOW", traits: {"smithy.api#enumValue" => "yellow"}))
    AccountColor.add_member(:orange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORANGE", traits: {"smithy.api#enumValue" => "orange"}))
    AccountColor.add_member(:red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RED", traits: {"smithy.api#enumValue" => "red"}))
    GetAccountCustomizationsInput.type = Types::GetAccountCustomizationsInput
    GetAccountCustomizationsOutput.add_member(:account_color, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountColor, name: "accountColor"))
    GetAccountCustomizationsOutput.add_member(:visible_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "visibleServices"))
    GetAccountCustomizationsOutput.add_member(:visible_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionsList, name: "visibleRegions"))
    GetAccountCustomizationsOutput.type = Types::GetAccountCustomizationsOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServicesOutput.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "services"))
    ListServicesOutput.type = Types::ListServicesOutput
    RegionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateAccountCustomizationsInput.add_member(:account_color, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountColor, name: "accountColor"))
    UpdateAccountCustomizationsInput.add_member(:visible_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "visibleServices"))
    UpdateAccountCustomizationsInput.add_member(:visible_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionsList, name: "visibleRegions"))
    UpdateAccountCustomizationsInput.type = Types::UpdateAccountCustomizationsInput
    UpdateAccountCustomizationsOutput.add_member(:account_color, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountColor, name: "accountColor"))
    UpdateAccountCustomizationsOutput.add_member(:visible_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "visibleServices"))
    UpdateAccountCustomizationsOutput.add_member(:visible_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionsList, name: "visibleRegions"))
    UpdateAccountCustomizationsOutput.type = Types::UpdateAccountCustomizationsOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    AWSAccountUXSetting = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.uxc#AWSAccountUXSetting"
      service.name = "AWSAccountUXSetting"
      service.version = "2024-07-01"
      service.traits = {"aws.api#service" => {"sdkId" => "uxc", "arnNamespace" => "uxc", "cloudFormationName" => "AWSAccountUXSetting", "endpointPrefix" => "uxc"}, "aws.auth#sigv4" => {"name" => "uxc"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400, "additionalAllowedHeaders" => ["Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "Content-type", "x-amz-content-sha256", "x-amz-user-agent", "Access-Control-Allow-Origin"]}, "smithy.api#title" => "AWS User Experience Customization", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://uxc-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://uxc.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:get_account_customizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.uxc#GetAccountCustomizations"
        operation.name = "GetAccountCustomizations"
        operation.input = GetAccountCustomizationsInput
        operation.output = GetAccountCustomizationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve account customizations"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/account-customizations"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccountCustomizationsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.uxc#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesInput
        operation.output = ListServicesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list available services"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/services"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListServicesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:update_account_customizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.uxc#UpdateAccountCustomizations"
        operation.name = "UpdateAccountCustomizations"
        operation.input = UpdateAccountCustomizationsInput
        operation.output = UpdateAccountCustomizationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update account customizations"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/account-customizations"}, "smithy.api#idempotent" => {}}
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
