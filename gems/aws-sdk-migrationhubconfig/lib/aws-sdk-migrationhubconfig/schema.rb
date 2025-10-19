# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubConfig
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    ControlId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubconfig#ControlId", name: "ControlId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^hrc-[a-z0-9]{12}$"})
    CreateHomeRegionControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#CreateHomeRegionControlRequest", name: "CreateHomeRegionControlRequest")
    CreateHomeRegionControlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#CreateHomeRegionControlResult", name: "CreateHomeRegionControlResult")
    DeleteHomeRegionControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#DeleteHomeRegionControlRequest", name: "DeleteHomeRegionControlRequest")
    DeleteHomeRegionControlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#DeleteHomeRegionControlResult", name: "DeleteHomeRegionControlResult")
    DescribeHomeRegionControlsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubconfig#DescribeHomeRegionControlsMaxResults", name: "DescribeHomeRegionControlsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeHomeRegionControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#DescribeHomeRegionControlsRequest", name: "DescribeHomeRegionControlsRequest")
    DescribeHomeRegionControlsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#DescribeHomeRegionControlsResult", name: "DescribeHomeRegionControlsResult")
    DryRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.migrationhubconfig#DryRun", name: "DryRun", traits: {"smithy.api#default" => false})
    DryRunOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#DryRunOperation", name: "DryRunOperation", traits: {"smithy.api#error" => "client"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubconfig#ErrorMessage", name: "ErrorMessage")
    GetHomeRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#GetHomeRegionRequest", name: "GetHomeRegionRequest")
    GetHomeRegionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#GetHomeRegionResult", name: "GetHomeRegionResult")
    HomeRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubconfig#HomeRegion", name: "HomeRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([a-z]+)-([a-z]+)-([0-9]+)$"})
    HomeRegionControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#HomeRegionControl", name: "HomeRegionControl")
    HomeRegionControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubconfig#HomeRegionControls", name: "HomeRegionControls", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client"})
    RequestedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.migrationhubconfig#RequestedTime", name: "RequestedTime")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubconfig#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server"})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#Target", name: "Target")
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubconfig#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.migrationhubconfig#TargetType", name: "TargetType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubconfig#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubconfig#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    CreateHomeRegionControlRequest.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    CreateHomeRegionControlRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target", traits: {"smithy.api#required" => {}}))
    CreateHomeRegionControlRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun", traits: {"smithy.api#default" => false}))
    CreateHomeRegionControlRequest.type = Types::CreateHomeRegionControlRequest
    CreateHomeRegionControlResult.add_member(:home_region_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionControl, location_name: "HomeRegionControl"))
    CreateHomeRegionControlResult.type = Types::CreateHomeRegionControlResult
    DeleteHomeRegionControlRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlId, location_name: "ControlId", traits: {"smithy.api#required" => {}}))
    DeleteHomeRegionControlRequest.type = Types::DeleteHomeRegionControlRequest
    DeleteHomeRegionControlResult.type = Types::DeleteHomeRegionControlResult
    DescribeHomeRegionControlsRequest.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlId, location_name: "ControlId"))
    DescribeHomeRegionControlsRequest.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    DescribeHomeRegionControlsRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    DescribeHomeRegionControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsMaxResults, location_name: "MaxResults"))
    DescribeHomeRegionControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeHomeRegionControlsRequest.type = Types::DescribeHomeRegionControlsRequest
    DescribeHomeRegionControlsResult.add_member(:home_region_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionControls, location_name: "HomeRegionControls"))
    DescribeHomeRegionControlsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeHomeRegionControlsResult.type = Types::DescribeHomeRegionControlsResult
    DryRunOperation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DryRunOperation.type = Types::DryRunOperation
    GetHomeRegionRequest.type = Types::GetHomeRegionRequest
    GetHomeRegionResult.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    GetHomeRegionResult.type = Types::GetHomeRegionResult
    HomeRegionControl.add_member(:control_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlId, location_name: "ControlId"))
    HomeRegionControl.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    HomeRegionControl.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    HomeRegionControl.add_member(:requested_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedTime, location_name: "RequestedTime"))
    HomeRegionControl.type = Types::HomeRegionControl
    HomeRegionControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionControl)
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    Target.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    Target.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: "Id"))
    Target.type = Types::Target
    TargetType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException

    AWSMigrationHubMultiAccountService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhubconfig#AWSMigrationHubMultiAccountService"
      service.name = "AWSMigrationHubMultiAccountService"
      service.version = "2019-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "MigrationHub Config", "arnNamespace" => "mgh", "cloudFormationName" => "MigrationHubConfig", "cloudTrailEventSource" => "migrationhubconfig.amazonaws.com", "endpointPrefix" => "migrationhub-config"}, "aws.auth#sigv4" => {"name" => "mgh"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Migration Hub Config"}
      service.add_operation(:create_home_region_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubconfig#CreateHomeRegionControl"
        operation.name = "CreateHomeRegionControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHomeRegionControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHomeRegionControlResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_home_region_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubconfig#DeleteHomeRegionControl"
        operation.name = "DeleteHomeRegionControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHomeRegionControlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHomeRegionControlResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_home_region_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubconfig#DescribeHomeRegionControls"
        operation.name = "DescribeHomeRegionControls"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHomeRegionControlsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHomeRegionControls.new
      end)
      service.add_operation(:get_home_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubconfig#GetHomeRegion"
        operation.name = "GetHomeRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHomeRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHomeRegionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
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
