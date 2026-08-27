# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryCluster
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9:.\\/_-]*$"})
    Arns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycluster#Arns", name: "Arns")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlPanelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#ControlPanelName", name: "ControlPanelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    EndpointTemporarilyUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#EndpointTemporarilyUnavailableException", name: "EndpointTemporarilyUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    GetRoutingControlStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#GetRoutingControlStateRequest", name: "GetRoutingControlStateRequest")
    GetRoutingControlStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#GetRoutingControlStateResponse", name: "GetRoutingControlStateResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRoutingControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ListRoutingControlsRequest", name: "ListRoutingControlsRequest")
    ListRoutingControlsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ListRoutingControlsResponse", name: "ListRoutingControlsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53recoverycluster#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#Owner", name: "Owner", traits: {"smithy.api#length" => {"min" => 12, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8096}, "smithy.api#pattern" => "^[\\S]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53recoverycluster#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    RoutingControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#RoutingControl", name: "RoutingControl")
    RoutingControlName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#RoutingControlName", name: "RoutingControlName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    RoutingControlState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoverycluster#RoutingControlState", name: "RoutingControlState")
    RoutingControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycluster#RoutingControls", name: "RoutingControls")
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycluster#String", name: "String")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateRoutingControlStateEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStateEntries", name: "UpdateRoutingControlStateEntries")
    UpdateRoutingControlStateEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStateEntry", name: "UpdateRoutingControlStateEntry")
    UpdateRoutingControlStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStateRequest", name: "UpdateRoutingControlStateRequest")
    UpdateRoutingControlStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStateResponse", name: "UpdateRoutingControlStateResponse")
    UpdateRoutingControlStatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStatesRequest", name: "UpdateRoutingControlStatesRequest")
    UpdateRoutingControlStatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#UpdateRoutingControlStatesResponse", name: "UpdateRoutingControlStatesResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycluster#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycluster#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoverycluster#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Arns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    EndpointTemporarilyUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    EndpointTemporarilyUnavailableException.type = Types::EndpointTemporarilyUnavailableException
    GetRoutingControlStateRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoutingControlArn", traits: {"smithy.api#required" => {}}))
    GetRoutingControlStateRequest.type = Types::GetRoutingControlStateRequest
    GetRoutingControlStateResponse.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoutingControlArn", traits: {"smithy.api#required" => {}}))
    GetRoutingControlStateResponse.add_member(:routing_control_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlState, name: "RoutingControlState", traits: {"smithy.api#required" => {}}))
    GetRoutingControlStateResponse.add_member(:routing_control_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlName, name: "RoutingControlName"))
    GetRoutingControlStateResponse.type = Types::GetRoutingControlStateResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListRoutingControlsRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ControlPanelArn"))
    ListRoutingControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextToken"))
    ListRoutingControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRoutingControlsRequest.type = Types::ListRoutingControlsRequest
    ListRoutingControlsResponse.add_member(:routing_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControls, name: "RoutingControls", traits: {"smithy.api#required" => {}}))
    ListRoutingControlsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextToken"))
    ListRoutingControlsResponse.type = Types::ListRoutingControlsResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutingControl.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ControlPanelArn"))
    RoutingControl.add_member(:control_panel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPanelName, name: "ControlPanelName"))
    RoutingControl.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoutingControlArn"))
    RoutingControl.add_member(:routing_control_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlName, name: "RoutingControlName"))
    RoutingControl.add_member(:routing_control_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlState, name: "RoutingControlState"))
    RoutingControl.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    RoutingControl.type = Types::RoutingControl
    RoutingControlState.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "On", traits: {"smithy.api#enumValue" => "On"}))
    RoutingControlState.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Off", traits: {"smithy.api#enumValue" => "Off"}))
    RoutingControls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControl, name: "member")
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId"))
    ServiceLimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    ServiceLimitExceededException.add_member(:limit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "limitCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateRoutingControlStateEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRoutingControlStateEntry, name: "member")
    UpdateRoutingControlStateEntry.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoutingControlArn", traits: {"smithy.api#required" => {}}))
    UpdateRoutingControlStateEntry.add_member(:routing_control_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlState, name: "RoutingControlState", traits: {"smithy.api#required" => {}}))
    UpdateRoutingControlStateEntry.type = Types::UpdateRoutingControlStateEntry
    UpdateRoutingControlStateRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoutingControlArn", traits: {"smithy.api#required" => {}}))
    UpdateRoutingControlStateRequest.add_member(:routing_control_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControlState, name: "RoutingControlState", traits: {"smithy.api#required" => {}}))
    UpdateRoutingControlStateRequest.add_member(:safety_rules_to_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SafetyRulesToOverride"))
    UpdateRoutingControlStateRequest.type = Types::UpdateRoutingControlStateRequest
    UpdateRoutingControlStateResponse.type = Types::UpdateRoutingControlStateResponse
    UpdateRoutingControlStatesRequest.add_member(:update_routing_control_state_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRoutingControlStateEntries, name: "UpdateRoutingControlStateEntries", traits: {"smithy.api#required" => {}}))
    UpdateRoutingControlStatesRequest.add_member(:safety_rules_to_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Arns, name: "SafetyRulesToOverride"))
    UpdateRoutingControlStatesRequest.type = Types::UpdateRoutingControlStatesRequest
    UpdateRoutingControlStatesResponse.type = Types::UpdateRoutingControlStatesResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    ToggleCustomerAPI = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53recoverycluster#ToggleCustomerAPI"
      service.name = "ToggleCustomerAPI"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53 Recovery Cluster", "arnNamespace" => "route53-recovery-cluster", "cloudFormationName" => "Route53RecoveryCluster", "cloudTrailEventSource" => "route53recoverycluster.amazonaws.com", "endpointPrefix" => "route53-recovery-cluster"}, "aws.auth#sigv4" => {"name" => "route53-recovery-cluster"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Route53 Recovery Cluster"}
      service.add_operation(:get_routing_control_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#GetRoutingControlState"
        operation.name = "GetRoutingControlState"
        operation.input = GetRoutingControlStateRequest
        operation.output = GetRoutingControlStateResponse
        operation.errors << AccessDeniedException
        operation.errors << EndpointTemporarilyUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_routing_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#ListRoutingControls"
        operation.name = "ListRoutingControls"
        operation.input = ListRoutingControlsRequest
        operation.output = ListRoutingControlsResponse
        operation.errors << AccessDeniedException
        operation.errors << EndpointTemporarilyUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoutingControls.new
      end)
      service.add_operation(:update_routing_control_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#UpdateRoutingControlState"
        operation.name = "UpdateRoutingControlState"
        operation.input = UpdateRoutingControlStateRequest
        operation.output = UpdateRoutingControlStateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << EndpointTemporarilyUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_routing_control_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycluster#UpdateRoutingControlStates"
        operation.name = "UpdateRoutingControlStates"
        operation.input = UpdateRoutingControlStatesRequest
        operation.output = UpdateRoutingControlStatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << EndpointTemporarilyUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
