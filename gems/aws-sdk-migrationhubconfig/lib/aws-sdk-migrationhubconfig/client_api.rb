# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubConfig
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ControlId = Shapes::StringShape.new(name: 'ControlId')
    CreateHomeRegionControlRequest = Shapes::StructureShape.new(name: 'CreateHomeRegionControlRequest')
    CreateHomeRegionControlResult = Shapes::StructureShape.new(name: 'CreateHomeRegionControlResult')
    DescribeHomeRegionControlsMaxResults = Shapes::IntegerShape.new(name: 'DescribeHomeRegionControlsMaxResults')
    DescribeHomeRegionControlsRequest = Shapes::StructureShape.new(name: 'DescribeHomeRegionControlsRequest')
    DescribeHomeRegionControlsResult = Shapes::StructureShape.new(name: 'DescribeHomeRegionControlsResult')
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    DryRunOperation = Shapes::StructureShape.new(name: 'DryRunOperation')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetHomeRegionRequest = Shapes::StructureShape.new(name: 'GetHomeRegionRequest')
    GetHomeRegionResult = Shapes::StructureShape.new(name: 'GetHomeRegionResult')
    HomeRegion = Shapes::StringShape.new(name: 'HomeRegion')
    HomeRegionControl = Shapes::StructureShape.new(name: 'HomeRegionControl')
    HomeRegionControls = Shapes::ListShape.new(name: 'HomeRegionControls')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    RequestedTime = Shapes::TimestampShape.new(name: 'RequestedTime')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Token = Shapes::StringShape.new(name: 'Token')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CreateHomeRegionControlRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, required: true, location_name: "HomeRegion"))
    CreateHomeRegionControlRequest.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    CreateHomeRegionControlRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CreateHomeRegionControlRequest.struct_class = Types::CreateHomeRegionControlRequest

    CreateHomeRegionControlResult.add_member(:home_region_control, Shapes::ShapeRef.new(shape: HomeRegionControl, location_name: "HomeRegionControl"))
    CreateHomeRegionControlResult.struct_class = Types::CreateHomeRegionControlResult

    DescribeHomeRegionControlsRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: ControlId, location_name: "ControlId"))
    DescribeHomeRegionControlsRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    DescribeHomeRegionControlsRequest.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    DescribeHomeRegionControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsMaxResults, location_name: "MaxResults"))
    DescribeHomeRegionControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeHomeRegionControlsRequest.struct_class = Types::DescribeHomeRegionControlsRequest

    DescribeHomeRegionControlsResult.add_member(:home_region_controls, Shapes::ShapeRef.new(shape: HomeRegionControls, location_name: "HomeRegionControls"))
    DescribeHomeRegionControlsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeHomeRegionControlsResult.struct_class = Types::DescribeHomeRegionControlsResult

    DryRunOperation.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DryRunOperation.struct_class = Types::DryRunOperation

    GetHomeRegionRequest.struct_class = Types::GetHomeRegionRequest

    GetHomeRegionResult.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    GetHomeRegionResult.struct_class = Types::GetHomeRegionResult

    HomeRegionControl.add_member(:control_id, Shapes::ShapeRef.new(shape: ControlId, location_name: "ControlId"))
    HomeRegionControl.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    HomeRegionControl.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    HomeRegionControl.add_member(:requested_time, Shapes::ShapeRef.new(shape: RequestedTime, location_name: "RequestedTime"))
    HomeRegionControl.struct_class = Types::HomeRegionControl

    HomeRegionControls.member = Shapes::ShapeRef.new(shape: HomeRegionControl)

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Target.add_member(:type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "Type"))
    Target.add_member(:id, Shapes::ShapeRef.new(shape: TargetId, location_name: "Id"))
    Target.struct_class = Types::Target

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-06-30"

      api.metadata = {
        "apiVersion" => "2019-06-30",
        "endpointPrefix" => "migrationhub-config",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Migration Hub Config",
        "serviceId" => "MigrationHub Config",
        "signatureVersion" => "v4",
        "signingName" => "mgh",
        "targetPrefix" => "AWSMigrationHubMultiAccountService",
        "uid" => "migrationhub-config-2019-06-30",
      }

      api.add_operation(:create_home_region_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHomeRegionControl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHomeRegionControlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHomeRegionControlResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_home_region_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHomeRegionControls"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_home_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHomeRegion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHomeRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHomeRegionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)
    end

  end
end
