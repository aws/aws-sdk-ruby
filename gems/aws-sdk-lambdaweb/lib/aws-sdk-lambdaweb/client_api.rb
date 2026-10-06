# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LambdaWeb
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountQuotas = Shapes::StructureShape.new(name: 'AccountQuotas')
    AccountQuotasMaxEndpointsPerFunctionInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxEndpointsPerFunctionInteger')
    AccountQuotasMaxRevisionsPerFunctionInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxRevisionsPerFunctionInteger')
    AccountQuotasMaxTotalArmVCpusInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxTotalArmVCpusInteger')
    AccountQuotasMaxTotalRateLimitInteger = Shapes::IntegerShape.new(name: 'AccountQuotasMaxTotalRateLimitInteger')
    AccountUsage = Shapes::StructureShape.new(name: 'AccountUsage')
    AccountUsageFunctionCountInteger = Shapes::IntegerShape.new(name: 'AccountUsageFunctionCountInteger')
    GetWebAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetWebAccountSettingsRequest')
    GetWebAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetWebAccountSettingsResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountQuotas.add_member(:max_total_arm_v_cpus, Shapes::ShapeRef.new(shape: AccountQuotasMaxTotalArmVCpusInteger, required: true, location_name: "maxTotalArmVCpus"))
    AccountQuotas.add_member(:max_total_rate_limit, Shapes::ShapeRef.new(shape: AccountQuotasMaxTotalRateLimitInteger, required: true, location_name: "maxTotalRateLimit"))
    AccountQuotas.add_member(:max_revisions_per_function, Shapes::ShapeRef.new(shape: AccountQuotasMaxRevisionsPerFunctionInteger, required: true, location_name: "maxRevisionsPerFunction"))
    AccountQuotas.add_member(:max_endpoints_per_function, Shapes::ShapeRef.new(shape: AccountQuotasMaxEndpointsPerFunctionInteger, required: true, location_name: "maxEndpointsPerFunction"))
    AccountQuotas.struct_class = Types::AccountQuotas

    AccountUsage.add_member(:function_count, Shapes::ShapeRef.new(shape: AccountUsageFunctionCountInteger, required: true, location_name: "functionCount"))
    AccountUsage.struct_class = Types::AccountUsage

    GetWebAccountSettingsRequest.struct_class = Types::GetWebAccountSettingsRequest

    GetWebAccountSettingsResponse.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotas, required: true, location_name: "accountQuotas"))
    GetWebAccountSettingsResponse.add_member(:account_usage, Shapes::ShapeRef.new(shape: AccountUsage, required: true, location_name: "accountUsage"))
    GetWebAccountSettingsResponse.struct_class = Types::GetWebAccountSettingsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-03-07"

      api.metadata = {
        "apiVersion" => "2025-03-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Lambda Web",
        "serviceId" => "Lambda Web",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-web-2025-03-07",
      }

      api.add_operation(:get_web_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/2025-03-07/web-account-settings"
        o.input = Shapes::ShapeRef.new(shape: GetWebAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
